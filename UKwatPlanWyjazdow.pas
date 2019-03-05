unit UKwatPlanWyjazdow;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  Buttons, ComCtrls, DBCtrls, TplGradientUnit, UWeekView, DB, ZDataset,
  rxdbgrid, DateUtils, datamodule;

type

  { TKwatPlanWyjazdow }

  TKwatPlanWyjazdow = class(TForm)
    btnUsun: TBitBtn;
    btnZaplanuj: TBitBtn;
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
    procedure btnUsunClick(Sender: TObject);
    procedure btnZaplanujClick(Sender: TObject);
    procedure DSPlanWyjazdowDataChange(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure WeekEventClick(StartDate: TDateTime);
    procedure WeekChanged(Sender: TObject);
    procedure SelectionEventClick(Sender: TObject);
    procedure ZQUwagiBeforePost(DataSet: TDataSet);
  private
    WeekView: TWeekView;
  public
    Procedure WczytajDane;
    procedure ZaplanujWyjazd(SelectDateTime: TDateTime);
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
  WeekView.OnSelectionEvent:= @SelectionEventClick;
  WeekView.OnWeekChanged   := @WeekChanged;
  WeekView.Invalidate;
end;

procedure TKwatPlanWyjazdow.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  if ZQUwagi.State in [dsEdit, dsInsert] then ZQUwagi.Post;
end;

procedure TKwatPlanWyjazdow.btnUsunClick(Sender: TObject);
var ZQPom: TZQueryPom;
begin
  if ZQPlanWyjazdow.IsEmpty then exit;
  if ZQPlanWyjazdow.FieldByName('data_start').AsDateTime< Now then
    begin
      MessageDlg('Nie można usunąć zdarzenia gdyż jego data jest wcześniejsza niż bieżąca.', mtWarning, [mbOK],0);
      exit;
    end;

  try
    ZQPom:= TZQueryPom.Create(Self);
    ZQPom.SQL.Text:= 'UPDATE kwat_plan_wyjazdow SET user=:user, data_modyfikacji=NOW(), stan="U"';
    ZQPom.ParamByName('user').AsString:= DM.PelnaNazwa;
    ZQPom.ExecSQL;
  finally
    FreeAndNil(ZQPom);
  end;

  WczytajDane;
end;

procedure TKwatPlanWyjazdow.btnZaplanujClick(Sender: TObject);
begin
  ZaplanujWyjazd(WeekView.SelectDateTime);
end;

procedure TKwatPlanWyjazdow.DSPlanWyjazdowDataChange(Sender: TObject; Field: TField);
begin
  btnUsun.Enabled:= (not ZQPlanWyjazdow.IsEmpty)and
                    (ZQPlanWyjazdow.FieldByName('data_wyjazdu').AsDateTime>Now());
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
  WczytajDane; // ZQPlanWyjazdow;

  // zapisz uwagi jeśli są nowe
  if ZQUwagi.State in [dsEdit, dsInsert] then ZQUwagi.Post;
  ZQUwagi.Close;
  ZQUwagi.ParamByName('data_start').AsDate:= WeekView.BeginWeekDate;
  ZQUwagi.Open;
end;

procedure TKwatPlanWyjazdow.SelectionEventClick(Sender: TObject);
begin
  // Dostęp do Wciśniętego Eventa
  //Panel2.Caption:= TEventWeek(Sender).ID.ToString;
  // Edycja
end;

procedure TKwatPlanWyjazdow.ZQUwagiBeforePost(DataSet: TDataSet);
begin
  if ZQUwagi.State in [dsInsert] then // zapisz zmiany jeśli są
    ZQUwagi.FieldByName('data').AsDateTime:= ZQUwagi.ParamByName('data_start').AsDate;
end;

procedure TKwatPlanWyjazdow.WczytajDane;
var title: string;
    BgColor: TColor;
begin
  WeekView.ClearEvent;

  ZQPlanWyjazdow.Close;
  ZQPlanWyjazdow.ParamByName('data_start').AsDate:= WeekView.BeginWeekDate;
  ZQPlanWyjazdow.ParamByName('data_end').AsDate:= EndOfTheWeek(WeekView.BeginWeekDate);
  ZQPlanWyjazdow.Open;

  while not ZQPlanWyjazdow.EOF do
  begin
    title:= ZQPlanWyjazdow.FieldByName('Nazwa').AsString+ ' - ' +ZQPlanWyjazdow.FieldByName('Kierowca').AsString;
    BgColor:= StringToColor(ZQPlanWyjazdow.FieldByName('Event_color').AsString);

    WeekView.AddEvent(ZQPlanWyjazdow.FieldByName('ID').AsInteger,
                      ZQPlanWyjazdow.FieldByName('data_wyjazdu').AsDateTime,
                      ZQPlanWyjazdow.FieldByName('data_powrotu').AsDateTime,
                      title,
                      BgColor);
    ZQPlanWyjazdow.Next;
  end;
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

end.

