unit UStanowiska;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, FileUtil, LR_Class, LR_DBSet, LR_DB_Zeos, LSControls,
  DateTimePicker, rxdbgrid, ZDataset, ZSqlUpdate, Forms,
  Controls, Graphics, Dialogs, ExtCtrls, StdCtrls, Buttons, DbCtrls, ComCtrls,
  Menus, EditBtn, rxdbutils, DateUtils, datamodule, Grids, DBGrids, Types;

type

  { TStanowiska }

  TStanowiska = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    BitBtn15: TBitBtn;
    BitBtn16: TBitBtn;
    BitBtn17: TBitBtn;
    BitBtn18: TBitBtn;
    BitBtn19: TBitBtn;
    btnWykazGrup: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    btnUsunStanowisko: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    cbSystem: TComboBox;
    cbForma: TComboBox;
    cbDoDruku: TCheckBox;
    DateTimePicker2: TDateTimePicker;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DSZatrudnieni: TDataSource;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBMemo1: TDBMemo;
    DSStanowiska: TDataSource;
    DSWycofani: TDataSource;
    Edit1: TEdit;
    frDBDataSet1: TfrDBDataSet;
    frDBDataSet2: TfrDBDataSet;
    frReport1: TfrReport;
    frReport2: TfrReport;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    ImageList1: TImageList;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    druk_przepustka_zbiorcza: TMenuItem;
    druk_wykaz_os: TMenuItem;
    Label9: TLabel;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItemDodaj: TMenuItem;
    MenuItemDodajSt: TMenuItem;
    MenuItemKartaZatrudnienia: TMenuItem;
    MenuItemModyfikuj: TMenuItem;
    MenuItemModyfikujSt: TMenuItem;
    MenuItemUsun: TMenuItem;
    MenuItemUsunSt: TMenuItem;
    MenuItem7: TMenuItem;
    druk_karta_pracy90: TMenuItem;
    PageControl1: TPageControl;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    PopupMenu1: TPopupMenu;
    PopupMenu2: TPopupMenu;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    RxDBGrid1: TRxDBGrid;
    RxDBGrid2: TRxDBGrid;
    RxDBGrid3: TRxDBGrid;
    Splitter1: TSplitter;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    ZQStanowiska: TZQuery;
    ZQStanowiskadata_dodania: TDateTimeField;
    ZQStanowiskadata_modyfikacji: TDateTimeField;
    ZQStanowiskaforma: TStringField;
    ZQStanowiskagodz_powrotu: TStringField;
    ZQStanowiskagodz_wyjscia: TStringField;
    ZQStanowiskaid: TLargeintField;
    ZQStanowiskamiejsce: TStringField;
    ZQStanowiskanazwa: TStringField;
    ZQStanowiskaopis: TStringField;
    ZQStanowiskastan: TStringField;
    ZQStanowiskastanowisko: TStringField;
    ZQStanowiskasystem: TStringField;
    ZQStanowiskauser_dodania: TStringField;
    ZQStanowiskauser_modyfikacji: TStringField;
    ZQZatrudnieni: TZQuery;
    ZQWycofani: TZQuery;
    ZUZatrudnieni: TZUpdateSQL;
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure druk_karta_pracyEtat_str1_Click(Sender: TObject);
    procedure druk_karta_pracyOdplatnie_str2_Click(Sender: TObject);
    procedure druk_karta_pracyOdplatnie_str1_Click(Sender: TObject);
    procedure btnWykazGrupClick(Sender: TObject);
    procedure druk_karta_pracyOdplatnieClick(Sender: TObject);
    procedure druk_przepustka_zbiorcza_AllClick(Sender: TObject);
    procedure druk_karta_pracyEtatClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure btnUsunStanowiskoClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure druk_przepustka_zbiorczaClick(Sender: TObject);
    procedure druk_wykaz_osClick(Sender: TObject);
    procedure druk_karta_pracy90Click(Sender: TObject);
    procedure MenuItemKartaZatrudnieniaClick(Sender: TObject);
    procedure RadioGroup1SelectionChanged(Sender: TObject);
    procedure RxDBGrid1DataHintShow(Sender: TObject; CursorPos: TPoint;
      Cell: TGridCoord; Column: TRxColumn; var HintStr: string;
      var Processed: boolean);
    procedure RxDBGrid2CellClick(Column: TColumn);
  private
    { private declarations }
    Procedure WydrukKartyPracy(file_name: string);
    function isZatrudnieniEmpty_byStanowisko(id_stanowisko: integer): Boolean;
  public
    { public declarations }
    Fid_stanowiska: integer;
    Procedure NewSelect;
    Procedure WybierzGrupe;
  end;

