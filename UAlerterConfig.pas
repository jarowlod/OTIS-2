unit UAlerterConfig;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  Buttons, ComCtrls, DBCtrls, TplGradientUnit, rxdbgrid, ZDataset, ZSqlUpdate,
  rxdbutils, datamodule;

type

  { TAlerterConfig }

  TAlerterConfig = class(TForm)
    btnDodajBind: TBitBtn;
    btnUsunBind: TBitBtn;
    btnGetLocalIP: TSpeedButton;
    DBComboBox1: TDBComboBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBNavigator1: TDBNavigator;
    DSAlerterLok: TDataSource;
    DSAlerterBind: TDataSource;
    DSAlerterLokalizacje: TDataSource;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    plGradient2: TplGradient;
    RxDBGrid4: TRxDBGrid;
    RxDBGrid5: TRxDBGrid;
    RxDBGrid6: TRxDBGrid;
    ZQAlerterLok: TZQuery;
    ZQAlerterBind: TZQuery;
    ZQAlerterLokalizacje: TZQuery;
    ZUAlerterBind: TZUpdateSQL;
    procedure btnDodajBindClick(Sender: TObject);
    procedure btnGetLocalIPClick(Sender: TObject);
    procedure btnUsunBindClick(Sender: TObject);
    procedure DSAlerterLokDataChange(Sender: TObject; Field: TField);
    procedure DSAlerterLokUpdateData(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

implementation
uses UAlerter;
{$R *.frm}

{ TAlerterConfig }

procedure TAlerterConfig.FormCreate(Sender: TObject);
begin
  ZQAlerterLok.Open;
end;

procedure TAlerterConfig.btnGetLocalIPClick(Sender: TObject);
begin
  ZQAlerterLok.Edit;
  ZQAlerterLok.FieldByName('IP').AsString:= TAlerter.GetLocalIP;
end;

procedure TAlerterConfig.btnDodajBindClick(Sender: TObject);
var id: integer;
begin
  if ZQAlerterLokalizacje.IsEmpty then exit;

  id:= ZQAlerterLokalizacje.FieldByName('ID').AsInteger;
  ZQAlerterBind.Append;
  ZQAlerterBind.FieldByName('ID_Client').AsInteger:= ZQAlerterLok.FieldByName('ID').AsInteger;
  ZQAlerterBind.FieldByName('ID_Serwer').AsInteger:= id;
  ZQAlerterBind.Post;

  RefreshQuery(ZQAlerterLokalizacje);
  RefreshQuery(ZQAlerterBind);
  ZQAlerterBind.Locate('ID_serwer', id, []);
end;

procedure TAlerterConfig.btnUsunBindClick(Sender: TObject);
begin
  ZQAlerterBind.Delete;
  RefreshQuery(ZQAlerterLokalizacje);
end;

procedure TAlerterConfig.DSAlerterLokDataChange(Sender: TObject; Field: TField);
begin
  ZQAlerterBind.Close;
  ZQAlerterLokalizacje.Close;

  if ZQAlerterLok.IsEmpty then exit;

  ZQAlerterBind.ParamByName('ID_client').AsInteger:= ZQAlerterLok.FieldByName('ID').AsInteger;
  ZQAlerterBind.Open;

  ZQAlerterLokalizacje.ParamByName('ID_client').AsInteger:= ZQAlerterLok.FieldByName('ID').AsInteger;
  ZQAlerterLokalizacje.Open;
end;

procedure TAlerterConfig.DSAlerterLokUpdateData(Sender: TObject);
begin
  RefreshQuery(ZQAlerterLokalizacje);
end;

end.

