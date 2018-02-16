unit UOchSalaWidzen;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ComCtrls,
  ExtCtrls, Buttons, DbCtrls, StdCtrls, Menus, datamodule, UViewStolik, db,
  ZDataset, rxdbgrid, BCPanel, BCLabel;

type

  { TOchSalaWidzen }

  TOchSalaWidzen = class(TForm)
    btnWybranyDoWidzenia: TBitBtn;
    DBcbGR: TDBCheckBox;
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
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    lblCelaOchronna: TLabel;
    lblCelaTA: TLabel;
    MenuItem1: TMenuItem;
    miRejestrWidzen: TMenuItem;
    miModyfikuj: TMenuItem;
    miRefresh: TMenuItem;
    MenuItem2: TMenuItem;
    miUsunZPoczekalni: TMenuItem;
    Panel1: TPanel;
    Panel3: TPanel;
    PanelBezdozor: TBCPanel;
    lblZegar: TBCLabel;
    BCPanel1: TBCPanel;
    PageControl1: TPageControl;
    PanelPleksa: TPanel;
    PanelSala: TPanel;
    PopupMenuPoczekalnia: TPopupMenu;
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
    procedure miModyfikujClick(Sender: TObject);
    procedure miRefreshClick(Sender: TObject);
    procedure miRejestrWidzenClick(Sender: TObject);
    procedure miUsunZPoczekalniClick(Sender: TObject);
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
    procedure UsunZPoczekalni;
    procedure ModyfikujWidzenie;
    procedure OdswiezPoczekalnie;
  public
    procedure PrzeladujWidzenia;
  end;

var
  OchSalaWidzen: TOchSalaWidzen;
const
  LSTOLIKOW = 22; // liczba stolików
  ODSTEP_OD_STOLIKOW = 20;
  PRAWA_STRONA_SALI = 200;

implementation
uses dateutils, rxdbutils, UOchAddWidzenie, UOchRejestrWidzen;
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
  //AutoAdjustLayout(lapAutoAdjustForDPI, 96, 110, Width, Width);
end;

procedure TOchSalaWidzen.miModyfikujClick(Sender: TObject);
begin
  ModyfikujWidzenie;
end;

procedure TOchSalaWidzen.miRefreshClick(Sender: TObject);
begin
  OdswiezPoczekalnie;
end;

procedure TOchSalaWidzen.miRejestrWidzenClick(Sender: TObject);
begin
  with TOchRejestrWidzen.Create(Self) do
  begin
       ShowModal;
       Free;
  end;
end;

procedure TOchSalaWidzen.miUsunZPoczekalniClick(Sender: TObject);
begin
  UsunZPoczekalni;
end;