var
  Stanowiska: TStanowiska;

implementation
uses UAddStanowiska, LR_DSet, UZatrudnienieGrafik, UAddZatrudnienie, UZatrudnieni, Clipbrd;
{$R *.frm}

{ TStanowiska }

procedure TStanowiska.FormCreate(Sender: TObject);
begin
  BitBtn1.Enabled            := DM.uprawnienia[15];  // zatrudnienie
  BitBtn2.Enabled            := DM.uprawnienia[15];  // zatrudnienie
  btnUsunStanowisko.Enabled  := DM.uprawnienia[15];  // zatrudnienie
  MenuItemDodajSt.Enabled    := DM.uprawnienia[15];
  MenuItemModyfikujSt.Enabled:= DM.uprawnienia[15];
  MenuItemUsunSt.Enabled     := DM.uprawnienia[15];

  BitBtn12.Enabled           := DM.uprawnienia[15];  // zatrudnienie  modyfikuj osadzonego
  BitBtn13.Enabled           := DM.uprawnienia[15];  // zatrudnienie  usuń osadzonego
  BitBtn14.Enabled           := DM.uprawnienia[15];  // zatrudnienie  dodaj osadzonego

  ZQZatrudnieni.ReadOnly     := not DM.uprawnienia[15];

  NewSelect; // stanowiska open
  ZQZatrudnieni.Open;
  ZQWycofani.Open;
  DateTimePicker2.Date:= Date;
  PageControl1.TabIndex:= 0;
end;

procedure TStanowiska.NewSelect;
var sstatus: char;
    snazwa: string;
begin
  case RadioGroup1.ItemIndex of
       0: sstatus:='A';
       1: sstatus:='U';
       2: sstatus:='%';
  end;
  if Edit1.Text<>'' then snazwa:= '%'+ Edit1.Text+ '%' else snazwa:='%';

  if sstatus='%' then
      ZQStanowiska.SQL.Text:='SELECT * FROM zat_stanowiska WHERE (nazwa LIKE :nazwa)'
  else
      begin
        ZQStanowiska.SQL.Text:='SELECT * FROM zat_stanowiska WHERE (stan= :status) AND (nazwa LIKE :nazwa)';
        ZQStanowiska.ParamByName('status').AsString:= sstatus;
      end;

  if cbForma.ItemIndex>0 then
  begin
    ZQStanowiska.SQL.Text:= ZQStanowiska.SQL.Text + 'AND(Forma = :forma)';
    ZQStanowiska.ParamByName('forma').AsString:= cbForma.Text;
  end;
  if cbSystem.ItemIndex>0 then
  begin
    ZQStanowiska.SQL.Text:= ZQStanowiska.SQL.Text + 'AND(System = :system)';
    ZQStanowiska.ParamByName('system').AsString:= cbSystem.Text;
  end;

  ZQStanowiska.ParamByName('nazwa').AsString:= snazwa;
  ZQStanowiska.Open;
end;

procedure TStanowiska.RadioGroup1SelectionChanged(Sender: TObject);
begin
  NewSelect;
end;

procedure TStanowiska.RxDBGrid1DataHintShow(Sender: TObject; CursorPos: TPoint;
  Cell: TGridCoord; Column: TRxColumn; var HintStr: string;
  var Processed: boolean);
begin
  Processed:= true;
end;

