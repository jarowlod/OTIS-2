unit UUprawnienia;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, FileUtil, ZDataset, rxdbgrid, Forms, Controls,
  Graphics, Dialogs, ExtCtrls, StdCtrls, DbCtrls, Buttons, datamodule;

type

  { TUprawnienia }

  TUprawnienia = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    DBCheckBox14: TDBCheckBox;
    DBCheckBox15: TDBCheckBox;
    DBCheckBox16: TDBCheckBox;
    DBCheckBox17: TDBCheckBox;
    DBCheckBox18: TDBCheckBox;
    DBCheckBox19: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    DBComboBox1: TDBComboBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    DBNavigator1: TDBNavigator;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DSUsers: TDataSource;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit7: TEdit;
    GroupBox1: TGroupBox;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    RxDBGrid1: TRxDBGrid;
    Splitter1: TSplitter;
    ZQUsers: TZQuery;
    procedure BitBtn1Click(Sender: TObject); // ZMIEN HASLO
    procedure BitBtn2Click(Sender: TObject); // Nowy użtkownik
    procedure BitBtn3Click(Sender: TObject); // Usuń użtykownika
    procedure BitBtn4Click(Sender: TObject); // OK - ZAPISZ Nowego Uzytkownika
    procedure BitBtn5Click(Sender: TObject); // ANULUJ Nowy Uzytkownik
    procedure BitBtn6Click(Sender: TObject); // OK - Nowe Haslo
    procedure BitBtn7Click(Sender: TObject); // ANULUJ Hasło
    procedure DBComboBox1DropDown(Sender: TObject);
    procedure DBComboBox1Select(Sender: TObject);
    procedure Edit1Change(Sender: TObject);  // Wyszukiwanie
    procedure HasloChange(Sender: TObject);
    procedure NowyChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ZQUsersBeforePost(DataSet: TDataSet);
  private

  public

  end;

var
  Uprawnienia: TUprawnienia;

implementation

{$R *.frm}

{ TUprawnienia }

// wyszukiwarka
procedure TUprawnienia.Edit1Change(Sender: TObject);
var str: string;
begin
  ZQUsers.Close;
  str:= Edit1.Text;
  if str<>'' then str:= '%'+str+'%' else
                  str:= str+'%';
  ZQUsers.ParamByName('usr').AsString:= str;
  ZQUsers.Open;
end;

procedure TUprawnienia.HasloChange(Sender: TObject);
begin
  BitBtn6.Enabled:= (Edit7.Text<>'');
end;

procedure TUprawnienia.NowyChange(Sender: TObject);
begin
  BitBtn4.Enabled:= ((Edit2.Text<>'')and(Edit3.Text<>'')and(Edit4.Text<>''));
end;

// ZMIEN HASLO
procedure TUprawnienia.BitBtn1Click(Sender: TObject);
begin
  Panel2.Enabled:= False;
  Panel4.Enabled:= False;

  Panel8.Align:= alTop;
  Panel8.Enabled:= true;
  Panel8.Visible:= true;

  Edit7.Text:= '';
  HasloChange(Sender);
  Edit7.SetFocus;
end;

// Nowy użytkownik
procedure TUprawnienia.BitBtn2Click(Sender: TObject);
begin
  Panel2.Enabled:= False;
  Panel4.Enabled:= False;

  Panel6.Align:= alTop;
  Panel6.Enabled:= true;
  Panel6.Visible:= true;

  Edit2.Text:= '';
  Edit3.Text:= '';
  Edit4.Text:= '';
  NowyChange(Sender);
  Edit2.SetFocus;
end;

// Usuń użytykownika
procedure TUprawnienia.BitBtn3Click(Sender: TObject);
var ZQ: TZQueryPom;
begin
  if ZQUsers.IsEmpty then
     begin
       MessageDlg('Zaznacz użytkownika do usunięcia.', mtWarning, [mbOK], 0);
       exit;
     end;
  if MessageDlg('Czy napewno usunąć użytkownika ?', mtConfirmation, [mbOK, mbCancel], 0) = mrCancel then exit;

  try
    ZQ:=TZQueryPom.Create(Self);

    ZQ.SQL.Text:='DROP USER :user;';
    ZQ.ParamByName('user').AsString:= ZQUsers.FieldByName('user').AsString;
    ZQ.ExecSQL;

    ZQ.SQL.Text:='DELETE FROM mysql.user_info WHERE User=:user;';
    ZQ.ParamByName('user').AsString:= ZQUsers.FieldByName('user').AsString;
    ZQ.ExecSQL;

    ZQ.SQL.Text:='DELETE FROM klodzko.uprawnienia WHERE User=:user;';
    ZQ.ParamByName('user').AsString:= ZQUsers.FieldByName('user').AsString;
    ZQ.ExecSQL;
  except
  end;

  FreeAndNil(ZQ);

  ZQUsers.Close;
  ZQUsers.Open;
end;

