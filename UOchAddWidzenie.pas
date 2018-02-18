unit UOchAddWidzenie;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, rxdbgrid, rxmemds, Forms, Controls, Graphics,
  Dialogs, ExtCtrls, Buttons, StdCtrls, Spin, EditBtn, ComCtrls, DbCtrls,
  datamodule, DateTimePicker, ZDataset, db, rxdbutils, Grids, DBGrids,
  UViewWykazy, UViewUwagiOch, UViewWidzenia;

type

  { TOchAddWidzenie }

  TOchAddWidzenie = class(TForm)
    btnModyfikujOsobe: TBitBtn;
    btnAnuluj: TBitBtn;
    btnDodaj: TBitBtn;
    btnOK: TBitBtn;
    btnRejestrProsb: TBitBtn;
    btnUsun: TBitBtn;
    btnDopiszOsobe: TBitBtn;
    cbSposob: TComboBox;
    cbCzyZrealizowane: TCheckBox;
    cbDodatkowe: TComboBox;
    cbNrStolika: TComboBox;
    dtDataWidzenia: TDateTimePicker;
    DSUprawnione: TDataSource;
    DSOsoby: TDataSource;
    edUwagi: TEdit;
    GroupBox1: TGroupBox;
    GroupBoxNrStolika: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    lblCelaTA: TLabel;
    lblKlasyf: TLabel;
    lblNazwisko: TLabel;
    lblPoc: TLabel;
    memoUwagi: TMemo;
    MemOsoby: TRxMemoryData;
    PageControl1: TPageControl;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    RxDBGrid3: TRxDBGrid;
    RxDBGrid4: TRxDBGrid;
    edRegulamin: TSpinEdit;
    edDodatkowe: TSpinEdit;
    TabSheetOsoby: TTabSheet;
    TabSheetWidzenia: TTabSheet;
    TabSheetWykazy: TTabSheet;
    TabSheetUwagi: TTabSheet;
    ZQUprawnione: TZQuery;
    procedure btnModyfikujOsobeClick(Sender: TObject);
    procedure btnDodajClick(Sender: TObject);
    procedure btnDopiszOsobeClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnRejestrProsbClick(Sender: TObject);
    procedure btnUsunClick(Sender: TObject);
    procedure cbCzyZrealizowaneChange(Sender: TObject);
    procedure edDodatkoweChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RxDBGrid3DblClick(Sender: TObject);
    procedure RxDBGrid4DblClick(Sender: TObject);
    procedure RxDBGrid4PrepareCanvas(sender: TObject; DataCol: Integer;
      Column: TColumn; AState: TGridDrawState);
  private
    SelectIDO: integer;
    SelectID : integer; // ID widzenia
    isModyfikacja: Boolean;
    isCloseForm: Boolean;
    Etap: integer;
    nr_stolika: integer;

    // importowane widoki osadzone w zakładkach
    fViewUwagiOch: TViewUwagiOch;
    fViewWykazy  : TViewWykazy;
    fViewWidzenia: TViewWidzenia;

    procedure ShowDaneOsadzonego;
    function CzyJestDodanyDoPoczekalni: Boolean;
    procedure OtworzTabele;
    function Zapisz: Boolean;
    procedure WczytajWidzenie; // wczytaj widzenie do modyfikacji
    procedure WczytajWolneStoliki;
  public
              // Zainicjuj widzenie osadzonemu vIDO
              // jeśli vIDO = -1 to wywołaj wybór osadzonego
    procedure DodajOsadzonegoDoPoczekalni(vIDO: integer);
              // ID - index widzenia, IDO - osadzonego
    procedure Modyfikuj(vID, vIDO: integer);

    procedure DodajOsobeDoWidzenia(aID: integer; aNazwisko, aImie, aPokrewienstwo: string);
  end;

//var
//  OchAddWidzenie: TOchAddWidzenie;

implementation
uses URejestrProsbOs, UOsadzeni, UOchAddOsobeWidzenie, UOchSalaWidzen;
{$R *.frm}