procedure TOchSalaWidzen.TabSheetPoczekalniaShow(Sender: TObject);
begin
  OdswiezPoczekalnie;
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
      Panel1.Visible:= true;
      TLoadFotoThread.Create(DM.Path_Foto+ZQWidzenia.FieldByName('IDO').AsString+'.jpg', Image1);

      ZQOsoby.Close;
      ZQOsoby.ParamByName('id_widzenia').AsInteger:= ZQWidzenia.FieldByName('ID').AsInteger;
      ZQOsoby.Open;
      WczytajDodatkoweInfo;
    end
  else
    begin
      Image1.Picture.Clear;
      Panel1.Visible:= false;
    end;
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
    ii:= i div 5;      // 1 kolumna od 1 do 5
    FStoliki[i].Left:= ODSTEP_OD_STOLIKOW + (FStoliki[i].Width + ODSTEP_OD_STOLIKOW) * ii;
    ii:= i mod 5;      //
    FStoliki[i].Top:= ODSTEP_OD_STOLIKOW + (FStoliki[i].Height + ODSTEP_OD_STOLIKOW) * ii;
    FStoliki[i].Show;
  end;

  // Prawa strona Bezdozorowe
  for i:=16 to 17 do
  begin
    ii:= ((i-16) mod 2) + 2;
    FStoliki[i].Left:= PRAWA_STRONA_SALI + (FStoliki[i].Width + ODSTEP_OD_STOLIKOW) * ii;
    FStoliki[i].Top := ODSTEP_OD_STOLIKOW;
    FStoliki[i].Show;
  end;
  PanelBezdozor.Left  := FStoliki[16].Left-ODSTEP_OD_STOLIKOW-15;
  PanelBezdozor.Width := 2 * (FStoliki[16].Width + ODSTEP_OD_STOLIKOW) + ODSTEP_OD_STOLIKOW+15;
  PanelBezdozor.Height:= FStoliki[16].Height + 2*ODSTEP_OD_STOLIKOW+15;

  // Prawa strona sali
  for i:=10 to 15 do
  begin
    ii:= ((i-10) div 3) + 2;   // kolumna
    FStoliki[i].Left:= PRAWA_STRONA_SALI + (FStoliki[i].Width + ODSTEP_OD_STOLIKOW) * ii;
    ii:= ((i-10) mod 3);       // wiersz
    FStoliki[i].Top := PanelBezdozor.Height+81 + (FStoliki[i].Height + ODSTEP_OD_STOLIKOW) * ii;
    FStoliki[i].Show;
  end;

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

procedure TOchSalaWidzen.UsunZPoczekalni;
var id_w: integer;
    ZQPom: TZQueryPom;
begin
  if ZQWidzenia.IsEmpty then exit;

  if ZQWidzenia.FieldByName('Nadzor').AsString <> DM.PelnaNazwa then
    begin
      MessageDlg('Brak uprawnień.'+LineEnding+'Usunąć może tylko użytkownik który nadzorował widzenie.', mtWarning, [mbOK],0);
      exit;
    end;
  if (ZQWidzenia.FieldByName('Etap').AsInteger = ew_Zrealizowane) and
     (ZQWidzenia.FieldByName('Data_Widzenie').AsDateTime < IncDay(Date(), -7)) then
    begin
      MessageDlg('Brak uprawnień.'+LineEnding+'Usunąć można tylko do 7 dni od daty widzenia.', mtWarning, [mbOK],0);
      exit;
    end;

  if MessageDlg('Czy napewno usunąć widzenie?', mtWarning, [mbOK, mbCancel],0) = mrCancel then exit;
  //--------------------------------------------------------------------------------------------------------------------

  // usuń widzenie
  id_w :=ZQWidzenia.FieldByName('ID').AsInteger;

  ZQPom:= TZQueryPom.Create(Self);
  ZQPom.SQL.Text:= 'DELETE FROM widzenia WHERE ID = :id';
  ZQPom.ParamByName('id').AsInteger:= id_w;
  ZQPom.ExecSQL;

  // usuń osoby przypisane do widzenia
  ZQPom.SQL.Text:= 'DELETE FROM widzenia_upr WHERE ID_widzenia = :id';
  ZQPom.ParamByName('id').AsInteger:= id_w;
  ZQPom.ExecSQL;

  FreeAndNil(ZQPom);
  OdswiezPoczekalnie;
  DM.KomunikatPopUp(Self, 'Poczekalnia','Usunięto osadzonego z poczekalni.', nots_Info);
end;

procedure TOchSalaWidzen.ModyfikujWidzenie;
begin
  if ZQWidzenia.IsEmpty then exit;
  with TOchAddWidzenie.Create(Self) do
  begin
       Modyfikuj( ZQWidzenia.FieldByName('id').AsInteger, ZQWidzenia.FieldByName('ido').AsInteger );
       if ShowModal = mrOK then
         begin
           RefreshQuery(ZQWidzenia);
         end;
       Free;
  end;
end;

procedure TOchSalaWidzen.OdswiezPoczekalnie;
begin
  RefreshQuery(ZQWidzenia);
end;

end.

