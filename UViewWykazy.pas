unit UViewWykazy;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, FileUtil, rxdbgrid, ZDataset, Forms, Controls,
  Graphics, Dialogs, datamodule;

type

  { TViewWykazy }

  TViewWykazy = class(TForm)
    DSRejWyk: TDataSource;
    RxDBGrid1: TRxDBGrid;
    ZQRejWyk: TZQuery;
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    SelectIDO: integer;
  public
    procedure ZapiszZmiany;
    procedure SetIDO(ido: integer);
    function isEmpty: Boolean;
  end;

//var
//  ViewWykazy: TViewWykazy;

implementation

{$R *.frm}

{ TViewWykazy }

procedure TViewWykazy.FormCreate(Sender: TObject);
begin
  SelectIDO:= 0;
end;

procedure TViewWykazy.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  ZapiszZmiany;
end;

procedure TViewWykazy.ZapiszZmiany;
begin
  // jeszcze nic
end;

procedure TViewWykazy.SetIDO(ido: integer);
begin
  if SelectIDO = ido then exit;

  // przed zmiana osadzonego zapisz ewentualne zaminy jeśli jest w trybie edycji
  ZapiszZmiany;
  //----------------------------------------------------------------------------

  SelectIDO:= ido;

  // jeśli jest 0 to zerujemy widok
  if SelectIDO = 0 then
  begin
    ZQRejWyk.Close;
    exit;
  end;
  //-------------------------------

  //Rejestr wykazów
  ZQRejWyk.Close;
   ZQRejWyk.ParamByName('ido').AsInteger:= SelectIDO;
  ZQRejWyk.Open;
end;

function TViewWykazy.isEmpty: Boolean;
begin
  Result:= ZQRejWyk.IsEmpty;
end;

end.

