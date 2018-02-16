unit UOchForm;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  DbCtrls, StdCtrls, ComCtrls, Buttons, datamodule, db, ZDataset, UViewUwagiOch,
  UViewWykazy, UViewZatrudnienie, UViewWidzenia, UViewOsobyBliskie;

type

  { TOchForm }

  TOchForm = class(TForm)
    Bevel1: TBevel;
    btnDodajProsbe: TBitBtn;
    btnDodajWidzenie: TBitBtn;
    btnRejestrProsb: TBitBtn;
    btnRejestrZat: TBitBtn;
    DBCheckBox6: TDBCheckBox;
    DBNazwisko: TDBText;
    DBKlasyf: TDBText;
    DBPOC: TDBText;
    DBOjciec: TDBText;
    DBWychowawca: TDBText;
    DSOs: TDataSource;
    Image_os: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lblCelaOchronna: TLabel;
    lblCelaPalaca: TLabel;
    lblCelaTA: TLabel;
    PageControl1: TPageControl;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel_1: TPanel;
    sbtnWyslijWiad: TSpeedButton;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheetPaczki: TTabSheet;
    TabSheetOsobyBliskie: TTabSheet;
    TabSheetWidzenia: TTabSheet;
    TabSheetUwagi: TTabSheet;
    TabSheetWykazy: TTabSheet;
    TabSheetZatrudnienie: TTabSheet;
    ZQOs: TZQuery;
    procedure btnDodajProsbeClick(Sender: TObject);
    procedure btnDodajWidzenieClick(Sender: TObject);
    procedure btnRejestrProsbClick(Sender: TObject);
    procedure btnRejestrZatClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Image_osDblClick(Sender: TObject);
    procedure sbtnWyslijWiadClick(Sender: TObject);
  private
    SelectIDO  : integer;
        // importowane widoki osadzone w zakładkach
    fViewUwagiOch    : TViewUwagiOch;
    fViewWykazy      : TViewWykazy;
    fViewZatrudnienie: TViewZatrudnienie;
    fViewWidzenia    : TViewWidzenia;
    fViewOsobyBliskie: TViewOsobyBliskie;

    procedure WczytajTypCeli;
  public
    Procedure SetIDO(ido: integer);
  end;

//var
//  OchForm: TOchForm;

implementation
uses UZatrudnieni, URejestrProsbOs, UOchAddWidzenie, URejestrProsbDodaj, UKomunikatorNowaWiad;
{$R *.frm}

{ TOchForm }

procedure TOchForm.FormCreate(Sender: TObject);
begin
  SelectIDO:= 0;
  PageControl1.TabIndex:= 0;

  // nadajemy uprawnienia
  btnDodajWidzenie.Enabled:= DM.uprawnienia[6];
  btnDodajProsbe.Enabled  := DM.uprawnienia[14];
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
end;

procedure TOchForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Char(Key) =#27 then    // ESC
  begin
    close;
  end;
end;

procedure TOchForm.Image_osDblClick(Sender: TObject);
var Obrazek: TForm;
    Img: TImage;
begin
    Obrazek:= TForm.Create(Self);
    Obrazek.BorderStyle:= bsSizeable;
    Obrazek.Caption:= DBNazwisko.Caption;
      Img:= TImage.Create(Obrazek);
      img.AutoSize    := false;
      img.Parent      := Obrazek;
      img.Stretch     := true;
      img.Proportional:= true;
      img.Align       := alClient;
      img.Visible     := true;
      Img.Picture.Assign(Image_os.Picture);
    Obrazek.Height:= Screen.WorkAreaHeight;

    if img.Picture.Width > (Screen.WorkAreaWidth div 2) then
      Obrazek.Width:= (Screen.WorkAreaWidth div 2)
    else
      Obrazek.Width:= img.Picture.Width;

    Obrazek.ShowModal;

    FreeAndNil(img);
    FreeAndNil(Obrazek);
end;

procedure TOchForm.sbtnWyslijWiadClick(Sender: TObject);
begin
  if DBWychowawca.Caption = '' then exit;
  with TKomunikatorNowaWiad.Create(Self) do
  begin
       OdpiszDoUserByIDO( SelectIDO );
       ShowModal;
       Free;
  end;
end;