// OK - ZAPISZ Nowego Użytkownika
procedure TUprawnienia.BitBtn4Click(Sender: TObject);
var ZQ: TZQueryPom;
begin
  ZQ:= TZQueryPom.Create(Self);
  // sprawdzam czy istnieje
  ZQ.SQL.Text:='SELECT user FROM mysql.user WHERE user = :user;';
  ZQ.ParamByName('user').AsString:= Edit2.Text;
  ZQ.Open;
  if not ZQ.IsEmpty then
  begin
    ZQUsers.DisableControls;

    if ZQUsers.Locate('user', Edit2.Text,[]) then
       MessageDlg('Podany login użtkownika już istnieje w bazie.', mtWarning, [mbOK],0)
    else
       begin
         // istnieje w bazie mysql.user ale brak w bazie uprawnienia wiec dodajemy
         ZQUsers.Append;
         ZQUsers.FieldByName('user').AsString:= Edit2.Text;
         ZQUsers.Post;
       end;

    ZQUsers.EnableControls;
    exit;
  end;

  // dopisuje do bazy
  try
    ZQ.SQL.Text:='CREATE USER :user IDENTIFIED BY :pass;';
    ZQ.ParamByName('user').AsString:= Edit2.Text;
    ZQ.ParamByName('pass').AsString:= Edit4.Text;
    ZQ.ExecSQL;

    ZQ.SQL.Text:='GRANT SELECT,INSERT,UPDATE,DELETE,EXECUTE ON klodzko.* TO :user;';
    ZQ.ParamByName('user').AsString:= Edit2.Text;
    ZQ.ExecSQL;

    ZQ.SQL.Text:='GRANT SELECT ON mysql.* TO :user;';
    ZQ.ParamByName('user').AsString:= Edit2.Text;
    ZQ.ExecSQL;

    ZQ.SQL.Text:='GRANT SELECT ON `information\\_schema`.* TO :user;';
    ZQ.ParamByName('user').AsString:= Edit2.Text;
    ZQ.ExecSQL;

    ZQ.SQL.Text:='INSERT INTO mysql.user_info (User, Full_name) VALUES(:user, :name);';
    ZQ.ParamByName('user').AsString:= Edit2.Text;
    ZQ.ParamByName('name').AsString:= Edit3.Text;
    ZQ.ExecSQL;

    ZQUsers.Append;
    ZQUsers.FieldByName('user').AsString:= Edit2.Text;
    ZQUsers.FieldByName('Full_name').AsString:= Edit3.Text;
    ZQUsers.Post;
  finally
    MessageDlg('Nowy użytkownik został dodany do bazy.'+LineEnding+'Uzupełnij jego uprawnienia.', mtInformation, [mbOK],0);
  end;

  FreeAndNil(ZQ);

  // Zamykamy panel - to samo co ANULUJ
  BitBtn5Click(Sender);
end;

// ANULUJ Nowy Uzytkownik
procedure TUprawnienia.BitBtn5Click(Sender: TObject);
begin
  Panel2.Enabled:= True;
  Panel4.Enabled:= True;

  Panel6.Enabled:= false;
  Panel6.Visible:= false;
end;

// OK - Nowe Haslo
procedure TUprawnienia.BitBtn6Click(Sender: TObject);
var ZQ: TZQueryPom;
begin
  ZQ:= TZQueryPom.Create(Self);

  ZQ.SQL.Add('SET PASSWORD FOR :user = PASSWORD(:haslo);');
  ZQ.ParamByName('haslo').AsString:= Edit7.Text;
  ZQ.ParamByName('user').AsString:= ZQUsers.FieldByName('user').AsString;
  ZQ.ExecSQL;

  FreeAndNil(ZQ);
  // Zamykamy panel - to samo co ANULUJ Haslo
  BitBtn7Click(Sender);
end;

// ANULUJ Hasło
procedure TUprawnienia.BitBtn7Click(Sender: TObject);
begin
  Panel2.Enabled:= True;
  Panel4.Enabled:= True;

  Panel8.Enabled:= false;
  Panel8.Visible:= false;
end;

procedure TUprawnienia.DBComboBox1DropDown(Sender: TObject);
begin
  ZQUsers.Edit;
end;

procedure TUprawnienia.DBComboBox1Select(Sender: TObject);
begin
  //ZQUsers.Edit;
  if DBComboBox1.Text='' then ZQUsers.FieldByName('Dzial').Value:= NULL
  else ZQUsers.FieldByName('Dzial').AsString:= DBComboBox1.Text;
end;

procedure TUprawnienia.FormCreate(Sender: TObject);
var ZQ: TZQueryPom;
     i: integer;
begin
  // dopisujemy Hinty do nagłówka kolumny
  ZQ:= TZQueryPom.Create(Self);
  ZQ.SQL.Text:='SHOW FULL COLUMNS FROM uprawnienia;';
  ZQ.Open;

  for i:=1 to High(DM.uprawnienia) do
    if ZQ.Locate('Field', 'Mod'+IntToStr(i),[]) then
      TRxColumnTitle(RxDBGrid1.ColumnByFieldName('Mod'+IntToStr(i)).Title).Hint:= ZQ.FieldByName('Comment').AsString;
  // -------------------------------------

  // Odczytujemy ENUM z pozycji Dzial
  ZQ.SQL.Text:='SHOW COLUMNS FROM uprawnienia LIKE "Dzial"';
  ZQ.Open;
  DBComboBox1.Items.Text:= LineEnding + DM.ReadENUM(ZQ.FieldByName('Type').AsString);

  FreeAndNil(ZQ);

  Edit1Change(Sender);
end;

// Jeśli zmienimy Full_name to zmieniamy również w mysql.user_info
// Dla kompatybilności z Paczkownią
procedure TUprawnienia.ZQUsersBeforePost(DataSet: TDataSet);
var ZQ: TZQueryPom;
begin
  if ZQUsers.FieldByName('Full_name').OldValue <> ZQUsers.FieldByName('Full_name').Value then
  begin
    try
      ZQ:= TZQueryPom.Create(Self);
      ZQ.SQL.Text:='UPDATE mysql.user_info SET Full_name = :name WHERE user = :user';
      ZQ.ParamByName('user').AsString:= ZQUsers.FieldByName('user').AsString;
      ZQ.ParamByName('name').AsString:= ZQUsers.FieldByName('Full_name').AsString;
      ZQ.ExecSQL;
    except
    end;
    FreeAndNil(ZQ);
  end;
end;

end.

