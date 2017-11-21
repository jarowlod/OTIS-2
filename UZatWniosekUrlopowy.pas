unit UZatWniosekUrlopowy;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, FileUtil, ZDataset, LR_Class, Forms, Controls,
  Graphics, Dialogs, ExtCtrls, Buttons, StdCtrls, DbCtrls, datamodule,
  DateTimePicker, DateUtils, math;

type

  { TZatWniosekUrolopowy }

  TZatWniosekUrolopowy = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    dtp_urlop_planowany: TDateTimePicker;
    dtp_oddnia: TDateTimePicker;
    dtp_od3: TDateTimePicker;
    dtp_do3: TDateTimePicker;
    dtp_od4: TDateTimePicker;
    dtp_do4: TDateTimePicker;
    dtp_od5: TDateTimePicker;
    dtp_od6: TDateTimePicker;
    dtp_od7: TDateTimePicker;
    dtp_od8: TDateTimePicker;
    dtp_do5: TDateTimePicker;
    dtp_do6: TDateTimePicker;
    dtp_dodnia: TDateTimePicker;
    dtp_urlopod1: TDateTimePicker;
    dtp_do7: TDateTimePicker;
    dtp_do8: TDateTimePicker;
    dtp_urlopod2: TDateTimePicker;
    dtp_urlopdo1: TDateTimePicker;
    dtp_urlopdo2: TDateTimePicker;
    dtp_od1: TDateTimePicker;
    dtp_do1: TDateTimePicker;
    dtp_od2: TDateTimePicker;
    dtp_do2: TDateTimePicker;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DSZatUrlop: TDataSource;
    ed_dni1: TEdit;
    ed_dni2: TEdit;
    ed_przerwa: TEdit;
    ed_miesiac1: TEdit;
    ed_godz1: TEdit;
    ed_godz2: TEdit;
    ed_miesiac2: TEdit;
    frReport1: TfrReport;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label2: TLabel;
    Label20: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    ZQZatUrlop: TZQuery;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure dtp_urlopod1EditingDone(Sender: TObject);
  private
     fIDO: integer; // IDO osadzonego
     fID : integer; // ID zat_zatrudnieni
     procedure Oblicz_Urlop;
     procedure Oblicz_Date_Planowanego_Urlopu;
     function DateToStrOrNull(d: TDate): string;
     function DateToStrOrNull(d: TDate; nullstr: string): string;
  public
     procedure SetIDO(sIDO, sID: integer);
  end;

var
  ZatWniosekUrolopowy: TZatWniosekUrolopowy;

implementation

{$R *.lfm}

{ TZatWniosekUrolopowy }

procedure TZatWniosekUrolopowy.SetIDO(sIDO, sID: integer);
begin
  fIDO:= sIDO;
  fID := sID;
  //uprawnienia
  BitBtn2.Enabled:= DM.uprawnienia[15]; // Zatrudnienie


  //wczytujemy potrzebne dane do kontrolek formy
  ZQZatUrlop.ParamByName('id').AsInteger:= fID;
  ZQZatUrlop.Open;

  if not ZQZatUrlop.FieldByName('zat_od').IsNull then
     dtp_oddnia.Date:= ZQZatUrlop.FieldByName('zat_od').AsDateTime;

  if not ZQZatUrlop.FieldByName('data_nastepnego_urlopu').IsNull then
     dtp_urlop_planowany.Date:= ZQZatUrlop.FieldByName('data_nastepnego_urlopu').AsDateTime;

  // ustalamy datę urlopu
  if not ZQZatUrlop.FieldByName('urlop_od').IsNull then
     begin
       // domyślnie data obecnie zaplanowanego urlopu
       dtp_urlopod1.Date:= ZQZatUrlop.FieldByName('urlop_od').AsDateTime;

       // jeśli data urlopu jest mniejsza od bierzącej to przyjmujemy datę planowanego urlopu (jeśli jest).
       if ZQZatUrlop.FieldByName('urlop_od').AsDateTime < Date() then
          begin
            if not ZQZatUrlop.FieldByName('data_nastepnego_urlopu').IsNull then
              dtp_urlopod1.Date:= ZQZatUrlop.FieldByName('data_nastepnego_urlopu').AsDateTime;
          end;
     end;
end;

