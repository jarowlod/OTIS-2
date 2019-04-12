unit UKwatPlanWyjazdowSamochody;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  Buttons, DBCtrls, TplGradientUnit, rxdbgrid, GR32_Dsgn_Color, BGRAPanel, BCLabel, ZDataset;

type

  { TKwatPlanWyjazdowSamochody }

  TKwatPlanWyjazdowSamochody = class(TForm)
    lblNazwa: TBCLabel;
    BGRAPanel1: TBGRAPanel;
    BGRAPanel2: TBGRAPanel;
    btnAnuluj: TBitBtn;
    btnNowy: TBitBtn;
    btnZapisz: TBitBtn;
    btnColor: TColorButton;
    DBComboBox1: TDBComboBox;
    DBEdit1: TDBEdit;
    DSSamochody: TDataSource;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel5: TPanel;
    plGradient2: TplGradient;
    RxDBGrid1: TRxDBGrid;
    ZQSamochody: TZQuery;
    procedure btnAnulujClick(Sender: TObject);
    procedure btnColorClick(Sender: TObject);
    procedure btnColorColorChanged(Sender: TObject);
    procedure btnNowyClick(Sender: TObject);
    procedure btnZapiszClick(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure DSSamochodyDataChange(Sender: TObject; Field: TField);
    procedure DSSamochodyStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    isBtnColorClick: Boolean;
  public

  end;

implementation

{$R *.frm}

{ TKwatPlanWyjazdowSamochody }

procedure TKwatPlanWyjazdowSamochody.btnNowyClick(Sender: TObject);
begin
  ZQSamochody.Append;
end;

procedure TKwatPlanWyjazdowSamochody.btnAnulujClick(Sender: TObject);
begin
  ZQSamochody.Cancel;
end;

procedure TKwatPlanWyjazdowSamochody.btnColorClick(Sender: TObject);
begin
  isBtnColorClick:= true;
end;

procedure TKwatPlanWyjazdowSamochody.btnColorColorChanged(Sender: TObject);
begin
  BGRAPanel1.Visible:= false;
  BGRAPanel1.Gradient.StartColor:= btnColor.ButtonColor;
  BGRAPanel1.Visible:= true;

  if isBtnColorClick then
     ZQSamochody.Edit;

  isBtnColorClick:= false;
end;

procedure TKwatPlanWyjazdowSamochody.btnZapiszClick(Sender: TObject);
begin
  ZQSamochody.FieldByName('Event_color').AsString:= ColorToString(btnColor.ButtonColor);
  ZQSamochody.Post;
end;

procedure TKwatPlanWyjazdowSamochody.DBEdit1Change(Sender: TObject);
begin
  lblNazwa.Caption:= DBEdit1.Text + ' - Kierowca';
end;

procedure TKwatPlanWyjazdowSamochody.DSSamochodyDataChange(Sender: TObject; Field: TField);
begin
  if ZQSamochody.State in [dsEdit, dsInsert] then exit;
  btnColor.ButtonColor:= StringToColorDef(ZQSamochody.FieldByName('Event_color').AsString, clWhite);
end;

procedure TKwatPlanWyjazdowSamochody.DSSamochodyStateChange(Sender: TObject);
begin
  btnZapisz.Enabled:= (ZQSamochody.State in [dsEdit, dsInsert]);
  btnAnuluj.Enabled:= btnZapisz.Enabled;
  btnNowy.Enabled:= not btnZapisz.Enabled;
end;

procedure TKwatPlanWyjazdowSamochody.FormCreate(Sender: TObject);
begin
  isBtnColorClick:= false;
  ZQSamochody.Open;
end;

end.

