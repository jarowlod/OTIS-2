unit UZatWniosekUrlopowy;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, FileUtil, ZDataset, LR_Class, Forms, Controls,
  Graphics, Dialogs, ExtCtrls, Buttons, StdCtrls, DbCtrls, MaskEdit, ComCtrls,
  DateTimePicker, DateUtils, math, datamodule, LSControls;

type

  { TZatWniosekUrolopowy }

  TZatWniosekUrolopowy = class(TForm)
    btn_Drukuj_decyzje1: TBitBtn;
    btn_StawkiPlac: TBitBtn;
    btn_Drukuj_urlop: TBitBtn;
    btn_Oblicz: TBitBtn;
    btn_StawkiPlac1: TBitBtn;
    btn_Zapisz_daty: TBitBtn;
    btn_Drukuj_decyzje: TBitBtn;
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
    ed_przepracowane_godz2: TLSCurrencyEdit;
    ed_przepracowane_godz3: TLSCurrencyEdit;
    ed_przepracowane_godz4: TLSCurrencyEdit;
    ed_przepracowane_godz5: TLSCurrencyEdit;
    ed_przepracowane_godz6: TLSCurrencyEdit;
    ed_przerwa: TEdit;
    ed_miesiac1: TEdit;
    ed_godz1: TEdit;
    ed_godz2: TEdit;
    ed_miesiac2: TEdit;
    ed_stawka_godz1: TLSCurrencyEdit;
    ed_stawka_godz2: TLSCurrencyEdit;
    ed_stawka_godz3: TLSCurrencyEdit;
    ed_przepracowane_godz1: TLSCurrencyEdit;
    ed_stawka_godz4: TLSCurrencyEdit;
    ed_stawka_godz5: TLSCurrencyEdit;
    ed_stawka_godz6: TLSCurrencyEdit;
    ed_stawka_wyliczeniowa2: TLSCurrencyEdit;
    ed_stawka_wyliczeniowa3: TLSCurrencyEdit;
    ed_stawka_za_msc1: TLSCurrencyEdit;
    ed_stawka_wyliczeniowa: TLSCurrencyEdit;
    ed_stawka_za_msc2: TLSCurrencyEdit;
    ed_stawka_wyliczeniowa1: TLSCurrencyEdit;
    ed_wyplata1: TLSCurrencyEdit;
    ed_wyplata2: TLSCurrencyEdit;
    ed_wyplata3: TLSCurrencyEdit;
    ed_wyplata4: TLSCurrencyEdit;
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
    Label21: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    lbl_msc4: TLabel;
    lbl_msc5: TLabel;
    lbl_msc6: TLabel;
    lbl_stawka1: TLabel;
    lbl_stawka2: TLabel;
    lbl_msc1: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    lbl_msc2: TLabel;
    lbl_msc3: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    PageControlUrlopPlatny: TPageControl;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel_urlop_platny: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel_urlop_platny1: TPanel;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    ZQZatUrlop: TZQuery;
    procedure btn_Drukuj_decyzje1Click(Sender: TObject);
    procedure btn_Drukuj_decyzjeClick(Sender: TObject);
    procedure btn_Drukuj_urlopClick(Sender: TObject);
    procedure btn_ObliczClick(Sender: TObject);
    procedure btn_StawkiPlacClick(Sender: TObject);
    procedure btn_Zapisz_datyClick(Sender: TObject);
    procedure dtp_urlopod1EditingDone(Sender: TObject);
    procedure ed_stawka_godz1Change(Sender: TObject);
    procedure ed_stawka_godz4EditingDone(Sender: TObject);
    procedure ed_stawka_wyliczeniowa3EditingDone(Sender: TObject);
    procedure ed_stawka_wyliczeniowaChange(Sender: TObject);
    procedure ed_stawka_za_msc1EditingDone(Sender: TObject);
  private
     fIDO: integer; // IDO osadzonego
     fID : integer; // ID zat_zatrudnieni
     fData_Urlopu: TDate; // zapamiętuje datę urlopu w celu sprawdzenia czy user zmienił miesiąc. Dot. wyliczeń płatnego.
     procedure Oblicz_Urlop;
     procedure Oblicz_Date_Planowanego_Urlopu;
     function DateToStrOrNull(d: TDate): string;
     function DateToStrOrNull(d: TDate; nullstr: string): string;
     procedure Wczytaj_Dane_Platnego_Urlopu;
     procedure Wczytaj_Dane_Platnego_Urlopu__STARE;
     function WczytajStawkeZaMSC(d: TDate): float;
  public
     procedure SetIDO(sIDO, sID: integer);
  end;

