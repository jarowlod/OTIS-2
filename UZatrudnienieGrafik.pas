unit UZatrudnienieGrafik;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, memds, db, FileUtil, DateTimePicker, LR_DBSet, LR_Class,
  rxdbgrid, ZDataset, Forms, Controls, Graphics, Dialogs, ExtCtrls, Buttons,
  StdCtrls, Spin, datamodule, DBGrids, Grids, LCLIntf, LCLType;

type

  { TZatrudnienieGrafik }

  TZatrudnienieGrafik = class(TForm)
    BitBtn10: TBitBtn;
    BitBtn4: TBitBtn;
    CheckBox1: TCheckBox;
    DateTimePicker1: TDateTimePicker;
    DSGrafik: TDataSource;
    Edit1: TEdit;
    frDBDataSet1: TfrDBDataSet;
    frReport1: TfrReport;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label9: TLabel;
    MemGrafik: TMemDataset;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    RxDBGrid1: TRxDBGrid;
    seDni_wolne: TSpinEdit;
    sePuste_Wiersze: TSpinEdit;
    procedure BitBtn10Click(Sender: TObject);
    procedure CheckBox1Change(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure RxDBGrid1CellClick(Column: TColumn);
    procedure RxDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure seDni_wolneChange(Sender: TObject);
  private
  public
    Procedure NowyGrafik_Wykaz(ZQ: TZQuery; data: TDate; Nazwa_Grupy: string);
    Function DniWolnych(data: TDate): integer;
    procedure ObliczDniWolne;
    procedure CalculateSuma(DataSet: TDataSet);
  end;

var
  ZatrudnienieGrafik: TZatrudnienieGrafik;

implementation
uses dateutils;
{$R *.frm}

{ TZatrudnienieGrafik }

// CREATE
procedure TZatrudnienieGrafik.NowyGrafik_Wykaz(ZQ: TZQuery; data: TDate; Nazwa_Grupy: String);
var i: integer;
begin
  DateTimePicker1.Date := data;
  Edit1.Text           := Nazwa_Grupy;
  sePuste_Wiersze.Value:= 19 - ZQ.RecordCount;

  MemGrafik.Clear(false);
  ZQ.First;
  while not ZQ.EOF do
  begin
    MemGrafik.Append;
    MemGrafik.FieldByName('Nazwisko').AsString:= ZQ.FieldByName('Nazwisko').AsString+ ' ' + ZQ.FieldByName('Imie').AsString;
    MemGrafik.FieldByName('POC').AsString     := ZQ.FieldByName('POC').AsString;
    MemGrafik.Post;
    ZQ.Next;
  end;

  // dodajemy 3 pozycje do grafiku w celu przygotowania Vaktów pod planowane dni wolnego.
  for i:=1 to sePuste_Wiersze.Value do
  begin
    if i > 3 then Break; // nie więcej niż 3 pozycje
    MemGrafik.Append;
    MemGrafik.FieldByName('Nazwisko').AsString:= '';
    MemGrafik.FieldByName('POC').AsString     := '';
    MemGrafik.Post;
  end;
  sePuste_Wiersze.Value:= sePuste_Wiersze.Value - 3;

  DateTimePicker1Change(Self); //ObliczDniWolne;
end;

// DRUKUJ
procedure TZatrudnienieGrafik.BitBtn10Click(Sender: TObject);
var p_DetailData: TfrBandView;
begin
  frReport1.LoadFromFile(DM.Path_Raporty + 'zat_wykaz_os.lrf');
  DM.KolorowanieDni(frReport1, DateTimePicker1.Date);
  DM.SetMemoReport(frReport1, 'Memo_msc', AnsiUpperCase( FormatDateTime('MMMM', DateTimePicker1.Date)) );
  DM.SetMemoReport(frReport1, 'Memo_rok', AnsiUpperCase( FormatDateTime('YYYY', DateTimePicker1.Date)) );
  DM.SetMemoReport(frReport1, 'Memo_Nazwa', Edit1.Text );

  p_DetailData:= (frReport1.FindObject('DetailData1') as TfrBandView);
  if Assigned(p_DetailData) then p_DetailData.DataSet:= IntToStr(sePuste_Wiersze.Value);  //max 19 na stronie

  frReport1.ShowReport;
end;

procedure TZatrudnienieGrafik.CheckBox1Change(Sender: TObject);
begin
  ObliczDniWolne;
end;

procedure TZatrudnienieGrafik.DateTimePicker1Change(Sender: TObject);
begin
  seDni_wolne.Value:= DniWolnych(DateTimePicker1.Date);
  //obliczamy nowe dni wolne
  ObliczDniWolne;
end;

procedure TZatrudnienieGrafik.seDni_wolneChange(Sender: TObject);
begin
  ObliczDniWolne;
end;

procedure TZatrudnienieGrafik.RxDBGrid1CellClick(Column: TColumn);
begin
  if (Column.ButtonStyle= cbsCheckboxColumn) and (not Column.Field.IsNull) then
  begin
    Column.Field.DataSet.Edit;

    if Column.Field.IsNull then Column.Field.Value:= Column.ValueChecked
      else if Column.Field.AsString = Column.ValueChecked then Column.Field.Value:= Column.ValueUnchecked
        else Column.Field.Value:= Column.ValueChecked;

    Column.Field.DataSet.Post;
    CalculateSuma(Column.Field.DataSet);
  end;
end;

procedure TZatrudnienieGrafik.RxDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
    Can: TCanvas;
    rec: TRect;
begin

  if (Column.ButtonStyle= cbsCheckboxColumn) then
    begin
      Can:= TRxDBGrid(Sender).Canvas;

      if Column.Field.IsNull then TRxDBGrid(Sender).DefaultDrawColumnCell(Rect, DataCol, Column, State)
        //DrawFrameControl(Can.Handle,Rect, DFC_BUTTON, DFCS_BUTTONCHECK or DFCS_INACTIVE) {grayed}

      else
      begin
        //DrawFrameControl(DBGrid1.Canvas.Handle,Rect, DFC_BUTTON, CtrlState[Column.Field.AsBoolean]) ; {checked or unchecked}
        if Column.Field.AsString = Column.ValueChecked then
          begin
              Can.Brush.Color:= clGray;
              Rec:= Rect;
              Rec.Left := Rect.Left +2;
              Rec.Right:= Rect.Right -3;
              Rec.Top  := Rect.Top +2;
              Rec.Bottom:= Rect.Bottom -3;
              Can.FillRect(Rec);
          end
          else
              Can.Brush.Color:= clWhite;
        //Can.Pen.Color:= clBlack;
      end;
    end
  else
    TRxDBGrid(Sender).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

// Oblicza dni wolne oraz koloruje nagłówek tabeli RxDBGrid1
function TZatrudnienieGrafik.DniWolnych(data: TDate): integer;
var i: integer;
    dni_msc: integer;
    i_date : TDate;
    wolne  : integer;
    p_day  : integer;
begin
  wolne:= 0;
  i_date:= StartOfTheMonth( DateTimePicker1.Date );
  dni_msc:= DaysInMonth( DateTimePicker1.Date );

  for i:=1 to 31 do
  begin
    RxDBGrid1.ColumnByFieldName('d'+IntToStr(i)).Title.Color:= clBtnFace; // kolor nagłówka standardowy
    RxDBGrid1.ColumnByFieldName('d'+IntToStr(i)).Tag:= 0;    // zerujemy flagę czy kolumna jest świąteczna

    if i <= dni_msc then
    begin
      if DM.CzyWeekend( i_date ) then
         begin
           Inc(wolne);
           RxDBGrid1.ColumnByFieldName('d'+IntToStr(i)).Title.Color:= $008080FF;
           RxDBGrid1.ColumnByFieldName('d'+IntToStr(i)).Tag:= 1;
         end;

      p_day:= DayOfTheWeek(i_date);
      if DM.CzySwieto(i_date) then
          begin
           if p_day=6 then // jesli swieto przypada w sobote to mamy dodatkowe wolne
              begin
                inc(wolne);
              end
           else
           if p_day=7 then  // swieto w niedziele
              begin
              end
           else
             begin // swieto w pozostale dni tygodnia
               inc(wolne);
               RxDBGrid1.ColumnByFieldName('d'+IntToStr(i)).Title.Color:= $008080FF;
               RxDBGrid1.ColumnByFieldName('d'+IntToStr(i)).Tag:= 1;
             end;
          end;

      i_date:= IncDay(i_date, 1);
    end;
  end;

  Result:= wolne;
end;

procedure TZatrudnienieGrafik.ObliczDniWolne;
var d: integer;
    p_maxdni: integer;
    start_day, select_day: integer;

    i_date             : TDate;
    czy_niedziela_wolna: Boolean;
    select_day_n       : integer;

begin
  MemGrafik.DisableControls;
  p_maxdni:= DaysInMonth( DateTimePicker1.Date );

  // czyścimy tabele wolnych dni
  MemGrafik.First;
  while not MemGrafik.EOF do
  begin
    MemGrafik.Edit;

    // wypełniamy zerami
    for d:=1 to p_maxdni do MemGrafik.FieldByName('d'+IntToStr(d)).AsInteger:= 0;

    // uzupełniamy Nullem
    d:= p_maxdni + 1;
    while d<=31 do
    begin
      MemGrafik.FieldByName('d'+IntToStr(d)).Value:= Null;
      inc(d);
    end;

    MemGrafik.FieldByName('suma').AsInteger:= 0;

    MemGrafik.Post;
    MemGrafik.Next;
  end;
  //------------------------------

  if CheckBox1.Checked then //jeśli drukujemy z grafikiem wolnego
  begin
    //=========================== DODAJEMY DANE DO TABELI
    start_day:= 0;
    MemGrafik.First;
    while not MemGrafik.EOF do
    begin
      MemGrafik.Edit;
      for d:=1 to p_maxdni+3 do
      begin
        select_day:= start_day+d;
        if select_day > p_maxdni then select_day:= select_day - p_maxdni;

        if (d mod 4 = 0) then
           begin
             MemGrafik.FieldByName('d'+IntToStr(select_day)).AsInteger:= 1;
           end;
      end;

      MemGrafik.Post;
      CalculateSuma(MemGrafik);
      start_day:= start_day + 1; // przesuniecie o 1 dzien
      if start_day>=7 then start_day:=1;   // po siedmiu dniach zaczynamy od nowa
      MemGrafik.Next;
    end;

    //uzupelniamy wolne dni
    // TODO: zrobic na repeat until wolnych < dni_wolnych
    MemGrafik.First;
    while not MemGrafik.EOF do
    begin
      while MemGrafik.FieldByName('suma').AsInteger < seDni_wolne.Value do
      begin
        // znajdz najniższą sumę w kolumnie i nie zaznaczoną
        select_day:= 0; // domyślnie przyjmujemy 0 i szukamy najmniejszej sumy w kolumnie
        for d:=1 to p_maxdni do
          if MemGrafik.FieldByName('d'+IntToStr(d)).AsInteger = 0 then
             if (select_day=0) or (RxDBGrid1.ColumnByFieldName('d'+IntToStr(d)).Footer.NumericValue < RxDBGrid1.ColumnByFieldName('d'+IntToStr(select_day)).Footer.NumericValue) then
                select_day:= d;

        // szukamy takich samych ale świątecznych
        for d:=1 to p_maxdni do
          if MemGrafik.FieldByName('d'+IntToStr(d)).AsInteger = 0 then
             if (RxDBGrid1.ColumnByFieldName('d'+IntToStr(d)).Footer.NumericValue = RxDBGrid1.ColumnByFieldName('d'+IntToStr(select_day)).Footer.NumericValue)
                and (RxDBGrid1.ColumnByFieldName('d'+IntToStr(d)).Tag=1) and (RxDBGrid1.ColumnByFieldName('d'+IntToStr(select_day)).Tag=0) then
                select_day:= d;

        // !!!! sprawdzamy czy jest conajmniej jedna niedziela w miesiącu wolna
        i_date:= StartOfTheMonth( DateTimePicker1.Date );
        czy_niedziela_wolna:= false;
        for d:=1 to p_maxdni do
        begin
          if (DayOfTheWeek(i_date) = 7) and (MemGrafik.FieldByName('d'+IntToStr(d)).AsInteger = 1) then // jest niedziela wolna
             begin
               czy_niedziela_wolna:= true;
               break;
             end;
          i_date:= IncDay(i_date, 1)
        end;

        if not czy_niedziela_wolna then
        begin
          i_date:= StartOfTheMonth( DateTimePicker1.Date );
          select_day_n:= 0;
          for d:=1 to p_maxdni do
          begin
            if (DayOfTheWeek(i_date) = 7) and (MemGrafik.FieldByName('d'+IntToStr(d)).AsInteger = 0) then // nie jest niedziela wolna
               begin
                 if (select_day_n=0) or (RxDBGrid1.ColumnByFieldName('d'+IntToStr(d)).Footer.NumericValue < RxDBGrid1.ColumnByFieldName('d'+IntToStr(select_day_n)).Footer.NumericValue) then
                 select_day_n:= d;
               end;
            i_date:= IncDay(i_date, 1)
          end;
          if select_day_n>0 then select_day:= select_day_n;
        end;
        // koniec szukania wolnej niedzieli

        // zaznaczymy dzien wolny dla select_day
        MemGrafik.Edit;
        MemGrafik.FieldByName('d'+IntToStr(select_day)).AsInteger:= 1;
        MemGrafik.Post;
        CalculateSuma(MemGrafik);
        RxDBGrid1.CalcStatTotals;
      end;

      MemGrafik.Next;
    end;
    //====================================================
  end;
  MemGrafik.EnableControls;
end;

procedure TZatrudnienieGrafik.CalculateSuma(DataSet: TDataSet);
var suma: integer;
    d: integer;
begin
  suma:=0;
  for d:=1 to 31 do
       if not DataSet.FieldByName('d'+IntToStr(d)).IsNull then
       begin
         if DataSet.FieldByName('d'+IntToStr(d)).AsInteger = 1 then inc(suma);
       end;
  DataSet.Edit;
  DataSet.FieldByName('suma').AsInteger:= suma;
  DataSet.Post;
end;

end.

