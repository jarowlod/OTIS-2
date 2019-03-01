unit UKwatPlanWyjazdow;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  Buttons, TplGradientUnit, UWeekView, DateUtils;

type

  { TKwatPlanWyjazdow }

  TKwatPlanWyjazdow = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    lblWeekDate: TLabel;
    SpeedButton3: TSpeedButton;
    WeekPanel: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel5: TPanel;
    plGradient2: TplGradient;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure WeekEventClick(StartDate: TDateTime);
    procedure SelectionEventClick(Sender: TObject);
  private
    WeekView: TWeekView;
  public

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
  // Dodanie nowego zdarzenia
  //Panel2.Caption:= DateTimeToStr(StartDate);
  //WeekView.AddEvent(1,StartDate, incHour(StartDate, 4), 'Nowe', clYellow);
end;

procedure TKwatPlanWyjazdow.SelectionEventClick(Sender: TObject);
begin
  // Dostę do Wciśniętego Eventa
  //Panel2.Caption:= TEventWeek(Sender).ID.ToString;
end;

end.