var
  ZatWniosekUrolopowy: TZatWniosekUrolopowy;

implementation
uses UZatStawkiPlac;
{$R *.frm}

{ TZatWniosekUrolopowy }

procedure TZatWniosekUrolopowy.SetIDO(sIDO, sID: integer);
begin
  fIDO:= sIDO;
  fID := sID;
  //uprawnienia
  btn_Zapisz_daty.Enabled:= DM.uprawnienia[15]; // Zatrudnienie


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
     end
  else  // jeśli nie ma ustalonego urlopu to bierzemy jeśli jest datę planowanego urlopu
     if not ZQZatUrlop.FieldByName('data_nastepnego_urlopu').IsNull then
              dtp_urlopod1.Date:= ZQZatUrlop.FieldByName('data_nastepnego_urlopu').AsDateTime;

  // WYLICZENIA URLOPU PŁATNEGO
  lbl_msc1.Caption:= '';
  lbl_msc2.Caption:= '';
  lbl_msc3.Caption:= '';
  lbl_msc4.Caption:= '';
  lbl_msc5.Caption:= '';
  lbl_msc6.Caption:= '';

  Panel_urlop_platny.Enabled := (ZQZatUrlop.FieldByName('forma').AsString = 'ODPŁATNIE');
  Panel_urlop_platny1.Enabled := (ZQZatUrlop.FieldByName('forma').AsString = 'ODPŁATNIE');
  fData_Urlopu:= dtp_urlopod1.Date;
  Wczytaj_Dane_Platnego_Urlopu;
  Wczytaj_Dane_Platnego_Urlopu__STARE;
end;

procedure TZatWniosekUrolopowy.btn_Drukuj_urlopClick(Sender: TObject);
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

procedure TZatWniosekUrolopowy.btn_Drukuj_decyzjeClick(Sender: TObject);
begin
  frReport1.LoadFromFile(DM.Path_Raporty + 'zat_DecUrlopPlatny.lrf');
  DM.SetMemoReport(frReport1,'memo_DataPisma1', 'Kłodzko, dn. '+DM.GetDateFormatPismo(Date, 'dd MMMM yyyy')+' r.' );

  DM.SetMemoReport(frReport1, 'Memo_msc1', lbl_msc1.Caption );
  DM.SetMemoReport(frReport1, 'Memo_msc2', lbl_msc2.Caption );
  DM.SetMemoReport(frReport1, 'Memo_msc3', lbl_msc3.Caption );

  DM.SetMemoReport(frReport1, 'Memo_kwota1', ed_stawka_godz1.Text );
  DM.SetMemoReport(frReport1, 'Memo_kwota2', ed_stawka_godz2.Text );
  DM.SetMemoReport(frReport1, 'Memo_kwota3', ed_stawka_godz3.Text );

  DM.SetMemoReport(frReport1, 'Memo_godzin1', ed_przepracowane_godz1.Text );
  DM.SetMemoReport(frReport1, 'Memo_godzin2', ed_przepracowane_godz2.Text );
  DM.SetMemoReport(frReport1, 'Memo_godzin3', ed_przepracowane_godz3.Text );

  DM.SetMemoReport(frReport1, 'Memo_stawka', ed_stawka_wyliczeniowa.Text );

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

  DM.SetMemoReport(frReport1, 'Memo_stawka1', Format('%m', [ed_stawka_za_msc1.Value + ed_stawka_wyliczeniowa.Value]) );
  DM.SetMemoReport(frReport1, 'Memo_stawka2', Format('%m', [ed_stawka_za_msc2.Value + ed_stawka_wyliczeniowa.Value]) );

  DM.SetMemoReport(frReport1, 'Memo_wynagrodzenie1', ed_wyplata1.Text );
  DM.SetMemoReport(frReport1, 'Memo_wynagrodzenie2', ed_wyplata2.Text );

  if dtp_urlopdo2.DateIsNull then
  begin
    DM.SetMemoReport(frReport1, 'Memo_stawka2', '---' );
    DM.SetMemoReport(frReport1, 'Memo_wynagrodzenie2', '---' );
  end;

  frReport1.ShowReport;