procedure TZatWniosekUrolopowy.BitBtn1Click(Sender: TObject);
begin
  frReport1.LoadFromFile(DM.Path_Raporty + 'zat_WniosekUrlopowy.lrf');
  DM.SetMemoReport(frReport1,'memo_DataPisma1', 'Kłodzko, dn. '+DM.GetDateFormatPismo(Date, 'dd MMMM yyyy')+' r.' );

  DM.SetMemoReport(frReport1, 'Memo_oddnia', DateToStrOrNull( dtp_oddnia.Date) );
  DM.SetMemoReport(frReport1, 'Memo_dodnia', DateToStrOrNull( dtp_dodnia.Date,'NADAL') );

  DM.SetMemoReport(frReport1, 'Memo_od1', DateToStrOrNull( dtp_od1.Date) );
  DM.SetMemoReport(frReport1, 'Memo_od2', DateToStrOrNull( dtp_od2.Date) );
  DM.SetMemoReport(frReport1, 'Memo_od3', DateToStrOrNull( dtp_od3.Date) );
  DM.SetMemoReport(frReport1, 'Memo_od4', DateToStrOrNull( dtp_od4.Date) );
  DM.SetMemoReport(frReport1, 'Memo_od5', DateToStrOrNull( dtp_od5.Date) );
  DM.SetMemoReport(frReport1, 'Memo_od6', DateToStrOrNull( dtp_od6.Date) );
  DM.SetMemoReport(frReport1, 'Memo_od7', DateToStrOrNull( dtp_od7.Date) );
  DM.SetMemoReport(frReport1, 'Memo_od8', DateToStrOrNull( dtp_od8.Date) );

  DM.SetMemoReport(frReport1, 'Memo_do1', DateToStrOrNull( dtp_do1.Date) );
  DM.SetMemoReport(frReport1, 'Memo_do2', DateToStrOrNull( dtp_do2.Date) );
  DM.SetMemoReport(frReport1, 'Memo_do3', DateToStrOrNull( dtp_do3.Date) );
  DM.SetMemoReport(frReport1, 'Memo_do4', DateToStrOrNull( dtp_do4.Date) );
  DM.SetMemoReport(frReport1, 'Memo_do5', DateToStrOrNull( dtp_do5.Date) );
  DM.SetMemoReport(frReport1, 'Memo_do6', DateToStrOrNull( dtp_do6.Date) );
  DM.SetMemoReport(frReport1, 'Memo_do7', DateToStrOrNull( dtp_do7.Date) );
  DM.SetMemoReport(frReport1, 'Memo_do8', DateToStrOrNull( dtp_do8.Date) );

  DM.SetMemoReport(frReport1, 'Memo_przerwa', ed_przerwa.Text );

  DM.SetMemoReport(frReport1, 'Memo_urlopod1', DateToStrOrNull( dtp_urlopod1.Date) );
  DM.SetMemoReport(frReport1, 'Memo_urlopod2', DateToStrOrNull( dtp_urlopod2.Date) );
  DM.SetMemoReport(frReport1, 'Memo_urlopdo1', DateToStrOrNull( dtp_urlopdo1.Date) );
  DM.SetMemoReport(frReport1, 'Memo_urlopdo2', DateToStrOrNull( dtp_urlopdo2.Date) );

  DM.SetMemoReport(frReport1, 'Memo_dni1', ed_dni1.Text );
  DM.SetMemoReport(frReport1, 'Memo_dni2', ed_dni2.Text );
  DM.SetMemoReport(frReport1, 'Memo_godz1', ed_godz1.Text );
  DM.SetMemoReport(frReport1, 'Memo_godz2', ed_godz2.Text );
  DM.SetMemoReport(frReport1, 'Memo_miesiac1', ed_miesiac1.Text );
  DM.SetMemoReport(frReport1, 'Memo_miesiac2', ed_miesiac2.Text );

  DM.SetMemoReport(frReport1, 'Memo_urlopod', DateToStrOrNull( dtp_urlopod1.Date) );
  if dtp_urlopdo2.DateIsNull then DM.SetMemoReport(frReport1, 'Memo_urlopdo', DateToStrOrNull( dtp_urlopdo1.Date) )
                             else DM.SetMemoReport(frReport1, 'Memo_urlopdo', DateToStrOrNull( dtp_urlopdo2.Date) );

  frReport1.ShowReport;
end;

// zapisz daty urlopu.
procedure TZatWniosekUrolopowy.BitBtn2Click(Sender: TObject);
var ZQ: TZQueryPom;
begin
  ZQ:= TZQueryPom.Create(Self);

  ZQ.SQL.Text:= 'UPDATE zat_zatrudnieni SET urlop_od = :urlop_od, urlop_do = :urlop_do, data_nastepnego_urlopu = :urlop_plan WHERE id = :id';
  ZQ.ParamByName('urlop_od').AsDate := dtp_urlopod1.Date;
  if dtp_urlopdo2.DateIsNull then ZQ.ParamByName('urlop_do').AsDate := dtp_urlopdo1.Date
                             else ZQ.ParamByName('urlop_do').AsDate := dtp_urlopdo2.Date;

  ZQ.ParamByName('urlop_plan').AsDate:= dtp_urlop_planowany.Date;

  ZQ.ParamByName('id').AsInteger := fID;
  ZQ.ExecSQL;

  FreeAndNil(ZQ);
  MessageDlg('Zapisano daty urlopu.', mtWarning, [mbOK],0);
