unit UViewUwagiOch;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, FileUtil, ZDataset, Forms, Controls, Graphics, Dialogs,
  ExtCtrls, DbCtrls, datamodule;

type

  { TViewUwagiOch }

  TViewUwagiOch = class(TForm)
    DBMemoUwagiKier: TDBMemo;
    DBMemoUwagiOch: TDBMemo;
    DBText4: TDBText;
    DBText9: TDBText;
    DSUwagi: TDataSource;
    DSUwagiKierownika: TDataSource;
    Panel3: TPanel;
    PanelCenter: TPanel;
    PanelKierownika: TPanel;
    ZQUwagi: TZQuery;
    ZQUwagiKierownika: TZQuery;
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure ZQUwagiBeforePost(DataSet: TDataSet);
    procedure ZQUwagiKierownikaBeforePost(DataSet: TDataSet);
  private
    SelectIDO: integer;
  public
    procedure ZapiszZmiany;
    procedure SetIDO(ido: integer);
    function isEmpty: Boolean;
  end;

//var
//  ViewUwagiOch: TViewUwagiOch;

implementation

{$R *.frm}

{ TViewUwagiOch }

procedure TViewUwagiOch.FormCreate(Sender: TObject);
begin
  SelectIDO:= 0;
  ZQUwagiKierownika.ReadOnly:= not DM.uprawnienia[4];  // uprawnienia do edycji uwag dla uproawnionych do wykazów
end;

procedure TViewUwagiOch.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  ZapiszZmiany;
end;

procedure TViewUwagiOch.ZQUwagiBeforePost(DataSet: TDataSet);
begin
  if ZQUwagi.State in [dsInsert] then
    ZQUwagi.FieldByName('IDO').AsInteger:= SelectIDO;
end;

procedure TViewUwagiOch.ZQUwagiKierownikaBeforePost(DataSet: TDataSet);
begin
  if ZQUwagiKierownika.State in [dsInsert] then
    ZQUwagiKierownika.FieldByName('IDO').AsInteger:= SelectIDO;
end;

procedure TViewUwagiOch.ZapiszZmiany;
begin
  if ZQUwagi.State           in [dsEdit, dsInsert] then ZQUwagi.Post;
  if ZQUwagiKierownika.State in [dsEdit, dsInsert] then ZQUwagiKierownika.Post;
end;

procedure TViewUwagiOch.SetIDO(ido: integer);
begin
  if SelectIDO = ido then exit;

  // przed zmiana osadzonego zapisz ewentualne zaminy jeśli jest w trybie edycji
  ZapiszZmiany;
  //----------------------------------------------------------------------------

  SelectIDO:= ido;

  // jeśli jest 0 to zerujemy widok
  if SelectIDO = 0 then
  begin
    ZQUwagi.Close;
    ZQUwagiKierownika.Close;
    exit;
  end;
  //-------------------------------

  //Uwagi i polecenia ochronne
  ZQUwagi.Close;
   ZQUwagi.ParamByName('ido').AsInteger:= SelectIDO;
  ZQUwagi.Open;

  ZQUwagiKierownika.Close;
   ZQUwagiKierownika.ParamByName('ido').AsInteger:= SelectIDO;
  ZQUwagiKierownika.Open;
end;

function TViewUwagiOch.isEmpty: Boolean;
begin
  Result:= ZQUwagi.IsEmpty and ZQUwagiKierownika.IsEmpty;
end;

end.

