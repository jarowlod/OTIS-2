unit UViewPaczki;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, rxdbgrid, ZDataset,
  Grids, DBGrids, Menus, datamodule;

type

  { TViewPaczki }

  TViewPaczki = class(TForm)
    DSPaczki: TDataSource;
    MenuItemDodaj: TMenuItem;
    MenuItemUsun: TMenuItem;
    MenuItemModyfikuj: TMenuItem;
    MenuItem4: TMenuItem;
    PopupMenu1: TPopupMenu;
    RxDBGrid2: TRxDBGrid;
    ZQPaczki: TZQuery;
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure MenuItemDodajClick(Sender: TObject);
    procedure MenuItemUsunClick(Sender: TObject);
    procedure MenuItemModyfikujClick(Sender: TObject);
    procedure RxDBGrid2PrepareCanvas(sender: TObject; DataCol: Integer; Column: TColumn; AState: TGridDrawState);
  private
    SelectIDO: integer;
  public
    procedure ZapiszZmiany;
    procedure SetIDO(ido: integer);
    function isEmpty: Boolean;
  end;


implementation
uses DateUtils, rxdbutils, UPaczkiAdd, UPaczkiRejestr;
{$R *.frm}

{ TViewPaczki }

procedure TViewPaczki.FormCreate(Sender: TObject);
begin
  SelectIDO:= 0;

  MenuItemDodaj.Enabled    := DM.uprawnienia[2];
  MenuItemUsun.Enabled     := DM.uprawnienia[2];
  MenuItemModyfikuj.Enabled:= DM.uprawnienia[2];
end;

procedure TViewPaczki.MenuItemDodajClick(Sender: TObject);
begin
  with TPaczkiAdd.Create(Self) do
  begin
       SetIDO( SelectIDO );
       if ShowModal=mrOK then RefreshQuery(ZQPaczki);
       Free;
  end;
end;

procedure TViewPaczki.MenuItemUsunClick(Sender: TObject);
begin
  if IsDataSetEmpty(ZQPaczki) then exit;
  if TPaczkiRejestr.UsunPaczke(ZQPaczki.FieldByName('ID').AsInteger) then RefreshQuery(ZQPaczki);
end;

procedure TViewPaczki.MenuItemModyfikujClick(Sender: TObject);
begin
  if IsDataSetEmpty(ZQPaczki) then exit;
  if TPaczkiRejestr.ModyfikujPaczke(ZQPaczki.FieldByName('ID').AsInteger) then RefreshQuery(ZQPaczki);
end;

procedure TViewPaczki.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  ZapiszZmiany;
end;

procedure TViewPaczki.ZapiszZmiany;
begin
  // jeszcze nic
end;

procedure TViewPaczki.SetIDO(ido: integer);
begin
  if SelectIDO = ido then exit;

  // przed zmiana osadzonego zapisz ewentualne zaminy jeśli jest w trybie edycji
  ZapiszZmiany;
  //----------------------------------------------------------------------------

  SelectIDO:= ido;

  // jeśli jest 0 to zerujemy widok
  if SelectIDO = 0 then
  begin
    ZQPaczki.Close;
    exit;
  end;
  //-------------------------------

  //Rejestr paczek
  ZQPaczki.Close;
   ZQPaczki.ParamByName('ido').AsInteger:= SelectIDO;
  ZQPaczki.Open;
end;

function TViewPaczki.isEmpty: Boolean;
begin
  Result:= ZQPaczki.IsEmpty;
end;

procedure TViewPaczki.RxDBGrid2PrepareCanvas(sender: TObject; DataCol: Integer; Column: TColumn; AState: TGridDrawState);
begin
  if Column.Field.DataSet.IsEmpty then exit;

  if Column.FieldName = 'WYDANO' then
    if Column.Field.AsDateTime >= StartOfTheMonth(Date()) then
    begin
      TRxDBGrid(Sender).Canvas.Brush.Color:= $008080FF;
    end;
  if Column.FieldName = 'RODZAJ' then
  begin
     case Column.Field.AsString of
       rp_Zywnosciowa : TRxDBGrid(Sender).Canvas.Brush.Color:= $EAFFEA;
       rp_Higieniczna : TRxDBGrid(Sender).Canvas.Brush.Color:= $EAEAFF;
       rp_Odziezowa   : TRxDBGrid(Sender).Canvas.Brush.Color:= $FFEAEA;
       else  TRxDBGrid(Sender).Canvas.Brush.Color:= $F4F4F4;
     end;
    if (gdSelected in AState) then TRxDBGrid(Sender).Canvas.Font.Color:= $BB5E00;
    if (gdSelected in AState) then TRxDBGrid(Sender).Canvas.Brush.Color:= $FED101; // $FFFF00;//DecColor(TRxDBGrid(Sender).Canvas.Brush.Color, 100);
  end;
end;

end.