{ TOchAddWidzenie }

procedure TOchAddWidzenie.FormCreate(Sender: TObject);
begin
  isCloseForm            := false;
  PageControl1.TabIndex  := 0;
  btnDopiszOsobe.Enabled := DM.uprawnienia[11]; // osoby bliskie
  btnModyfikujOsobe.Enabled:= DM.uprawnienia[11]; // osoby bliskie;
  dtDataWidzenia.Date    := Date;
  dtDataWidzenia.Enabled := false;

  fViewWidzenia:= TViewWidzenia.Create(Self);
  fViewWidzenia.Parent:= TabSheetWidzenia;
  fViewWidzenia.Show;

  fViewWykazy:= TViewWykazy.Create(Self);
  fViewWykazy.Parent:= TabSheetWykazy;
  fViewWykazy.Show;

  fViewUwagiOch:= TViewUwagiOch.Create(Self); //CreateParented//(TabSheet1.Handle);
  fViewUwagiOch.Parent:= TabSheetUwagi;
  fViewUwagiOch.Show;
end;

procedure TOchAddWidzenie.FormClose(Sender: TObject;
  var CloseAction: TCloseAction);
begin
  FreeAndNil(fViewWidzenia);
  FreeAndNil(fViewUwagiOch);
  FreeAndNil(fViewWykazy);
end;

procedure TOchAddWidzenie.FormShow(Sender: TObject);
begin
  if isCloseForm then Close;
end;

procedure TOchAddWidzenie.DodajOsadzonegoDoPoczekalni(vIDO: integer);
begin
  isModyfikacja:= false;
  Caption      := 'DODAJ Widzenie';
  SelectIDO    := vIDO;

  // jeśli ido -1 to znajdź osadzonego----------------------
  if vIDO = -1 then
  begin
    with TOsadzeni.Create(Application) do
    begin
      if ShowModal = mrOK then
      begin
        SelectIDO:= FIdo; // FIdo jest z TOsadzeni
      end;
      Free;
    end;
  end;
  // jeśli SelectIDO <=0 to nie wybrano osadzonego i zamykamy okno przy OnShow.
  if SelectIDO<=0 then
    begin
      isCloseForm:= true;
      exit;
    end;
  // --------------------------------------------------------

  // TODO: sprawdzamy czy osadzony przebywa w celi aresztowej

  // sprawdzamy czy osadzony jest już dodany do poczekalni
  if CzyJestDodanyDoPoczekalni then
    begin
      isCloseForm:= true;
      exit;
    end;

  ShowDaneOsadzonego;
  OtworzTabele;

  if fViewWidzenia.isEmpty then DM.KomunikatPopUp(Self, 'Widzenia', 'Osadzony nie posiada wprowadzonych widzeń.'+LineEnding+'Sprawdź w NOE !!!', nots_Warning);
end;

procedure TOchAddWidzenie.Modyfikuj(vID, vIDO: integer);
begin
  isModyfikacja:= true;
  Caption      := 'MODYFIKUJ Widzenie';
  SelectIDO    := vIDO;
  SelectID     := vID;

  ShowDaneOsadzonego;
  OtworzTabele;
  WczytajWidzenie;
end;

procedure TOchAddWidzenie.btnRejestrProsbClick(Sender: TObject);
begin
  with TRejestrProsbOs.Create(Parent) do
  begin
       SetIDO( SelectIDO );
       ShowModal;
       Free;
  end;
end;

procedure TOchAddWidzenie.btnUsunClick(Sender: TObject);
begin
  if MemOsoby.IsEmpty then exit;
  MemOsoby.Delete;
end;

procedure TOchAddWidzenie.RxDBGrid3DblClick(Sender: TObject);
begin
  btnUsunClick(Sender);
end;

procedure TOchAddWidzenie.cbCzyZrealizowaneChange(Sender: TObject);
begin
  dtDataWidzenia.Enabled:= cbCzyZrealizowane.Checked;
