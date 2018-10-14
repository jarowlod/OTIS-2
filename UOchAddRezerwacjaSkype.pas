unit UOchAddRezerwacjaSkype;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  Buttons, ComCtrls, TplGradientUnit, rxdbgrid, rxmemds, ZDataset, Grids, DBGrids,
  UViewWykazy, UViewUwagiOch, UViewWidzenia, datamodule;

type

  { TOchAddRezerwacjaSkype }

  TOchAddRezerwacjaSkype = class(TForm)
    btnOsadzony: TBitBtn;
    btnAnuluj: TBitBtn;
    btnDodaj: TBitBtn;
    btnDopiszOsobe: TBitBtn;
    btnImortOsob: TBitBtn;
    btnModyfikujOsobe: TBitBtn;
    btnOK: TBitBtn;
    btnUsun: TBitBtn;
    DSOsoby: TDataSource;
    DSUprawnione: TDataSource;
    edUwagi: TEdit;
    GroupBox1: TGroupBox;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    lblPOC: TLabel;
    lblImie: TLabel;
    lblNazwisko: TLabel;
    lblGodzinaWidzenia: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    MemOsoby: TRxMemoryData;
    PageControl1: TPageControl;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    plGradient2: TplGradient;
    RxDBGrid3: TRxDBGrid;
    RxDBGrid4: TRxDBGrid;
    TabSheetOsoby: TTabSheet;
    TabSheetUwagi: TTabSheet;
    TabSheetWidzenia: TTabSheet;
    TabSheetWykazy: TTabSheet;
    ZQUprawnione: TZQuery;
    procedure btnDodajClick(Sender: TObject);
    procedure btnDopiszOsobeClick(Sender: TObject);
    procedure btnImortOsobClick(Sender: TObject);
    procedure btnModyfikujOsobeClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnOsadzonyClick(Sender: TObject);
    procedure btnUsunClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure RxDBGrid4DblClick(Sender: TObject);
    procedure RxDBGrid4PrepareCanvas(sender: TObject; DataCol: Integer; Column: TColumn; AState: TGridDrawState);
  private
    fDataGodzinaWidzenia: TDateTime;
    SelectIDO: integer;

    // importowane widoki osadzone w zakładkach
    fViewUwagiOch: TViewUwagiOch;
    fViewWykazy  : TViewWykazy;
    fViewWidzenia: TViewWidzenia;

    function Zapisz: Boolean;
    procedure WczytajDaneOsadzonego;
    procedure OtworzTabele;
  public
    constructor CreateIDO(AOwner: TComponent; AIDO: integer; ADataGodz: TDateTime);
    procedure DodajOsobeDoWidzenia(aID: integer; aNazwisko, aImie, aPokrewienstwo: string);
  end;

var
  OchAddRezerwacjaSkype: TOchAddRezerwacjaSkype;

implementation
uses UOsadzeni, UOchAddOsobeWidzenie, UOchImportOsobWidzenie, rxdbutils;
{$R *.frm}

{ TOchAddRezerwacjaSkype }

constructor TOchAddRezerwacjaSkype.CreateIDO(AOwner: TComponent; AIDO: integer; ADataGodz: TDateTime);
begin
  inherited Create(AOwner);
  SelectIDO:= AIDO;
  fDataGodzinaWidzenia:= ADataGodz;
  lblGodzinaWidzenia.Caption:= FormatDateTime('hh:nn', fDataGodzinaWidzenia);
  WczytajDaneOsadzonego;
end;

procedure TOchAddRezerwacjaSkype.FormCreate(Sender: TObject);
begin
  PageControl1.TabIndex  := 0;
  btnDopiszOsobe.Enabled := DM.uprawnienia[11]; // osoby bliskie
  btnModyfikujOsobe.Enabled:= DM.uprawnienia[11]; // osoby bliskie;

  fViewWidzenia:= TViewWidzenia.Create(Self);
  fViewWidzenia.Parent:= TabSheetWidzenia;
  fViewWidzenia.Show;

  fViewWykazy:= TViewWykazy.Create(Self);
  fViewWykazy.Parent:= TabSheetWykazy;
  fViewWykazy.Show;

  fViewUwagiOch:= TViewUwagiOch.Create(Self); //CreateParented//(TabSheet1.Handle);
  fViewUwagiOch.Parent:= TabSheetUwagi;
  fViewUwagiOch.Show;

  OtworzTabele;
