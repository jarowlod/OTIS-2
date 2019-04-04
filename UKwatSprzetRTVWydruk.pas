unit UKwatSprzetRTVWydruk;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  Buttons, TplGradientUnit, LR_Class, LR_DBSet, ZDataset, datamodule;

type

  { TKwatSprzetRTVWydruk }

  TKwatSprzetRTVWydruk = class(TForm)
    btnDrukuj: TBitBtn;
    cbOddzial: TComboBox;
    frDBDataSet1: TfrDBDataSet;
    frReport1: TfrReport;
    Image1: TImage;
    Label1: TLabel;
    lblNaglowek: TLabel;
    Panel5: TPanel;
    plGradient2: TplGradient;
    ZQRTV: TZQuery;
    procedure btnDrukujClick(Sender: TObject);
    procedure frReport1GetValue(const ParName: String; var ParValue: Variant);
  private

  public

  end;

implementation

{$R *.frm}

{ TKwatSprzetRTVWydruk }

procedure TKwatSprzetRTVWydruk.btnDrukujClick(Sender: TObject);
begin
  ZQRTV.Close;
  ZQRTV.ParamByName('oddz').AsString:= cbOddzial.Text+'%';
  ZQRTV.Open;
  frReport1.LoadFromFile(DM.Path_Raporty +'kwat_sprzetRTV.lrf');
  frReport1.ShowReport;
end;

procedure TKwatSprzetRTVWydruk.frReport1GetValue(const ParName: String; var ParValue: Variant);
begin
  if ParName='oddzial' then ParValue:= cbOddzial.Text;
end;

end.

