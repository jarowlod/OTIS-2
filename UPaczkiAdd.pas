unit UPaczkiAdd;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, Buttons,
  StdCtrls, EditBtn, ComCtrls, TplGradientUnit, rxdbgrid,
  DateTimePicker, UViewWykazy, UViewUwagiOch, UViewPaczki, datamodule;

type

  { TPaczkiAdd }

  TPaczkiAdd = class(TForm)
    btnAnuluj: TBitBtn;
    btnOK: TBitBtn;
    btnRejestrProsb: TBitBtn;
    cbWKantynie: TCheckBox;
    cbDodatkowa: TCheckBox;
    cbNadawca: TComboBox;
    dtpDataPrzyjecia: TDateTimePicker;
    edUwagi: TEdit;
    edAdres: TEdit;
    GroupBox1: TGroupBox;
    Image1: TImage;
    Label1: TLabel;
    Label11: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    lblKlasyf: TLabel;
    lblNazwisko: TLabel;
    lblPoc: TLabel;
    PageControl1: TPageControl;
    Panel2: TPanel;
    Panel5: TPanel;
    plGradient2: TplGradient;
    rgRodzajPaczki: TRadioGroup;
    TabSheetPaczki: TTabSheet;
    TabSheetUwagi: TTabSheet;
    TabSheetWykazy: TTabSheet;
    procedure btnOKClick(Sender: TObject);
    procedure btnRejestrProsbClick(Sender: TObject);
    procedure cbNadawcaChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure rgRodzajPaczkiSelectionChanged(Sender: TObject);
  private
    SelectIDO: integer;
    fViewWykazy  : TViewWykazy;
    fViewUwagiOch: TViewUwagiOch;
    fViewPaczki  : TViewPaczki;
    procedure WczytajDaneOsadzonego;
    procedure ZapiszPaczke;
    procedure WczytajNadawcow;
  public
    procedure SetIDO(IDO: integer);
  end;

  { TAdresyNadawcow }

  TAdresyNadawcow = class
    Adres: string;
    constructor Create(s: string);
  end;

  TRodzajPaczki = (rpZywnosciowa, rpHigieniczna, rpOdziezowa, rpHigOdziez, rpInna);

implementation
uses URejestrProsbOs;
{$R *.frm}

{ TAdresyNadawcow }

constructor TAdresyNadawcow.Create(s: string);
begin
  inherited Create;
  Adres:= s;
end;

{ TPaczkiAdd }

procedure TPaczkiAdd.FormCreate(Sender: TObject);
begin
  SelectIDO:= 0;
  PageControl1.TabIndex  := 0;

  fViewWykazy:= TViewWykazy.Create(Self);
  fViewWykazy.Parent:= TabSheetWykazy;
  fViewWykazy.Show;

  fViewUwagiOch:= TViewUwagiOch.Create(Self); //CreateParented//(TabSheetPaczki.Handle);
  fViewUwagiOch.Parent:= TabSheetUwagi;
  fViewUwagiOch.Show;

  fViewPaczki:= TViewPaczki.Create(Self);
  fViewPaczki.Parent:= TabSheetPaczki;
  fViewPaczki.Show;
end;

procedure TPaczkiAdd.FormClose(Sender: TObject; var CloseAction: TCloseAction);
var
  i: Integer;
begin
  FreeAndNil(fViewUwagiOch);
  FreeAndNil(fViewWykazy);
  FreeAndNil(fViewPaczki);

  for i:=0 to cbNadawca.Items.Count-1 do
    begin
      if Assigned(cbNadawca.Items.Objects[i]) then
        cbNadawca.Items.Objects[i].Destroy;
    end;
end;

procedure TPaczkiAdd.SetIDO(IDO: integer);
begin
  SelectIDO:= IDO;
  WczytajDaneOsadzonego;
  WczytajNadawcow;

  //wykazy ochronne
  fViewWykazy.SetIDO(SelectIDO);
  TabSheetWykazy.TabVisible:= not fViewWykazy.IsEmpty;

  //Uwagi i polecenia ochronne
  fViewUwagiOch.SetIDO(SelectIDO);

  //Paczki
  fViewPaczki.SetIDO(SelectIDO);
end;

procedure TPaczkiAdd.rgRodzajPaczkiSelectionChanged(Sender: TObject);
begin
  if (TRodzajPaczki(rgRodzajPaczki.ItemIndex) = rpZywnosciowa) then
    cbDodatkowa.Enabled:= True
  else
    begin
      cbDodatkowa.Enabled:= false;
      cbDodatkowa.Checked:= false;
    end;
end;

