unit UKwatPlanWyjazdowAdd;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, Buttons,
  StdCtrls, EditBtn, TplGradientUnit, DateUtils, datamodule;

type

  { TKwatPlanWyjazdowAdd }

  TKwatPlanWyjazdowAdd = class(TForm)
    btnAnuluj: TBitBtn;
    btnOK: TBitBtn;
    cbKierowca: TComboBox;
    cbCel: TComboBox;
    cbSamochod: TComboBox;
    dtpData_wyjazdu: TDateTimePicker;
    dtpData_Powrotu: TDateTimePicker;
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
    procedure cbSamochodChange(Sender: TObject);
    procedure dtpData_wyjazduChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    fData_Wyjazdu: TDateTime;
    fID: integer;
    isModyfikacja: Boolean;
    id_samochodu: integer;
    procedure ZapiszWyjazd;
    procedure WczytajKierowcow;
    procedure WczytajSamochody;
    procedure WczytajCel;
  public
    procedure ZaplanujWyjazd( AData_Wyjazdu: TDateTime);
    procedure ModyfikujWyjazd( AID: integer);
  end;

  { TFlotaSamochodow }

  TFlotaSamochodow = class
    Nazwa: string;
    ID: integer;
    constructor Create(vID: integer; vNazwa: string);
  end;


implementation
uses UKwatPlanWyjazdowSamochody;
{$R *.frm}

{ TFlotaSamochodow }

constructor TFlotaSamochodow.Create(vID: integer; vNazwa: string);
begin
  inherited Create;
  Nazwa:= vNazwa;
  ID:= vID;
end;

{ TKwatPlanWyjazdowAdd }

procedure TKwatPlanWyjazdowAdd.FormCreate(Sender: TObject);
begin
  id_samochodu:= 0;
  WczytajKierowcow;
  WczytajSamochody;
  WczytajCel;
end;

procedure TKwatPlanWyjazdowAdd.FormDestroy(Sender: TObject);
var i: integer;
begin
  for i:=0 to cbSamochod.Items.Count-1 do
    begin
      if Assigned(cbSamochod.Items.Objects[i]) then
        cbSamochod.Items.Objects[i].Destroy;
    end;
end;

procedure TKwatPlanWyjazdowAdd.SpeedButton1Click(Sender: TObject);
begin
  with TKwatPlanWyjazdowSamochody.Create(Self) do
  begin
    ShowModal;
    Free;
  end;
  WczytajSamochody;
end;

procedure TKwatPlanWyjazdowAdd.btnOKClick(Sender: TObject);
begin
  dtpData_wyjazdu.Time:= teGodzWyjazdu.Time;
  dtpData_Powrotu.Time:= teGodzPowrotu.Time;

  if dtpData_wyjazdu.DateTime<= Now() then
  begin
    ShowMessage('Nie można zaplanować wyjazdu dla daty i godziny wcześniejszej niż bieżąca.');
    ModalResult:= mrNone;
    exit;
  end;

  if dtpData_Powrotu.DateTime <= dtpData_wyjazdu.DateTime then
  begin
    ShowMessage('Planowana data/godzina powrotu musi być większa od daty/godziny wyjazdu.');
    ModalResult:= mrNone;
    exit;
  end;

  try
    ZapiszWyjazd;
  except
    ModalResult:= mrNone;
    raise;
  end;
end;

procedure TKwatPlanWyjazdowAdd.cbSamochodChange(Sender: TObject);
begin
  if cbSamochod.ItemIndex<>-1 then
    begin
      if Assigned(cbSamochod.Items.Objects[cbSamochod.ItemIndex]) then
        id_samochodu:= TFlotaSamochodow(cbSamochod.Items.Objects[cbSamochod.ItemIndex]).ID;
    end;
end;

procedure TKwatPlanWyjazdowAdd.dtpData_wyjazduChange(Sender: TObject);
begin
  dtpData_Powrotu.Date:= dtpData_wyjazdu.Date;
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
    ZQ.ParamByName('kierowca').AsString      := cbKierowca.Text;
    ZQ.ParamByName('data_wyjazdu').AsDateTime:= dtpData_Wyjazdu.DateTime;
    ZQ.ParamByName('data_powrotu').AsDateTime:= dtpData_Powrotu.DateTime;
    ZQ.ParamByName('cel').AsString           := cbCel.Text;
    ZQ.ParamByName('uwagi').AsString         := edUwagi.Text;
    ZQ.ParamByName('user').AsString          := DM.PelnaNazwa;

    ZQ.ExecSQL;
  finally
    FreeAndNil(ZQ);
  end;
end;

procedure TKwatPlanWyjazdowAdd.WczytajKierowcow;
var ZQ: TZQueryPom;
begin
  cbKierowca.Items.Clear;
  ZQ:= TZQueryPom.Create(Self);
  try
