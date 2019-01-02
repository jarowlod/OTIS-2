unit UPenitForm;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, FileUtil, ZDataset, ZSqlUpdate, Forms, Controls, Graphics, Dialogs, ExtCtrls, DbCtrls,
  StdCtrls, Buttons, ComCtrls, rxdbutils, UZatrudnieni, UViewUwagiOch, UViewWykazy, UViewZatrudnienie, UViewWidzenia,
  UViewOsobyBliskie, UViewPaczki, datamodule;

type

  { TPenitForm }

  TPenitForm = class(TForm)
    btnKreatorWPZ: TSpeedButton;
    btnRejestrProsb: TBitBtn;
    btnRejestrZat: TBitBtn;
    btnDrukArch: TBitBtn;
    btnDrukWywiad: TBitBtn;
    DBText4: TDBText;
    DBText9: TDBText;
    DSOs: TDataSource;
    DBCheckBox6: TDBCheckBox;
    DBEdit2: TDBEdit;
    DBMemo1: TDBMemo;
    DSOsInfo: TDataSource;
    DSOsNotatki: TDataSource;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBDateTimePicker1: TDBDateTimePicker;
    DBDateTimePicker2: TDBDateTimePicker;
    DBDateTimePicker3: TDBDateTimePicker;
    DBDateTimePicker4: TDBDateTimePicker;
    DBDateTimePicker5: TDBDateTimePicker;
    DBDateTimePicker6: TDBDateTimePicker;
    DBEdit1: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    Image_os: TImage;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    lblUrodziny: TLabel;
    lblCelaOchronna: TLabel;
    lblCelaPalaca: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    lblKomunikat: TLabel;
    PageControl1: TPageControl;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel4: TPanel;
    Panel_Zdj: TPanel;
    btnDodajDoKoszyka: TSpeedButton;
    TabSheetPaczki: TTabSheet;
    TabSheetOsobyBliskie: TTabSheet;
    TabSheetWidzenia: TTabSheet;
    TabSheetUwagi: TTabSheet;
    TabSheetWykazy: TTabSheet;
    TabSheetNotatnik: TTabSheet;
    TabSheetZatrudnienie: TTabSheet;
    ZQOsInfo: TZQuery;
    ZQOsNotatki: TZQuery;
    ZQOs: TZQuery;
    ZUOsInfo: TZUpdateSQL;
    ZUOsNotatki: TZUpdateSQL;
    procedure btnKreatorWPZClick(Sender: TObject);
    procedure btnRejestrProsbClick(Sender: TObject);
    procedure btnRejestrZatClick(Sender: TObject);
    procedure btnDrukArchClick(Sender: TObject);
    procedure btnDrukWywiadClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnDodajDoKoszykaClick(Sender: TObject);
    procedure Image_osDblClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure ZQOsInfoAfterPost(DataSet: TDataSet);
    procedure ZQOsNotatkiAfterPost(DataSet: TDataSet);
  private
    SelectIDO  : integer;
    fRefresh   : Boolean;
    SourceQuery: TZQuery;
    // importowane widoki osadzone w zakładkach
    fViewUwagiOch: TViewUwagiOch;
    fViewWykazy  : TViewWykazy;
    fViewZatrudnienie: TViewZatrudnienie;
    fViewWidzenia    : TViewWidzenia;
    fViewOsobyBliskie: TViewOsobyBliskie;
    fViewPaczki      : TViewPaczki;

    procedure WczytajTypCeli;
    procedure SetIdoToActiveTab;
    procedure ObliczUrodziny;
    procedure ZapiszZmiany;
  public
    Procedure SetIDO(ido: integer);
    Procedure SetIDO(ido: integer; RefreshSourceQuery: TZQuery);
    //Function UprawnieniaDoEdycji(ido: integer): boolean;
  end;

  Function UprawnieniaDoEdycji(ido: integer): boolean;
//var
//  PenitForm: TPenitForm;

implementation
uses UPenitAktaArch, UPenitWywiad, URejestrProsbOs, UPenitWPZ, UZdjWidok, DateUtils;
{$R *.frm}

{ TPenitForm }