end;

procedure TZatWniosekUrolopowy.btn_ObliczClick(Sender: TObject);
begin
  Oblicz_Urlop;
end;

// zapisz daty urlopu.
procedure TZatWniosekUrolopowy.btn_Zapisz_datyClick(Sender: TObject);
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

  Wczytaj_Dane_Platnego_Urlopu;
  Wczytaj_Dane_Platnego_Urlopu__STARE;
end;

procedure TZatWniosekUrolopowy.Oblicz_Date_Planowanego_Urlopu;
var Y,M,D: Word;
begin
  DecodeDate(dtp_od1.Date, Y, M, D);
  Y:= YearOf(Date); // zwiększamy o 1 bieżący rok
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

function TZatWniosekUrolopowy.WczytajStawkeZaMSC(d: TDate): float;
var ZQPom: TZQueryPom;
    i: integer;
begin
  Result:= 0;
  if d=NullDate then exit;
  try
    ZQPom:= TZQueryPom.Create(Self);
    ZQPom.SQL.Text:= 'SELECT * FROM zat_stawki_plac WHERE rok=:rok';
    ZQPom.ParamByName('rok').AsInteger:= YearOf(d);
    ZQPom.Open;
    if not ZQPom.IsEmpty then
    begin
      for i:=1 to 5 do
        if ZQPom.FieldByName('nazwa_'+IntToStr(i)).AsString.IndexOf(FormatDateTime('MMMM', d,[]))>0 then
           Result:= ZQPom.FieldByName('stawka_'+IntToStr(i)).AsCurrency;
    end;
  finally
    FreeAndNil(ZQPom);
  end;
end;

//=====================================================================================================================
//                                       WYLICZENIA PŁATNEGO URLOPU
//                                       AKTUALNE
//=====================================================================================================================
procedure TZatWniosekUrolopowy.Wczytaj_Dane_Platnego_Urlopu;
var data1, data2,data3: TDate;
begin
  // zerujemy wartości nadgodzin jak zmienił się miesiąc urlopu
  if MonthOf(fData_Urlopu) <> MonthOf(dtp_urlopod1.Date) then
    begin
      ed_stawka_godz4.Value:= 0;
      ed_stawka_godz5.Value:= 0;
      ed_stawka_godz6.Value:= 0;
      ed_przepracowane_godz4.Value:= 0;
      ed_przepracowane_godz5.Value:= 0;
      ed_przepracowane_godz6.Value:= 0;
      ed_stawka_wyliczeniowa3.Value:= 0;
    end;

  data3:= IncMonth(dtp_urlopod1.Date, -1);
  data2:= IncMonth(data3, -1);
  data1:= IncMonth(data2, -1);
  lbl_msc4.Caption:='za '+ FormatDateTime('MMMM YYYY', data1,[]);
  lbl_msc5.Caption:='za '+ FormatDateTime('MMMM YYYY', data2,[]);
  lbl_msc6.Caption:='za '+ FormatDateTime('MMMM YYYY', data3,[]);

  // oblicz wypłatę
  ed_stawka_godz1Change(Self); // edycja kaskadowo zmienia kolejne wartości zależne
