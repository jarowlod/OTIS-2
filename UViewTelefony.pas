unit UViewTelefony;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, Menus, rxdbgrid,
  ZDataset, ZSqlUpdate, rxdbutils, datamodule, ueled, dateutils, Grids, DBGrids;

type

  { TViewTelefony }

  TViewTelefony = class(TForm)
    DSTelefony: TDataSource;
    MenuItemDodajUrzedowy: TMenuItem;
    MenuItemDodajDodatkowy: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItemDodaj: TMenuItem;
    MenuItemUsun: TMenuItem;
    PopupMenu1: TPopupMenu;
    RxDBGrid2: TRxDBGrid;
    ZQTelefony: TZQuery;
    ZUTelefony: TZUpdateSQL;
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure MenuItemDodajClick(Sender: TObject);
    procedure MenuItemDodajDodatkowyClick(Sender: TObject);
    procedure MenuItemDodajUrzedowyClick(Sender: TObject);
    procedure MenuItemUsunClick(Sender: TObject);
    procedure RxDBGrid2PrepareCanvas(sender: TObject; DataCol: Integer; Column: TColumn; AState: TGridDrawState);
  private
    SelectIDO: integer;
    statusToChange: TObject;
    procedure AddTelefonDodatkowy;
    procedure AddTelefonUrzedowy;
    procedure UsunTelefon;
  public
    procedure ZapiszZmiany;
    procedure SetStatusToChange(Sender: TObject);
    procedure RefreshStatusObject;
    procedure SetIDO(ido: integer);
    function isEmpty: Boolean;
    procedure AddTelefon;
    function isTelefonOnWeek: Boolean;
  end;

  TStatusTelefonu = (stRegulaminowy, stDodatkowy, stOmylkowy);

var
  ViewTelefony: TViewTelefony;

implementation

{$R *.frm}

{ TViewTelefony }

procedure TViewTelefony.FormCreate(Sender: TObject);
begin
  SelectIDO:= 0;
end;

procedure TViewTelefony.MenuItemDodajClick(Sender: TObject);
begin
  AddTelefon;
end;

procedure TViewTelefony.MenuItemDodajDodatkowyClick(Sender: TObject);
begin
  AddTelefonDodatkowy;
end;

procedure TViewTelefony.MenuItemDodajUrzedowyClick(Sender: TObject);
begin
  AddTelefonUrzedowy;
end;

procedure TViewTelefony.MenuItemUsunClick(Sender: TObject);
begin
  UsunTelefon;
end;

procedure TViewTelefony.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  ZapiszZmiany;
end;

procedure TViewTelefony.ZapiszZmiany;
begin
  // jeszcze nic
end;

procedure TViewTelefony.SetStatusToChange(Sender: TObject);
begin
  statusToChange:= Sender;
end;

procedure TViewTelefony.RefreshStatusObject;
var ledTelefonowal: TuELED;
begin
  ledTelefonowal:= (statusToChange as TuELED);
  if isTelefonOnWeek then ledTelefonowal.Color:= clRed else ledTelefonowal.Color:= clGreen;
end;

procedure TViewTelefony.SetIDO(ido: integer);
begin
  if SelectIDO = ido then exit;

  // przed zmiana osadzonego zapisz ewentualne zaminy jeśli jest w trybie edycji
  ZapiszZmiany;
  //----------------------------------------------------------------------------

  SelectIDO:= ido;

  // jeśli jest 0 to zerujemy widok
  if SelectIDO = 0 then
  begin
    ZQTelefony.Close;
    exit;
  end;
  //-------------------------------

  //Rejestr telefonów
  ZQTelefony.Close;
   ZQTelefony.ParamByName('ido').AsInteger:= SelectIDO;
  ZQTelefony.Open;
end;

function TViewTelefony.isEmpty: Boolean;
begin
  Result:= ZQTelefony.IsEmpty;
end;

procedure TViewTelefony.AddTelefon;
var czyTelefonWTygodniu: Boolean;
begin
  czyTelefonWTygodniu:= isTelefonOnWeek;

  if czyTelefonWTygodniu then
    if (MessageDlg('Osadzony korzystał z telefonu w tym tygodniu, czy dodać realizację dodatkowego?', mtWarning, [mbOK, mbCancel], 0) = mrOK) then
    begin
      AddTelefonDodatkowy;
      exit;
    end else exit;

  ZQTelefony.Append;
  ZQTelefony.FieldByName('IDO').AsInteger          := SelectIDO;
  ZQTelefony.FieldByName('Status').AsString        := st_Regulaminowy;
  ZQTelefony.FieldByName('User').AsString          := DM.PelnaNazwa;
  ZQTelefony.Post;

  RefreshQuery(ZQTelefony);

  RefreshStatusObject;

  DM.KomunikatPopUp(Self, 'Telefon', 'Dodano realizację telefonu.', nots_Info);
end;

