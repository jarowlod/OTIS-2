unit UPaczkiZwrotyAdd;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  Buttons, DBCtrls, TplGradientUnit, ZDataset, DB, datamodule, DBDateTimePicker;

type

  { TPaczkiZwrotyAdd }

  TPaczkiZwrotyAdd = class(TForm)
    btnAnuluj: TBitBtn;
    btnOK: TBitBtn;
    btnOsadzony: TBitBtn;
    DSZwrotyAdd: TDataSource;
    DBDataZwrotu: TDBDateTimePicker;
    DBNazwisko: TDBEdit;
    DBImie: TDBEdit;
    DBOjciec: TDBEdit;
    DBOpisMemo: TDBMemo;
    GroupBox1: TGroupBox;
    Image1: TImage;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Panel2: TPanel;
    Panel5: TPanel;
    plGradient2: TplGradient;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    ZQZwrotyAdd: TZQuery;
    procedure AutoOpisClick(Sender: TObject);
    procedure btnAnulujClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnOsadzonyClick(Sender: TObject);
    procedure DBNazwiskoChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    SelectIDO: integer;
    procedure WczytajDaneOsadzonego;
  public
    procedure SetIDO(IDO: integer);
  end;

var
  PaczkiZwrotyAdd: TPaczkiZwrotyAdd;

implementation
uses UOsadzeni;
{$R *.frm}

{ TPaczkiZwrotyAdd }

procedure TPaczkiZwrotyAdd.btnOsadzonyClick(Sender: TObject);
begin
  with TOsadzeni.Create(Application) do
  begin
    if ShowModal = mrOK then
    begin
      SelectIDO:= FIdo; // FIdo jest z TOsadzeni
      WczytajDaneOsadzonego;
    end;
    Free;
  end;
end;

procedure TPaczkiZwrotyAdd.DBNazwiskoChange(Sender: TObject);
begin
  btnOK.Enabled:= (DBNazwisko.Text<>'')and
                  (DBImie.Text<>'')and
                  (DBOpisMemo.Text<>'');
end;

procedure TPaczkiZwrotyAdd.btnAnulujClick(Sender: TObject);
begin
  ZQZwrotyAdd.DisableControls;
  ZQZwrotyAdd.Cancel;
end;

procedure TPaczkiZwrotyAdd.AutoOpisClick(Sender: TObject);
begin
  DBOpisMemo.Lines.Append( TSpeedButton(Sender).Caption );
end;

procedure TPaczkiZwrotyAdd.btnOKClick(Sender: TObject);
begin
  if DBDataZwrotu.DateIsNull then begin
    ModalResult:= mrNone;
    exit;
  end;

  try
    ZQZwrotyAdd.Post;
  except
    ModalResult:= mrNone;
  end;
end;

procedure TPaczkiZwrotyAdd.FormCreate(Sender: TObject);
begin
  SelectIDO:= 0;
  ZQZwrotyAdd.Open;
  ZQZwrotyAdd.Append;
  ZQZwrotyAdd.FieldByName('Data_Z').AsDateTime:= Now();
  ZQZwrotyAdd.FieldByName('Kto').AsString     := DM.PelnaNazwa;
end;

procedure TPaczkiZwrotyAdd.WczytajDaneOsadzonego;
var ZQPom: TZQueryPom;
begin
  if SelectIDO<=0 then
  begin
    DBNazwisko.Text:= '';
    DBImie.Text    := '';
    DBOjciec.Text  := '';
  end
  else
  begin;
    try
      ZQPom:= TZQueryPom.Create(Self);
      ZQPom.SQL.Text:= 'SELECT IDO, NAZWISKO, IMIE, OJCIEC FROM osadzeni WHERE IDO=:ido';
      ZQPom.ParamByName('ido').AsInteger:= SelectIDO;
      ZQPom.Open;

      DBNazwisko.Caption:= ZQPom.FieldByName('NAZWISKO').AsString;
      DBImie.Caption    := ZQPom.FieldByName('IMIE').AsString;
      DBOjciec.Caption  := ZQPom.FieldByName('OJCIEC').AsString;
    finally
      FreeAndNil(ZQPom);
    end;
  end;
end;

procedure TPaczkiZwrotyAdd.SetIDO(IDO: integer);
begin
  SelectIDO:= IDO;
  WczytajDaneOsadzonego;
end;

end.

