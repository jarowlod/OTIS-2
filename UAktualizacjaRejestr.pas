unit UAktualizacjaRejestr;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, rxdbgrid, Forms, Controls, Graphics, Dialogs,
  ExtCtrls, StdCtrls, DbCtrls, datamodule, db, ZDataset;

type

  { TAktualizacjaRejestr }

  TAktualizacjaRejestr = class(TForm)
    DSAktualizacja: TDataSource;
    DSOsadzeni: TDataSource;
    DBMemo1: TDBMemo;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    RxDBGrid1: TRxDBGrid;
    RxDBGrid2: TRxDBGrid;
    ZQAktualizacja: TZQuery;
    ZQOsadzeni: TZQuery;
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  AktualizacjaRejestr: TAktualizacjaRejestr;

implementation

{$R *.frm}

{ TAktualizacjaRejestr }

procedure TAktualizacjaRejestr.FormCreate(Sender: TObject);
begin
  ZQAktualizacja.Open;
  ZQOsadzeni.Open;
end;

end.