end;

procedure TOchAddRezerwacjaSkype.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  FreeAndNil(fViewWidzenia);
  FreeAndNil(fViewUwagiOch);
  FreeAndNil(fViewWykazy);
end;

procedure TOchAddRezerwacjaSkype.RxDBGrid4PrepareCanvas(sender: TObject; DataCol: Integer; Column: TColumn; AState: TGridDrawState);
begin
  if Column.Field.DataSet.IsEmpty then exit;
  if Column.Field.DataSet.FieldByName('Skreslona').AsBoolean = true then
     TRxDBGrid(Sender).Canvas.Brush.Color:= $008080FF;   //Font.StrikeThrough:= true;
end;

function TOchAddRezerwacjaSkype.Zapisz: Boolean;
var ZQPom: TZQueryPom;
begin
  Result:= true;
  // walidacja ---------------------------------------------------------------------------------------------------------
  if SelectIDO<=0 then
  begin
    MessageDlg('Musisz wybrać osadzonego.', mtWarning, [mbOK], 0);
    Result:= false;
    exit;
  end;
  // osoby wybrane do widzenia
  if MemOsoby.IsEmpty then
  begin
    MessageDlg('Musisz wybrać osoby uprawnione do widzenia.', mtWarning, [mbOK], 0);
    Result:= false;
    exit;
  end;

  try
    ZQPom:= TZQueryPom.Create(Self);
    ZQPom.SQL.Text:= 'INSERT INTO widzenia_skype (DataGodz, IDO, Nazwisko, Imie, POC, Osoba, Pokrewienstwo, Uwagi, User, data_zap) '+
                     'VALUES (:DataGodz, :IDO, :Nazwisko, :Imie, :POC, :Osoba, :Pokrewienstwo, :Uwagi, :User, NOW())';

    ZQPom.ParamByName('DataGodz').AsDateTime:= fDataGodzinaWidzenia;
    ZQPom.ParamByName('IDO').AsInteger      := SelectIDO;
    ZQPom.ParamByName('Nazwisko').AsString  := lblNazwisko.Caption;
    ZQPom.ParamByName('Imie').AsString      := lblImie.Caption;
    ZQPom.ParamByName('POC').AsString       := lblPOC.Caption;
    ZQPom.ParamByName('Osoba').AsString     := MemOsoby.FieldByName('Nazwisko').AsString + ' ' + MemOsoby.FieldByName('Imie').AsString;
    ZQPom.ParamByName('Pokrewienstwo').AsString:= MemOsoby.FieldByName('Pokrewienstwo').AsString;
    ZQPom.ParamByName('Uwagi').AsString     := edUwagi.Text;
    ZQPom.ParamByName('User').AsString      := DM.PelnaNazwa;
    try;
      ZQPom.ExecSQL;
    finally
      FreeAndNil(ZQPom);
    end;
  except
    MessageDlg('Wakat został zajęty.', mtWarning, [mbOK],0);
    Result:= false;
    exit;
  end;
  DM.KomunikatPopUp(Self, 'Skype','Dokonano rezerwacji Skype.', nots_Info)
end;

procedure TOchAddRezerwacjaSkype.WczytajDaneOsadzonego;
var ZQPom: TZQueryPom;
begin
  if SelectIDO<=0 then
  begin
    lblNazwisko.Caption:= '---';
    lblImie.Caption    := '---';
    lblPOC.Caption     := '---';
  end
  else
  begin;
    try
      ZQPom:= TZQueryPom.Create(Self);
      ZQPom.SQL.Text:= 'SELECT IDO, NAZWISKO, IMIE, POC FROM osadzeni WHERE IDO=:ido';
      ZQPom.ParamByName('ido').AsInteger:= SelectIDO;
      ZQPom.Open;

      lblNazwisko.Caption:= ZQPom.FieldByName('NAZWISKO').AsString;
      lblImie.Caption    := ZQPom.FieldByName('IMIE').AsString;
      lblPOC.Caption     := ZQPom.FieldByName('POC').AsString;
    finally
      FreeAndNil(ZQPom);
    end;
  end;