procedure TPenitForm.FormCreate(Sender: TObject);
begin
  SelectIDO:= 0;
  fRefresh := false;
  PageControl1.TabIndex:= 0;

  // nadajemy uprawnienia
  // ...

  fViewZatrudnienie:= TViewZatrudnienie.Create(Self);
  fViewZatrudnienie.Parent:= TabSheetZatrudnienie;
  fViewZatrudnienie.Show;

  fViewWykazy:= TViewWykazy.Create(Self);
  fViewWykazy.Parent:= TabSheetWykazy;
  fViewWykazy.Show;

  fViewUwagiOch:= TViewUwagiOch.Create(Self); //CreateParented//(TabSheetWidzenia.Handle);
  fViewUwagiOch.Parent:= TabSheetUwagi;
  fViewUwagiOch.Show;

  fViewWidzenia:= TViewWidzenia.Create(Self);
  fViewWidzenia.Parent:= TabSheetWidzenia;
  fViewWidzenia.Show;

  fViewOsobyBliskie:= TViewOsobyBliskie.Create(Self);
  fViewOsobyBliskie.Parent:= TabSheetOsobyBliskie;
  fViewOsobyBliskie.Show;

  fViewPaczki:= TViewPaczki.Create(Self);
  fViewPaczki.Parent:= TabSheetPaczki;
  fViewPaczki.Show;

  DM.DataSetList.Add(ZQOs);
  DM.DataSetList.Add(ZQOsInfo);
  DM.DataSetList.Add(ZQOsNotatki);
end;

procedure TPenitForm.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  // przed zamknięceim osadzonego zapisz ewentualne zaminy jeśli jest w trybie edycji
  ZapiszZmiany;
  FreeAndNil(fViewUwagiOch);
  FreeAndNil(fViewWykazy);
  FreeAndNil(fViewZatrudnienie);
  FreeAndNil(fViewWidzenia);
  FreeAndNil(fViewOsobyBliskie);
  FreeAndNil(fViewPaczki);

  DM.DataSetList.Remove(ZQOs);
  DM.DataSetList.Remove(ZQOsInfo);
  DM.DataSetList.Remove(ZQOsNotatki);
end;

procedure TPenitForm.ZapiszZmiany;
begin
  // przed zamknięceim osadzonego zapisz ewentualne zaminy jeśli jest w trybie edycji
  if ZQOsInfo.State    in [dsEdit, dsInsert] then ZQOsInfo.Post;
  if ZQOsNotatki.State in [dsEdit, dsInsert] then ZQOsNotatki.Post;
  //----------------------------------------------------------------------------
end;

procedure TPenitForm.SetIDO(ido: integer);
var ReadOnlyOs: Boolean;
begin
  if SelectIDO = ido then exit;

  // przed zmiana osadzonego zapisz ewentualne zaminy jeśli jest w trybie edycji
  ZapiszZmiany;
  //----------------------------------------------------------------------------

  SelectIDO:= ido;

  // jeśli jest 0 to zerujemy widok
  if SelectIDO = 0 then
  begin
    Image_os.Picture.Clear;
    ZQOs.Close;
    ZQOsInfo.Close;
    ZQOsNotatki.Close;
    lblCelaOchronna.Visible:= false;
    lblCelaPalaca.Visible  := false;
    lblUrodziny.Visible    := false;
    btnRejestrZat.Enabled  := false;
    btnRejestrProsb.Enabled:= false;
    btnDrukArch.Enabled    := false;
    btnDrukWywiad.Enabled  := false;
    PageControl1.Visible   := false; // Ukrywamy Okno zakładek !!!
    Enabled                := false; // cały panel nieaktywny
    exit;
  end;
  //-------------------------------

  btnRejestrZat.Enabled    := true;
  btnRejestrProsb.Enabled  := true;
  btnDrukArch.Enabled      := true;
  btnDrukWywiad.Enabled    := true;
  PageControl1.Visible     := true;
  Enabled                  := true;    // cały panel Aktywny

  TLoadFotoThread.Create( DM.Path_Foto + IntToStr( SelectIDO )+'.jpg', Image_os);

  ReadOnlyOs:= not UprawnieniaDoEdycji( SelectIDO );
  if ReadOnlyOs then lblKomunikat.Caption := 'Tylko do odczytu' else lblKomunikat.Caption:='';
  ZQOsInfo.ReadOnly    := ReadOnlyOs;
  ZQOsNotatki.ReadOnly := ReadOnlyOs;

  // jeśli DM.Wychowawca = Kierownik
  if (DM.Wychowawca = 'Kierownik')and(DM.Dzial = 'Penit') then
  begin
    lblKomunikat.Caption := 'Kierownik - niezbędna edycja';
    ZQOsInfo.ReadOnly    := false;
  end;
  //--------------------------------

  // otwieramy tabele osadzeni, wybranego osadzonego
  ZQOs.Close;
  ZQOs.ParamByName('IDO').AsInteger := SelectIDO;
  ZQOs.Open;

  // otwieramy os_info wybranego osadzonego
  ZQOsInfo.Close;
  ZQOsInfo.ParamByName('IDO').AsInteger := SelectIDO;
   ZUOsInfo.Params.ParamByName('AutoryzacjaEd').AsString := DM.Wychowawca;
   ZUOsInfo.Params.ParamByName('IDOEd').AsInteger := SelectIDO;
  ZQOsInfo.Open;

  //otwieramy os_notatki wybranego osadzonego
  ZQOsNotatki.Close;
  ZQOsNotatki.ParamByName('IDO').AsInteger := SelectIDO;
   ZUOsNotatki.Params.ParamByName('wychEd').AsString := DM.Wychowawca;
   ZUOsNotatki.Params.ParamByName('IDOEd').AsInteger := SelectIDO;
  ZQOsNotatki.Open;

  //typ celi dla określenia Ochronki i palenia
  WczytajTypCeli;
{
  //zatrudnienie
  fViewZatrudnienie.SetIDO(SelectIDO);
  TabSheetZatrudnienie.TabVisible:= not fViewZatrudnienie.isEmpty;
  btnRejestrZat.Enabled:= not fViewZatrudnienie.isEmpty;

  //wykazy ochronne
  fViewWykazy.SetIDO(SelectIDO);
  TabSheetWykazy.TabVisible:= not fViewWykazy.IsEmpty;

  //Uwagi i polecenia ochronne
  fViewUwagiOch.SetIDO(SelectIDO);
  //TabSheetUwagi.TabVisible:= not fViewUwagiOch.IsEmpty;  // zakładka widoczna z uwagi na możliwość edycji
}
  SetIdoToActiveTab;

  // Urodziny osadzonego
  ObliczUrodziny;
