unit UOchRezerwacjaSkype;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, Buttons, TplGradientUnit, YearPlanner, rxdbgrid, rxmemds,
  datamodule, LR_Class, LR_DBSet, BGRABitmap, UOchRezerwacjaWidzen;

type
  { TTerminyEvent }

  { TTerminySkypeEvent }

  TTerminySkypeEvent = class(TTerminyWidzenEvent)
  public
    constructor Create;
  end;

  { TTerminyEvents }

  { TTerminySkypeEvents }

  TTerminySkypeEvents = class(TTerminyWidzenEvents)
  public
    constructor Create;
  end;

  { TOchRezerwacjaSkype }

  TOchRezerwacjaSkype = class(TForm)
    btnDrukuj: TBitBtn;
    btnUsun: TBitBtn;
    btnZaplanuj: TBitBtn;
    DSMemWidzenia: TDataSource;
    frDBDataSet1: TfrDBDataSet;
    frReport1: TfrReport;
    Image1: TImage;
    Label1: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel5: TPanel;
    plGradient2: TplGradient;
    RxDBGrid1: TRxDBGrid;
    MemWidzenia: TRxMemoryData;
    Splitter1: TSplitter;
    YearPlanner1: TYearPlanner;
    procedure btnDrukujClick(Sender: TObject);
    procedure btnUsunClick(Sender: TObject);
    procedure btnZaplanujClick(Sender: TObject);
    procedure DSMemWidzeniaDataChange(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure YearPlanner1DrawCell(Sender: TCustomControl; TheCanvas: TCanvas; Rect: TRect; CellData: TCellData; CellText: String);
    procedure YearPlanner1SelectionEnd(Sender: TObject);
    procedure YearPlanner1YearChanged(Sender: TObject);
  private
    Terminy: TTerminySkypeEvents;
    bookmarkWidzenia: TBookMark;
    procedure WczytajDane(StartDate, EndDate: TDateTime);
    procedure KartaOsadzonego;
  public
    procedure WczytajDaneTerminarza;
  end;

var
  OchRezerwacjaSkype: TOchRezerwacjaSkype;

implementation
uses DateUtils, UOchAddRezerwacjaSkype, UPenitForm, UOchForm;
{$R *.frm}

const
  SKYPE_DZIENNIE_MAX= 9; // od godz. 10:00 do 13:30:00 co 25 minut. ---- teraz jest w Terminy[].Widzen_dziennie
  SKYPE_OD_GODZ = 10;  // widzenie rozpoczynają się od godz 9:00
  SKYPE_PRZERWA = 10; // przerwa pomiędzy rozmowami w minutach
  SKYPE_CZAS    = 15; // czas trwania rozmowy w minutach

{ TTerminySkypeEvents }

constructor TTerminySkypeEvents.Create;
var
  m, d: Integer;
begin
  for m:=1 to 12 do
    for d:=1 to 31 do DaneTerminarza[m, d]:= TTerminySkypeEvent.Create;
end;

{ TTerminySkypeEvent }

constructor TTerminySkypeEvent.Create;
begin
  Widzen_dziennie:= SKYPE_DZIENNIE_MAX;
end;

{ TOchRezerwacjaSkype }

procedure TOchRezerwacjaSkype.FormCreate(Sender: TObject);
begin
   btnZaplanuj.Enabled:= DM.uprawnienia[18];
   btnUsun.Enabled    := DM.uprawnienia[18];

   Terminy:= TTerminySkypeEvents.Create;
   YearPlanner1.Year:= YearOf( Date() );
   WczytajDaneTerminarza;                  // wczytuje dane do Terminy i wyświetla w terminarzu
   // zaznacza bieżącą datę
     YearPlanner1.SelectCells(Date, Date);
     YearPlanner1.CellData[MonthOf(Date), DayOf(Date)].Selected:= true;
     YearPlanner1.StartDate:= Date;
     YearPlanner1.EndDate:= Date;
   // ---
   WczytajDane(Date, Date);                // wyświetla dane bieżącej daty
end;

procedure TOchRezerwacjaSkype.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  FreeAndNil(Terminy);
end;

procedure TOchRezerwacjaSkype.btnZaplanujClick(Sender: TObject);
var ido: integer;
begin
  if MemWidzenia.IsEmpty then exit;

  if MemWidzenia.FieldByName('IDO').AsInteger>0 then
  begin
    KartaOsadzonego;
    exit;
  end;

  if MemWidzenia.FieldByName('DataGodz').AsDateTime<=Now() then
  begin
    MessageDlg('Nie można zaplanować Skype dla daty i godziny wcześniejszej niż bieżąca.', mtInformation, [mbOK],0);
    exit;
  end;

  if DM.ZQOsadzeni.IsEmpty then
    ido:= 0
  else
    ido:= DM.ZQOsadzeni.FieldByName('IDO').AsInteger;

  with TOchAddRezerwacjaSkype.CreateIDO(Self, ido, MemWidzenia.FieldByName('DataGodz').AsDateTime) do
  begin
    if ShowModal = mrOK then
      WczytajDaneTerminarza;
      bookmarkWidzenia:= MemWidzenia.GetBookmark;
      WczytajDane(YearPlanner1.StartDate, YearPlanner1.EndDate);
      SetToBookmark(MemWidzenia, bookmarkWidzenia);
    Free;
  end;
end;

procedure TOchRezerwacjaSkype.DSMemWidzeniaDataChange(Sender: TObject; Field: TField);
begin
  btnUsun.Enabled:= ((not MemWidzenia.IsEmpty) and
                     (MemWidzenia.FieldByName('IDO').AsInteger>0) and
                     (DM.PelnaNazwa = MemWidzenia.FieldByName('User').AsString) and
                     (MemWidzenia.FieldByName('DataGodz').AsDateTime > Now))
                     or (DM.uprawnienia[8]);
end;

procedure TOchRezerwacjaSkype.btnUsunClick(Sender: TObject);
var ZQPom: TZQueryPom;
begin
  // uprawnienia sprawdzane podczas dataChange
  if MessageDlg('Czy usunąć zaplanowaną rozmowę Skype?', mtWarning, [mbYes, mbNo],0) <> mrYes then exit;

  try
    ZQPom:= TZQueryPom.Create(Self);
    ZQPom.SQL.Text:= 'DELETE FROM widzenia_skype WHERE ID=:id';
    ZQPom.ParamByName('id').AsInteger:= MemWidzenia.FieldByName('ID').AsInteger;
    ZQPom.ExecSQL;
  finally
    FreeAndNil(ZQPom);
  end;

  WczytajDaneTerminarza;

  bookmarkWidzenia:= MemWidzenia.GetBookmark;
  WczytajDane(YearPlanner1.StartDate, YearPlanner1.EndDate);
  SetToBookmark(MemWidzenia, bookmarkWidzenia);
end;

procedure TOchRezerwacjaSkype.btnDrukujClick(Sender: TObject);
begin
  if YearPlanner1.StartDate <> YearPlanner1.EndDate then
  begin
    MessageDlg('Można wydrukować tylko wybrany dzień.', mtWarning, [mbOK],0);
    exit;
  end;

  frReport1.LoadFromFile(DM.Path_Raporty + 'och_rezerwacje_Widz_Skype.lrf');
  DM.SetMemoReport(frReport1, 'Memo_Data', 'Kłodzko, dn. '+DM.GetDateFormatPismo(Date, 'dd MMMM yyyy')+' r.' );
  DM.SetMemoReport(frReport1, 'Memo_Wykaz', 'Planowanych rozmów przez Skype');
  DM.SetMemoReport(frReport1, 'Memo_WDniu', 'w dniu '+DM.GetDateFormatPismo(YearPlanner1.StartDate, 'dd-MM-yyyy')+' r.');
  frReport1.ShowReport;
end;

procedure TOchRezerwacjaSkype.YearPlanner1DrawCell(Sender: TCustomControl; TheCanvas: TCanvas; Rect: TRect; CellData: TCellData; CellText: String);
var m,d: integer;
begin
  m:= MonthOf( CellData.CellDate );
  d:= DayOf( CellData.CellDate );
  Terminy[m,d].DrawCell(TheCanvas, Rect);
end;

procedure TOchRezerwacjaSkype.YearPlanner1SelectionEnd(Sender: TObject);
begin
  WczytajDane(YearPlanner1.StartDate, YearPlanner1.EndDate);
end;

procedure TOchRezerwacjaSkype.YearPlanner1YearChanged(Sender: TObject);
begin
  WczytajDaneTerminarza;
end;

procedure TOchRezerwacjaSkype.WczytajDane(StartDate, EndDate: TDateTime);
var
  ZQPom: TZQueryPom;
  i: Integer;
  godzW: TDateTime;
  minutaW, Widzen_dziennie: integer;
  m, d: Word;

  Procedure AppendToMemo;
  var j: integer;
  begin
    MemWidzenia.Append;
    for j:=0 to ZQPom.FieldCount-1 do
        MemWidzenia.Fields[j].AsVariant:= ZQPom.Fields[j].AsVariant;  // kolejność w bazie i w MemWidzenia musi być identyczna
    MemWidzenia.Post;
  end;

begin
  if not YearPlanner1.IsSelected(StartDate) then
    begin
      MemWidzenia.EmptyTable;
      exit;
    end;

  try
    ZQPom:= TZQueryPom.Create(Self);
    ZQPom.SQL.Text:= 'SELECT * FROM widzenia_skype';

    MemWidzenia.DisableControls;
    MemWidzenia.EmptyTable;
    // wczytujemy konkretny dzień i uzupełniamy wakatami
    if StartDate=EndDate then
    begin
      RxDBGrid1.ColumnByFieldName('DataGodz').DisplayFormat:= 'hh:nn';
      ZQPom.SQL.Add('WHERE DATE(DataGodz)=:StartDate'); // warunek daty
      ZQPom.SQL.Add('ORDER BY DataGodz');
      ZQPom.ParamByName('StartDate').AsDate:= StartDate;
      ZQPom.Open;

      m:= MonthOf( StartDate );
      d:= DayOf( StartDate );
      Widzen_dziennie:= Terminy[m,d].Widzen_dziennie;

      for i:=0 to Widzen_dziennie-1 do
      begin
        minutaW:= i * (SKYPE_CZAS + SKYPE_PRZERWA);
        godzW:= EncodeTime(SKYPE_OD_GODZ, 0, 0, 0);
        godzW:= IncMinute(godzW, minutaW);
        if MinuteOfTheDay(ZQPom.FieldByName('DataGodz').AsDateTime) = MinuteOfTheDay(godzW) then
        begin
          AppendToMemo;
          ZQPom.Next;
        end
        else
        begin
          MemWidzenia.Append;
          MemWidzenia.FieldByName('DataGodz').AsDateTime:= ComposeDateTime(StartDate, godzW);
          MemWidzenia.FieldByName('IDO').AsInteger:= 0; // wakat oznaczamy IDO=0;
          MemWidzenia.Post;
        end;
      end;
    end
    else
    // wczytujemy zakres dni bez uzupełniania wakatów
    begin
      RxDBGrid1.ColumnByFieldName('DataGodz').DisplayFormat:= 'yyyy/mm/dd hh:nn';
      ZQPom.SQL.Add('WHERE Date(DataGodz) BETWEEN :StartDate AND :EndDate'); // warunek od StartDate do EndDate
      ZQPom.SQL.Add('ORDER BY DataGodz');
      ZQPom.ParamByName('StartDate').AsDate:= StartDate;
      ZQPom.ParamByName('EndDate').AsDate:= EndDate;
      ZQPom.Open;

      while not ZQPom.EOF do
      begin
        AppendToMemo;
        ZQPom.Next;
      end;
    end;
  finally
    FreeAndNil(ZQPom);
  end;
  MemWidzenia.First;
  MemWidzenia.EnableControls;
end;

procedure TOchRezerwacjaSkype.KartaOsadzonego;
begin
  if (DM.Wychowawca<>'')and(DM.Dzial='Penit') then
    with TPenitForm.Create(Self) do
    begin
         SetIDO( MemWidzenia.FieldByName('IDO').AsInteger );
         ShowModal;
         Free;
    end
  else
    with TOchForm.Create(Self) do
    begin
         SetIDO( MemWidzenia.FieldByName('IDO').AsInteger );
         ShowModal;
         Free;
    end;
end;

procedure TOchRezerwacjaSkype.WczytajDaneTerminarza;
var ZQPom: TZQueryPom;
    d,m : integer;
    pomData: TDateTime;
begin
  Terminy.Clear;
  Terminy.ZaznaczSwieta(YearPlanner1.Year);
  try
    ZQPom:= TZQueryPom.Create(Self);
    ZQPom.SQL.Text:= 'SELECT * FROM widzenia_skype WHERE Date(DataGodz) BETWEEN :StartDate AND :EndDate';
    ZQPom.ParamByName('StartDate').AsDate:= EncodeDate( YearPlanner1.Year ,1,1);
    ZQPom.ParamByName('EndDate').AsDate  := EncodeDate( YearPlanner1.Year ,12,31);
    ZQPom.Open;

    while not ZQPom.Eof do
    begin
      pomData:= ZQPom.FieldByName('DataGodz').AsDateTime;

      m:= MonthOf( pomData );
      d:= DayOf( pomData );
      Terminy[m,d].SumaWidzen:= Terminy[m,d].SumaWidzen + 1;

      ZQPom.Next;
    end;
  finally
    FreeAndNil(ZQPom);
  end;
  YearPlanner1.Invalidate;
end;

end.