procedure TStanowiska.RxDBGrid2CellClick(Column: TColumn);
var bookmark: TBookMark;
begin
  if Column.FieldName = 'drukuj' then
  begin
    Column.Field.DataSet.Edit;
    Column.Field.AsBoolean:= not Column.Field.AsBoolean;
    bookmark:= Column.Field.DataSet.Bookmark;
    Column.Field.DataSet.Post;
    Column.Field.DataSet.GotoBookmark( bookmark);
  end;
end;

procedure TStanowiska.WydrukKartyPracy(file_name: string);
begin
  if RadioGroup2.ItemIndex = 1 then
  begin
    frDBDataSet1.RangeBegin:= rbCurrent;
    frDBDataSet1.RangeEnd  := reCurrent;
  end;

  frReport1.LoadFromFile(DM.Path_Raporty + file_name);

  DM.KolorowanieDni(frReport1, DateTimePicker2.Date);
  DM.SetMemoReport(frReport1, 'Memo_data', AnsiUpperCase( FormatDateTime('MMMM YYYY', DateTimePicker2.Date)) );
  frReport1.ShowReport;

  frDBDataSet1.RangeBegin:= rbFirst;
  frDBDataSet1.RangeEnd  := reLast;
end;

function TStanowiska.isZatrudnieniEmpty_byStanowisko(id_stanowisko: integer): Boolean;
var ZQPom: TZQueryPom;
begin
  ZQPom:= TZQueryPom.Create(Self);
  ZQPom.SQL.Text:= 'SELECT id_stanowiska FROM zat_zatrudnieni WHERE id_stanowiska=:id_stanowiska';
  ZQPom.ParamByName('id_stanowiska').AsInteger:= id_stanowisko;
  ZQPom.Open;

  Result:= ZQPom.IsEmpty;

  FreeAndNil(ZQPom);
end;

// USUŃ STANOWISKO
procedure TStanowiska.btnUsunStanowiskoClick(Sender: TObject);
begin
  if IsDataSetEmpty(ZQStanowiska) then exit;

  // sprawdzenie osadzonych czy sa aktywni dla grupy i zmienic status na uprzedni po komunikacie
  // sprawdzam czy są przypisani osadzeni do grupy !!! ale nie tylko obecnym pobytem
  if isZatrudnieniEmpty_byStanowisko(ZQStanowiskaid.AsInteger) then
    begin
      if MessageDlg('Czy usunąć stanowisko?'+LineEnding+'Do grupy nie ma przypisanych osadzonych.', mtWarning, [mbYes, mbNo],0) = mrYes then
      begin
        ZQStanowiska.Delete;
      end;
    end
  else // not Empty
    begin
      if MessageDlg('Do stanowiska są przypisani osadzeni.'+LineEnding+'Czy zmienić status grupy na uprzednią?', mtWarning, [mbYes, mbNo],0) = mrYes then
      begin
        DM.ZQTemp.SQL.Text:='UPDATE zat_stanowiska SET stan = "U", data_modyfikacji = NOW(), user_modyfikacji = :user WHERE id= :id;';
        DM.ZQTemp.ParamByName('id').AsInteger := ZQStanowiska.FieldByName('id').AsInteger;
        DM.ZQTemp.ParamByName('user').AsString:= DM.PelnaNazwa;
        DM.ZQTemp.ExecSQL;
        RefreshQuery(ZQStanowiska);
      end;
    end;
end;

procedure TStanowiska.Edit1Change(Sender: TObject);
begin
  NewSelect;
end;

// DRUKUJ przepustka zbiorcza
procedure TStanowiska.druk_przepustka_zbiorczaClick(Sender: TObject);
var tmp_SQL: string;
begin
  // drukujemy tylko zaznaczonych do druku

  ZQZatrudnieni.DisableControls;
  if cbDoDruku.Checked then
  begin
    tmp_SQL:= ZQZatrudnieni.SQL.Text;
    ZQZatrudnieni.SQL.Add(' AND drukuj = 1');
    ZQZatrudnieni.Open;
  end;
  //---------------------------------------


  frReport1.LoadFromFile(DM.Path_Raporty + 'zat_prze_zbio.lrf');
  DM.SetMemoReport(frReport1, 'Memo_data', AnsiUpperCase( FormatDateTime('DD.MM.YYYY', DateTimePicker2.Date)) );
  DM.SetMemoReport(frReport1, 'Memo_data1', AnsiUpperCase( FormatDateTime('DD.MM.YYYY', DateTimePicker2.Date)) );
  frReport1.ShowReport;

  //przywracamy widok wszystkich
  if cbDoDruku.Checked then
  begin
    ZQZatrudnieni.SQL.Text:= tmp_SQL;
    ZQZatrudnieni.Open;
  end;
  ZQZatrudnieni.EnableControls;