end;

procedure TPenitForm.SetIdoToActiveTab;
begin
  case PageControl1.ActivePage.Name of
    'TabSheetUwagi'       : fViewUwagiOch.SetIDO(SelectIDO);
    'TabSheetWykazy'      : fViewWykazy.SetIDO(SelectIDO);
    'TabSheetZatrudnienie': fViewZatrudnienie.SetIDO(SelectIDO);
    'TabSheetWidzenia'    : fViewWidzenia.SetIDO(SelectIDO);
    'TabSheetOsobyBliskie': fViewOsobyBliskie.SetIDO(SelectIDO);
    'TabSheetPaczki'      : fViewPaczki.SetIDO(SelectIDO);
  end;
end;

procedure TPenitForm.PageControl1Change(Sender: TObject);
begin
  SetIdoToActiveTab;
end;

procedure TPenitForm.SetIDO(ido: integer; RefreshSourceQuery: TZQuery);
begin
  SourceQuery:= RefreshSourceQuery;
  fRefresh:= true;
  SetIDO(ido);
end;

procedure TPenitForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if fRefresh then exit; // jeśli jest w widoku terminarza to exit
  if Char(Key) =#27 then    // ESC
  begin
    close;
  end;
end;

procedure TPenitForm.btnDodajDoKoszykaClick(Sender: TObject);
begin
  if SelectIDO<=0 then exit;
  if DM.DodajDoKoszyka(SelectIDO) then
     DM.KomunikatPopUp(Sender, 'Koszyk', 'Dodano osadzonego do koszyka.', nots_Info);
end;

procedure TPenitForm.Image_osDblClick(Sender: TObject);
begin
  with TZdjWidok.CreateForm(Self, SelectIDO) do begin
    ShowModal;
    Free;
  end;
end;

procedure TPenitForm.ZQOsInfoAfterPost(DataSet: TDataSet);
begin
  if fRefresh then RefreshQuery(SourceQuery);
  DataSet.Refresh;  // uaktualnia dane kto i kiedy modyfikował
end;

procedure TPenitForm.ZQOsNotatkiAfterPost(DataSet: TDataSet);
begin
  DataSet.Refresh;
end;

procedure TPenitForm.btnRejestrZatClick(Sender: TObject);
begin
  with TZatrudnieni.Create(Self) do
  begin
       ShowZatrudnienieOsadzonego( SelectIDO, ZQOs.FieldByName('NAZWISKO').AsString );
       ShowModal;
       Free;
  end;
end;

procedure TPenitForm.btnRejestrProsbClick(Sender: TObject);
begin
  with TRejestrProsbOs.Create(Parent) do
  begin
       SetIDO( SelectIDO );
       ShowModal;
       Free;
  end;
end;

