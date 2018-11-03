unit UOsadzeni;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, FileUtil, ZDataset, rxdbgrid, Forms, Controls,
  Graphics, Dialogs, ExtCtrls, Buttons, StdCtrls, rxdbutils, datamodule;

type

  { TOsadzeni }

  TOsadzeni = class(TForm)
    btnOK: TBitBtn;
    btnAnuluj: TBitBtn;
    DSOs: TDataSource;
    edWyszukaj: TEdit;
    Label1: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    RxDBGrid1: TRxDBGrid;
    ZQOs: TZQuery;
    procedure btnOKClick(Sender: TObject);
    procedure btnAnulujClick(Sender: TObject);
    procedure edWyszukajChange(Sender: TObject);
    procedure edWyszukajKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edWyszukajKeyPress(Sender: TObject; var Key: char);
    procedure FormCreate(Sender: TObject);
    procedure RxDBGrid1DblClick(Sender: TObject);
  private

  public
    FIdo: integer;
  end;

var
  Osadzeni: TOsadzeni;

implementation
uses LCLType;
{$R *.frm}

{ TOsadzeni }

procedure TOsadzeni.edWyszukajChange(Sender: TObject);
begin
  with ZQOs do
  begin
     Close;
     ParamByName('nazwisko').AsString:= Trim( edWyszukaj.Text +'%');
     Open;
  end;
end;

procedure TOsadzeni.edWyszukajKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_RETURN: begin
                 Key:= VK_UNKNOWN;
                 btnOK.Click;
               end;
    VK_DOWN:   begin
                 ZQOs.Next;
                 Key:= VK_UNKNOWN;
               end;
    VK_UP:     begin
                 ZQOs.Prior;
                 Key:= VK_UNKNOWN;
               end;
  end;
end;

procedure TOsadzeni.edWyszukajKeyPress(Sender: TObject; var Key: char);
begin
  case Ord(Key) of
    VK_SPACE:  Key:= #0;
    VK_ESCAPE: begin
                 edWyszukaj.Text:='';
                 edWyszukaj.SetFocus;
               end;
  end;
end;

procedure TOsadzeni.FormCreate(Sender: TObject);
begin
  edWyszukajChange(Sender);
end;

procedure TOsadzeni.RxDBGrid1DblClick(Sender: TObject);
begin
  btnOK.Click;
end;

procedure TOsadzeni.btnOKClick(Sender: TObject);
begin
  if IsDataSetEmpty(ZQOs) then FIdo:=0
                          else FIdo:= ZQOs.FieldByName('ido').AsInteger;
end;

procedure TOsadzeni.btnAnulujClick(Sender: TObject);
begin
  FIdo:=0;
end;

end.

