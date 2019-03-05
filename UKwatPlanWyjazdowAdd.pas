unit UKwatPlanWyjazdowAdd;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, Buttons,
  StdCtrls, EditBtn, Calendar, datamodule, DateTimePicker, TplGradientUnit;

type

  { TKwatPlanWyjazdowAdd }

  TKwatPlanWyjazdowAdd = class(TForm)
    btnAnuluj: TBitBtn;
    btnOK: TBitBtn;
    dtpData_wyjazdu: TDateTimePicker;
    dtpData_Powrotu: TDateTimePicker;
    edSamochod: TEdit;
    edKierowca: TEdit;
    edCel: TEdit;
    edUwagi: TEdit;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Panel2: TPanel;
    Panel5: TPanel;
    plGradient2: TplGradient;
    SpeedButton1: TSpeedButton;
    teGodzWyjazdu: TTimeEdit;
    teGodzPowrotu: TTimeEdit;
    procedure btnOKClick(Sender: TObject);
    procedure dtpData_wyjazduChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    fData_Wyjazdu: TDateTime;
    fID: integer;
    isModyfikacja: Boolean;
    id_samochodu: integer;
    procedure ZapiszWyjazd;
  public
    procedure ZaplanujWyjazd( AData_Wyjazdu: TDateTime);
    procedure ModyfikujWyjazd( AID: integer);
  end;

var
  KwatPlanWyjazdowAdd: TKwatPlanWyjazdowAdd;

implementation

{$R *.frm}

{ TKwatPlanWyjazdowAdd }

procedure TKwatPlanWyjazdowAdd.btnOKClick(Sender: TObject);
begin
  try
    ZapiszWyjazd;
  except
    ModalResult:= mrNone;
    raise;
  end;
end;

procedure TKwatPlanWyjazdowAdd.dtpData_wyjazduChange(Sender: TObject);
begin
  dtpData_Powrotu.Date:= dtpData_wyjazdu.Date;
end;

procedure TKwatPlanWyjazdowAdd.FormCreate(Sender: TObject);
begin
  id_samochodu:= 0;
end;

procedure TKwatPlanWyjazdowAdd.ZapiszWyjazd;
var ZQ: TZQueryPom;
begin
  ZQ:= TZQueryPom.Create(Self);
  try
    if isModyfikacja then
    begin
      ZQ.SQL.Text:= 'UPDATE kwat_plan_wyjazdow SET '
        +'ID_samochodu=:id_samochodu, Kierowca=:kierowca, data_wyjazdu=:data_wyjazdu, data_powrotu=:data_powrotu, Cel=:cel, Uwagi=:uwagi, data_modyfikacji=NOW(), user=:user '
        +'WHERE ID=:id';
      ZQ.ParamByName('id').AsInteger:= fID;
    end
    else
    begin
      ZQ.SQL.Text:='INSERT INTO kwat_plan_wyjazdow '
        +'(ID_samochodu, Kierowca, data_wyjazdu, data_powrotu, Cel, Uwagi, data_modyfikacji, user) '
        +'VALUES (:id_samochodu, :kierowca, :data_wyjazdu, :data_powrotu, :cel, :uwagi, NOW(), :user)';
    end;

    // wspólne dla INSERT I UPDATE
    ZQ.ParamByName('id_samochodu').AsInteger := id_samochodu;
    ZQ.ParamByName('kierowca').AsString      := edKierowca.Text;
    ZQ.ParamByName('data_wyjazdu').AsDateTime:= dtpData_Wyjazdu.DateTime;
    ZQ.ParamByName('data_powrotu').AsDateTime:= dtpData_Powrotu.DateTime;
    ZQ.ParamByName('cel').AsString           := edCel.Text;
    ZQ.ParamByName('uwagi').AsString         := edUwagi.Text;
    ZQ.ParamByName('user').AsString          := DM.PelnaNazwa;

    ZQ.ExecSQL;
  finally
    FreeAndNil(ZQ);
  end;
end;

procedure TKwatPlanWyjazdowAdd.ZaplanujWyjazd(AData_Wyjazdu: TDateTime);
begin
  isModyfikacja:= false;
  fData_Wyjazdu:= AData_Wyjazdu;
  Caption:= Caption + ' - Zaplanuj';
end;

procedure TKwatPlanWyjazdowAdd.ModyfikujWyjazd(AID: integer);
begin
  isModyfikacja:= true;
  fID:= AID;
  Caption:= Caption + ' - Modyfikuj';
end;

end.