procedure TPenitForm.btnKreatorWPZClick(Sender: TObject);
begin
  if SelectIDO = 0 then exit;
  with TPenitWPZ.Create(Self) do
  begin
       SetIDO(SelectIDO);
       ShowModal;
       Free;
  end;
  RefreshQuery(ZQOsInfo);
end;

procedure TPenitForm.btnDrukArchClick(Sender: TObject);
begin
  if SelectIDO = 0 then exit;
  with TPenitAktaArch.Create(Self) do
  begin
       SetIDO( SelectIDO );
       ShowModal;
       Free;
  end;
end;

procedure TPenitForm.btnDrukWywiadClick(Sender: TObject);
begin
  if SelectIDO = 0 then exit;
  with TPenitWywiad.Create(Self) do
  begin
       SetIDO( SelectIDO );
       ShowModal;
       Free;
  end;
end;

procedure TPenitForm.WczytajTypCeli;
var ZQPom: TZQueryPom;
begin
  lblCelaOchronna.Visible:= false;
  lblCelaPalaca.Visible  := false;

  if (not ZQOs.Active)or(ZQOs.FieldByName('POC').AsString = '') then exit;
  ZQPom := TZQueryPom.Create(Self);
  ZQPom.SQL.Text := 'SELECT Pali, Ochronka FROM typ_cel WHERE POC=:poc';
  ZQPom.ParamByName('poc').AsString := ZQOs.FieldByName('POC').AsString;
  ZQPom.Open;
  if not ZQPom.IsEmpty then
    begin
      if (not ZQPom.FieldByName('Pali').IsNull) and (ZQPom.FieldByName('Pali').AsBoolean) then
        begin
          lblCelaPalaca.Caption:='Cela Paląca';
          lblCelaPalaca.Font.Color:= clDefault;
          lblCelaPalaca.Visible:= true;
        end
       else
        begin
          lblCelaPalaca.Caption:='Cela Nie Paląca';
          lblCelaPalaca.Font.Color:= clRed;
          lblCelaPalaca.Visible:= true;
        end;
      if (not ZQPom.FieldByName('Ochronka').IsNull) and (ZQPom.FieldByName('Ochronka').AsBoolean) then
        begin
          lblCelaOchronna.Caption:='Cela Ochronna';
          lblCelaOchronna.Visible:= true;
        end;
    end;
  FreeAndNil(ZQPom);
end;

procedure TPenitForm.ObliczUrodziny;
var
  y, m, d: Word;
  yname, dname: String;
  slownie: string;
begin
  PeriodBetween(Date, ZQOs.FieldByName('URODZ').AsDateTime, y,m,d);

  if (d=0)and(m=0) then
    slownie:= Format('Dziś są moje %d urodziny', [y])
  else
    begin
      if y<20 then
      case y of
        1:     yname:='rok';
        2,3,4: yname:='lata';
        else   yname:='lat';
      end else
      case (y mod 10) of
        0,1,5,6,7,8,9: yname:='lat';
        2,3,4        : yname:='lata';
     end;
     slownie:= Format('%d %s',[y,yname]);

     if m>0 then slownie+= Format(' %d msc',[m]);

     if d>0 then
       begin
         if d=1 then dname:= 'dzień' else dname:= 'dni';
         slownie+= Format(' %d %s',[d,dname]);
       end;
    end;
  lblUrodziny.Visible:= true;
  lblUrodziny.Caption:= slownie;
end;


// GLOBALNA

function UprawnieniaDoEdycji(ido: integer): boolean;
var ZQPom: TZQueryPom;
begin
  Result:= false;
  if DM.Wychowawca='' then exit; // jesli nie wychowawca to brak edycji

  ZQPom := TZQueryPom.Create(nil);
  ZQPom.SQL.Text := 'SELECT IDO, osadzeni.POC, WYCHOWAWCA FROM osadzeni, typ_cel WHERE (IDO=:ido)AND(osadzeni.POC=typ_cel.POC);';
  ZQPom.ParamByName('ido').AsInteger := ido;
  ZQPom.Open;
  if not ZQPom.IsEmpty then
    begin
      if DM.Wychowawca = ZQPom.FieldByName('WYCHOWAWCA').AsString then Result:= True  // jeśli jest wychowawca właściwy
      else
        if Pos(ZQPom.FieldByName('WYCHOWAWCA').AsString, DM.ZastepcyWych)>0 then Result:= true; // jeśli jest wych. w zastępstwie
    end
  else
    Result:=true;                          // brak określenia celi = każdy może edytować

  ZQPom.Close;
  FreeAndNil(ZQPom);

  if DM.uprawnienia[13] then Result:= true; // Terminarz admin  -  admin może wszystko
end;

end.