procedure TOchForm.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  FreeAndNil(fViewUwagiOch);
  FreeAndNil(fViewWykazy);
  FreeAndNil(fViewZatrudnienie);
  FreeAndNil(fViewWidzenia);
  FreeAndNil(fViewOsobyBliskie);
end;

procedure TOchForm.SetIDO(ido: integer);
begin
  if SelectIDO = ido then exit;

  SelectIDO:= ido;

  // jeśli jest 0 to zerujemy widok
  if SelectIDO = 0 then
  begin
    Image_os.Picture.Clear;
    ZQOs.Close;
    lblCelaOchronna.Visible:= false;
    lblCelaPalaca.Visible  := false;
    lblCelaTA.Visible      := false;
    btnRejestrZat.Enabled  := false;
    btnRejestrProsb.Enabled:= false;
    PageControl1.Visible   := false; // Ukrywamy Okno zakładek !!!
    exit;
  end;
  //-------------------------------

  btnRejestrZat.Enabled        := true;
  btnRejestrProsb.Enabled      := true;
  PageControl1.Visible         := true;

  TLoadFotoThread.Create( DM.Path_Foto + IntToStr( SelectIDO )+'.jpg', Image_os);

  // otwieramy tabele osadzeni, wybranego osadzonego
  ZQOs.Close;
  ZQOs.ParamByName('IDO').AsInteger := SelectIDO;
  ZQOs.Open;

  //typ celi dla określenia Ochronki i palenia
  WczytajTypCeli;

  //Uwagi i polecenia ochronne
  fViewUwagiOch.SetIDO(SelectIDO);
  //TabSheetUwagi.TabVisible:= not fViewUwagiOch.IsEmpty;  // zakładka widoczna z uwagi na możliwość edycji

  //widzenia
  fViewWidzenia.SetIDO(SelectIDO);

  //osoby bliskie
  fViewOsobyBliskie.SetIDO(SelectIDO);

  //zatrudnienie
  fViewZatrudnienie.SetIDO(SelectIDO);
  TabSheetZatrudnienie.TabVisible:= not fViewZatrudnienie.isEmpty;
  btnRejestrZat.Enabled:= not fViewZatrudnienie.isEmpty;

  //wykazy ochronne
  fViewWykazy.SetIDO(SelectIDO);
  TabSheetWykazy.TabVisible:= not fViewWykazy.IsEmpty;
end;

procedure TOchForm.btnRejestrZatClick(Sender: TObject);
begin
  with TZatrudnieni.Create(Self) do
  begin
       ShowZatrudnienieOsadzonego( SelectIDO, ZQOs.FieldByName('NAZWISKO').AsString );
       ShowModal;
       Free;
  end;
end;

procedure TOchForm.btnRejestrProsbClick(Sender: TObject);
begin
  with TRejestrProsbOs.Create(Parent) do
  begin
       SetIDO( SelectIDO );
       ShowModal;
       Free;
  end;
end;

procedure TOchForm.btnDodajWidzenieClick(Sender: TObject);
begin
  with TOchAddWidzenie.Create(Self) do
  begin
       DodajOsadzonegoDoPoczekalni( SelectIDO );
       ShowModal;
       Free;
  end;
end;

procedure TOchForm.btnDodajProsbeClick(Sender: TObject);
begin
  with TRejestrProsbDodaj.Create(Self) do
  begin
       SetAdd( SelectIDO );
       if ShowModal=mrOK then btnRejestrProsbClick(Sender);
       Free;
  end;
end;

procedure TOchForm.WczytajTypCeli;
var ZQPom: TZQueryPom;
begin
  lblCelaOchronna.Visible:= false;
  lblCelaPalaca.Visible  := false;
  lblCelaTA.Visible      := false;

  if ZQOs.FieldByName('POC').AsString = '' then exit;
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

  // sprawdzamy czy cela jest TA
  ZQPom.SQL.Text:= 'SELECT tc.POC, tc.TA FROM typ_cel AS tc WHERE (tc.POC = :poc) AND '+   // ((tc.TA = 1) OR
                   '((SELECT COUNT(IDO) AS ile FROM osadzeni AS os WHERE os.POC = :poc AND os.KLASYF LIKE "%TA%") > 0)';
  ZQPom.ParamByName('poc').AsString:= ZQOs.FieldByName('POC').AsString;
  ZQPom.Open;
  lblCelaTA.Visible:= not ZQPom.IsEmpty;
  //----------------------------

  FreeAndNil(ZQPom);
end;

end.

