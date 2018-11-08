unit UPaczkiZwroty;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  Buttons, DBCtrls, rxdbgrid, ZDataset, datamodule;

type

  { TPaczkiZwroty }

  TPaczkiZwroty = class(TForm)
    btnDodaj: TBitBtn;
    btnUsun: TBitBtn;
    DSZwroty: TDataSource;
    DBMemo1: TDBMemo;
    edWyszukaj: TEdit;
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    RxDBGrid1: TRxDBGrid;
    Splitter1: TSplitter;
    ZQZwroty: TZQuery;
    procedure btnDodajClick(Sender: TObject);
    procedure btnUsunClick(Sender: TObject);
    procedure DSZwrotyDataChange(Sender: TObject; Field: TField);
    procedure edWyszukajChange(Sender: TObject);
    procedure edWyszukajKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edWyszukajKeyPress(Sender: TObject; var Key: char);
    procedure FormCreate(Sender: TObject);
  private
    Procedure Wyszukaj;
  public

  end;


implementation
uses LCLType, UPaczkiZwrotyAdd;
{$R *.frm}

{ TPaczkiZwroty }

procedure TPaczkiZwroty.FormCreate(Sender: TObject);
begin
  btnDodaj.Enabled:= DM.uprawnienia[2]; // paczki
  btnUsun.Enabled:=  DM.uprawnienia[2];

  Wyszukaj;
end;

procedure TPaczkiZwroty.edWyszukajChange(Sender: TObject);
begin
  Wyszukaj;
end;

procedure TPaczkiZwroty.DSZwrotyDataChange(Sender: TObject; Field: TField);
begin
  // uprawnienia do usuwania mają: mający prawa do paczek i właściciel wpisu.
  btnUsun.Enabled:= ((DM.uprawnienia[2]) and
                     (ZQZwroty.FieldByName('Kto').AsString = DM.PelnaNazwa))
                     or (DM.uprawnienia[8]);
end;

procedure TPaczkiZwroty.btnUsunClick(Sender: TObject);
begin
  if ZQZwroty.IsEmpty then exit;
  if not (MessageDlg('Czy usunąć wpis?', mtConfirmation, [mbOK, mbCancel],0) = mrOk) then exit;

  ZQZwroty.Delete;
end;

procedure TPaczkiZwroty.btnDodajClick(Sender: TObject);
begin
  with TPaczkiZwrotyAdd.Create(Self) do
  begin                                                     // zadziała onChange => Wyszukaj
       if ShowModal = mrOK then if edWyszukaj.Text<>'' then edWyszukaj.Text:= ''
                                                       else Wyszukaj;
       Free;
  end;
end;

procedure TPaczkiZwroty.edWyszukajKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_DOWN:   begin
                 ZQZwroty.Next;
                 Key:= VK_UNKNOWN;
               end;
    VK_UP:     begin
                 ZQZwroty.Prior;
                 Key:= VK_UNKNOWN;
               end;
  end;
end;

procedure TPaczkiZwroty.edWyszukajKeyPress(Sender: TObject; var Key: char);
begin
  case Ord(Key) of
    VK_SPACE:  Key:= #0;
    VK_ESCAPE: begin
                 edWyszukaj.Text:='';
                 edWyszukaj.SetFocus;
               end;
  end;
end;

procedure TPaczkiZwroty.Wyszukaj;
begin
  ZQZwroty.Close;
  ZQZwroty.ParamByName('Nazwisko').AsString:= Trim(edWyszukaj.Text)+'%';
  ZQZwroty.Open;
end;

end.

