unit UKwatPlanWyjazdow;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  Buttons, ComCtrls, DBCtrls, TplGradientUnit, UWeekView, DB, ZDataset,
  rxdbgrid, DateUtils, datamodule, DateTimePicker;

type

  { TKwatPlanWyjazdow }

  TKwatPlanWyjazdow = class(TForm)
    btnUsun: TBitBtn;
    btnZaplanuj: TBitBtn;
    btnModyfikuj: TBitBtn;
    dtpSelectedDate: TDateTimePicker;
    DBMemoUwagi: TDBMemo;
    DBNavigator1: TDBNavigator;
    DSPlanWyjazdow: TDataSource;
    DSUwagi: TDataSource;
    Image1: TImage;
    Label1: TLabel;
    lblWeekDate: TLabel;
    PageControl1: TPageControl;
    Panel1: TPanel;
    Panel4: TPanel;
    RxDBGrid1: TRxDBGrid;
    Splitter2: TSplitter;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    WeekPanel: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel5: TPanel;
    plGradient2: TplGradient;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    ZQPlanWyjazdow: TZQuery;
    ZQUwagi: TZQuery;
    procedure btnModyfikujClick(Sender: TObject);
    procedure btnUsunClick(Sender: TObject);
    procedure btnZaplanujClick(Sender: TObject);
    procedure dtpSelectedDateChange(Sender: TObject);
    procedure DSPlanWyjazdowDataChange(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure WeekEventClick(StartDate: TDateTime);
    procedure WeekChanged(Sender: TObject);
    procedure EventDbClick(Sender: TObject);
    procedure EventClick(Sender: TObject);
    procedure SelectionEndClick(Sender: TObject);
    procedure ZQUwagiBeforePost(DataSet: TDataSet);
  private
    WeekView: TWeekView;
  public
    Procedure WczytajDane;
    procedure ZaplanujWyjazd(SelectDateTime: TDateTime);
    procedure ModyfikujWyjazd(AID: integer);
  end;

var
  KwatPlanWyjazdow: TKwatPlanWyjazdow;

implementation
uses UKwatPlanWyjazdowAdd;
{$R *.frm}

{ TKwatPlanWyjazdow }

procedure TKwatPlanWyjazdow.FormCreate(Sender: TObject);
begin
  WeekView:= TWeekView.Create(WeekPanel);
  WeekView.Parent:= WeekPanel;
  WeekView.Align := alClient;
  WeekView.lblWeekDate:= lblWeekDate;

  WeekView.OnDblClick      := @WeekEventClick;
  WeekView.OnEventDbClick  := @EventDbClick;
  WeekView.OnEventClick    := @EventClick;
  WeekView.OnWeekChanged   := @WeekChanged;
  WeekView.OnSelectionEnd  := @SelectionEndClick;
  WeekView.Invalidate;

  btnZaplanuj.Enabled:= DM.uprawnienia[19];
  btnUsun.Enabled    := DM.uprawnienia[19];
end;

procedure TKwatPlanWyjazdow.FormDestroy(Sender: TObject);
begin
  FreeAndNil(WeekView);
end;

procedure TKwatPlanWyjazdow.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  if ZQUwagi.State in [dsEdit, dsInsert] then ZQUwagi.Post;
end;

procedure TKwatPlanWyjazdow.btnUsunClick(Sender: TObject);
var ZQPom: TZQueryPom;
begin
  if ZQPlanWyjazdow.IsEmpty then exit;
  if ZQPlanWyjazdow.FieldByName('data_wyjazdu').AsDateTime< Now then
    begin
      MessageDlg('Nie można usunąć zdarzenia gdyż jego data jest wcześniejsza niż bieżąca.', mtWarning, [mbOK],0);
      exit;
    end;

  if not(MessageDlg('Czy napewno usunąć planowane zdarzenie?', mtConfirmation, [mbYes, mbNo],0) = mrYes) then exit;

  try
    ZQPom:= TZQueryPom.Create(Self);
    ZQPom.SQL.Text:= 'UPDATE kwat_plan_wyjazdow SET user=:user, data_modyfikacji=NOW(), stan="U" WHERE ID=:id';
    ZQPom.ParamByName('user').AsString:= DM.PelnaNazwa;
    ZQPom.ParamByName('id').AsInteger:= ZQPlanWyjazdow.FieldByName('ID').AsInteger;
    ZQPom.ExecSQL;
  finally
    FreeAndNil(ZQPom);
  end;

  WczytajDane;
end;

procedure TKwatPlanWyjazdow.btnModyfikujClick(Sender: TObject);
begin
  ModyfikujWyjazd( ZQPlanWyjazdow.FieldByName('ID').AsInteger );
end;

procedure TKwatPlanWyjazdow.btnZaplanujClick(Sender: TObject);
begin
  ZaplanujWyjazd(WeekView.SelectDateTime);
end;

procedure TKwatPlanWyjazdow.dtpSelectedDateChange(Sender: TObject);
begin
  WeekView.SelectDate:= dtpSelectedDate.Date;
end;

procedure TKwatPlanWyjazdow.DSPlanWyjazdowDataChange(Sender: TObject; Field: TField);
begin
  btnUsun.Enabled:= (DM.uprawnienia[19])and
                    (not ZQPlanWyjazdow.IsEmpty)and
                    (ZQPlanWyjazdow.FieldByName('data_wyjazdu').AsDateTime>IncDay(Now(), -2));
  btnModyfikuj.Enabled:= btnUsun.Enabled;
end;

procedure TKwatPlanWyjazdow.FormShow(Sender: TObject);
begin
  WeekChanged(Self);
end;

procedure TKwatPlanWyjazdow.SpeedButton1Click(Sender: TObject);
begin
  WeekView.PrevWeek;
end;

procedure TKwatPlanWyjazdow.SpeedButton2Click(Sender: TObject);
begin
  WeekView.NextWeek;
end;

procedure TKwatPlanWyjazdow.WeekEventClick(StartDate: TDateTime);
begin
  ZaplanujWyjazd(StartDate);
end;

procedure TKwatPlanWyjazdow.WeekChanged(Sender: TObject);
begin
  dtpSelectedDate.Date:= WeekView.SelectDate;
  WczytajDane; // ZQPlanWyjazdow;

  // zapisz uwagi jeśli są nowe
  if ZQUwagi.State in [dsEdit, dsInsert] then ZQUwagi.Post;
  ZQUwagi.Close;
  ZQUwagi.ParamByName('data_start').AsDate:= WeekView.BeginWeekDate;
  ZQUwagi.Open;
end;

procedure TKwatPlanWyjazdow.EventDbClick(Sender: TObject);
begin
  // Dostęp do Wciśniętego Eventa
  if btnModyfikuj.Enabled then
    ModyfikujWyjazd(TEventWeek(Sender).ID);
end;

procedure TKwatPlanWyjazdow.EventClick(Sender: TObject);
begin
  // select pos in DB by Event ID
  ZQPlanWyjazdow.Locate('ID', TEventWeek(Sender).ID, []);
end;

procedure TKwatPlanWyjazdow.SelectionEndClick(Sender: TObject);
begin
  dtpSelectedDate.Date:= WeekView.SelectDate;
end;

procedure TKwatPlanWyjazdow.ZQUwagiBeforePost(DataSet: TDataSet);
begin
  if ZQUwagi.State in [dsInsert] then // zapisz zmiany jeśli są
    ZQUwagi.FieldByName('data').AsDateTime:= ZQUwagi.ParamByName('data_start').AsDate;
end;

procedure TKwatPlanWyjazdow.WczytajDane;
var EventRecord: TEventRecord;
begin
  WeekView.ClearEvent;

  ZQPlanWyjazdow.Close;
  ZQPlanWyjazdow.ParamByName('data_start').AsDate:= WeekView.BeginWeekDate;
  ZQPlanWyjazdow.ParamByName('data_end').AsDate:= EndOfTheWeek(WeekView.BeginWeekDate);
  ZQPlanWyjazdow.Open;

  while not ZQPlanWyjazdow.EOF do
  begin
    EventRecord.ID       := ZQPlanWyjazdow.FieldByName('ID').AsInteger;
    EventRecord.StartDate:= ZQPlanWyjazdow.FieldByName('data_wyjazdu').AsDateTime;
    EventRecord.EndDate  := ZQPlanWyjazdow.FieldByName('data_powrotu').AsDateTime;
    EventRecord.Title    := ZQPlanWyjazdow.FieldByName('Nazwa').AsString+ ' - ' +ZQPlanWyjazdow.FieldByName('Kierowca').AsString;
    EventRecord.Cel      := ZQPlanWyjazdow.FieldByName('Cel').AsString;
    EventRecord.Uwagi    := ZQPlanWyjazdow.FieldByName('Uwagi').AsString;
    EventRecord.BgColor  := StringToColorDef(ZQPlanWyjazdow.FieldByName('Event_color').AsString, clSkyBlue);

    WeekView.AddEvent(EventRecord, false);
    ZQPlanWyjazdow.Next;
  end;
  WeekView.CalcColumEvent;
end;

procedure TKwatPlanWyjazdow.ZaplanujWyjazd(SelectDateTime: TDateTime);
begin
  with TKwatPlanWyjazdowAdd.Create(Self) do
  begin
    ZaplanujWyjazd( SelectDateTime );
    if ShowModal=mrOK then WczytajDane;
    Free;
  end;
end;

procedure TKwatPlanWyjazdow.ModyfikujWyjazd(AID: integer);
begin
  with TKwatPlanWyjazdowAdd.Create(Self) do
  begin
    ModyfikujWyjazd( AID );
    if ShowModal=mrOK then WczytajDane;
    Free;
  end;
end;

end.

