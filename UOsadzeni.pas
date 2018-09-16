unit UOsadzeni;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, FileUtil, ZDataset, rxdbgrid, Forms, Controls,
  Graphics, Dialogs, ExtCtrls, Buttons, StdCtrls, rxdbutils, datamodule;

type

  { TOsadzeni }

  TOsadzeni = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DSOs: TDataSource;
    Edit1: TEdit;
    Label1: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    RxDBGrid1: TRxDBGrid;
    ZQOs: TZQuery;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RxDBGrid1DblClick(Sender: TObject);
    procedure RxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBGrid1KeyPress(Sender: TObject; var Key: char);
  private

  public
    FIdo: integer;
  end;

var
  Osadzeni: TOsadzeni;

implementation

{$R *.frm}

{ TOsadzeni }

procedure TOsadzeni.Edit1Change(Sender: TObject);
begin
  with ZQOs do
  begin
     Close;
     ParamByName('nazwisko').AsString:= Trim( Edit1.Text +'%');
     Open;
  end;
end;

procedure TOsadzeni.FormCreate(Sender: TObject);
begin
  Edit1Change(Sender);
end;

procedure TOsadzeni.RxDBGrid1DblClick(Sender: TObject);
begin
  BitBtn1.Click;
end;

procedure TOsadzeni.RxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Char(Key)=#13 then    // ENTER
  begin
      Key:=0;
      BitBtn1.Click;
  end;
end;

procedure TOsadzeni.RxDBGrid1KeyPress(Sender: TObject; var Key: char);
begin
  if Key=#27 then    // ESC
  begin
      Edit1.Text:='';
      Edit1.SetFocus;
  end else
  if Key=' ' then Key:=#0;     // zabraniamy wpisywania spacji
end;

procedure TOsadzeni.BitBtn1Click(Sender: TObject);
begin
  if IsDataSetEmpty(ZQOs) then FIdo:=0
                          else FIdo:= ZQOs.FieldByName('ido').AsInteger;
end;

procedure TOsadzeni.BitBtn2Click(Sender: TObject);
begin
  FIdo:=0;
end;

end.