end;

procedure TOchAddWidzenie.edDodatkoweChange(Sender: TObject);
begin
  cbDodatkowe.Enabled:= (edDodatkowe.Value>0);
end;

procedure TOchAddWidzenie.DodajOsobeDoWidzenia(aID: integer; aNazwisko, aImie, aPokrewienstwo: string);
begin
  if MemOsoby.Locate('ID',aID, []) then
  begin
    DM.KomunikatPopUp(Self, 'Widzenia', 'Osoba uprawniona do widzenia jest już dodana.', nots_Info);
    exit;
  end;

  MemOsoby.Append;
  MemOsoby.FieldByName('ID').AsInteger      := aID;
  MemOsoby.FieldByName('Nazwisko').AsString := aNazwisko;
  MemOsoby.FieldByName('Imie').AsString     := aImie;
  MemOsoby.FieldByName('Pokrewienstwo').AsString   := aPokrewienstwo;
  MemOsoby.Post;
end;

procedure TOchAddWidzenie.btnDodajClick(Sender: TObject);
begin
  if ZQUprawnione.IsEmpty then exit;
  if ZQUprawnione.FieldByName('Skreslona').AsBoolean then exit;

  DodajOsobeDoWidzenia( ZQUprawnione.FieldByName('ID').AsInteger,
                        ZQUprawnione.FieldByName('Nazwisko').AsString,
                        ZQUprawnione.FieldByName('Imie').AsString,
                        ZQUprawnione.FieldByName('Pokrew').AsString
                      );
end;

procedure TOchAddWidzenie.RxDBGrid4DblClick(Sender: TObject);
begin
  btnDodajClick(Sender);
end;

procedure TOchAddWidzenie.btnModyfikujOsobeClick(Sender: TObject);
begin
  if ZQUprawnione.IsEmpty then exit;
  with TOchAddOsobeWidzenie.Create(Self) do
  begin
    ModyfikujOsobe(Self.ZQUprawnione.FieldByName('ID').AsInteger);
    ShowModal;
    Free;
  end;
  RefreshQuery(ZQUprawnione);
end;

procedure TOchAddWidzenie.btnDopiszOsobeClick(Sender: TObject);
begin
  // okno dodawania osoby do osób uprawnionych do widzenia
  with TOchAddOsobeWidzenie.Create(Self) do
  begin
    DodajOsobe(SelectIDO);
    ShowModal;
    Free;
  end;
  RefreshQuery(ZQUprawnione);
end;

procedure TOchAddWidzenie.btnOKClick(Sender: TObject);
begin
  // wywołujemy funkcję zapisującą widzenie, w razie niepowodzenia zmieniamy ModalResult na None aby nie zamykać okna;
  if not Zapisz then ModalResult:= mrNone;
end;

procedure TOchAddWidzenie.ShowDaneOsadzonego;
var ZQPom: TZQueryPom;
begin
  ZQPom:= TZQueryPom.Create(Self);
  ZQPom.SQL.Text:= 'SELECT IDO, Nazwisko, Imie, Ojciec, POC, Klasyf FROM osadzeni WHERE IDO = :ido';
  ZQPom.ParamByName('ido').AsInteger:= SelectIDO;
  ZQPom.Open;
  if not ZQPom.IsEmpty then
    begin
      lblNazwisko.Caption:= ZQPom.FieldByName('Nazwisko').AsString+ ' ' + ZQPom.FieldByName('Imie').AsString + ' s.'+ ZQPom.FieldByName('Ojciec').AsString;
      lblKlasyf.Caption  := ZQPom.FieldByName('Klasyf').AsString;
      lblPoc.Caption     := ZQPom.FieldByName('POC').AsString;
    end
  else
    lblNazwisko.Caption:= 'Brak danych osadzonego';

  // sprawdzamy czy cela jest TA
  ZQPom.SQL.Text:= 'SELECT tc.POC, tc.TA FROM typ_cel AS tc WHERE (tc.POC = :poc) AND '+   // ((tc.TA = 1) OR
                   '((SELECT COUNT(IDO) AS ile FROM osadzeni AS os WHERE os.POC = :poc AND os.KLASYF LIKE "%TA%") > 0)';
  ZQPom.ParamByName('poc').AsString:= lblPoc.Caption;
  ZQPom.Open;
  lblCelaTA.Visible:= not ZQPom.IsEmpty;
  //----------------------------

  FreeAndNil(ZQPom);