end;

procedure TStanowiska.druk_przepustka_zbiorcza_AllClick(Sender: TObject);
var tmp_SQL: string;
begin
  if MessageDlg('Czy napewno wydrukować wszystkie grupy zewnętrzne?', mtInformation, [mbOK, mbCancel],0) = mrCancel then exit;

  cbSystem.ItemIndex:= 2; // Bez konwojenta
  NewSelect;

  // drukujemy tylko zaznaczonych do druku
  ZQZatrudnieni.DisableControls;
  if cbDoDruku.Checked then
  begin
    tmp_SQL:= ZQZatrudnieni.SQL.Text;
    ZQZatrudnieni.SQL.Add(' AND drukuj = 1');
    ZQZatrudnieni.Open;
  end;
  //---------------------------------------

  frReport1.LoadFromFile(DM.Path_Raporty + 'zat_prze_zbio.lrf');
  DM.SetMemoReport(frReport1, 'Memo_data', AnsiUpperCase( FormatDateTime('DD.MM.YYYY', DateTimePicker2.Date)) );
  DM.SetMemoReport(frReport1, 'Memo_data1', AnsiUpperCase( FormatDateTime('DD.MM.YYYY', DateTimePicker2.Date)) );

  while not ZQStanowiska.EOF do
  begin
    if not ZQZatrudnieni.IsEmpty then
    begin
      frReport1.PrepareReport; //ShowReport;
      frReport1.ShowPreparedReport; //PrintPreparedReport('',1);
    end;
    ZQStanowiska.Next;
  end;

  //przywracamy widok wszystkich
  if cbDoDruku.Checked then
  begin
    ZQZatrudnieni.SQL.Text:= tmp_SQL;
    ZQZatrudnieni.Open;
  end;
  ZQZatrudnieni.EnableControls;
end;

//DRUKUJ wykaz osadzonych
procedure TStanowiska.druk_wykaz_osClick(Sender: TObject);
var Nazwa_Grupy: string;
begin
  with TZatrudnienieGrafik.Create(Self) do
  begin
    Nazwa_Grupy:= ZQStanowiska.FieldByName('stanowisko').AsString+ ' - ' +ZQStanowiska.FieldByName('miejsce').AsString;
    if Nazwa_Grupy='' then Nazwa_Grupy:= ZQStanowiska.FieldByName('nazwa').AsString;;
    NowyGrafik_Wykaz(ZQZatrudnieni, DateTimePicker2.Date, Nazwa_Grupy);
    ShowModal;
    Free;
  end;
end;

procedure TStanowiska.MenuItemKartaZatrudnieniaClick(Sender: TObject);
begin
  with TZatrudnieni.Create(Self) do
  begin
       ShowZatrudnienieOsadzonego( Self.ZQZatrudnieni.FieldByName('ido').AsInteger, Self.ZQZatrudnieni.FieldByName('nazwisko').AsString );
       ShowModal;
       Free;
  end;
end;

procedure TStanowiska.druk_karta_pracy90Click(Sender: TObject);
begin
  WydrukKartyPracy('zat_karta_pracy90.lrf');
end;

procedure TStanowiska.druk_karta_pracyEtatClick(Sender: TObject);
begin
  WydrukKartyPracy('zat_karta_pracy_etat.lrf');
end;

procedure TStanowiska.druk_karta_pracyEtat_str1_Click(Sender: TObject);
begin
  WydrukKartyPracy('zat_karta_pracy_etat_str1.lrf');
