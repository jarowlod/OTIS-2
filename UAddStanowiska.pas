unit UAddStanowiska;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, FileUtil, ZDataset, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  Buttons, DbCtrls, StdCtrls, datamodule;

type

  { TAddStanowiska }

  TAddStanowiska = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DSST: TDataSource;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBMemo1: TDBMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Panel1: TPanel;
    Panel5: TPanel;
    RadioGroup1: TRadioGroup;
    ZQST: TZQuery;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBEdit3EditingDone(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
    id: integer;
    CzyNowe: Boolean;
    Procedure NoweStanowisko;
    Procedure ModyfikujStanowisko(edit_id: integer);
  end;

var
  AddStanowiska: TAddStanowiska;

implementation
{$R *.frm}

{ TAddStanowiska }

procedure TAddStanowiska.BitBtn1Click(Sender: TObject);
begin
  if CzyNowe then
    begin
      ZQST.FieldByName('data_dodania').AsDateTime:= Now();
      ZQST.FieldByName('stan').AsString:= 'A';
      ZQST.FieldByName('user_dodania').Value:= DM.PelnaNazwa;
      ZQST.Post;
      ZQST.Close;
    end
  else
    begin
      if RadioGroup1.ItemIndex = 0 then
        begin
          ZQST.FieldByName('stan').AsString:='A';
        end
      else
        begin
          ZQST.FieldByName('stan').AsString:='U';
        end;

      ZQST.FieldByName('data_modyfikacji').Value:= Now();
      ZQST.FieldByName('user_modyfikacji').Value:= DM.PelnaNazwa;

      ZQST.Post;
      ZQST.Close;
    end;
end;

procedure TAddStanowiska.BitBtn2Click(Sender: TObject);
begin
  ZQST.Cancel;
  ZQST.Close;
end;

// Validacja wpisanej godziny
// jeśli puste to zamień na null
// sprawdzam zakres
procedure TAddStanowiska.DBEdit3EditingDone(Sender: TObject);
var s: string;
    g,m: integer;
begin
  s:= TDBEdit(Sender).Text;
  if s='  :  ' then
    begin
      TDBEdit(Sender).Field.Value:= Null;
      exit;
    end;

  g:= StrToIntDef(Trim(Copy(s,1,2)),0);
  if g>24 then g:=24;
  m:= StrToIntDef(Trim(Copy(s,4,2)),0);
  if m>59 then m:=59;
  s:= Format('%.2d:%.2d',[g,m]);
  TDBEdit(Sender).Field.Value:= s;
end;

procedure TAddStanowiska.NoweStanowisko;
begin
  CzyNowe:= True;
  RadioGroup1.Hide;
  ZQST.SQL.Text:='SELECT * FROM zat_stanowiska LIMIT 1;';
  ZQST.Open;

  ZQST.FieldByName('godz_wyjscia').EditMask:= '!99:99;1;_';
  ZQST.FieldByName('godz_powrotu').EditMask:= '!99:99;1;_';

  ZQST.Append;
end;

procedure TAddStanowiska.ModyfikujStanowisko(edit_id: integer);
var status: integer;
begin
  CzyNowe:= False;
  id:= edit_id;
  RadioGroup1.Show;
  ZQST.SQL.Text:='SELECT * FROM zat_stanowiska WHERE id = :id;';
  ZQST.ParamByName('id').AsInteger:= id;
  ZQST.Open;

  ZQST.FieldByName('godz_wyjscia').EditMask:= '!99:99;1;_';
  ZQST.FieldByName('godz_powrotu').EditMask:= '!99:99;1;_';

  if ZQST.FieldByName('stan').AsString = 'A' then status:=0 else status:=1;
  RadioGroup1.ItemIndex:= status;

  ZQST.Edit;
end;

end.