end;

function TOchAddWidzenie.CzyJestDodanyDoPoczekalni: Boolean;
var ZQPom: TZQueryPom;
begin
  // sprawdzam czy jest dodany do poczekalni
  Result:= false;
  ZQPom:= TZQueryPom.Create(Self);
  ZQPom.SQL.Text:= 'SELECT IDO FROM widzenia WHERE (Etap=1)AND(IDO=:ido);';
  ZQPom.ParamByName('ido').AsInteger:= SelectIDO;
  ZQPom.Open;
  if not ZQPom.IsEmpty then
  begin
    MessageDlg('Osadzony jest już dodany do poczekalni.', mtInformation, [mbOK], 0);
    Result:= true;
  end;
  FreeAndNil(ZQPom);
end;

procedure TOchAddWidzenie.OtworzTabele;
begin
  // Widzenia
  fViewWidzenia.SetIDO(SelectIDO);

  //wykazy ochronne
  fViewWykazy.SetIDO(SelectIDO);
  TabSheetWykazy.TabVisible:= not fViewWykazy.IsEmpty;

  //Uwagi i polecenia ochronne
  fViewUwagiOch.SetIDO(SelectIDO);

  MemOsoby.Open;
  ZQUprawnione.ParamByName('ido').AsInteger:= SelectIDO;
  ZQUprawnione.Open;
end;

function TOchAddWidzenie.Zapisz: Boolean;
var ZQPom: TZQueryPom;
    sposob: string;
