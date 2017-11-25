unit UUpr_ZmianaHasla;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, Buttons, DbCtrls, datamodule;

type

  { TUpr_ZmianaHasla }

  TUpr_ZmianaHasla = class(TForm)
    btnOK: TBitBtn;
    btnAnuluj: TBitBtn;
    edHaslo: TEdit;
    Image4: TImage;
    lblLogin: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    lblNazwiskoImie: TLabel;
    Panel9: TPanel;
    procedure btnOKClick(Sender: TObject);
    procedure edHasloChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Upr_ZmianaHasla: TUpr_ZmianaHasla;

implementation

{$R *.frm}

{ TUpr_ZmianaHasla }

procedure TUpr_ZmianaHasla.btnOKClick(Sender: TObject);
var ZQ: TZQueryPom;
begin
  if edHaslo.Text='' then exit;

  ZQ:= TZQueryPom.Create(Self);

  ZQ.SQL.Add('SET PASSWORD FOR :user = PASSWORD(:haslo);');
  ZQ.ParamByName('haslo').AsString:= edHaslo.Text;
  ZQ.ParamByName('user').AsString:= DM.login;
  ZQ.ExecSQL;

  FreeAndNil(ZQ);
end;

procedure TUpr_ZmianaHasla.edHasloChange(Sender: TObject);
begin
  btnOK.Enabled:= (edHaslo.Text<>'');
end;

procedure TUpr_ZmianaHasla.FormCreate(Sender: TObject);
begin
  lblLogin.Caption:= DM.login;
  lblNazwiskoImie.Caption:= DM.PelnaNazwa;
end;

end.

