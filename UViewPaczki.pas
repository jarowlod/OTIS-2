unit UViewPaczki;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, rxdbgrid, ZDataset, Grids, DBGrids, datamodule;

type

  { TViewPaczki }

  TViewPaczki = class(TForm)
    DSPaczki: TDataSource;
    RxDBGrid2: TRxDBGrid;
    ZQPaczki: TZQuery;
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure RxDBGrid2PrepareCanvas(sender: TObject; DataCol: Integer; Column: TColumn; AState: TGridDrawState);
  private
    SelectIDO: integer;
  public
    procedure ZapiszZmiany;
    procedure SetIDO(ido: integer);
    function isEmpty: Boolean;
  end;


implementation
uses DateUtils;
{$R *.frm}

{ TViewPaczki }

procedure TViewPaczki.FormCreate(Sender: TObject);
begin
  SelectIDO:= 0;
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
       'żywnościowa' : TRxDBGrid(Sender).Canvas.Brush.Color:= $EAFFEA;
       'higieniczna' : TRxDBGrid(Sender).Canvas.Brush.Color:= $EAEAFF;
       'odzieżowa'   : TRxDBGrid(Sender).Canvas.Brush.Color:= $FFEAEA;
       else  TRxDBGrid(Sender).Canvas.Brush.Color:= $F4F4F4;
     end;
    if (gdSelected in AState) then TRxDBGrid(Sender).Canvas.Font.Color:= $BB5E00;
    if (gdSelected in AState) then TRxDBGrid(Sender).Canvas.Brush.Color:= $FED101; // $FFFF00;//DecColor(TRxDBGrid(Sender).Canvas.Brush.Color, 100);
  end;
end;

end.