begin
  Result:= true;
  // walidacja ---------------------------------------------------------------------------------------------------------
  // osoby wybrane do widzenia
  if MemOsoby.IsEmpty then
  begin
    MessageDlg('Musisz wybrać osoby uprawnione do widzenia.', mtWarning, [mbOK], 0);
    Result:= false;
    exit;
  end;
  // czas widzenia
  if (edRegulamin.Value=0)and(edDodatkowe.Value=0) then
  begin
    MessageDlg('Musisz wybrać czas trwania widzenia.', mtWarning, [mbOK], 0);
    Result:= false;
    exit;
  end;
  // koniec walidacji --------------------------------------------------------------------------------------------------

  // zakladamy rekord widzenia o ETAPIE 1 - oczekuje
  ZQPom:= TZQueryPom.Create(Self);
  // ---------------------------------------------INSERT----------------------------------------------------------------
  if cbCzyZrealizowane.Checked then
    begin // Dodaj gotowe widzenie
      ZQPom.SQL.Text:= 'INSERT INTO widzenia (IDO,Etap,Data_Widzenie,Czas_widzenia,Sposob,Uwagi,Nadzor,Czas_reg,Czas_dod,Dodatkowe,Data_Dod) VALUES (:ido,3,:data_w,:czas,:sposob,:uwagi,:nadzor,:czas_r,:czas_d,:dod,:dd);';
      ZQPom.ParamByName('data_w').AsDate:= dtDataWidzenia.Date;
    end
  else  // Dodaj do poczekalni
    ZQPom.SQL.Text:= 'INSERT INTO widzenia (IDO,Etap,Data_Oczekuje,Czas_widzenia,Sposob,Uwagi,Nadzor,Czas_reg,Czas_dod,Dodatkowe,Data_Dod) VALUES (:ido,1,Now(),:czas,:sposob,:uwagi,:nadzor,:czas_r,:czas_d,:dod,:dd);';

  ZQPom.ParamByName('ido').AsInteger   := SelectIDO;
  ZQPom.ParamByName('nadzor').AsString := DM.PelnaNazwa;
  // ------------------------------------------END etap INSERTU

  // ------------------------------------------UPDATE ------------------------------------------------------------------
  if isModyfikacja then
    begin
      ZQPom.SQL.Text:= 'UPDATE widzenia SET Czas_widzenia=:czas, Sposob=:sposob, Uwagi=:uwagi, Czas_reg=:czas_r, Czas_dod=:czas_d, Dodatkowe=:dod, Data_Dod=:dd, Stolik=:stolik WHERE ID=:id_widzenia';
      ZQPom.ParamByName('id_widzenia').AsInteger:= SelectID;
      if GroupBoxNrStolika.Visible then
          ZQPom.ParamByName('stolik').AsInteger:= StrToInt(cbNrStolika.Text)
        else
          ZQPom.ParamByName('stolik').Value:= null;
    end;
  // ------------------------------------------END etap UPDATE
  // ----------------------------------------- część wspólna dla INSERT i UPDATE
  ZQPom.ParamByName('czas').AsInteger  := edRegulamin.Value + edDodatkowe.Value;
  ZQPom.ParamByName('czas_r').AsInteger:= edRegulamin.Value;
  ZQPom.ParamByName('czas_d').AsInteger:= edDodatkowe.Value;
  case cbSposob.ItemIndex of
    0: sposob:='K';
    1: sposob:='BO';
    2: sposob:='OP';
    3: sposob:='BK';
  end;
  ZQPom.ParamByName('sposob').AsString := sposob;
  ZQPom.ParamByName('uwagi').AsString  := edUwagi.Text;
  if edDodatkowe.Value=0 then
    begin
     ZQPom.ParamByName('dod').AsString:= '';
     ZQPom.ParamByName('dd').Value    := NULL;
    end
  else
    begin
      ZQPom.ParamByName('dod').AsString:= 'D';
      ZQPom.ParamByName('dd').AsString := cbDodatkowe.Text;
    end;

  ZQPom.ExecSQL;

  if isModyfikacja then
    begin  // w przypadku modyfikacji usuwamy przypisane osoby uprawnione do widzenia aby dodać po nowemu
      ZQPom.SQL.Text:= 'DELETE FROM widzenia_upr WHERE ID_widzenia=:id_w';
      ZQPom.ParamByName('id_w').AsInteger:= SelectID;
      ZQPom.ExecSQL;
    end
  else
    begin
      // odczytujemy ID widzenia, gdy dodajemy widzenie
      ZQPom.SQL.Text:= 'SELECT LAST_INSERT_ID() as id;';
      ZQPom.Open;
      SelectID:= ZQPom.FieldByName('ID').AsInteger;
    end;

  // dodajemy osoby uprawnione do widzenia_upr (ID_widzenia, ID_uprawnione)
  ZQPom.SQL.Text:= 'INSERT INTO widzenia_upr (ID_widzenia,ID_uprawnione) VALUES (:id_w,:id_u);';
  ZQPom.ParamByName('id_w').AsInteger:= SelectID;
  MemOsoby.First;
  while not MemOsoby.EOF do
  begin
    ZQPom.ParamByName('id_u').AsInteger:= MemOsoby.FieldByName('ID').AsInteger;
    ZQPom.ExecSQL;
    MemOsoby.Next;
  end;

  FreeAndNil( ZQPom);

  // Komunikat na zakończenie zapisywania
  if isModyfikacja then
    DM.KomunikatPopUp(Self, 'Widzenia','Zmodyfikowano dane widzenia.', nots_Info)
  else
    if cbCzyZrealizowane.Checked then
      DM.KomunikatPopUp(Self, 'Widzenia','Dodano osadzonemu widzenie.', nots_Info)
    else
      DM.KomunikatPopUp(Self, 'Widzenia','Dodano osadzonego do poczekalni.', nots_Info);
end;

procedure TOchAddWidzenie.WczytajWidzenie;
var ZQPom: TZQueryPom;
    sposob: string;
