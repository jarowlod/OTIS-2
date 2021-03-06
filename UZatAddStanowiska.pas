unit UZatAddStanowiska;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, FileUtil, ZDataset, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  Buttons, DbCtrls, StdCtrls, datamodule;

type

  { TZatAddStanowiska }

  TZatAddStanowiska = class(TForm)
    btnOK: TBitBtn;
    btnAnuluj: TBitBtn;
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
    procedure btnOKClick(Sender: TObject);
    procedure btnAnulujClick(Sender: TObject);
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
  ZatAddStanowiska: TZatAddStanowiska;

implementation
{$R *.frm}

{ TZatAddStanowiska }

procedure TZatAddStanowiska.btnOKClick(Sender: TObject);
var ZQPom: TZQueryPom;
begin
  try
  if CzyNowe then
    begin
      DM.ZConnection1.StartTransaction;
      try
        ZQST.FieldByName('data_dodania').AsDateTime:= Now();
        ZQST.FieldByName('stan').AsString:= 'A';
        ZQST.FieldByName('user_dodania').Value:= DM.PelnaNazwa;
        ZQST.Post;
        ZQST.Close;

        // Przypisać do Id numer Id dodanego rekordu
        ZQPom:= TZQueryPom.Create(Self);
        ZQPom.SQL.Text:= 'SELECT LAST_INSERT_ID() as id;';
        ZQPom.Open;
        id:= ZQPom.FieldByName('ID').AsInteger;
        FreeAndNil(ZQPom);

        DM.ZConnection1.Commit;
      except
        DM.ZConnection1.Rollback;
      end;
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

  finally
    ShowMessage('Dane zapisane poprawnie.');
  end;
end;

procedure TZatAddStanowiska.btnAnulujClick(Sender: TObject);
begin
  ZQST.Cancel;
  ZQST.Close;
end;

// Validacja wpisanej godziny
// jeśli puste to zamień na null
// sprawdzam zakres
procedure TZatAddStanowiska.DBEdit3EditingDone(Sender: TObject);
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

procedure TZatAddStanowiska.NoweStanowisko;
begin
  CzyNowe:= True;
  RadioGroup1.Hide;
  ZQST.SQL.Text:='SELECT * FROM zat_stanowiska LIMIT 1;';
  ZQST.Open;

  ZQST.FieldByName('godz_wyjscia').EditMask:= '!99:99;1;_';
  ZQST.FieldByName('godz_powrotu').EditMask:= '!99:99;1;_';

  ZQST.Append;
end;

procedure TZatAddStanowiska.ModyfikujStanowisko(edit_id: integer);
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