end;

procedure TZatWniosekUrolopowy.dtp_urlopod1EditingDone(Sender: TObject);
begin
  Oblicz_Urlop;
end;

procedure TZatWniosekUrolopowy.Oblicz_Urlop;
var dni_urlopu  : integer;
    dni_urlopu_1: integer;
    data_urlopu : TDate;
    data_last   : TDate;
    is_pierwszy : boolean;

    etat        : integer;
    godziny     : integer;
begin
  dtp_urlopdo1.Date:= NullDate;
  dtp_urlopod2.Date:= NullDate;
  dtp_urlopdo2.Date:= NullDate;
  ed_dni1.Text     := '';
  ed_dni2.Text     := '';
  ed_godz1.Text    := '';
  ed_godz2.Text    := '';
  ed_miesiac1.Text := '';
  ed_miesiac2.Text := '';

  dni_urlopu  := 0;
  dni_urlopu_1:= 0;
  data_urlopu := dtp_urlopod1.Date;
  data_last   := data_urlopu;
  is_pierwszy := true;

  ed_miesiac1.Text:= FormatDateTime('MMMM YYYY', data_urlopu,[]);

  while dni_urlopu < 14 do
  begin
    // sprawdzam czy mamy przeskok miesiąca
    // out: is_pierwszy:= false;
    if MonthOf(data_urlopu) <> MonthOf(data_last) then
    begin
      // nowy miesiąc
      is_pierwszy := false;
      dtp_urlopdo1.Date:= data_last;

      ed_miesiac2.Text:= FormatDateTime('MMMM YYYY', data_urlopu,[]);
      dtp_urlopod2.Date:= data_urlopu;
    end;
    //----------------------------------------------------------------

    // sprawdzam czy data_urlopu jest robocza
    // out: dni_urlopu ++;
    if not (DM.CzyWeekend(data_urlopu) or DM.CzySwieto(data_urlopu)) then
    begin
      inc(dni_urlopu);
      if is_pierwszy then
        begin
         ed_dni1.Text:= IntToStr(dni_urlopu);
         dni_urlopu_1:= dni_urlopu;
        end
      else
        ed_dni2.Text:= IntToStr(dni_urlopu-dni_urlopu_1);
    end;
    //--------------------------------------------------------------------

    data_last:= data_urlopu;
    data_urlopu:= IncDay(data_urlopu);
  end;

  // jak nie było przeskoku miesiąca to uzupełniamy kontrolkę o datę.
  if is_pierwszy then dtp_urlopdo1.Date:= data_last
                 else dtp_urlopdo2.Date:= data_last;

  //tutaj obliczenia godzin wg wzoru
  if ZQZatUrlop.FieldByName('forma').AsString = 'NIEODPŁATNIE' then exit;

  etat:= StrToIntDef( ZQZatUrlop.FieldByName('etat').AsString[1], 0);
  if is_pierwszy then
                begin
                  godziny:= ceil((etat * dni_urlopu)/8)*8;
                  ed_godz1.Text:= IntToStr(godziny);
                end
              else
                begin
                  godziny:= ceil((etat * dni_urlopu_1)/8)*8;
                  ed_godz1.Text:= IntToStr(godziny);

                  godziny:= ceil((etat * (dni_urlopu-dni_urlopu_1))/8)*8;
                  ed_godz2.Text:= IntToStr(godziny);
                end;
  Oblicz_Date_Planowanego_Urlopu;
end;

procedure TZatWniosekUrolopowy.Oblicz_Date_Planowanego_Urlopu;
var Y,M,D: Word;
begin
  DecodeDate(dtp_od1.Date, Y, M, D);
  Y:= YearOf(Date); // zwiększamy o 1 bierzący rok
  Inc(Y);
  dtp_urlop_planowany.Date:= EncodeDate(Y, M, D); // obliczamy datę urlopu przypadającą na przyszły rok
end;

function TZatWniosekUrolopowy.DateToStrOrNull(d: TDate): string;
begin
  result:= '';
  if d = NullDate then exit;
  result:= DateToStr(d);
end;

function TZatWniosekUrolopowy.DateToStrOrNull(d: TDate; nullstr: string): string;
begin
  result:= nullstr;
  if d = NullDate then exit;
  result:= DateToStr(d);
end;


end.