begin
  // wczytujemy dane widzenia
  ZQPom:= TZQueryPom.Create(Self);

  // obsługujemy tylko etap poczekalni i sali widzeń
  cbCzyZrealizowane.Enabled:= false; // wyłączamy możliwość zapisania zrealizowanego widzenia

  ZQPom.SQL.Text:= 'SELECT ID,IDO,Sposob,Uwagi,Czas_reg,Czas_dod,Dodatkowe,Data_Dod,Etap,Stolik FROM widzenia WHERE ID=:id';
  ZQPom.ParamByName('id').AsInteger:= SelectID;
  ZQPom.Open;

  edRegulamin.Value:= ZQPom.FieldByName('Czas_reg').AsInteger;
  edDodatkowe.Value:= ZQPom.FieldByName('Czas_dod').AsInteger;
  edUwagi.Text     := ZQPom.FieldByName('Uwagi').AsString;
  cbDodatkowe.Enabled:= (ZQPom.FieldByName('Dodatkowe').AsString = 'D');
  cbDodatkowe.Text := ZQPom.FieldByName('Data_Dod').AsString;
  sposob           := ZQPom.FieldByName('Sposob').AsString;
  case sposob of
    'K' : cbSposob.ItemIndex:= 0;
    'BO': cbSposob.ItemIndex:= 1;
    'OP': cbSposob.ItemIndex:= 2;
    'BK': cbSposob.ItemIndex:= 3;
  end;

  Etap:= ZQPom.FieldByName('Etap').AsInteger;
  if Etap = ew_NaSali then
    begin
      GroupBoxNrStolika.Visible:= true;
      nr_stolika:= ZQPom.FieldByName('Stolik').AsInteger;
      WczytajWolneStoliki;
      cbNrStolika.Text:= IntToStr(nr_stolika);
    end;

  // dodajemy osoby uprawnione do widzenia_upr (ID_widzenia, ID_uprawnione)
  ZQPom.SQL.Text:= 'SELECT ID_widzenia,ID_uprawnione FROM widzenia_upr WHERE ID_widzenia=:id_w';
  ZQPom.ParamByName('id_w').AsInteger:= SelectID;
  ZQPom.Open;
  while not ZQPom.EOF do
  begin
    if ZQUprawnione.Locate('ID', ZQPom.FieldByName('ID_uprawnione').AsInteger, []) then
       btnDodajClick(Self);
    ZQPom.Next;
  end;

  FreeAndNil( ZQPom);
end;

procedure TOchAddWidzenie.WczytajWolneStoliki;
var ZQPom: TZQueryPom;
    i: integer;
begin
  cbNrStolika.Clear;
  for i:=1 to LSTOLIKOW do cbNrStolika.Items.Add(IntToStr(i)); // na początek dodajemy wszystkie stoliki

  ZQPom:= TZQueryPom.Create(Self);
  ZQPom.SQL.Text:= 'SELECT ID,Etap,Stolik FROM widzenia WHERE Etap=:etap';
  ZQPom.ParamByName('etap').AsInteger:= ew_NaSali;
  ZQPom.Open;
  while not ZQPom.EOF do
  begin
    i:= cbNrStolika.Items.IndexOf(ZQPom.FieldByName('Stolik').AsString);
    if ZQPom.FieldByName('Stolik').AsInteger <> nr_stolika then
       cbNrStolika.Items.Delete(i);
    ZQPom.Next;
  end;
  FreeAndNil(ZQPom);
end;

procedure TOchAddWidzenie.RxDBGrid4PrepareCanvas(sender: TObject;
  DataCol: Integer; Column: TColumn; AState: TGridDrawState);
begin
  if Column.Field.DataSet.IsEmpty then exit;
  if Column.Field.DataSet.FieldByName('Skreslona').AsBoolean = true then
     TRxDBGrid(Sender).Canvas.Brush.Color:= $008080FF;   //Font.StrikeThrough:= true;
end;

end.

