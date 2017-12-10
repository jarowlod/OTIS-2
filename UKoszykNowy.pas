unit UKoszykNowy;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  Buttons, StdCtrls, datamodule, rxdbutils;

type

  { TKoszykNowy }

  TKoszykNowy = class(TForm)
    btnAnuluj: TBitBtn;
    btnOK: TBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Panel2: TPanel;
    procedure btnOKClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    isModyfikacja: boolean;
    foldNazwa,
    foldOpis: string;
    procedure ZapiszZmiany;
    procedure NowyKoszyk;
  public
    ID_Koszyka: integer;
    Procedure ZmienNazwe(oldNazwa, oldOpis: string; vID_koszyka: integer);
  end;

var
  KoszykNowy: TKoszykNowy;

implementation

{$R *.frm}

{ TKoszykNowy }

procedure TKoszykNowy.FormCreate(Sender: TObject);
begin
  btnOK.Enabled:= false;
  isModyfikacja:= false;
end;

procedure TKoszykNowy.Edit1Change(Sender: TObject);
begin
  btnOK.Enabled:= (Edit1.Text<>'');
  if isModyfikacja then
  begin
    btnOK.Enabled:= not ((foldNazwa=Edit1.Text) and (foldOpis=Edit2.Text));
  end;
end;

procedure TKoszykNowy.btnOKClick(Sender: TObject);
begin
  if Edit1.Text='' then
  begin
    MessageDlg('Należy wpisać nazwę koszyka.', mtInformation, [mbOK], 0);
    ModalResult:= mrNone;
    exit;
  end;

  if isModyfikacja then
     ZapiszZmiany
  else
     NowyKoszyk;

  RefreshQuery(DM.ZQKoszyk_sl);
  DM.ZQKoszyk_sl.Locate('nazwa', Edit1.Text, []);
  RefreshQuery(DM.ZQKoszyk);
end;

procedure TKoszykNowy.ZapiszZmiany;
var ZQPom: TZQueryPom;
begin
  ZQPom:= TZQueryPom.Create(Self);

    ZQPom.SQL.Text:= 'UPDATE koszyk_sl SET nazwa = :nazwa, uwagi = :uwagi WHERE ID_koszyka = :ID_koszyka;';
    ZQPom.ParamByName('nazwa').AsString := Edit1.Text;
    ZQPom.ParamByName('uwagi').AsString := Edit2.Text;
    ZQPom.ParamByName('ID_koszyka').AsInteger := ID_Koszyka;
    ZQPom.ExecSQL;

  FreeAndNil(ZQPom);
end;

procedure TKoszykNowy.NowyKoszyk;
var ZQPom: TZQueryPom;
    pomID_Koszyka: integer;
begin
  ZQPom:= TZQueryPom.Create(Self);

    ZQPom.SQL.Text:= 'INSERT INTO koszyk_sl (nazwa, uwagi) VALUES (:nazwa, :uwagi);';
    ZQPom.ParamByName('nazwa').AsString := Edit1.Text;
    ZQPom.ParamByName('uwagi').AsString := Edit2.Text;
    ZQPom.ExecSQL;

    ZQPom.SQL.Text:= 'SELECT LAST_INSERT_ID() as ID_Koszyka;';
    ZQPom.Open;
    pomID_Koszyka:= ZQPom.FieldByName('ID_Koszyka').AsInteger;
    ZQPom.Close;

    ZQPom.SQL.Text:= 'INSERT INTO koszyk_usr (user, data_dodania, ID_koszyka) VALUES (:user, NOW(), :id_koszyka);';
    ZQPom.ParamByName('user').AsString        := DM.login;
    ZQPom.ParamByName('id_koszyka').AsInteger := pomID_koszyka;
    ZQPom.ExecSQL;

  FreeAndNil(ZQPom);
end;

procedure TKoszykNowy.ZmienNazwe(oldNazwa, oldOpis: string; vID_koszyka: integer);
begin
  isModyfikacja:= true;
  foldNazwa    := oldNazwa;
  foldOpis     := oldOpis;
  Edit1.Text   := oldNazwa;
  Edit2.Text   := oldOpis;
  ID_Koszyka   := vID_koszyka;
end;

end.

