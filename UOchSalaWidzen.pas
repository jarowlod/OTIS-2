unit UOchSalaWidzen;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ComCtrls,
  ExtCtrls, Buttons, DbCtrls, StdCtrls, datamodule, UViewStolik, db, ZDataset,
  rxdbgrid, BCPanel, BCLabel;

type

  { TOchSalaWidzen }

  TOchSalaWidzen = class(TForm)
    btnWybranyDoWidzenia: TBitBtn;
    DBCheckBox6: TDBCheckBox;
    DBlblNazwisko: TDBText;
    DBlblImie: TDBText;
    DBlblKlasyf: TDBText;
    DBlblOjciec: TDBText;
    DBlblPOC: TDBText;
    DBlblIDO: TDBText;
    DSOsoby: TDataSource;
    DSWidzenia: TDataSource;
    Image1: TImage;
    Label1: TLabel;
    lblCelaOchronna: TLabel;
    lblCelaTA: TLabel;
    Panel1: TPanel;
    Panel3: TPanel;
    PanelBezdozor: TBCPanel;
    lblZegar: TBCLabel;
    BCPanel1: TBCPanel;
    PageControl1: TPageControl;
    PanelPleksa: TPanel;
    PanelSala: TPanel;
    RxDBGrid1: TRxDBGrid;
    RxDBGrid2: TRxDBGrid;
    Shape1: TShape;
    Shape2: TShape;
    TabSheetSalaWidzen: TTabSheet;
    TabSheetPoczekalnia: TTabSheet;
    TabSheetPleksa: TTabSheet;
    TimerAutoUpdate: TTimer;
    TimerZegar: TTimer;
    ZQOsoby: TZQuery;
    ZQWidzenia: TZQuery;
    procedure btnWybranyDoWidzeniaClick(Sender: TObject);
    procedure DSWidzeniaDataChange(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure TabSheetPoczekalniaShow(Sender: TObject);
    procedure TimerAutoUpdateTimer(Sender: TObject);
    procedure TimerZegarTimer(Sender: TObject);
  private
    FStoliki: array of TViewStolik;
    isTylkoPodglad: boolean;
    procedure UtworzStoliki;
    procedure RozmiescStoliki;
    procedure SetUprawnienia;
    procedure WczytajDodatkoweInfo;
  public
    procedure PrzeladujWidzenia;
  end;

var
  OchSalaWidzen: TOchSalaWidzen;
const
  LSTOLIKOW = 22; // liczba stolików

implementation

{$R *.frm}

{ TOchSalaWidzen }

procedure TOchSalaWidzen.FormCreate(Sender: TObject);
begin
  PageControl1.PageIndex:= 0;
  SetUprawnienia;

  // tworzymy widoki stolików
  UtworzStoliki; // tworzy stolik wraz z danymi
  RozmiescStoliki;
  ZQWidzenia.Open;
end;

procedure TOchSalaWidzen.TabSheetPoczekalniaShow(Sender: TObject);
begin
  ZQWidzenia.Close;
  ZQWidzenia.Open;
end;

procedure TOchSalaWidzen.TimerAutoUpdateTimer(Sender: TObject);
begin
  PrzeladujWidzenia;
end;

procedure TOchSalaWidzen.TimerZegarTimer(Sender: TObject);
begin
  lblZegar.Caption:= TimeToStr(Time);
end;

procedure TOchSalaWidzen.FormClose(Sender: TObject;
  var CloseAction: TCloseAction);
var i: integer;
begin
  for i:= 0 to LSTOLIKOW-1 do FreeAndNil(FStoliki[i]);
end;

procedure TOchSalaWidzen.btnWybranyDoWidzeniaClick(Sender: TObject);
begin
  if ZQWidzenia.FieldByName('Sposob').AsString = 'BK' then TabSheetPleksa.Show
                                                      else TabSheetSalaWidzen.Show;
end;

procedure TOchSalaWidzen.DSWidzeniaDataChange(Sender: TObject; Field: TField);
begin
  if not ZQWidzenia.IsEmpty then
    begin
      TLoadFotoThread.Create(DM.Path_Foto+ZQWidzenia.FieldByName('IDO').AsString+'.jpg', Image1);

      ZQOsoby.Close;
      ZQOsoby.ParamByName('id_widzenia').AsInteger:= ZQWidzenia.FieldByName('ID').AsInteger;
      ZQOsoby.Open;
    end
  else
    Image1.Picture.Clear;
end;

procedure TOchSalaWidzen.UtworzStoliki;
var i: integer;
begin
  SetLength(FStoliki, LSTOLIKOW);
  for i:=0 to LSTOLIKOW-1 do
  begin
    FStoliki[i]:= TViewStolik.Create(Self);
    FStoliki[i].Parent:= PanelSala;
    FStoliki[i].NrStolika:= i+1;
    FStoliki[i].PopupMenuVisible:= not isTylkoPodglad; // jeśli tylko podgląd to False
    FStoliki[i].WczytajDane; // zamiast SetIDO sam wczyta sobie co trzeba
  end;
end;

procedure TOchSalaWidzen.RozmiescStoliki;
var i,ii: integer;
begin
  // lewa strona sali
  for i:=0 to 9 do
  begin
    ii:= i mod 2;
    FStoliki[i].Left:= 10 + (FStoliki[i].Width + 10) * ii;
    ii:= i div 2;
    FStoliki[i].Top:= 10 + (FStoliki[i].Height + 10) * ii;
    FStoliki[i].Show;
  end;
  // Prawa strona sali
  for i:=10 to 12 do
  begin
    FStoliki[i].Left:= 100 + (FStoliki[i].Width + 10) * 2;
    ii:= (i-10)+1;
    FStoliki[i].Top := 100 + (FStoliki[i].Height + 10) * ii;
    FStoliki[i].Show;
  end;
  // Prawa strona sali - Bezdozorowe
  for i:=13 to 14 do
  begin
    ii:= ((i-13) mod 2) + 2;
    FStoliki[i].Left:= 100 + (FStoliki[i].Width + 10) * ii;
    FStoliki[i].Top := 10;
    FStoliki[i].Show;
  end;
  PanelBezdozor.Left  := FStoliki[13].Left-25;
  PanelBezdozor.Width := 2 * (FStoliki[14].Width + 10) + 35;
  PanelBezdozor.Height:= FStoliki[14].Height + 35;

  // Pleksa
  for i:=18 to 20 do
  begin
    ii:= (i-18) mod 3;
    FStoliki[i].Parent:= PanelPleksa;
    FStoliki[i].Left  := 10 + (FStoliki[i].Width + 20) * ii;
    FStoliki[i].Top   := 150;
    FStoliki[i].Show;
  end;

end;

procedure TOchSalaWidzen.SetUprawnienia;
var CompName: string;
begin
  isTylkoPodglad:= false;
  CompName:= GetEnvironmentVariable('COMPUTERNAME');

  if not ( ((Pos(UpperCase(DM.Station_Name_For_Widzenia), UpperCase(CompName) )=1) and DM.uprawnienia[6]) or
            DM.uprawnienia[8] ) then  // jesli osoba nieuprawniona to blokujemy wszystko
  begin
    isTylkoPodglad:= true;
    TabSheetPoczekalnia.TabVisible:= false;
    // ale za to uruchamiamy Timer który co minutę wczyte aktualne dane,
    TimerAutoUpdate.Enabled := true;
  end;
end;

procedure TOchSalaWidzen.PrzeladujWidzenia;
var i: integer;
begin
  for i:=0 to LSTOLIKOW-1 do FStoliki[i].WczytajDane;
end;

procedure TOchSalaWidzen.WczytajDodatkoweInfo;
var ZQPom: TZQueryPom;
begin
  lblCelaOchronna.Visible:= false;
  lblCelaTA.Visible      := false;

  if ZQWidzenia.FieldByName('POC').AsString = '' then exit;
  ZQPom := TZQueryPom.Create(Self);
  ZQPom.SQL.Text := 'SELECT Ochronka FROM typ_cel WHERE POC=:poc';
  ZQPom.ParamByName('poc').AsString := ZQWidzenia.FieldByName('POC').AsString;
  ZQPom.Open;
  if not ZQPom.IsEmpty then
    begin
      if (not ZQPom.FieldByName('Ochronka').IsNull) and (ZQPom.FieldByName('Ochronka').AsBoolean) then
        begin
          lblCelaOchronna.Caption:='Cela Ochronna';
          lblCelaOchronna.Visible:= true;
        end;
    end;

  // sprawdzamy czy cela jest TA
  ZQPom.SQL.Text:= 'SELECT tc.POC, tc.TA FROM typ_cel AS tc WHERE (tc.POC = :poc) AND '+   // ((tc.TA = 1) OR
                   '((SELECT COUNT(IDO) AS ile FROM osadzeni AS os WHERE os.POC = :poc AND os.KLASYF LIKE "%TA%") > 0)';
  ZQPom.ParamByName('poc').AsString:= ZQWidzenia.FieldByName('POC').AsString;
  ZQPom.Open;
  lblCelaTA.Visible:= not ZQPom.IsEmpty;
  //----------------------------

  FreeAndNil(ZQPom);
end;

end.

