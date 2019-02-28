unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  UWeekView, YearPlanner, DateUtils;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
    YearPlanner1: TYearPlanner;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Panel1MouseEnter(Sender: TObject);
    procedure WeekEventClick(StartDate: TDateTime);
    procedure SelectionEventClick(Sender: TObject);
  private
    WeekView: TWeekView;
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.frm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
  WeekView:= TWeekView.Create(Panel1);
  WeekView.Parent:= Panel1;
  WeekView.Align:= alClient;
  WeekView.OnDblClick:= @WeekEventClick;
  WeekView.OnSelectionEvent:= @SelectionEventClick;
end;

procedure TForm1.Panel1MouseEnter(Sender: TObject);
begin

end;

procedure TForm1.WeekEventClick(StartDate: TDateTime);
begin
  Panel2.Caption:= DateTimeToStr(StartDate);
  WeekView.AddEvent(1,StartDate, incHour(StartDate, 4), 'Nowe', clYellow);
end;

procedure TForm1.SelectionEventClick(Sender: TObject);
begin
  Panel2.Caption:= TEventWeek(Sender).ID.ToString;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  WeekView.NextWeek;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  WeekView.AddEvent(1,StrToDateTime('21.02.2019 6:00:00'), StrToDateTime('21.02.2019 8:00:00'), 'audi', clPurple);
  WeekView.AddEvent(2,StrToDateTime('21.02.2019 7:00:00'), StrToDateTime('21.02.2019 9:00:00'), 'Duplo', clYellow);
  WeekView.AddEvent(3,StrToDateTime('21.02.2019 8:00:00'), StrToDateTime('21.02.2019 19:00:00'), 'Mercedes', clPurple);
  WeekView.AddEvent(4,StrToDateTime('21.02.2019 19:00:00'), StrToDateTime('21.02.2019 21:00:00'), 'End', clPurple);
  WeekView.AddEvent(5,StrToDateTime('20.02.2019 11:00:00'), StrToDateTime('20.02.2019 13:00:00'), 'Duplo 20', clYellow);
  WeekView.AddEvent(6,StrToDateTime('21.02.2019 7:00:00'), StrToDateTime('21.02.2019 7:00:00'), 'Siedem', clGreen);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  WeekView.PrevWeek;
end;



end.

