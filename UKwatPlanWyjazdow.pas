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
    Image1: TImage;
    Label1: TLabel;
    lblWeekDate: TLabel;
    PageControl1: TPageControl;
    Panel1: TPanel;
    Panel4: TPanel;
    RxDBGrid1: TRxDBGrid;
    SpeedButton3: TSpeedButton;
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
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure WeekEventClick(StartDate: TDateTime);
    procedure SelectionEventClick(Sender: TObject);
  private
    WeekView: TWeekView;
  public
    Procedure WczytajDane;
  end;

var
  KwatPlanWyjazdow: TKwatPlanWyjazdow;

implementation

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
  WeekView.Invalidate;
end;

procedure TKwatPlanWyjazdow.FormShow(Sender: TObject);
begin
  WczytajDane
end;

procedure TKwatPlanWyjazdow.SpeedButton1Click(Sender: TObject);
begin
  WeekView.PrevWeek;
  WczytajDane;
end;

procedure TKwatPlanWyjazdow.SpeedButton2Click(Sender: TObject);
begin
  WeekView.NextWeek;
  WczytajDane;
end;

procedure TKwatPlanWyjazdow.WeekEventClick(StartDate: TDateTime);
begin
  // Dodanie nowego zdarzenia
  //Panel2.Caption:= DateTimeToStr(StartDate);
  //WeekView.AddEvent(1,StartDate, incHour(StartDate, 4), 'Nowe', clYellow);
end;

procedure TKwatPlanWyjazdow.SelectionEventClick(Sender: TObject);
begin
  // Dostę do Wciśniętego Eventa
  //Panel2.Caption:= TEventWeek(Sender).ID.ToString;
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

end.

