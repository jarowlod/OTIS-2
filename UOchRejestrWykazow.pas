unit UOchRejestrWykazow;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, FileUtil, ZDataset, rxdbgrid, Forms, Controls,
  Graphics, Dialogs, ExtCtrls, StdCtrls, datamodule;

type

  { TOchRejestrWykazow }

  TOchRejestrWykazow = class(TForm)
    ComboBox1: TComboBox;
    DSRejWykazow: TDataSource;
    Edit1: TEdit;
    Image1: TImage;
    Label1: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    RxDBGrid1: TRxDBGrid;
    ZQRejWykazow: TZQuery;
    procedure FormCreate(Sender: TObject);
  private
    procedure WczytajKategorieWykazow;
  public

  end;

var
  OchRejestrWykazow: TOchRejestrWykazow;

implementation

{$R *.frm}

{ TOchRejestrWykazow }

procedure TOchRejestrWykazow.FormCreate(Sender: TObject);
begin
  WczytajKategorieWykazow;
end;

procedure TOchRejestrWykazow.WczytajKategorieWykazow;
begin
  SQL:= 'SELECT ID, Opis FORM katalog_wykazow'
end;

end.