procedure TPaczkiAdd.WczytajDaneOsadzonego;
var ZQPom: TZQueryPom;
begin
  ZQPom:= TZQueryPom.Create(Self);
  try
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

  finally
    FreeAndNil(ZQPom);
  end;
end;

procedure TPaczkiAdd.btnOKClick(Sender: TObject);
begin
  dtpDataPrzyjecia.Time:= Time();

  try
    ZapiszPaczke;
  except
    ModalResult:= mrNone;
    raise;
  end;
end;

procedure TPaczkiAdd.btnRejestrProsbClick(Sender: TObject);
begin
  with TRejestrProsbOs.Create(Parent) do
  begin
       SetIDO( SelectIDO );
       ShowModal;
       Free;
  end;
end;

procedure TPaczkiAdd.cbNadawcaChange(Sender: TObject);
begin
  if cbNadawca.ItemIndex<>-1 then
    begin
      if Assigned(cbNadawca.Items.Objects[cbNadawca.ItemIndex]) then
        edAdres.Text:= TAdresyNadawcow(cbNadawca.Items.Objects[cbNadawca.ItemIndex]).Adres;
    end;
end;

procedure TPaczkiAdd.ZapiszPaczke;
var ZQ: TZQueryPom;
    WybranyRodzajPaczki: string;
begin
  case TRodzajPaczki(rgRodzajPaczki.ItemIndex) of
    rpZywnosciowa: WybranyRodzajPaczki:= rp_Zywnosciowa;
    rpHigieniczna: WybranyRodzajPaczki:= rp_Higieniczna;
    rpOdziezowa  : WybranyRodzajPaczki:= rp_Odziezowa;
    rpHigOdziez  : WybranyRodzajPaczki:= rp_HigOdziez;
    rpInna       : WybranyRodzajPaczki:= rp_Inna;
  end;

  ZQ:= TZQueryPom.Create(Self);
  try
    ZQ.SQL.Text:='INSERT INTO paczki '
     +'(IDO, WYDANO, WYDAL, RODZAJ, WAGA, UWAGI, DODATKOWA, KANTYNA, NADAWCA, ADRES) '
     +'VALUES (:ido, :wydano, :wydal, :rodzaj, :waga, :uwagi, :dodatkowa, :kantyna, :nadawca, :adres)';

    ZQ.ParamByName('ido').AsInteger    := SelectIDO;
    ZQ.ParamByName('wydano').AsDateTime:= dtpDataPrzyjecia.DateTime; // Data wydania paczki
    ZQ.ParamByName('wydal').AsString   := DM.PelnaNazwa;      // Kto wydał
    ZQ.ParamByName('rodzaj').AsString  := WybranyRodzajPaczki;         // Rodzaj paczki
    ZQ.ParamByName('waga').AsInteger   := 6;  // waga  - zgodne ze starym systemem, obecnie nie potrzebne
    ZQ.ParamByName('uwagi').AsString   := edUwagi.Text;       // uwagi
    ZQ.ParamByName('nadawca').AsString := cbNadawca.Text; // nadawca
    ZQ.ParamByName('adres').AsString   := edAdres.Text;       // adres

    if cbWKantynie.Checked then
      ZQ.ParamByName('kantyna').AsString:= 'tak';  // Czy zakupiona w kantynie

    if cbDodatkowa.Checked then
      ZQ.ParamByName('dodatkowa').AsString:= 'tak';   // Czy dodatkowa

    ZQ.ExecSQL;
  finally
    FreeAndNil(ZQ);
  end;
end;

procedure TPaczkiAdd.WczytajNadawcow;
var ZQ: TZQueryPom;
    NazwiskoImie: string;
begin
  // TODO: wczytujemy z osób bliskich + OSADZONY
  ZQ:=TZQueryPom.Create(Owner);
  try
    ZQ.SQL.Text:= 'SELECT Nazwisko, Imie, Adres FROM uprawnione '
                 +'WHERE (IDO=:ido_os)AND(Skreslona=0) '
                 +'ORDER BY Nazwisko, Imie';
    ZQ.ParamByName('ido_os').AsInteger:= SelectIDO;    // Tylko nadawcy od tego osadzonego
    ZQ.Open;

    cbNadawca.Items.AddObject('Osadzony', TAdresyNadawcow.Create('---') );
    while not ZQ.Eof do
    begin
      NazwiskoImie:= ZQ.FieldByName('Nazwisko').AsString+ ' '+ ZQ.FieldByName('Imie').AsString;
      cbNadawca.Items.AddObject(NazwiskoImie, TAdresyNadawcow.Create(ZQ.FieldByName('Adres').AsString) );
      ZQ.Next;
    end;
  finally
    FreeAndNil(ZQ);
  end;
end;

end.

