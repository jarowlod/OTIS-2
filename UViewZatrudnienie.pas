unit UViewZatrudnienie;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, FileUtil, rxdbgrid, ZDataset, Forms, Controls,
  Graphics, Dialogs, datamodule, Grids, DBGrids;

type

  { TViewZatrudnienie }

  TViewZatrudnienie = class(TForm)
    DSOsZat: TDataSource;
    ImageList1: TImageList;
    RxDBGrid2: TRxDBGrid;
    ZQOsZat: TZQuery;
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure RxDBGrid2PrepareCanvas(sender: TObject; DataCol: Integer;
      Column: TColumn; AState: TGridDrawState);
  private
    SelectIDO: integer;
  public
    procedure ZapiszZmiany;
    procedure SetIDO(ido: integer);
    function isEmpty: Boolean;
  end;

//var
//  ViewZatrudnienie: TViewZatrudnienie;

implementation

{$R *.frm}

{ TViewZatrudnienie }

procedure TViewZatrudnienie.FormCreate(Sender: TObject);
begin
  SelectIDO:= 0;
end;

procedure TViewZatrudnienie.RxDBGrid2PrepareCanvas(sender: TObject;
  DataCol: Integer; Column: TColumn; AState: TGridDrawState);
begin
  if Column.Field.DataSet.IsEmpty then exit;

  if Column.FieldName = 'status_zatrudnienia' then
      begin
        if Column.Field.AsString = 'zatrudniony' then
        begin
          TRxDBGrid(Sender).Canvas.Brush.Color:= $80FF80;
          if gdSelected in AState then
            TRxDBGrid(Sender).Canvas.Font.Color:= clMaroon;
        end else
        if Column.Field.AsString = 'wycofany' then
        begin
          TRxDBGrid(Sender).Canvas.Brush.Color:= clRed;
          if gdSelected in AState then
            TRxDBGrid(Sender).Canvas.Font.Color:= clMaroon;
        end else  // oczekujący
        begin
          TRxDBGrid(Sender).Canvas.Brush.Color:= clYellow;
          if gdSelected in AState then
            TRxDBGrid(Sender).Canvas.Font.Color:= clMaroon;
        end;
      end;
end;

procedure TViewZatrudnienie.FormClose(Sender: TObject;
  var CloseAction: TCloseAction);
begin
  ZapiszZmiany;
end;

procedure TViewZatrudnienie.ZapiszZmiany;
begin
  // jeszcze nic
end;

procedure TViewZatrudnienie.SetIDO(ido: integer);
begin
  if SelectIDO = ido then exit;

  // przed zmiana osadzonego zapisz ewentualne zaminy jeśli jest w trybie edycji
  ZapiszZmiany;
  //----------------------------------------------------------------------------

  SelectIDO:= ido;

  // jeśli jest 0 to zerujemy widok
  if SelectIDO = 0 then
  begin
    ZQOsZat.Close;
    exit;
  end;
  //-------------------------------

  //Rejestr wykazów
  ZQOsZat.Close;
   ZQOsZat.ParamByName('ido').AsInteger:= SelectIDO;
  ZQOsZat.Open;
end;

function TViewZatrudnienie.isEmpty: Boolean;
begin
  Result:= ZQOsZat.IsEmpty;
end;

end.