procedure TViewTelefony.AddTelefonDodatkowy;
var uwagi: String;
begin
  if InputQuery('Czy dodać Telefon dodatkowy ?', 'Uwagi', uwagi) = false then exit;

  ZQTelefony.Append;
  ZQTelefony.FieldByName('IDO').AsInteger          := SelectIDO;
  ZQTelefony.FieldByName('Status').AsString        := st_Dodatkowy;
  ZQTelefony.FieldByName('Uwagi').AsString         := uwagi;
  ZQTelefony.FieldByName('User').AsString          := DM.PelnaNazwa;
  ZQTelefony.Post;

  RefreshQuery(ZQTelefony);

  RefreshStatusObject;

  DM.KomunikatPopUp(Self, 'Telefon', 'Dodano realizację telefonu dodatkowego.', nots_Info);
end;

procedure TViewTelefony.AddTelefonUrzedowy;
var uwagi: String;
begin
  if InputQuery('Czy dodać Telefon urzędowy ?', 'Uwagi', uwagi) = false then exit;

  ZQTelefony.Append;
  ZQTelefony.FieldByName('IDO').AsInteger          := SelectIDO;
  ZQTelefony.FieldByName('Status').AsString        := st_Urzedowy;
  ZQTelefony.FieldByName('Uwagi').AsString         := uwagi;
  ZQTelefony.FieldByName('User').AsString          := DM.PelnaNazwa;
  ZQTelefony.Post;

  RefreshQuery(ZQTelefony);

  RefreshStatusObject;

  DM.KomunikatPopUp(Self, 'Telefon', 'Dodano realizację telefonu urzędowego.', nots_Info);
end;

procedure TViewTelefony.UsunTelefon;
begin
  if IsDataSetEmpty(ZQTelefony) then exit;

  if ZQTelefony.FieldByName('User').AsString <> DM.PelnaNazwa then
  begin
    MessageDlg('Brak uprawnień.'+LineEnding+'Usunąć może tylko użytkownik który wprowadził realizację.', mtWarning, [mbOK],0);
    exit;
  end;

  if (DateOf(ZQTelefony.FieldByName('data_zap').AsDateTime) < IncDay(Date(), -7)) then
  begin
    MessageDlg('Brak uprawnień.'+LineEnding+'Usunąć można tylko do 7 dni od daty wprowadzenia.', mtWarning, [mbOK],0);
    exit;
  end;

  if (DateOf(ZQTelefony.FieldByName('data_zap').AsDateTime) = Date()) then
  begin
    if MessageDlg('Czy napewno usunąć wprowadzoną realizację telefonu?', mtWarning, [mbOK, mbCancel],0) = mrCancel then exit;
    ZQTelefony.Delete;
    DM.KomunikatPopUp(Self, 'Telefon', 'Usunięto realizację telefonu.', nots_Warning);
  end else
  begin
    if MessageDlg('Czy zmienić status na wpis omyłkowy.?'+LineEnding+'(usunąć można tylko w dniu wprowadzenia)', mtWarning, [mbOK, mbCancel],0) = mrCancel then exit;
    ZQTelefony.Edit;
    ZQTelefony.FieldByName('Status').AsString:= st_Omylkowy;
    ZQTelefony.Post;
    DM.KomunikatPopUp(Self, 'Telefon', 'Zmieniono status realizacji telefonu na wpis omyłkowy.', nots_Warning);
  end;

  RefreshQuery(ZQTelefony);

  RefreshStatusObject;
end;

function TViewTelefony.isTelefonOnWeek: Boolean;
var ZQPom: TZQueryPom;
begin
  Result:= false;

  ZQPom := TZQueryPom.Create(Self);
  // Sprawdzam rok i liczbę tygodnia, np 202238 - 2022 rok i 38 tydzień , tydzień od poniedziałku
  ZQPom.SQL.Text := 'SELECT id FROM telefony WHERE IDO=:ido AND Status=:status AND YEARWEEK(data_zap, 1) = YEARWEEK(NOW(), 1)';
  ZQPom.ParamByName('ido').AsInteger := SelectIDO;
  ZQPom.ParamByName('Status').AsString := st_Regulaminowy;
  ZQPom.Open;
  if not IsDataSetEmpty(ZQPom) then
    begin
      Result:= true;
    end;
  FreeAndNil(ZQPom);
end;

procedure TViewTelefony.RxDBGrid2PrepareCanvas(sender: TObject; DataCol: Integer; Column: TColumn; AState: TGridDrawState);
begin
  if Column.Field.DataSet.IsEmpty then exit;

  if Column.FieldName = 'data_zap' then
    if Column.Field.AsDateTime >= StartOfTheWeek(Date()) then
    begin
      TRxDBGrid(Sender).Canvas.Brush.Color:= $008080FF;
    end;

  if Column.FieldName = 'Status' then
  begin
     case Column.Field.AsString of
       st_Regulaminowy : TRxDBGrid(Sender).Canvas.Brush.Color:= $008080FF;
       st_Dodatkowy    : TRxDBGrid(Sender).Canvas.Brush.Color:= clLime;
       st_Urzedowy     : TRxDBGrid(Sender).Canvas.Brush.Color:= clAqua;
       st_Omylkowy     : TRxDBGrid(Sender).Canvas.Brush.Color:= clYellow;
     end;
    if (gdSelected in AState) then TRxDBGrid(Sender).Canvas.Font.Color:= $BB5E00;
  end;
end;

end.

