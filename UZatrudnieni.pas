unit UZatrudnieni;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, FileUtil, DateTimePicker, ZDataset, ZSqlUpdate,
  rxdbgrid, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls, ComCtrls,
  DbCtrls, Buttons, Menus, rxdbutils, datamodule, LR_Class, LR_DBSet,
  LSControls, RTTICtrls, TplGradientUnit, DBGrids, dateutils;

type

  { TZatrudnieni }

  TZatrudnieni = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    CheckBox1: TCheckBox;
    cbNazwaGrupy: TCheckBox;
    cbZatNaDzien: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    cbMiejsce: TCheckBox;
    ComboBox1: TComboBox;
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
    DBText40: TDBText;
    DBText41: TDBText;
    DBText42: TDBText;
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
    Edit1: TEdit;
    edNazwaGrupy: TEdit;
    edMiejsce: TEdit;
    frDBDataSet1: TfrDBDataSet;
    frReport1: TfrReport;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
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
    Label43: TLabel;
    Label44: TLabel;
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
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    RxDBGrid1: TRxDBGrid;
    Splitter1: TSplitter;
    tabSzczegolyOs: TTabSheet;
    tabInfoStanowisko: TTabSheet;
    tabNotatnik: TTabSheet;
    tabInfoZat: TTabSheet;
    tabInne: TTabSheet;
    tabWydruki: TTabSheet;
    ZQZatrudnieni: TZQuery;
    ZQZatrudnieniadres: TStringField;
    ZQZatrudnienialimety: TSmallintField;
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
    procedure BitBtn5Click(Sender: TObject);
    procedure cbZatNaDzienChange(Sender: TObject);
    procedure CheckBox1Change(Sender: TObject);
    procedure cbNazwaGrupyChange(Sender: TObject);
    procedure CheckBox3Change(Sender: TObject);
    procedure cbMiejsceChange(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure cyHotLabel1Click(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure DateTimePicker2Change(Sender: TObject);
    procedure dtZatNaDzienChange(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: char);
    procedure FormCreate(Sender: TObject);
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
    procedure lblOswiadczenieNieodplatnaClick(Sender: TObject);
    procedure lblStawkaClick(Sender: TObject);
    procedure lblWniosekOZatrudnienieClick(Sender: TObject);
    procedure lblWniosekUrlopowyClick(Sender: TObject);
    procedure lblZatZaswiadczenieClick(Sender: TObject);
    procedure RadioGroup1SelectionChanged(Sender: TObject);
    procedure RadioGroup2SelectionChanged(Sender: TObject);
    procedure RxDBGrid1DblClick(Sender: TObject);
    procedure RxDBGrid1GetCellProps(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor);
    procedure ZQZatrudnienistanGetText(Sender: TField; var aText: string;
      DisplayText: Boolean);
  private
    { private declarations }
    DisableNewSelect: Boolean;
    ShowOsIDO: integer; // jeśli wchodzimy poprzez ShowZatrudnienieOsadzonego to zapisujemy jego IDO
    Function ZatrudnieniFieldsToString(ZQPom: TZQuery): string;
  public
    { public declarations }
    SQLZatrudnieni: string;       // ładujemy podczas Create z kontrolki ZQZatrudnieni.SQL
    Procedure NewSelect;
    Procedure ShowZatrudnienieOsadzonego(ido: integer; nazwisko: string);
  end;

var
  Zatrudnieni: TZatrudnieni;

implementation
uses UAddZatrudnienie, Clipbrd, UZatZaswiadczenie, UZatWniosekUrlopowy, UStawkiPlac, LR_DSet;
{$R *.frm}

{ TZatrudnieni }

procedure TZatrudnieni.FormCreate(Sender: TObject);
begin
  BitBtn5.Enabled:= DM.uprawnienia[15];  // zatrudnienie
  BitBtn1.Enabled:= DM.uprawnienia[15];  // zatrudnienie
  BitBtn2.Enabled:= DM.uprawnienia[15];  // zatrudnienie
  BitBtn3.Enabled:= DM.uprawnienia[15];  // zatrudnienie
  MenuItemDodaj.Enabled     := DM.uprawnienia[15];
  MenuItemModyfikuj.Enabled := DM.uprawnienia[15];
  MenuItemUsun.Enabled      := DM.uprawnienia[15];

  ZQZatrudnieni.ReadOnly    := not DM.uprawnienia[15];  // zatrudnienie; prawo do edycji notatki

  DisableNewSelect := False;
  SQLZatrudnieni   := ZQZatrudnieni.SQL.Text; // podstawa zapytania
  NewSelect;
  DateTimePicker1.Date:= IncMonth(Date(), -1);
  DateTimePicker2.Date:= Date();
  dtZatNaDzien.Date   := Date();

  ShowOsIDO:=0;
  DateTimePicker3.Date:= Date;  // Data dla wydruku Kart Pracy
  PageControl1.TabIndex:= 0;
  PageControl2.TabIndex:= 0;
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
  case RadioGroup2.ItemIndex of
       0: spobyt:= sp_Aktualny;
       1: spobyt:= sp_Uprzedni;
       2: spobyt:='%';
  end;
  if spobyt<>'%' then
      begin
        ZQZatrudnieni.SQL.Add(' (pobyt = :pobyt) AND');
        ZQZatrudnieni.ParamByName('pobyt').AsString:= spobyt;
      end;

  // STATUS ZATRUDNIENIA
  case RadioGroup1.ItemIndex of
       0: sstatus_zatrudnienia:= sz_Zatrudniony;
       1: sstatus_zatrudnienia:= sz_Wycofany;
       2: sstatus_zatrudnienia:= sz_Oczekujacy;
       3: sstatus_zatrudnienia:= '%'; //wszystkie
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

  //Zmienili Celę
  if CheckBox3.Checked then
     begin
       ZQZatrudnieni.SQL.Add(' (zat.POC <> os.POC) AND');
     end;
  //Zmienili Klasyfikację
  if CheckBox4.Checked then
     begin
       ZQZatrudnieni.SQL.Add(' (zat.Klasyf <> os.Klasyf) AND');
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
  if CheckBox5.Checked then
     begin
       ZQZatrudnieni.SQL.Add(' HAVING new_pobyt <> pobyt');
     end;

  ZQZatrudnieni.Open;
end;

procedure TZatrudnieni.RadioGroup1SelectionChanged(Sender: TObject);
begin
  //zmieniamy statusy zatrudnienia
  NewSelect;
end;

procedure TZatrudnieni.RadioGroup2SelectionChanged(Sender: TObject);
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
procedure TZatrudnieni.CheckBox3Change(Sender: TObject);
begin
  if TCheckBox(Sender).Checked then
      begin
        DisableNewSelect:= true;  // wyłączamy działeanie kontrolek NewSelect;

        RadioGroup1.ItemIndex:= 3;    // status zatrudnienia na wszystkie
        RadioGroup2.ItemIndex:= 0;    // pobyty na aktualne

        BitBtn5.Visible:= true;      // ZAPISZ

        Label42.Visible:= false;      // POC
        Label43.Visible:= false;      // Klasyf
        Label44.Visible:= false;      // pobyt
        DBText40.Visible:= false;
        DBText41.Visible:= false;
        DBText42.Visible:= false;

        case TCheckBox(Sender).Caption of
             'Celi':         begin
                               CheckBox4.Checked:= False; //klasyfikacji
                               CheckBox5.Checked:= False; //Ubyli
                               Label42.Visible:= true;    // POC
                               DBText40.Visible:= true;   // POC
                             end;
             'Klasyfikacji': begin
                               CheckBox3.Checked:= False; //Celi
                               CheckBox5.Checked:= False; //Ubyli
                               Label43.Visible:= true;   // Klasyf
                               DBText41.Visible:= true;  // Klasyf
                             end;
             'Ubyli':         begin
                               CheckBox3.Checked:= False; //Celi
                               CheckBox4.Checked:= False; //klasyfikacji
                               Label44.Visible:= true;   // pobyt
                               DBText42.Visible:= true;  // pobyt
                             end;
        end;

        DisableNewSelect:= false;     //Włączamy kontrolki
        NewSelect;
      end;

  if (not CheckBox3.Checked) AND (not CheckBox4.Checked) AND (not CheckBox5.Checked) then
      begin
        Label42.Visible:= false;
        Label43.Visible:= false;
        Label44.Visible:= false;
        DBText40.Visible:= false;
        DBText41.Visible:= false;
        DBText42.Visible:= false;

        BitBtn5.Visible:= false;

        NewSelect;
      end;
end;

procedure TZatrudnieni.cbMiejsceChange(Sender: TObject);
begin
  edMiejsce.Enabled:= cbMiejsce.Checked;
  NewSelect;
end;

procedure TZatrudnieni.cyHotLabel1Click(Sender: TObject);
begin
   BitBtn1Click(Sender);
end;

procedure TZatrudnieni.BitBtn3Click(Sender: TObject);
begin
  if IsDataSetEmpty(ZQZatrudnieni) then exit;
  if MessageDlg('Czy jesteś pewien aby usunąć osadzonego ?', mtWarning, [mbYes, mbNo],0) = mrYes then
     ZQZatrudnieni.Delete;
end;

// ZAPISZ ZMIANY
procedure TZatrudnieni.BitBtn5Click(Sender: TObject);
var ZQ: TZQueryPom;
begin
  if ZQZatrudnieni.IsEmpty then exit;
  ZQZatrudnieni.First;

  ZQ:= TZQueryPom.Create(Self);

  while not ZQZatrudnieni.EOF do
  begin
    if CheckBox3.Checked then  // 'Celi'
        begin
           ZQ.SQL.Text:= 'UPDATE zat_zatrudnieni SET POC = :POC WHERE id = :id';
           ZQ.ParamByName('POC').AsString := ZQZatrudnieni.FieldByName('POC').AsString;
        end;
    if CheckBox4.Checked then  // 'Klasyfikacji'
        begin
           ZQ.SQL.Text:= 'UPDATE zat_zatrudnieni SET Klasyf = :Klasyf WHERE id = :id';
           ZQ.ParamByName('Klasyf').AsString := ZQZatrudnieni.FieldByName('Klasyf').AsString;
        end;
    if CheckBox5.Checked then  // 'Ubyli'
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

procedure TZatrudnieni.cbZatNaDzienChange(Sender: TObject);
begin
  DisableNewSelect:= true;  // wyłączamy działeanie kontrolek NewSelect;

  if cbZatNaDzien.Checked then
      begin
        RadioGroup1.ItemIndex:= 3;    // status zatrudnienia na wszystkie
        RadioGroup2.ItemIndex:= 2;    // pobyty na wszystkie

        dtZatNaDzien.Enabled:= true;
      end
  else
      begin
        dtZatNaDzien.Enabled:= false;
      end;

  DisableNewSelect:= false;     //Włączamy kontrolki
  NewSelect;
end;

// DODAJ OSADZONEGO DO ZATRUDNIENIA
procedure TZatrudnieni.BitBtn1Click(Sender: TObject);
begin
  with TAddZatrudnienie.Create(Self) do
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
  with TAddZatrudnienie.Create(Self) do
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

procedure TZatrudnieni.ComboBox1Change(Sender: TObject);
begin
  if CheckBox1.Checked then NewSelect;
end;

// szczegóły zatrudnienia wybranego osadzonego we wszystkich pobytach
procedure TZatrudnieni.ShowZatrudnienieOsadzonego(ido: integer; nazwisko: string);
begin
  DisableNewSelect:= true;

  ShowOsIDO:= ido;

  ZQZatrudnieni.SQL.Text:= SQLZatrudnieni + ' WHERE zat.ido = :ido';
  ZQZatrudnieni.ParamByName('ido').AsInteger:= ido;
  ZQZatrudnieni.Open;

  Edit1.Text:= nazwisko;
  RadioGroup1.ItemIndex:= 3;   //select status all
  RadioGroup2.ItemIndex:= 2;   //select pobyt all
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

procedure TZatrudnieni.lblDaneOsadzonegoClick(Sender: TObject);
begin
  frReport1.LoadFromFile(DM.Path_Raporty + 'zat_DaneOsadzonegoZUS.lrf');
  DM.SetMemoReport(frReport1,'memo_DataPisma1', 'Kłodzko, dn. '+DM.GetDateFormatPismo(Date, 'dd MMMM yyyy')+' r.' );
  frReport1.ShowReport;
end;

procedure TZatrudnieni.lblStawkaClick(Sender: TObject);
begin
  if ZQZatrudnieni.IsEmpty then exit;

  with TStawkiPlac.Create(Self) do
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
  s:= ZQPom.FieldByName('POC').AsString; // nr w arkuszu, doraźnie POC
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
  if ZQPom.FieldByName('alimety').AsBoolean then s:= s+ #09 +'TAK' else s:= s+ #09 +'NIE';
  s:= s+ #09 +ZQPom.FieldByName('rodzaj_zatrudnienia').AsString;
  s:= s+ #09 +ZQPom.FieldByName('forma').AsString;
  s:= s+ #09 +ZQPom.FieldByName('zat_od').AsString;
  s:= s+ #09 +ZQPom.FieldByName('system').AsString;
  s:= s+ #09 +ZQPom.FieldByName('zat_do').AsString;
  s:= s+ #09 +ZQPom.FieldByName('powod_wycofania').AsString;
  s:= s+ #09 +'PRACA FIZYCZNA';
  Result:= s;
end;

end.

