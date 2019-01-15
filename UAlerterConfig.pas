unit UAlerterConfig;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  Buttons, ComCtrls, DBCtrls, TplGradientUnit, rxdbgrid, ZDataset, datamodule;

type

  { TAlerterConfig }

  TAlerterConfig = class(TForm)
    btnDodajKolejnyTerminOceny: TSpeedButton;
    DBComboBox1: TDBComboBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBNavigator1: TDBNavigator;
    DSAlerterLok: TDataSource;
    DSAlerterBind: TDataSource;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    PageControl1: TPageControl;
    Panel5: TPanel;
    plGradient2: TplGradient;
    RxDBGrid4: TRxDBGrid;
    RxDBGrid5: TRxDBGrid;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    ZQAlerterLok: TZQuery;
    ZQAlerterBind: TZQuery;
    procedure btnDodajKolejnyTerminOcenyClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
  private

  public

  end;

implementation
uses UAlerter;
{$R *.frm}

{ TAlerterConfig }

procedure TAlerterConfig.btnDodajKolejnyTerminOcenyClick(Sender: TObject);
begin
  ZQAlerterLok.Edit;
  ZQAlerterLok.FieldByName('IP').AsString:= TAlerter.GetLocalIP;
end;

procedure TAlerterConfig.FormCreate(Sender: TObject);
begin
  ZQAlerterLok.Open;
end;

procedure TAlerterConfig.PageControl1Change(Sender: TObject);
begin
  ZQAlerterBind.Close;
  if ZQAlerterLok.IsEmpty then exit;
  case PageControl1.ActivePage.Name of
    'TabSheet2' : begin
                    ZQAlerterBind.ParamByName('ID_client').AsInteger:= ZQAlerterLok.FieldByName('ID').AsInteger;
                    ZQAlerterBind.Open;
                  end;
  end;
end;

end.