//    ZQ.SQL.Text:= 'SELECT Full_name, Dzial FROM uprawnienia WHERE Dzial="Kwat" ORDER BY Full_name';
    ZQ.SQL.Text:= 'SELECT DISTINCT Kierowca FROM kwat_plan_wyjazdow WHERE (data_wyjazdu > CURDATE() - interval 6 MONTH) ORDER BY Kierowca';
    ZQ.Open;
    while not ZQ.EOF do
    begin
      cbKierowca.Items.Add(ZQ.FieldByName('Kierowca').AsString);
      ZQ.Next;
    end;
  finally
    FreeAndNil(ZQ);
  end;
end;

procedure TKwatPlanWyjazdowAdd.WczytajCel;
var ZQ: TZQueryPom;
begin
  cbCel.Items.Clear;
  ZQ:= TZQueryPom.Create(Self);
  try
//    ZQ.SQL.Text:= 'SELECT Full_name, Dzial FROM uprawnienia WHERE Dzial="Kwat" ORDER BY Full_name';
    ZQ.SQL.Text:= 'SELECT Cel, count(Cel) ile FROM kwat_plan_wyjazdow GROUP By Cel HAVING ile>1';
    ZQ.Open;
    while not ZQ.EOF do
    begin
      cbCel.Items.Add(ZQ.FieldByName('Cel').AsString);
      ZQ.Next;
    end;
  finally
    FreeAndNil(ZQ);
  end;
end;

procedure TKwatPlanWyjazdowAdd.WczytajSamochody;
var ZQ: TZQueryPom;
    Nazwa: string;
    i: integer;
begin
  for i:=0 to cbSamochod.Items.Count-1 do
    begin
      if Assigned(cbSamochod.Items.Objects[i]) then
        cbSamochod.Items.Objects[i].Destroy;
    end;
  cbSamochod.Items.Clear;

  ZQ:= TZQueryPom.Create(Owner);
  try
    ZQ.SQL.Text:= 'SELECT ID, Nazwa, stan, Event_color FROM kwat_samochody '
                 +'WHERE stan="A" '
                 +'ORDER BY Nazwa';
    ZQ.Open;

    while not ZQ.Eof do
    begin
      Nazwa:= ZQ.FieldByName('Nazwa').AsString;
      cbSamochod.Items.AddObject(Nazwa, TFlotaSamochodow.Create(ZQ.FieldByName('ID').AsInteger, Nazwa) );
      ZQ.Next;
    end;
  if cbSamochod.Items.Count>=0 then
  begin
    cbSamochod.ItemIndex:= 0;
    cbSamochodChange(Self);
  end;

  finally
    FreeAndNil(ZQ);
  end;
end;

procedure TKwatPlanWyjazdowAdd.ZaplanujWyjazd(AData_Wyjazdu: TDateTime);
begin
  isModyfikacja:= false;
  fData_Wyjazdu:= AData_Wyjazdu;
  Caption:= Caption + ' - Zaplanuj';

  teGodzWyjazdu.Time:= AData_Wyjazdu;
  teGodzPowrotu.Time:= IncHour(AData_Wyjazdu, 1);
  dtpData_wyjazdu.Date:= AData_Wyjazdu;
  dtpData_Powrotu.Date:= AData_Wyjazdu;
end;

procedure TKwatPlanWyjazdowAdd.ModyfikujWyjazd(AID: integer);
var ZQ: TZQueryPom;
    i: integer;
begin
  isModyfikacja:= true;
  fID:= AID;
  Caption:= Caption + ' - Modyfikuj';

  ZQ:= TZQueryPom.Create(Self);
  try
    ZQ.SQL.Text:= 'SELECT ID, ID_samochodu, Kierowca, data_wyjazdu, data_powrotu, Cel, Uwagi FROM kwat_plan_wyjazdow WHERE ID=:id ';
    ZQ.ParamByName('id').AsInteger:= fID;
    ZQ.Open;
    if ZQ.IsEmpty then
    begin
      ModalResult:= mrCancel;
      exit;
    end;

    id_samochodu            := ZQ.FieldByName('ID_samochodu').AsInteger;
    cbKierowca.Text         := ZQ.FieldByName('Kierowca').AsString;
    dtpData_Wyjazdu.DateTime:= ZQ.FieldByName('data_wyjazdu').AsDateTime;
    teGodzWyjazdu.Time      := dtpData_wyjazdu.DateTime;
    dtpData_Powrotu.DateTime:= ZQ.FieldByName('data_powrotu').AsDateTime;
    teGodzPowrotu.Time      := dtpData_Powrotu.DateTime;
    cbCel.Text              := ZQ.FieldByName('Cel').AsString;
    edUwagi.Text            := ZQ.FieldByName('Uwagi').AsString;

    for i:=0 to cbSamochod.Items.Count-1 do
    begin
      if TFlotaSamochodow(cbSamochod.Items.Objects[i]).ID = id_samochodu then
      begin
        cbSamochod.ItemIndex:= i;
        Break;
      end;
    end;

  finally
    FreeAndNil(ZQ);
  end;
end;

end.

