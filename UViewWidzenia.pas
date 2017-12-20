unit UViewWidzenia;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, FileUtil, rxdbgrid, ZDataset, Forms, Controls,
  Graphics, Dialogs, ExtCtrls, StdCtrls, Grids, DBGrids, dateutils, datamodule;

type

  { TViewWidzenia }

  TViewWidzenia = class(TForm)
    DSOsoby: TDataSource;
    DSWidzenia: TDataSource;
    Label1: TLabel;
    Panel3: TPanel;
    RxDBGrid2: TRxDBGrid;
    RxDBGrid3: TRxDBGrid;
    Splitter1: TSplitter;
    ZQOsoby: TZQuery;
    ZQWidzenia: TZQuery;
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
//  ViewWidzenia: TViewWidzenia;

implementation

{$R *.frm}

{ TViewWidzenia }

procedure TViewWidzenia.FormClose(Sender: TObject; var CloseAction: TCloseAction
  );
begin
  ZapiszZmiany;
end;

procedure TViewWidzenia.FormCreate(Sender: TObject);
begin
  SelectIDO:= 0;
end;

procedure TViewWidzenia.ZapiszZmiany;
begin
  // jeszcze nic
end;

procedure TViewWidzenia.SetIDO(ido: integer);
begin
  if SelectIDO = ido then exit;

  // przed zmiana osadzonego zapisz ewentualne zaminy jeśli jest w trybie edycji
  ZapiszZmiany;
  //----------------------------------------------------------------------------

  SelectIDO:= ido;

  // jeśli jest 0 to zerujemy widok
  if SelectIDO = 0 then
  begin
    ZQWidzenia.Close;
    ZQOsoby.Close;
    exit;
  end;
  //-------------------------------

  ZQOsoby.Close;
   ZQOsoby.ParamByName('ido').AsInteger:= SelectIDO;
  ZQOsoby.Open;

  //Rejestr wykazów
  ZQWidzenia.Close;
   ZQWidzenia.ParamByName('ido').AsInteger:= SelectIDO;
  ZQWidzenia.Open;
end;

function TViewWidzenia.isEmpty: Boolean;
begin
  Result:= ZQWidzenia.IsEmpty;
end;

procedure TViewWidzenia.RxDBGrid2PrepareCanvas(sender: TObject;
  DataCol: Integer; Column: TColumn; AState: TGridDrawState);
begin
  if Column.Field.DataSet.IsEmpty then exit;

  if Column.FieldName = 'Data_Widzenie' then
    if Column.Field.AsDateTime >= StartOfTheMonth(Date()) then
    begin
      TRxDBGrid(Sender).Canvas.Brush.Color:= clRed;
      //TRxDBGrid(Sender).Canvas.Font.Color:= clWhite;
    end;
end;

end.

