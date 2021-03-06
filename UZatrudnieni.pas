unit UZatrudnieni;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, FileUtil, DateTimePicker, ZDataset, ZSqlUpdate,
  rxdbgrid, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls, ComCtrls,
  DbCtrls, Buttons, Menus, rxdbutils, LR_Class, LR_DBSet, LSControls, RTTICtrls,
  TplGradientUnit, DBGrids, dateutils, datamodule;

type

  { TZatrudnieni }

  TZatrudnieni = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    btnZmienOpisStanowiska: TBitBtn;
    btnZapiszZmiany: TBitBtn;
    btnDodajDoKoszyka: TSpeedButton;
    cbZatNaMsc: TCheckBox;
    CheckBox1: TCheckBox;
    cbNazwaGrupy: TCheckBox;
    cbZatNaDzien: TCheckBox;
    cbZmianyPOC: TCheckBox;
    cbZmianyKlasyf: TCheckBox;
    cbZmianyPobytow: TCheckBox;
    cbMiejsce: TCheckBox;
    cbDuplikaty: TCheckBox;
    cbNowi: TCheckBox;
    ComboBox1: TComboBox;
    cbSkierowanie: TComboBox;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    DateTimePicker3: TDateTimePicker;
    dtZatNaDzien: TDateTimePicker;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    DBNavigator1: TDBNavigator;
    DBText1: TDBText;
    DBText10: TDBText;
    DBText11: TDBText;
    DBText12: TDBText;
    DBText13: TDBText;
    DBText14: TDBText;
    DBText15: TDBText;
    DBText16: TDBText;
    DBText17: TDBText;
    DBText18: TDBText;
    DBText19: TDBText;
    DBText2: TDBText;
    DBText20: TDBText;
    DBText21: TDBText;
    DBText22: TDBText;
    DBText23: TDBText;
    DBText24: TDBText;
    DBText25: TDBText;
    DBText26: TDBText;
    DBText27: TDBText;
    DBText28: TDBText;
    DBText29: TDBText;
    DBText3: TDBText;
    DBText30: TDBText;
    DBText31: TDBText;
    DBText32: TDBText;
    DBText33: TDBText;
    DBText34: TDBText;
    DBText35: TDBText;
    DBText36: TDBText;
    DBText37: TDBText;
    DBText38: TDBText;
    DBText39: TDBText;
    DBText4: TDBText;
    DBPoprzedniePOC: TDBText;
    DBPoprzedniaKlasyf: TDBText;
    DBAktualnyPobyt: TDBText;
    DBText43: TDBText;
    DBText44: TDBText;
    DBText45: TDBText;
    DBText46: TDBText;
    DBText47: TDBText;
    DBText48: TDBText;
    DBText49: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    DBText9: TDBText;
    DSZatrudnieni: TDataSource;
    dtZatNaMsc: TDateTimePicker;
    Edit1: TEdit;
    edNazwaGrupy: TEdit;
    edMiejsce: TEdit;
    frDBDataSet1: TfrDBDataSet;
    frReport1: TfrReport;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    ImageList1: TImageList;
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
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label3: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label4: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    lblPlanUrlopowOdplatniZK: TLabel;
    lblPlanUrlopow90godzZK: TLabel;
    lblPlanUrlopowEtatZK: TLabel;
    lblPlanUrlopowKontrahenci: TLabel;
    lblSkierowanieNaBadania: TLabel;
    lblPoprzedniePOC: TLabel;
    lblPoprzedniaKlasyf: TLabel;
    lblAktualnyPobyt: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    lblAktaRejestr: TLabel;
    lblStawka: TLabel;
    lblOswiadczenieNieodplatna: TLabel;
    lblDaneOsadzonego: TLabel;
    lblKartaSzkoleniaWstepnego: TLabel;
    lblWniosekUrlopowy: TLabel;
    lblKartaPracy: TLabel;
    lblZatZaswiadczenie: TLabel;
    lblWniosekOZatrudnienie: TLabel;
    lblDoSchowka_Osadzeni: TLabel;
    lblAktaZatrudnieniowe: TLabel;
    lblDruk_OsadzeniAll: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    lblDoSchowka_Osadzony: TLabel;
    MenuItem1: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItemDoKoszykaAll: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    MenuItemDoSchowka: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItemUsun: TMenuItem;
    MenuItemModyfikuj: TMenuItem;
    MenuItemDodaj: TMenuItem;
    PageControl1: TPageControl;
    PageControl2: TPageControl;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    plGradient1: TplGradient;
    PopupMenu1: TPopupMenu;
    rgStatusZat: TRadioGroup;
    rgStatusPobytu: TRadioGroup;
    RxDBGrid1: TRxDBGrid;
    Splitter1: TSplitter;
    tabSzczegolyOs: TTabSheet;
    tabInfoStanowisko: TTabSheet;
    tabNotatnik: TTabSheet;
    tabInfoZat: TTabSheet;
    tabInne: TTabSheet;
    tabWydruki: TTabSheet;
    ZQZatrudnieni: TZQuery;
    ZQZatPom: TZQuery;
    ZQZatrudnieniadres: TStringField;
    ZQZatrudnienialimenty: TSmallintField;
    ZQZatrudnieniart: TStringField;
    ZQZatrudnienidata_badania: TDateField;
    ZQZatrudnienidata_dodania: TDateTimeField;
    ZQZatrudnienidata_modyfikacji: TDateTimeField;
    ZQZatrudnienidata_nastepnego_badania: TDateField;
    ZQZatrudnienidata_nastepnego_BHP: TDateField;
    ZQZatrudnienidata_nastepnego_urlopu: TDateField;
    ZQZatrudnienietat: TStringField;
    ZQZatrudnieniforma: TStringField;
    ZQZatrudnienigodz_powrotu: TStringField;
    ZQZatrudnienigodz_wyjscia: TStringField;
    ZQZatrudnieniid: TLargeintField;
    ZQZatrudnieniido: TLargeintField;
    ZQZatrudnieniid_stanowiska: TLargeintField;
    ZQZatrudnieniImie: TStringField;
    ZQZatrudnienikaralnosc: TLongintField;
    ZQZatrudnieniKlasyf: TStringField;
    ZQZatrudnienikod_pocztowy: TStringField;
    ZQZatrudnienikoniec_kary: TDateField;
    ZQZatrudnienimiejsce: TStringField;
    ZQZatrudnienimiejsce_urodzenia: TStringField;
    ZQZatrudnieninazwa: TStringField;
    ZQZatrudnieniNazwisko: TStringField;
    ZQZatrudnieninew_pobyt: TStringField;
    ZQZatrudnieniNotatki: TStringField;
    ZQZatrudnieninr_dowodu: TStringField;
    ZQZatrudnieninr_ewidencyjny: TStringField;
    ZQZatrudnieniOjciec: TStringField;
    ZQZatrudnieniopis: TStringField;
    ZQZatrudnienipesel: TStringField;
    ZQZatrudnienipobyt: TStringField;
    ZQZatrudnieniPOC: TStringField;
    ZQZatrudnienipodkultura: TSmallintField;
    ZQZatrudnienipowod_wycofania: TStringField;
    ZQZatrudnieniPrzyjety: TDateField;
    ZQZatrudnienirodzaj_zatrudnienia: TStringField;
    ZQZatrudnienistan: TStringField;
    ZQZatrudnienistanowisko: TStringField;
    ZQZatrudnienistatus_zatrudnienia: TStringField;
    ZQZatrudnienisystem: TStringField;
    ZQZatrudnieniurlop_do: TDateField;
    ZQZatrudnieniurlop_od: TDateField;
    ZQZatrudnieniUrodzony: TDateField;
    ZQZatrudnieniuser_dodania: TStringField;
    ZQZatrudnieniuser_modyfikacji: TStringField;
    ZQZatrudnieniwyksztalcenie: TStringField;
    ZQZatrudnienizat_do: TDateField;
    ZQZatrudnienizat_Klasyf: TStringField;
    ZQZatrudnienizat_od: TDateField;
    ZQZatrudnienizat_POC: TStringField;
    ZQZatrudnienizawod: TStringField;
    ZQZatrudnienizawod_potwierdzony: TSmallintField;
    ZQZatrudnienizobowiazania: TSmallintField;
    ZUZatrudnieni: TZUpdateSQL;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure btnZapiszZmianyClick(Sender: TObject);
    procedure btnDodajDoKoszykaClick(Sender: TObject);
    procedure btnZmienOpisStanowiskaClick(Sender: TObject);
    procedure cbNowiChange(Sender: TObject);
    procedure cbZatNaDzienChange(Sender: TObject);
    procedure cbZatNaMscChange(Sender: TObject);
    procedure CheckBox1Change(Sender: TObject);
    procedure cbNazwaGrupyChange(Sender: TObject);
    procedure cbZmianyPOCChange(Sender: TObject);
    procedure cbMiejsceChange(Sender: TObject);
    procedure cbDuplikatyChange(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure DateTimePicker2Change(Sender: TObject);
    procedure dtZatNaDzienChange(Sender: TObject);
    procedure dtZatNaMscChange(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: char);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure lblAktaRejestrClick(Sender: TObject);
    procedure lblAktaZatrudnienioweClick(Sender: TObject);
    procedure lblDaneOsadzonegoClick(Sender: TObject);
    procedure lblDoSchowka_OsadzeniClick(Sender: TObject);
    procedure lblDoSchowka_OsadzonyClick(Sender: TObject);
    procedure lblDruk_OsadzeniAllClick(Sender: TObject);
    procedure lblActionMouseEnter(Sender: TObject);
    procedure lblActionMouseLeave(Sender: TObject);
    procedure lblActionMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure lblActionMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lblKartaPracyClick(Sender: TObject);
    procedure lblKartaSzkoleniaWstepnegoClick(Sender: TObject);
    procedure lblOswiadczenieNieodplatnaClick(Sender: TObject);
    procedure lblPlanUrlopow90godzZKClick(Sender: TObject);
    procedure lblPlanUrlopowEtatZKClick(Sender: TObject);
    procedure lblPlanUrlopowKontrahenciClick(Sender: TObject);
    procedure lblPlanUrlopowOdplatniZKClick(Sender: TObject);
    procedure lblSkierowanieNaBadaniaClick(Sender: TObject);
    procedure lblStawkaClick(Sender: TObject);
    procedure lblWniosekOZatrudnienieClick(Sender: TObject);
    procedure lblWniosekUrlopowyClick(Sender: TObject);
    procedure lblZatZaswiadczenieClick(Sender: TObject);
    procedure MenuItemDoKoszykaAllClick(Sender: TObject);
    procedure rgStatusZatSelectionChanged(Sender: TObject);
    procedure rgStatusPobytuSelectionChanged(Sender: TObject);
    procedure RxDBGrid1DblClick(Sender: TObject);
    procedure RxDBGrid1GetCellProps(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor);
    procedure ZQZatrudnienistanGetText(Sender: TField; var aText: string;
      DisplayText: Boolean);
  private
    { private declarations }
    DisableNewSelect: Boolean;

    ShowOsIDO: integer;           // jeśli wchodzimy poprzez ShowZatrudnienieOsadzonego to zapisujemy jego IDO
    zapStatusZatrudnienia: Word;  // zapisany stan Statusu Zatrudnienia i Pobytu
    zapStatusPobytu      : Word;
    zapBookMark          : TBookMark;

    Function ZatrudnieniFieldsToString(ZQPom: TZQuery): string;
    Procedure SetMemoReportColor(Raport: TfrReport; memo_name: string; bkcolor: TColor);
    Function GetStanowiskaPokrewne(Stanowisko: string): string;
  public
    { public declarations }
    SQLZatrudnieni: string;       // ładujemy podczas Create z kontrolki ZQZatrudnieni.SQL
    SQLZatPom: string;            // ładujemy podczas Create z kontrolki ZQZatPom.SQL
    Procedure NewSelect;
    Procedure ShowZatrudnienieOsadzonego(ido: integer; nazwisko: string);
  end;

  TBadania = (bd_wstepne, bd_okresowe, bd_kontrolne);
  TStatusPobytu = (spAktualny, spUprzedni, spWszystkie);
  TStatusZatrudnienia = (szZatrudniony, szWycofany, szOczekujacy, szWszystkie);

  //const
  //  statusy : array[TBadania] of string = ('wstepne', 'okresowe', 'kontrolne');

//var
//  Zatrudnieni: TZatrudnieni;

implementation
uses UZatAddZatrudnienie, Clipbrd, UZatZaswiadczenie, UZatWniosekUrlopowy, UZatStawkiPlac, LR_DSet, UZatAddStanowiskaPokrewne;
{$R *.frm}

{ TZatrudnieni }

procedure TZatrudnieni.FormCreate(Sender: TObject);
begin
  btnZapiszZmiany.Enabled:= DM.uprawnienia[15];  // zatrudnienie
  BitBtn1.Enabled:= DM.uprawnienia[15];  // zatrudnienie
  BitBtn2.Enabled:= DM.uprawnienia[15];  // zatrudnienie
  BitBtn3.Enabled:= DM.uprawnienia[15];  // zatrudnienie
  MenuItemDodaj.Enabled     := DM.uprawnienia[15];
  MenuItemModyfikuj.Enabled := DM.uprawnienia[15];
  MenuItemUsun.Enabled      := DM.uprawnienia[15];
  btnZmienOpisStanowiska.Enabled:= DM.uprawnienia[15];

  ZQZatrudnieni.ReadOnly    := not DM.uprawnienia[15];  // zatrudnienie; prawo do edycji notatki

  DisableNewSelect := true;
  SQLZatrudnieni   := ZQZatrudnieni.SQL.Text; // podstawa zapytania
  SQLZatPom        := ZQZatPom.SQL.Text;
  DateTimePicker1.Date:= IncMonth(Date(), -1);
  DateTimePicker2.Date:= Date();
  dtZatNaDzien.Date   := Date();
  dtZatNaMsc.Date     := date();
  DisableNewSelect:= false;

  NewSelect;

  ShowOsIDO:=0;
  DateTimePicker3.Date:= Date;  // Data dla wydruku Kart Pracy
  PageControl1.TabIndex:= 0;
  PageControl2.TabIndex:= 0;

  btnDodajDoKoszyka.Hint:= 'Dodaj osadzonego do koszyka: '+ DM.ZQKoszyk_sl.FieldByName('nazwa').AsString;

  DM.DataSetList.Add(ZQZatrudnieni);
end;

procedure TZatrudnieni.FormDestroy(Sender: TObject);
begin
  DM.DataSetList.Remove(ZQZatrudnieni); //RemoveAllDataSet;
end;

procedure TZatrudnieni.NewSelect;
var spobyt     : string;
    sstatus_zatrudnienia: string;
    snazwisko  : string;
    sstanowisko: string;
    smiejsce   : string;
    sFindData  : string;
begin
  if DisableNewSelect then exit;

  snazwisko:= Trim( Edit1.Text) + '%';

  ZQZatrudnieni.SQL.Text:= SQLZatrudnieni + ' WHERE';

  // STATUS POBYTU
  case TStatusPobytu(rgStatusPobytu.ItemIndex) of
       spAktualny : spobyt:= sp_Aktualny;
       spUprzedni : spobyt:= sp_Uprzedni;
       spWszystkie: spobyt:='%';
  end;
  if spobyt<>'%' then
      begin
        ZQZatrudnieni.SQL.Add(' (pobyt = :pobyt) AND');
        ZQZatrudnieni.ParamByName('pobyt').AsString:= spobyt;
      end;

  // STATUS ZATRUDNIENIA
  case TStatusZatrudnienia(rgStatusZat.ItemIndex) of
       szZatrudniony: sstatus_zatrudnienia:= sz_Zatrudniony;
       szWycofany   : sstatus_zatrudnienia:= sz_Wycofany;
       szOczekujacy : sstatus_zatrudnienia:= sz_Oczekujacy;
       szWszystkie  : sstatus_zatrudnienia:= '%'; //wszystkie
  end;
  if sstatus_zatrudnienia<>'%' then
      begin
        ZQZatrudnieni.SQL.Add(' (zat.status_zatrudnienia = :status_zat) AND');
        ZQZatrudnieni.ParamByName('status_zat').AsString:= sstatus_zatrudnienia;
      end;

  // ZAKRES DATY ZATRUDNIENIA
  if CheckBox1.Checked then
      begin
        case ComboBox1.ItemIndex of
             0: sFindData:='zat.data_dodania'; // Data dodania
             1: sFindData:='zat.zat_od'; // Data zatrudnienia
             2: sFindData:='zat.zat_do'; // Data wycofania
             3: sFindData:='data_badania'; // Data badania
             4: sFindData:='data_nastepnego_badania'; // Data następnego badania
             5: sFindData:='data_nastepnego_BHP'; // Data następnego BHP
             6: sFindData:='urlop_od'; // Data rozpoczęcia urlopu
             7: sFindData:='urlop_do'; // Data zakończenia urlopu
             8: sFindData:='data_nastepnego_urlopu'; // Data planowanego urlopu
        end;
        ZQZatrudnieni.SQL.Add(' ('+sFindData+' BETWEEN :data_od AND :data_do) AND');
        ZQZatrudnieni.ParamByName('data_od').AsDate:= DateTimePicker1.Date;
        ZQZatrudnieni.ParamByName('data_do').AsDate:= DateTimePicker2.Date;
      end;

  // ZATRUDNIENI NA DANY DZIEŃ
  if cbZatNaDzien.Checked then
      begin
        ZQZatrudnieni.SQL.Add(' (:data_na_dzien BETWEEN zat.zat_od AND IFNULL(zat.zat_do, CURDATE() ) ) AND');
        ZQZatrudnieni.ParamByName('data_na_dzien').AsDate:= dtZatNaDzien.Date;
      end;

  // ZATRUDNIENI NA DANY MIESIĄC
  if cbZatNaMsc.Checked then
      begin
        ZQZatrudnieni.SQL.Add(' (zat.zat_od <= :data_na_last_day AND IFNULL(zat.zat_do, CURDATE()) >= :data_na_first_day) AND');
        ZQZatrudnieni.ParamByName('data_na_first_day').AsDate:= StartOfTheMonth(dtZatNaMsc.Date);
        ZQZatrudnieni.ParamByName('data_na_last_day').AsDate := EndOfTheMonth(dtZatNaMsc.Date);
      end;

  //Zmienili Celę
  if cbZmianyPOC.Checked then
     begin
       ZQZatrudnieni.SQL.Add(' (zat.POC <> os.POC) AND');
     end;
  //Zmienili Klasyfikację
  if cbZmianyKlasyf.Checked then
     begin
       ZQZatrudnieni.SQL.Add(' (zat.Klasyf <> os.Klasyf) AND');
     end;

  // duplikaty zatrudnionych
  if cbDuplikaty.Checked then
     ZQZatrudnieni.SQL.Add(' exists (SELECT id, ido, status_zatrudnienia FROM zat_zatrudnieni zat1 WHERE (zat.ido = zat1.ido) and (zat.id <> zat1.id) and (zat1.status_zatrudnienia = zat.status_zatrudnienia)) AND');

  // nowo zatrudnieni, oczekujący którzy są zatrudnieni, zatrudnieni których data zatrudnienia jest o 1 dzień większa od daty wycofania
  if cbNowi.Checked then
     if TStatusZatrudnienia(rgStatusZat.ItemIndex) = szOczekujacy then
     begin
       ZQZatrudnieni.SQL.Add(' not exists (SELECT id, ido, status_zatrudnienia FROM zat_zatrudnieni zat1 WHERE (zat.ido = zat1.ido) and (zat.id <> zat1.id) and (zat1.status_zatrudnienia = :status_zatrudnienia_z1)) AND');
       ZQZatrudnieni.ParamByName('status_zatrudnienia_z1').AsString:= sz_Zatrudniony;
     end else
     if TStatusZatrudnienia(rgStatusZat.ItemIndex) in [szZatrudniony, szWszystkie] then
     begin
       ZQZatrudnieni.SQL.Add(' not exists (SELECT id, ido, zat_do FROM zat_zatrudnieni zat1 WHERE (zat.ido = zat1.ido) and (zat.id <> zat1.id) and (DATE_ADD(zat1.zat_do, INTERVAL 1 DAY) = zat.zat_od)) AND');
     end;

  // PO STANOWISKU
  sstanowisko:= Trim(edNazwaGrupy.Text);
  if cbNazwaGrupy.Checked and (sstanowisko<>'') then
      begin
        ZQZatrudnieni.SQL.Add(' (sta.nazwa LIKE :stanowisko) AND');
        ZQZatrudnieni.ParamByName('stanowisko').AsString:= '%'+ sstanowisko +'%';
      end;

  // PO MIEJSCU PRACY
  smiejsce:= Trim(edMiejsce.Text);
  if cbMiejsce.Checked and (smiejsce<>'') then
      begin
        ZQZatrudnieni.SQL.Add(' (sta.miejsce LIKE :miejsce) AND');
        ZQZatrudnieni.ParamByName('miejsce').AsString:= '%'+ smiejsce +'%';
      end;

  // PO NAZWISKU
  ZQZatrudnieni.SQL.Add(' (zat.Nazwisko LIKE :nazwisko)');
  ZQZatrudnieni.ParamByName('nazwisko').AsString:= snazwisko;

  //Zmienili pobyt
  if cbZmianyPobytow.Checked then
     begin
       ZQZatrudnieni.SQL.Add(' HAVING new_pobyt <> pobyt');
     end;

  try
    ZQZatrudnieni.Open;

    // jeśli był zapamiętany osadzony to powracamy do niego i zerujemy ShowOsIDO;
    if ShowOsIDO>0 then begin
      SetToBookmark(ZQZatrudnieni, zapBookMark);
      ShowOsIDO:= 0;
    end;

  except
    ShowMessage('Połączenie zostało zerwane. Zaloguj się ponownie. (Zat001)');
    DM.Zaloguj;
  end;
end;

procedure TZatrudnieni.rgStatusZatSelectionChanged(Sender: TObject);
begin
  //zmieniamy statusy zatrudnienia
  NewSelect;
end;

procedure TZatrudnieni.rgStatusPobytuSelectionChanged(Sender: TObject);
begin
  //zmieniamy pobyty osadzonego
  NewSelect;
end;

procedure TZatrudnieni.RxDBGrid1DblClick(Sender: TObject);
var v_ido: integer;
    v_nazwisko: string;
begin
  // dokonujemy zawęrzenia widoku osadzonych do wybranego osadzonego w widoku wszystkich jego okresów zatrudnienia
  if ZQZatrudnieni.IsEmpty then exit;
  v_ido:= ZQZatrudnieni.FieldByName('ido').AsInteger;
  v_nazwisko:= ZQZatrudnieni.FieldByName('Nazwisko').AsString;

  ShowZatrudnienieOsadzonego(v_ido, v_nazwisko);
end;

procedure TZatrudnieni.RxDBGrid1GetCellProps(Sender: TObject; Field: TField;
  AFont: TFont; var Background: TColor);
begin
  if not Assigned(Field) then exit;
  if Field.IsNull then exit;

  if (Field.FieldName = 'pobyt') then
        begin
          if Field.AsString = 'Aktualny' then
          begin
             Background := $80FF80;
             //AFont.Color:= clWhite;
          end else // 'Uprzedni'
          begin
            Background := clRed;
            //AFont.Color:= clBlack;
          end;
        end
  else
  if (Field.FieldName = 'status_zatrudnienia') then
      begin
        if Field.AsString = 'zatrudniony' then
        begin
           Background := $80FF80;
        end else
        if Field.AsString = 'wycofany' then
        begin
          Background := clRed;
          //AFont.Color:= clBlack;
        end else  // oczekujący
        begin
          Background := clYellow;
        end;
      end
  else
  if (Field.FieldName = 'data_nastepnego_badania') or
     (Field.FieldName = 'urlop_od') or
     (Field.FieldName = 'data_nastepnego_BHP') or
     (Field.FieldName = 'data_nastepnego_urlopu')
     then
        begin
          if (Field.AsDateTime < Date()) then
          begin
            Background := clRed;
          end else
          if (Field.AsDateTime < IncDay(Date(),14)) then
          begin
            Background := $8C8CFF;
          end;
        end
end;

//Status stanowiska
procedure TZatrudnieni.ZQZatrudnienistanGetText(Sender: TField;
  var aText: string; DisplayText: Boolean);
begin
  if Sender.AsString = 'A' then aText:='Aktywna'
                           else aText:='Uprzednia';
end;

procedure TZatrudnieni.Edit1Change(Sender: TObject);
begin
  NewSelect;
end;

procedure TZatrudnieni.Edit1KeyPress(Sender: TObject; var Key: char);
begin
  if Key=#13 then    // ENTER
  begin
      Edit1.SetFocus;
  end else
  if Key=#27 then    // ESC
  begin
      if ShowOsIDO>0 then begin  // powracamy do ustawień z przed wejścia do wybranego osadzonego.
        DisableNewSelect:= true;
        rgStatusZat.ItemIndex   := zapStatusZatrudnienia;   //select status Zatrudniony
        rgStatusPobytu.ItemIndex:= zapStatusPobytu;      //select pobyt Aktualny
        // ShowOsIDO:= 0; // zmienimy w NewSelect jak ustawimy zapBookMark;
        DisableNewSelect:= false;
      end;

      Edit1.Text:='';
      Edit1.SetFocus;
  end else
  if Key=' ' then Key:=#0;     // zabraniamy wpisywania spacji
end;

procedure TZatrudnieni.CheckBox1Change(Sender: TObject);
begin
  if CheckBox1.Checked then
      begin
        DateTimePicker1.Enabled:= true;
        DateTimePicker2.Enabled:= true;
        ComboBox1.Enabled      := true;
        //DateTimePicker1.Date:= Date();
        //DateTimePicker2.Date:= Date();
      end
  else
      begin
        DateTimePicker1.Enabled:= false;
        DateTimePicker2.Enabled:= false;
        ComboBox1.Enabled      := false;
      end;
  NewSelect;
end;

procedure TZatrudnieni.cbNazwaGrupyChange(Sender: TObject);
begin
  edNazwaGrupy.Enabled:= cbNazwaGrupy.Checked;
  NewSelect;
end;

//ZMIANY Celi, Klasyfikacji, Ubyli
procedure TZatrudnieni.cbZmianyPOCChange(Sender: TObject);
begin
  if TCheckBox(Sender).Checked then
      begin
        DisableNewSelect:= true;  // wyłączamy działeanie kontrolek NewSelect;

        rgStatusPobytu.ItemIndex:= Ord(spAktualny);    // 0 pobyty na aktualne

        btnZapiszZmiany.Visible    := true;      // ZAPISZ

        lblPoprzedniePOC.Visible   := false;      // POC
        lblPoprzedniaKlasyf.Visible:= false;      // Klasyf
        lblAktualnyPobyt.Visible   := false;      // pobyt
        DBPoprzedniePOC.Visible    := false;
        DBPoprzedniaKlasyf.Visible := false;
        DBAktualnyPobyt.Visible    := false;

        case TCheckBox(Sender).Caption of
             'Celi':         begin
                               cbZmianyKlasyf.Checked  := False; //klasyfikacji
                               cbZmianyPobytow.Checked := False; //Ubyli
                               lblPoprzedniePOC.Visible:= true;    // POC
                               DBPoprzedniePOC.Visible := true;   // POC
                               rgStatusZat.ItemIndex   := Ord(szZatrudniony);    // 0 Zatrudniony, 3 - wszystkie
                             end;
             'Klasyfikacji': begin
                               cbZmianyPOC.Checked        := False; //Celi
                               cbZmianyPobytow.Checked    := False; //Ubyli
                               lblPoprzedniaKlasyf.Visible:= true;   // Klasyf
                               DBPoprzedniaKlasyf.Visible := true;   // Klasyf
                               rgStatusZat.ItemIndex   := Ord(szZatrudniony);    // 0 Zatrudniony, 3 - wszystkie
                             end;
             'Ubyli':         begin
                               cbZmianyPOC.Checked     := False; //Celi
                               cbZmianyKlasyf.Checked  := False; //klasyfikacji
                               lblAktualnyPobyt.Visible:= true;   // pobyt
                               DBAktualnyPobyt.Visible := true;   // pobyt
                               rgStatusZat.ItemIndex   := Ord(szWszystkie);    // 0 Zatrudniony, 3 - wszystkie
                             end;
        end;

        DisableNewSelect:= false;     //Włączamy kontrolki
        NewSelect;
      end;

  if (not cbZmianyPOC.Checked) AND (not cbZmianyKlasyf.Checked) AND (not cbZmianyPobytow.Checked) then
      begin
        lblPoprzedniePOC.Visible   := false;
        lblPoprzedniaKlasyf.Visible:= false;
        lblAktualnyPobyt.Visible   := false;
        DBPoprzedniePOC.Visible    := false;
        DBPoprzedniaKlasyf.Visible := false;
        DBAktualnyPobyt.Visible    := false;

        btnZapiszZmiany.Visible    := false;
        rgStatusZat.ItemIndex      := Ord(szZatrudniony);    // 0 Zatrudniony, 3 - wszystkie

        NewSelect;
      end;
end;

procedure TZatrudnieni.cbMiejsceChange(Sender: TObject);
begin
  edMiejsce.Enabled:= cbMiejsce.Checked;
  NewSelect;
end;

procedure TZatrudnieni.cbDuplikatyChange(Sender: TObject);
begin
  NewSelect;
end;

procedure TZatrudnieni.BitBtn3Click(Sender: TObject);
begin
  if IsDataSetEmpty(ZQZatrudnieni) then exit;
  if MessageDlg('Czy jesteś pewien aby usunąć osadzonego ?', mtWarning, [mbYes, mbNo],0) = mrYes then
     ZQZatrudnieni.Delete;
end;

// ZAPISZ ZMIANY
procedure TZatrudnieni.btnZapiszZmianyClick(Sender: TObject);
var ZQ: TZQueryPom;
begin
  if ZQZatrudnieni.IsEmpty then exit;
  ZQZatrudnieni.First;

  ZQ:= TZQueryPom.Create(Self);

  while not ZQZatrudnieni.EOF do
  begin
    if cbZmianyPOC.Checked then  // 'Celi'
        begin
           ZQ.SQL.Text:= 'UPDATE zat_zatrudnieni SET POC = :POC WHERE id = :id';
           ZQ.ParamByName('POC').AsString := ZQZatrudnieni.FieldByName('POC').AsString;
        end;
    if cbZmianyKlasyf.Checked then  // 'Klasyfikacji'
        begin
           ZQ.SQL.Text:= 'UPDATE zat_zatrudnieni SET Klasyf = :Klasyf WHERE id = :id';
           ZQ.ParamByName('Klasyf').AsString := ZQZatrudnieni.FieldByName('Klasyf').AsString;
        end;
    if cbZmianyPobytow.Checked then  // 'Ubyli'
        begin
           ZQ.SQL.Text:= 'UPDATE zat_zatrudnieni SET Pobyt = :Pobyt WHERE id = :id';
           ZQ.ParamByName('Pobyt').AsString := ZQZatrudnieni.FieldByName('new_Pobyt').AsString;
        end;

    ZQ.ParamByName('id').AsInteger:= ZQZatrudnieni.FieldByName('id').AsInteger;
    ZQ.ExecSQL;

    ZQZatrudnieni.Next;
  end;

  FreeAndNil(ZQ);
  NewSelect; // odświerzamy widok
end;

procedure TZatrudnieni.btnDodajDoKoszykaClick(Sender: TObject);
begin
  if ZQZatrudnieni.IsEmpty then exit;
  if DM.DodajDoKoszyka( ZQZatrudnieni.FieldByName('ido').AsInteger ) then
     DM.KomunikatPopUp(Sender, 'Koszyk', 'Dodano osadzonego do koszyka.', nots_Info);
end;

procedure TZatrudnieni.btnZmienOpisStanowiskaClick(Sender: TObject);
begin
  if ZQZatrudnieni.IsEmpty then exit;
  with TZatAddStanowiskaPokrewne.Create(Self) do
      begin
        EditStanowiskaPokrewne( ZQZatrudnieni.FieldByName('Stanowisko').AsString );
        ShowModal;
        Free;
      end;
end;

procedure TZatrudnieni.cbNowiChange(Sender: TObject);
begin
  NewSelect;
end;

procedure TZatrudnieni.cbZatNaDzienChange(Sender: TObject);
begin
  DisableNewSelect:= true;  // wyłączamy działeanie kontrolek NewSelect;

  if cbZatNaDzien.Checked then
      begin
        rgStatusZat.ItemIndex:= 3;    // status zatrudnienia na wszystkie
        rgStatusPobytu.ItemIndex:= 2;    // pobyty na wszystkie

        dtZatNaDzien.Enabled:= true;
      end
  else
      begin
        dtZatNaDzien.Enabled:= false;
      end;

  DisableNewSelect:= false;     //Włączamy kontrolki
  NewSelect;
end;

procedure TZatrudnieni.cbZatNaMscChange(Sender: TObject);
begin
  DisableNewSelect:= true;  // wyłączamy działeanie kontrolek NewSelect;

  if cbZatNaMsc.Checked then
      begin
        rgStatusZat.ItemIndex:= 3;    // status zatrudnienia na wszystkie
        rgStatusPobytu.ItemIndex:= 2;    // pobyty na wszystkie

        dtZatNaMsc.Enabled:= true;
      end
  else
      begin
        dtZatNaMsc.Enabled:= false;
      end;

  DisableNewSelect:= false;     //Włączamy kontrolki
  NewSelect;
end;

// DODAJ OSADZONEGO DO ZATRUDNIENIA
procedure TZatrudnieni.BitBtn1Click(Sender: TObject);
begin
  with TZatAddZatrudnienie.Create(Self) do
  begin
    if (ShowOsIDO>0) and (ZQZatrudnieni.IsEmpty) then
       NoweZatrudnienie(ShowOsIDO)
    else
       NoweZatrudnienie(ZQZatrudnieni.FieldByName('ido').AsInteger);

    if ShowModal = mrOK then RefreshQuery(ZQZatrudnieni);
    Free;
  end;
end;

// MODYFIKUJ OSADZONEGO ZATRUDNIONEGO
procedure TZatrudnieni.BitBtn2Click(Sender: TObject);
begin
  if IsDataSetEmpty(ZQZatrudnieni) then exit;
  with TZatAddZatrudnienie.Create(Self) do
  begin
    ModyfikujZatrudnienie( ZQZatrudnieni.FieldByName('id').AsInteger );
    if ShowModal = mrOK then RefreshQuery(ZQZatrudnieni);
    Free;
  end;
end;

procedure TZatrudnieni.DateTimePicker1Change(Sender: TObject);
begin
  if DateTimePicker2.Date <= DateTimePicker1.Date then DateTimePicker2.Date:= IncMonth(DateTimePicker1.Date, 1);
  if CheckBox1.Checked then NewSelect;
end;

procedure TZatrudnieni.DateTimePicker2Change(Sender: TObject);
begin
  if CheckBox1.Checked then NewSelect;
end;

procedure TZatrudnieni.dtZatNaDzienChange(Sender: TObject);
begin
  if cbZatNaDzien.Checked then NewSelect;
end;

procedure TZatrudnieni.dtZatNaMscChange(Sender: TObject);
begin
  if cbZatNaMsc.Checked then NewSelect;
end;

procedure TZatrudnieni.ComboBox1Change(Sender: TObject);
begin
  if CheckBox1.Checked then NewSelect;
end;

// szczegóły zatrudnienia wybranego osadzonego we wszystkich pobytach
procedure TZatrudnieni.ShowZatrudnienieOsadzonego(ido: integer; nazwisko: string);
begin
  DisableNewSelect:= true;

  // zapisuejmy stan Statusów
  zapStatusZatrudnienia:= rgStatusZat.ItemIndex;
  zapStatusPobytu      := rgStatusPobytu.ItemIndex;
  zapBookMark          := ZQZatrudnieni.GetBookmark;
  // ------------------------

  ShowOsIDO:= ido;

  ZQZatrudnieni.SQL.Text:= SQLZatrudnieni + ' WHERE zat.ido = :ido';
  ZQZatrudnieni.ParamByName('ido').AsInteger:= ido;
  ZQZatrudnieni.Open;

  Edit1.Text:= nazwisko;

  rgStatusZat.ItemIndex   := Ord(szWszystkie);   //select status all
  rgStatusPobytu.ItemIndex:= Ord(spWszystkie);   //select pobyt all
  DisableNewSelect:= false;
end;

//============================
//============================
//      WYDRUKI

procedure TZatrudnieni.lblDoSchowka_OsadzeniClick(Sender: TObject);
var bookmark: TBookMark;
    schowek: string;
begin
  // do schowka wszyscy zatrudnieni
  if ZQZatrudnieni.IsEmpty then exit;
  bookmark:= ZQZatrudnieni.GetBookmark;
  ZQZatrudnieni.DisableControls;
  ZQZatrudnieni.First;
  schowek:= '';
  while not ZQZatrudnieni.EOF do
  begin
    if schowek<>'' then schowek:= schowek + LineEnding;
    schowek:= schowek + ZatrudnieniFieldsToString(ZQZatrudnieni);
    ZQZatrudnieni.Next;
  end;

  Clipboard.AsText:= schowek;

  ZQZatrudnieni.GotoBookmark(bookmark);
  ZQZatrudnieni.EnableControls;
end;

procedure TZatrudnieni.lblDruk_OsadzeniAllClick(Sender: TObject);
begin
  if RxDBGrid1.SortField='nazwa' then
     frReport1.LoadFromFile(DM.Path_Raporty + 'zat_osadzeni_all_grupowany.lrf')
  else
     frReport1.LoadFromFile(DM.Path_Raporty + 'zat_osadzeni_all.lrf');

  frReport1.ShowReport;
end;

procedure TZatrudnieni.lblDoSchowka_OsadzonyClick(Sender: TObject);
begin
  // dodaj do schowka wybranego osadzonego
  if ZQZatrudnieni.IsEmpty then exit;
  Clipboard.AsText:= ZatrudnieniFieldsToString(ZQZatrudnieni);
end;

procedure TZatrudnieni.lblAktaZatrudnienioweClick(Sender: TObject);
begin
  frReport1.LoadFromFile(DM.Path_Raporty + 'zat_Akta_Zatrudnieniowe.lrf');
  frReport1.ShowReport;
end;

procedure TZatrudnieni.lblWniosekOZatrudnienieClick(Sender: TObject);
begin
  frReport1.LoadFromFile(DM.Path_Raporty + 'zat_Wniosek_O_Zatrudnienie.lrf');
  frReport1.ShowReport;
end;

procedure TZatrudnieni.lblZatZaswiadczenieClick(Sender: TObject);
begin
  if ZQZatrudnieni.IsEmpty then exit;

  with TZatZaswiadczenie.Create(Self) do
  begin
    SetIDO(ZQZatrudnieniido.AsInteger, ZQZatrudnieniid.AsInteger);
    ShowModal;
    Free;
  end;
end;

procedure TZatrudnieni.MenuItemDoKoszykaAllClick(Sender: TObject);
var bookmark: TBookMark;
begin
  if ZQZatrudnieni.IsEmpty then exit;
  ZQZatrudnieni.DisableControls;
  bookmark:= ZQZatrudnieni.GetBookmark;
  ZQZatrudnieni.First;
  while not ZQZatrudnieni.EOF do
  begin
    DM.DodajDoKoszyka( ZQZatrudnieni.FieldByName('ido').AsInteger );
    ZQZatrudnieni.Next;
  end;
  SetToBookmark(ZQZatrudnieni, bookmark);
  ZQZatrudnieni.EnableControls;
  DM.KomunikatPopUp(Sender, 'Koszyk', 'Dodano wszystkich widocznych osadzonych do koszyka.', nots_Info);
end;

procedure TZatrudnieni.lblAktaRejestrClick(Sender: TObject);
begin
  frReport1.LoadFromFile(DM.Path_Raporty + 'zat_Rejestr_zatrudnienia_nieodp.lrf');
  frReport1.ShowReport;
end;

procedure TZatrudnieni.lblOswiadczenieNieodplatnaClick(Sender: TObject);
begin
  if ZQZatrudnieni.FieldByName('rodzaj_zatrudnienia').AsString='123a§3' then
       frReport1.LoadFromFile(DM.Path_Raporty + 'zat_OswiadczeniePracaZIGB.lrf')
     else
       frReport1.LoadFromFile(DM.Path_Raporty + 'zat_OswiadczeniePraca.lrf');

  DM.SetMemoReport(frReport1,'memo_DataPisma1', 'Kłodzko, dn. '+DM.GetDateFormatPismo(Date, 'dd MMMM yyyy')+' r.' );
  frReport1.ShowReport;
end;

procedure TZatrudnieni.lblPlanUrlopow90godzZKClick(Sender: TObject);
begin
  ZQZatPom.SQL.Text:= SQLZatPom +
        ' FROM zat_zatrudnieni as zat'+
        '  LEFT OUTER JOIN zat_stanowiska as sta'+
        '  ON zat.id_stanowiska = sta.id'+
        ' WHERE (zat.status_zatrudnienia = "zatrudniony") and'+
        '       (sta.forma="NIEODPŁATNIE") and'+
        '       (zat.rodzaj_zatrudnienia="123a§1") and'+
        '       (sta.miejsce LIKE "DZIAŁ%")'+
        ' ORDER BY sta.stanowisko, zat.data_nastepnego_urlopu';
  try
    frDBDataSet1.DataSet:= ZQZatPom;

    frReport1.LoadFromFile(DM.Path_Raporty + 'zat_Plan_urlopow.lrf');

    DM.SetMemoReport(frReport1,'Memo_Tytul', 'PRZY PRACACH PORZĄDKOWYCH I POMOCNICZYCH NA RZECZ ZAKŁADU KARNEGO (123a§1)' );
    frReport1.ShowReport;
  finally
    frDBDataSet1.DataSet:= ZQZatrudnieni;
    ZQZatPom.Close;
  end;
end;

procedure TZatrudnieni.lblPlanUrlopowEtatZKClick(Sender: TObject);
begin
  ZQZatPom.SQL.Text:= SQLZatPom +
        ' FROM zat_zatrudnieni as zat'+
        '  LEFT OUTER JOIN zat_stanowiska as sta'+
        '  ON zat.id_stanowiska = sta.id'+
        ' WHERE (zat.status_zatrudnienia = "zatrudniony") and'+
        '       (sta.forma="NIEODPŁATNIE") and'+
        '       (zat.rodzaj_zatrudnienia="123a§2") and'+
        '       (sta.miejsce LIKE "DZIAŁ%")'+
        ' ORDER BY sta.stanowisko, zat.data_nastepnego_urlopu';
  try
    frDBDataSet1.DataSet:= ZQZatPom;

    frReport1.LoadFromFile(DM.Path_Raporty + 'zat_Plan_urlopow.lrf');

    DM.SetMemoReport(frReport1,'Memo_Tytul', 'PRZY PRACACH PORZĄDKOWYCH I POMOCNICZYCH NA RZECZ ZAKŁADU KARNEGO (123a§2)' );
    frReport1.ShowReport;
  finally
    frDBDataSet1.DataSet:= ZQZatrudnieni;
    ZQZatPom.Close;
  end;
end;

procedure TZatrudnieni.lblPlanUrlopowKontrahenciClick(Sender: TObject);
begin
  ZQZatPom.SQL.Text:= SQLZatPom +
        ' FROM zat_zatrudnieni as zat'+
        '  LEFT OUTER JOIN zat_stanowiska as sta'+
        '  ON zat.id_stanowiska = sta.id'+
        ' WHERE (zat.status_zatrudnienia = "zatrudniony") and'+
        '       (sta.forma="ODPŁATNIE") and'+
        '       (sta.miejsce NOT LIKE "DZIAŁ%")'+
        ' ORDER BY sta.stanowisko, zat.data_nastepnego_urlopu';
  try
    frDBDataSet1.DataSet:= ZQZatPom;

    frReport1.LoadFromFile(DM.Path_Raporty + 'zat_Plan_urlopow.lrf');

    DM.SetMemoReport(frReport1,'Memo_Tytul', 'POZA TERENEM JEDNOSTKI (123§2' );
    frReport1.ShowReport;
  finally
    frDBDataSet1.DataSet:= ZQZatrudnieni;
    ZQZatPom.Close;
  end;
end;

procedure TZatrudnieni.lblPlanUrlopowOdplatniZKClick(Sender: TObject);
begin
  ZQZatPom.SQL.Text:= SQLZatPom +
        ' FROM zat_zatrudnieni as zat'+
        '  LEFT OUTER JOIN zat_stanowiska as sta'+
        '  ON zat.id_stanowiska = sta.id'+
        ' WHERE (zat.status_zatrudnienia = "zatrudniony") and'+
        '       (sta.forma="ODPŁATNIE") and'+
        '       (sta.miejsce LIKE "DZIAŁ%")'+
        ' ORDER BY sta.stanowisko, zat.data_nastepnego_urlopu';
  try
    frDBDataSet1.DataSet:= ZQZatPom;

    frReport1.LoadFromFile(DM.Path_Raporty + 'zat_Plan_urlopow.lrf');

    DM.SetMemoReport(frReport1,'Memo_Tytul', 'PRZY PRACACH PORZĄDKOWYCH I POMOCNICZYCH NA RZECZ ZAKŁADU KARNEGO (123§2)' );
    frReport1.ShowReport;
  finally
    frDBDataSet1.DataSet:= ZQZatrudnieni;
    ZQZatPom.Close;
  end;
end;

procedure TZatrudnieni.lblSkierowanieNaBadaniaClick(Sender: TObject);
var StanowiskaPokrewne: string;
begin
  if ZQZatrudnieni.IsEmpty then exit;
  StanowiskaPokrewne:= GetStanowiskaPokrewne(ZQZatrudnieni.FieldByName('Stanowisko').AsString);

  frReport1.LoadFromFile(DM.Path_Raporty + 'zat_SkierowanieBadania.lrf');
  DM.SetMemoReport(frReport1,'memo_DataPisma1', 'Kłodzko, dn. '+DM.GetDateFormatPismo(DateTimePicker3.Date, 'dd MMMM yyyy')+' r.' );
  case TBadania(cbSkierowanie.ItemIndex) of
       bd_wstepne  : SetMemoReportColor(frReport1,'memo_wstepne', clSilver );
       bd_okresowe : SetMemoReportColor(frReport1,'memo_okresowe', clSilver );
       bd_kontrolne: SetMemoReportColor(frReport1,'memo_kontrolne', clSilver );
  end;
  DM.SetMemoReport(frReport1,'memo_pokrewne', StanowiskaPokrewne);
  frReport1.ShowReport;
end;

procedure TZatrudnieni.lblDaneOsadzonegoClick(Sender: TObject);
begin
  frReport1.LoadFromFile(DM.Path_Raporty + 'zat_DaneOsadzonegoZUS.lrf');
  DM.SetMemoReport(frReport1,'memo_DataPisma1', 'Kłodzko, dn. '+DM.GetDateFormatPismo(Date, 'dd MMMM yyyy')+' r.' );
  frReport1.ShowReport;
end;

procedure TZatrudnieni.lblStawkaClick(Sender: TObject);
begin
  if ZQZatrudnieni.IsEmpty then exit;

  with TZatStawkiPlac.Create(Self) do
  begin
    SetIDO(ZQZatrudnieniido.AsInteger, ZQZatrudnieniid.AsInteger);
    ShowModal;
    Free;
  end;
end;

procedure TZatrudnieni.lblWniosekUrlopowyClick(Sender: TObject);
begin
  if ZQZatrudnieni.IsEmpty then exit;

  with TZatWniosekUrolopowy.Create(Self) do
  begin
    SetIDO(ZQZatrudnieniido.AsInteger, ZQZatrudnieniid.AsInteger);
    ShowModal;
    Free;
  end;
end;

procedure TZatrudnieni.lblKartaPracyClick(Sender: TObject);
begin
  if ZQZatrudnieni.IsEmpty then exit;
  frDBDataSet1.RangeBegin:= rbCurrent;
  frDBDataSet1.RangeEnd  := reCurrent;

  if ZQZatrudnieni.FieldByName('rodzaj_zatrudnienia').AsString = '123§2' then
     begin
       frReport1.LoadFromFile(DM.Path_Raporty + 'zat_karta_pracy_odplatnie.lrf');
     end
  else
    if ZQZatrudnieni.FieldByName('rodzaj_zatrudnienia').AsString = '123a§1' then
       frReport1.LoadFromFile(DM.Path_Raporty + 'zat_karta_pracy90.lrf')
  else                           // 123a§2 lub 123a§3
       frReport1.LoadFromFile(DM.Path_Raporty + 'zat_karta_pracy_etat.lrf');

  DM.KolorowanieDni(frReport1, DateTimePicker3.Date);
  DM.SetMemoReport(frReport1, 'Memo_data', AnsiUpperCase( FormatDateTime('MMMM YYYY', DateTimePicker3.Date)) );

  //zmieniamy dostep do danych
  DM.SetMemoReport(frReport1, 'Memo_stanowisko', '[ZQZatrudnieni."stanowisko"]');
  DM.SetMemoReport(frReport1, 'Memo_miejsce', '[ZQZatrudnieni."miejsce"]');

  frReport1.ShowReport;

  frDBDataSet1.RangeBegin:= rbFirst;
  frDBDataSet1.RangeEnd  := reLast;
end;

procedure TZatrudnieni.lblKartaSzkoleniaWstepnegoClick(Sender: TObject);
begin
  frReport1.LoadFromFile(DM.Path_Raporty + 'zat_KartaSzkoleniaWstepnego.lrf');
  DM.SetMemoReport(frReport1,'memo_DataPisma1', 'Kłodzko, dn. '+DM.GetDateFormatPismo(Date, 'dd MMMM yyyy')+' r.' );
  frReport1.ShowReport;
end;


// =============================================================
// Action Label Link  UPDATE MouseEnter i MouseLeave
procedure TZatrudnieni.lblActionMouseEnter(Sender: TObject);
begin
  TLabel(Sender).Font.Style:=[fsUnderline];
end;

procedure TZatrudnieni.lblActionMouseLeave(Sender: TObject);
begin
  TLabel(Sender).Font.Style:=[];
end;

procedure TZatrudnieni.lblActionMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  TLabel(Sender).Font.Style:= TLabel(Sender).Font.Style + [fsBold];
end;

procedure TZatrudnieni.lblActionMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  TLabel(Sender).Font.Style:= TLabel(Sender).Font.Style - [fsBold];
end;


// ============== END Action Link

function TZatrudnieni.ZatrudnieniFieldsToString(ZQPom: TZQuery): string;
var s: string;
begin
  s:= ZQPom.FieldByName('IDO').AsString; // nr w arkuszu, doraźnie POC lub IDO
  s:= s+ #09 +ZQPom.FieldByName('Przyjety').AsString;
  s:= s+ #09 +ZQPom.FieldByName('nr_ewidencyjny').AsString;
  s:= s+ #09 +ZQPom.FieldByName('Nazwisko').AsString;
  s:= s+ ' ' +ZQPom.FieldByName('Imie').AsString;
  s:= s+ #09 +ZQPom.FieldByName('Ojciec').AsString;
  s:= s+ #09 +ZQPom.FieldByName('Urodzony').AsString;
  s:= s+ #09 +ZQPom.FieldByName('miejsce_urodzenia').AsString;
  s:= s+ #09 +ZQPom.FieldByName('kod_pocztowy').AsString;
  s:= s+ #09 +ZQPom.FieldByName('adres').AsString;
  s:= s+ #09 +ZQPom.FieldByName('koniec_kary').AsString;
  s:= s+ #09; // data nadania podgrupy
  s:= s+ #09 +ZQPom.FieldByName('Klasyf').AsString;
  s:= s+ #09 +ZQPom.FieldByName('data_badania').AsString;
  s:= s+ #09 +ZQPom.FieldByName('data_nastepnego_badania').AsString;
  s:= s+ #09; // BHP
  s:= s+ #09 +ZQPom.FieldByName('data_nastepnego_BHP').AsString;
  s:= s+ #09; // BHP
  s:= s+ #09 +ZQPom.FieldByName('wyksztalcenie').AsString;
  s:= s+ #09 +ZQPom.FieldByName('zawod').AsString;
  if ZQPom.FieldByName('zawod_potwierdzony').AsBoolean then s:= s+ #09 +'TAK' else s:= s+ #09 +'NIE';
  s:= s+ #09; // zawód wykonywany
  s:= s+ #09 +ZQPom.FieldByName('Przyjety').AsString;
  s:= s+ #09 +ZQPom.FieldByName('art').AsString;
  s:= s+ #09 +ZQPom.FieldByName('karalnosc').AsString;
  s:= s+ #09 +ZQPom.FieldByName('podkultura').AsString;
  s:= s+ #09 +ZQPom.FieldByName('pesel').AsString;
  s:= s+ #09 +ZQPom.FieldByName('nr_dowodu').AsString;
  s:= s+ #09 +ZQPom.FieldByName('miejsce').AsString;
  s:= s+ #09 +ZQPom.FieldByName('etat').AsString;
  s:= s+ #09 +ZQPom.FieldByName('etat').AsString + ' ETATU'; // lub ZQZatrudnieni.FieldByName('forma').AsString
  s:= s+ #09 +ZQPom.FieldByName('stanowisko').AsString;
  s:= s+ #09 + #09+ #09+ #09+ #09; // stawka godzinowa
  s:= s+ #09; // stawka od dnia
  s:= s+ #09 +'I'; // grupa stanowiskowa, default I
  s:= s+ #09 +ZQPom.FieldByName('urlop_od').AsString;
  if ZQPom.FieldByName('zobowiazania').AsBoolean then s:= s+ #09 +'TAK' else s:= s+ #09 +'NIE';
  s:= s+ #09; // pusta kolumna
  if ZQPom.FieldByName('alimenty').AsBoolean then s:= s+ #09 +'TAK' else s:= s+ #09 +'NIE';
  s:= s+ #09 +ZQPom.FieldByName('rodzaj_zatrudnienia').AsString;
  s:= s+ #09 +ZQPom.FieldByName('forma').AsString;
  s:= s+ #09 +ZQPom.FieldByName('zat_od').AsString;
  s:= s+ #09 +ZQPom.FieldByName('system').AsString;
  s:= s+ #09 +ZQPom.FieldByName('zat_do').AsString;
  s:= s+ #09 +ZQPom.FieldByName('powod_wycofania').AsString;
  s:= s+ #09 +'PRACA FIZYCZNA';
  Result:= s;
end;

procedure TZatrudnieni.SetMemoReportColor(Raport: TfrReport; memo_name: string; bkcolor: TColor);
var p_memo: TfrMemoView;
begin
  p_memo:= (Raport.FindObject(memo_name) as TfrMemoView);
  if Assigned(p_memo) then
     begin
       p_memo.FillColor:= bkcolor;
     end;
end;

function TZatrudnieni.GetStanowiskaPokrewne(Stanowisko: string): string;
var ZQPom: TZQueryPom;
begin
  Result:= '---'; // brak stanowisk pokrewnych
  try
    ZQPom:= TZQueryPom.Create(Self);
    ZQPom.SQL.Text:= 'SELECT * FROM zat_stanowiska_pokrewne WHERE stanowisko=:stanowisko';
    ZQPom.ParamByName('stanowisko').AsString:= Stanowisko;
    ZQPom.Open;
    if ZQPom.IsEmpty then
       begin
         if DM.uprawnienia[15] then // jeśli masz uprawnienia zatrudnienia to możesz dodać Stanowiska pokrewne.
            with TZatAddStanowiskaPokrewne.Create(Self) do
                begin
                  AddStanowiskaPokrewne( Stanowisko );
                  if ShowModal = mrOK then Result:= StanowiskaPokrewne;
                  Free;
                end;
         exit;
       end
     else
       Result:= ZQPom.FieldByName('pokrewne').AsString;

  finally
    FreeAndNil(ZQPom);
  end;
end;

end.

