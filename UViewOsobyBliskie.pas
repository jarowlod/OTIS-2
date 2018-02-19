unit UViewOsobyBliskie;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, FileUtil, rxdbgrid, ZDataset, Forms, Controls,
  Graphics, Dialogs, ExtCtrls, Buttons, Grids, DBGrids, datamodule;

type

  { TViewOsobyBliskie }

  TViewOsobyBliskie = class(TForm)
    btnDopiszOsobe: TBitBtn;
    btnModyfikujOsobe: TBitBtn;
    btnImortOsob: TBitBtn;
    DSUprawnione: TDataSource;
    Panel6: TPanel;
    RxDBGrid4: TRxDBGrid;
    ZQUprawnione: TZQuery;
    procedure btnDopiszOsobeClick(Sender: TObject);
    procedure btnImortOsobClick(Sender: TObject);
    procedure btnModyfikujOsobeClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure RxDBGrid4PrepareCanvas(sender: TObject; DataCol: Integer;
      Column: TColumn; AState: TGridDrawState);
  private
    SelectIDO: integer;
  public
    procedure ZapiszZmiany;
    procedure SetIDO(ido: integer);
    function isEmpty: Boolean;
  end;

var
  ViewOsobyBliskie: TViewOsobyBliskie;

implementation
uses UOchAddOsobeWidzenie, UOchImportOsobWidzenie, rxdbutils;
{$R *.frm}

{ TViewOsobyBliskie }

procedure TViewOsobyBliskie.FormCreate(Sender: TObject);
begin
  SelectIDO:= 0;

  btnDopiszOsobe.Enabled   := DM.uprawnienia[11]; // osoby bliskie
  btnModyfikujOsobe.Enabled:= DM.uprawnienia[11]; // osoby bliskie;
end;

procedure TViewOsobyBliskie.FormClose(Sender: TObject;
  var CloseAction: TCloseAction);
begin
  ZapiszZmiany;
end;

procedure TViewOsobyBliskie.SetIDO(ido: integer);
begin
  if SelectIDO = ido then exit;

  // przed zmiana osadzonego zapisz ewentualne zaminy jeśli jest w trybie edycji
  ZapiszZmiany;
  //----------------------------------------------------------------------------

  SelectIDO:= ido;

  // jeśli jest 0 to zerujemy widok
  if SelectIDO = 0 then
  begin
    ZQUprawnione.Close;
    exit;
  end;
  //-------------------------------

  ZQUprawnione.Close;
   ZQUprawnione.ParamByName('ido').AsInteger:= SelectIDO;
  ZQUprawnione.Open;
end;

procedure TViewOsobyBliskie.btnDopiszOsobeClick(Sender: TObject);
begin
  // okno dodawania osoby do osób uprawnionych do widzenia
  with TOchAddOsobeWidzenie.Create(Self) do
  begin
    DodajOsobe(SelectIDO);
    ShowModal;
    Free;
  end;
  RefreshQuery(ZQUprawnione);
end;

procedure TViewOsobyBliskie.btnImortOsobClick(Sender: TObject);
begin
  // okno importu osób z NoeNET do osób uprawnionych do widzenia
  with TOchImportOsobWidzenie.Create(Self) do
  begin
    SetIDO(SelectIDO);
    ShowModal;
    Free;
  end;
  RefreshQuery(ZQUprawnione);
end;

procedure TViewOsobyBliskie.btnModyfikujOsobeClick(Sender: TObject);
begin
  if ZQUprawnione.IsEmpty then exit;
  with TOchAddOsobeWidzenie.Create(Self) do
  begin
    ModyfikujOsobe(Self.ZQUprawnione.FieldByName('ID').AsInteger);
    ShowModal;
    Free;
  end;
  RefreshQuery(ZQUprawnione);
end;

procedure TViewOsobyBliskie.RxDBGrid4PrepareCanvas(sender: TObject;
  DataCol: Integer; Column: TColumn; AState: TGridDrawState);
begin
  if Column.Field.DataSet.IsEmpty then exit;
  if Column.Field.DataSet.FieldByName('Skreslona').AsBoolean = true then
     TRxDBGrid(Sender).Canvas.Brush.Color:= $008080FF;   //Font.StrikeThrough:= true;
end;

procedure TViewOsobyBliskie.ZapiszZmiany;
begin
  // jeszcze nic
end;

function TViewOsobyBliskie.isEmpty: Boolean;
begin
  Result:= ZQUprawnione.IsEmpty;
end;

end.