end;

procedure TZatWniosekUrolopowy.ed_stawka_godz4EditingDone(Sender: TObject);
var stawka_godzinowa: float;
    suma_kwot, suma_godz: float;
begin
  suma_kwot:= ed_stawka_godz4.Value + ed_stawka_godz5.Value + ed_stawka_godz6.Value;
  suma_godz:= ed_przepracowane_godz4.Value + ed_przepracowane_godz5.Value + ed_przepracowane_godz6.Value;

  if suma_godz>0 then stawka_godzinowa:= (suma_kwot / suma_godz)
                 else stawka_godzinowa:= 0;

  stawka_godzinowa:= SimpleRoundTo(stawka_godzinowa, -2);
  ed_stawka_wyliczeniowa3.Value:= stawka_godzinowa;
  ed_stawka_wyliczeniowa3EditingDone(Sender);
end;

procedure TZatWniosekUrolopowy.ed_stawka_wyliczeniowa3EditingDone(
  Sender: TObject);
begin
  ed_wyplata3.Value:= ed_stawka_wyliczeniowa3.Value * StrToIntDef(ed_godz1.Text, 0);
  ed_wyplata4.Value:= ed_stawka_wyliczeniowa3.Value * StrToIntDef(ed_godz2.Text, 0);
end;

procedure TZatWniosekUrolopowy.btn_Drukuj_decyzje1Click(Sender: TObject);
begin
  frReport1.LoadFromFile(DM.Path_Raporty + 'zat_DecUrlopPlatny1.lrf');
  DM.SetMemoReport(frReport1,'memo_DataPisma1', 'Kłodzko, dn. '+DM.GetDateFormatPismo(Date, 'dd MMMM yyyy')+' r.' );

  DM.SetMemoReport(frReport1, 'Memo_msc1', lbl_msc4.Caption );
  DM.SetMemoReport(frReport1, 'Memo_msc2', lbl_msc5.Caption );
  DM.SetMemoReport(frReport1, 'Memo_msc3', lbl_msc6.Caption );

  DM.SetMemoReport(frReport1, 'Memo_kwota1', ed_stawka_godz4.Text );
  DM.SetMemoReport(frReport1, 'Memo_kwota2', ed_stawka_godz5.Text );
  DM.SetMemoReport(frReport1, 'Memo_kwota3', ed_stawka_godz6.Text );

  DM.SetMemoReport(frReport1, 'Memo_godzin1', ed_przepracowane_godz4.Text );
  DM.SetMemoReport(frReport1, 'Memo_godzin2', ed_przepracowane_godz5.Text );
  DM.SetMemoReport(frReport1, 'Memo_godzin3', ed_przepracowane_godz6.Text );

  DM.SetMemoReport(frReport1, 'Memo_stawka', ed_stawka_wyliczeniowa3.Text );

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

  DM.SetMemoReport(frReport1, 'Memo_stawka1', Format('%m', [ed_stawka_wyliczeniowa3.Value]) );
  DM.SetMemoReport(frReport1, 'Memo_stawka2', Format('%m', [ed_stawka_wyliczeniowa3.Value]) );

  DM.SetMemoReport(frReport1, 'Memo_wynagrodzenie1', ed_wyplata3.Text );
  DM.SetMemoReport(frReport1, 'Memo_wynagrodzenie2', ed_wyplata4.Text );

  if dtp_urlopdo2.DateIsNull then
  begin
    DM.SetMemoReport(frReport1, 'Memo_stawka2', '---' );
    DM.SetMemoReport(frReport1, 'Memo_wynagrodzenie2', '---' );
  end;

  frReport1.ShowReport;
end;

//=====================================================================================================================
//                                       WYLICZENIA PŁATNEGO URLOPU
//                                       Stara interpretacja
//=====================================================================================================================