end;

procedure TStanowiska.druk_karta_pracyOdplatnieClick(Sender: TObject);
begin
  WydrukKartyPracy('zat_karta_pracy_odplatnie.lrf');
end;

procedure TStanowiska.druk_karta_pracyOdplatnie_str2_Click(Sender: TObject);
begin
  WydrukKartyPracy('zat_karta_pracy_odplatnie_str2.lrf');
end;

procedure TStanowiska.druk_karta_pracyOdplatnie_str1_Click(Sender: TObject);
begin
  WydrukKartyPracy('zat_karta_pracy_odplatnie_str1.lrf');
end;

// MODYFIKUJ OSADZONEGO
procedure TStanowiska.BitBtn12Click(Sender: TObject);
begin
  if ZQZatrudnieni.IsEmpty then exit;
  with TAddZatrudnienie.Create(Self) do
  begin
    ModyfikujZatrudnienie( ZQZatrudnieni.FieldByName('id').AsInteger );
    if ShowModal = mrOK then RefreshQuery(ZQZatrudnieni);
    Free;
  end;
end;

// USUŃ OSADZONEGO z bazy zatrudnionych
procedure TStanowiska.BitBtn13Click(Sender: TObject);
begin
  if ZQZatrudnieni.IsEmpty then exit;
  if MessageDlg('Czy jesteś pewien aby usunąć osadzonego ?', mtWarning, [mbYes, mbNo],0) = mrYes then
     ZQZatrudnieni.Delete;
end;

// DODAJ osadzonego ??? do wybranego stanowiska
procedure TStanowiska.BitBtn14Click(Sender: TObject);
begin
  if ZQStanowiska.IsEmpty then exit;
  with TAddZatrudnienie.Create(Self) do
  begin
    NoweZatrudnienieStanowisko( ZQStanowiska.FieldByName('id').AsInteger );
    if ShowModal = mrOK then RefreshQuery(ZQZatrudnieni);
    Free;
  end;
end;

procedure TStanowiska.btnWykazGrupClick(Sender: TObject);
begin
  //RxDBGrid1.DataSource:=nil;
  ZQZatrudnieni.DisableControls;

  frReport2.LoadFromFile(DM.Path_Raporty + 'zat_Wykaz_Grup.lrf');
  frReport2.ShowReport;

  //RxDBGrid1.DataSource:=DSStanowiska;
  ZQZatrudnieni.EnableControls;
end;

procedure TStanowiska.BitBtn1Click(Sender: TObject);
begin
  //okno dodania grupy
  with TAddStanowiska.Create(Self) do
  begin
    NoweStanowisko;
    if ShowModal = mrOK then RefreshQuery(ZQStanowiska);
    Free;
  end;
end;

procedure TStanowiska.BitBtn2Click(Sender: TObject);
begin
  //okno modyfikacji grupy
  if ZQStanowiska.IsEmpty then exit;
  with TAddStanowiska.Create(Self) do
  begin
    ModyfikujStanowisko( ZQStanowiska.FieldByName('id').AsInteger );
    if ShowModal = mrOK then RefreshQuery(ZQStanowiska);
    Free;
  end;
end;

//=============== TRYB WYBORU GRUPY
// OK
procedure TStanowiska.BitBtn6Click(Sender: TObject);
begin
  if IsDataSetEmpty(ZQStanowiska) then Fid_stanowiska:=0
                                  else Fid_stanowiska:= ZQStanowiska.FieldByName('id').AsInteger;
end;

// Przygotowuje Forme do wyboru Stanowiska/Grupy - zmienia działanie formy na jako wyszukiwarka
// ukrywa przycisk ZAMKNIJ i pokazuje OK i ANULUJ
procedure TStanowiska.WybierzGrupe;
begin
  Fid_stanowiska:=0;
  BitBtn4.Enabled:= false;
  BitBtn5.Enabled:= true;
  BitBtn6.Enabled:= true;
  BitBtn4.Visible:= false;
  BitBtn5.Visible:= true;
  BitBtn6.Visible:= true;

end;

end.