end;

procedure TOchAddRezerwacjaSkype.OtworzTabele;
begin
  // Widzenia
  fViewWidzenia.SetIDO(SelectIDO);

  //wykazy ochronne
  fViewWykazy.SetIDO(SelectIDO);
  TabSheetWykazy.TabVisible:= not fViewWykazy.IsEmpty;

  //Uwagi i polecenia ochronne
  fViewUwagiOch.SetIDO(SelectIDO);

  MemOsoby.Close;
  MemOsoby.Open;
  ZQUprawnione.Close;
  ZQUprawnione.ParamByName('ido').AsInteger:= SelectIDO;
  ZQUprawnione.Open;
end;

procedure TOchAddRezerwacjaSkype.DodajOsobeDoWidzenia(aID: integer; aNazwisko, aImie, aPokrewienstwo: string);
begin
  if MemOsoby.Locate('ID', aID, []) then
  begin
    DM.KomunikatPopUp(Self, 'Skype', 'Osoba uprawniona do widzenia jest już dodana.', nots_Info);
    exit;
  end;

  MemOsoby.Append;
  MemOsoby.FieldByName('ID').AsInteger      := aID;
  MemOsoby.FieldByName('Nazwisko').AsString := aNazwisko;
  MemOsoby.FieldByName('Imie').AsString     := aImie;
  MemOsoby.FieldByName('Pokrewienstwo').AsString   := aPokrewienstwo;
  MemOsoby.Post;
end;

procedure TOchAddRezerwacjaSkype.RxDBGrid4DblClick(Sender: TObject);
begin
  btnDodajClick(Sender);
end;

procedure TOchAddRezerwacjaSkype.btnDodajClick(Sender: TObject);
begin
  if ZQUprawnione.IsEmpty then exit;
  if ZQUprawnione.FieldByName('Skreslona').AsBoolean then exit;
  if not MemOsoby.IsEmpty then
     begin
       MessageDlg('Można dodać tylko jedną osobę.', mtWarning, [mbOK],0);
       exit;
     end;

  DodajOsobeDoWidzenia( ZQUprawnione.FieldByName('ID').AsInteger,
                        ZQUprawnione.FieldByName('Nazwisko').AsString,
                        ZQUprawnione.FieldByName('Imie').AsString,
                        ZQUprawnione.FieldByName('Pokrew').AsString
                      );
end;

procedure TOchAddRezerwacjaSkype.btnDopiszOsobeClick(Sender: TObject);
begin
  // okno dodawania osoby do osób uprawnionych do widzenia
  if SelectIDO<=0 then exit;
  with TOchAddOsobeWidzenie.Create(Self) do
  begin
    DodajOsobe(SelectIDO);
    ShowModal;
    Free;
  end;
  RefreshQuery(ZQUprawnione);
end;

procedure TOchAddRezerwacjaSkype.btnImortOsobClick(Sender: TObject);
begin
  // okno importu osób z NoeNET do osób uprawnionych do widzenia
  if SelectIDO<=0 then exit;
  with TOchImportOsobWidzenie.Create(Self) do
  begin
    SetIDO(SelectIDO);
    ShowModal;
    Free;
  end;
  RefreshQuery(ZQUprawnione);
end;

procedure TOchAddRezerwacjaSkype.btnModyfikujOsobeClick(Sender: TObject);
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

procedure TOchAddRezerwacjaSkype.btnOKClick(Sender: TObject);
begin
  if not Zapisz then ModalResult:= mrNone;
end;

procedure TOchAddRezerwacjaSkype.btnOsadzonyClick(Sender: TObject);
begin
  with TOsadzeni.Create(Application) do
  begin
    if ShowModal = mrOK then
    begin
      SelectIDO:= FIdo; // FIdo jest z TOsadzeni
      WczytajDaneOsadzonego;
      OtworzTabele;
    end;
    Free;
  end;
end;

procedure TOchAddRezerwacjaSkype.btnUsunClick(Sender: TObject);
begin
  if MemOsoby.IsEmpty then exit;
  MemOsoby.Delete;
end;

end.