procedure TZatWniosekUrolopowy.ed_stawka_wyliczeniowaChange(Sender: TObject);
begin
  ed_stawka_wyliczeniowa1.Value:= ed_stawka_wyliczeniowa.Value;
  ed_stawka_wyliczeniowa2.Value:= ed_stawka_wyliczeniowa.Value;
  ed_stawka_za_msc1EditingDone(Sender);
end;

procedure TZatWniosekUrolopowy.ed_stawka_za_msc1EditingDone(Sender: TObject);
begin
  ed_wyplata1.Value:= (ed_stawka_za_msc1.Value + ed_stawka_wyliczeniowa1.Value) * StrToIntDef(ed_godz1.Text, 0);
  ed_wyplata2.Value:= (ed_stawka_za_msc2.Value + ed_stawka_wyliczeniowa2.Value) * StrToIntDef(ed_godz2.Text, 0);

  lbl_stawka1.Caption:= Format('%m', [ed_stawka_za_msc1.Value + ed_stawka_wyliczeniowa1.Value]);
  lbl_stawka2.Caption:= Format('%m', [ed_stawka_za_msc2.Value + ed_stawka_wyliczeniowa2.Value]);
end;

procedure TZatWniosekUrolopowy.ed_stawka_godz1Change(Sender: TObject);
var stawka_godzinowa: float;
    suma_kwot, suma_godz: float;
begin
  suma_kwot:= ed_stawka_godz1.Value + ed_stawka_godz2.Value + ed_stawka_godz3.Value;
  suma_godz:= ed_przepracowane_godz1.Value + ed_przepracowane_godz2.Value + ed_przepracowane_godz3.Value;

  if suma_godz>0 then stawka_godzinowa:= (suma_kwot / suma_godz)
                 else stawka_godzinowa:= 0;

  stawka_godzinowa:= SimpleRoundTo(stawka_godzinowa, -2);
  ed_stawka_wyliczeniowa.Value:= stawka_godzinowa;
  ed_stawka_wyliczeniowaChange(Sender);
end;

procedure TZatWniosekUrolopowy.btn_StawkiPlacClick(Sender: TObject);
begin
  with TZatStawkiPlac.Create(Self) do
  begin
    SetIDO(fIDO, fID);
    ShowModal;
    Free;
  end;
end;

procedure TZatWniosekUrolopowy.Wczytaj_Dane_Platnego_Urlopu__STARE;
var data1, data2,data3: TDate;
begin
  // zerujemy wartości nadgodzin jak zmienił się miesiąc urlopu
  if MonthOf(fData_Urlopu) <> MonthOf(dtp_urlopod1.Date) then
    begin
      ed_stawka_godz1.Value:= 0;
      ed_stawka_godz2.Value:= 0;
      ed_stawka_godz3.Value:= 0;
      ed_przepracowane_godz1.Value:= 0;
      ed_przepracowane_godz2.Value:= 0;
      ed_przepracowane_godz3.Value:= 0;
      ed_stawka_wyliczeniowa.Value:= 0;
    end;

  data3:= IncMonth(dtp_urlopod1.Date, -1);
  data2:= IncMonth(data3, -1);
  data1:= IncMonth(data2, -1);
  lbl_msc1.Caption:='za '+ FormatDateTime('MMMM YYYY', data1,[]);
  lbl_msc2.Caption:='za '+ FormatDateTime('MMMM YYYY', data2,[]);
  lbl_msc3.Caption:='za '+ FormatDateTime('MMMM YYYY', data3,[]);

  // wczytujemy stawki za w/w miesiące
  ed_stawka_za_msc1.Value:= WczytajStawkeZaMSC(dtp_urlopod1.Date);
  ed_stawka_za_msc2.Value:= WczytajStawkeZaMSC(dtp_urlopod2.Date);

  // oblicz wypłatę
  ed_stawka_godz1Change(Self); // edycja kaskadowo zmienia kolejne wartości zależne
end;

//END==================================================================================================================
//                                       WYLICZENIA PŁATNEGO URLOPU
//                                       Stara interpretacja
//=====================================================================================================================


end.

