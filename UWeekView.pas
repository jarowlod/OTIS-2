unit UWeekView;

{$mode objfpc}{$H+}

interface

uses
  Windows, Classes, SysUtils, ExtCtrls, Graphics, Controls, DateUtils, LCLIntf, LazUTF8, fgl, FPImage,
  StdCtrls, datamodule;

type

  TEventRecord = record
    ID        : integer;
    StartDate : TDateTime;
    EndDate   : TDateTime;
    Title     : string;
    Uwagi     : string;
    Cel       : string;
    BgColor   : TColor;
  end;

  TColumnsTab = record
    Left    : integer;
    Width   : integer;
    isSwieto: Boolean;
  end;

  TRowsTab = record
    Top   : integer;
    Height: integer;
  end;

  { TEventWeek }

  TEventWeek = class(TCustomControl)
  private
    fID: integer;
    FisSelected: Boolean;
    fStartDate: TDateTime;
    fEndDate: TDateTime;
    fBgColor: TColor;
    fTitle: String;
    fUwagi: string;
    fCel  : string;
    fisMouseEnter: boolean;
    procedure Calculate;
    Function GetHintStr: string;
    procedure SetFisSelected(AValue: Boolean);
    procedure WMEraseBkgnd(var Message: TWMEraseBkgnd); message wm_EraseBkgnd;
    procedure MouseEnter(Sender: TObject); overload;
    procedure MouseLeave(Sender: TObject); overload;
  protected
    procedure Paint; override;
  public
    Level: integer;
    OLLevel: integer;
    MaxCol: integer;
    DayOfWeek: integer;
    StartHour: Word;        // 0..15 która godzina zaczynając od Godz_Od (5)
    StartHourQuarter: Word; // 0..3 która ćwiartka godziny
    EndHour  : Word;
    EndHourQuarter: Word;
    constructor Create(AOwner: TComponent; EventRecord: TEventRecord); overload;
    destructor Destroy; override;
  published
    property ID: integer read fID write fID;
    property isSelected: Boolean read FisSelected write SetFisSelected;
  end;

  TListEvent = specialize TFPGObjectList<TEventWeek>;
  TWeekEventClick = procedure(StartDate: TDateTime) of object;

  { TWeekView }

  TWeekView = class(TCustomControl)
  private
    FBeginWeekDate: TDate;
    fOnEventClick: TNotifyEvent;
    fOnEventDbClick: TNotifyEvent;
    fOnSelectionEnd: TNotifyEvent;
    fOnWeekDblClick: TWeekEventClick;
    fOnWeekChanged: TNotifyEvent;
    FSelectDateTime: TDateTime;
    LeftSpan: integer;
    TopSpan: integer;
    ColSpan: integer;
    RowSpan: integer;
    DayWidth: integer;
    HeightHour: integer;
    HalfHight: integer;
    isSelected: Boolean;
    SelectDay: integer;    // 1..7  nr kolumny
    SelectHour: integer;   // 1..16 nr wiersza
    ColumnsTab: array[0..6] of TColumnsTab;
    RowsTab  : array[0..15] of TRowsTab;
    procedure CalculateWeek(Sender: TObject);
    procedure ZaznaczSwietaInColumns;
    function GetSelectDate: TDate;
    procedure SetBeginWeekDate(AValue: TDate);
    procedure SetSelectDate(AValue: TDate);
    procedure SetSelectDateTime(AValue: TDateTime); // podstawowa procedura zmiany daty
    procedure WMEraseBkgnd(var Message: TWMEraseBkgnd); message wm_EraseBkgnd;
    procedure WMLButtonDblClk(var Message: TWMLButtonDblClk); message wm_LButtonDblClk;
    procedure WMLButtonDown(var Message: TWMLButtonDown); message wm_LButtonDown;
    procedure WMLButtonUp(var Message: TWMLButtonUp); message wm_LButtonUp;
    //procedure WMRButtonDown(var Message: TWMRButtonDown); message wm_RButtonDown;
    //procedure WMMouseMove(var Message: TWMMouseMove); message wm_MouseMove;
  protected
    procedure Paint; override;
  public
    EventsPeerDay: array[1..7] of TListEvent;  // tablica dni tygodnia dla eventów na każdy z nich
    lblWeekDate: TLabel;

    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Invalidate; override;
    procedure NextWeek;
    procedure PrevWeek;
    procedure XYToCell(X,Y: Integer;var CellX,CellY: Integer);

    procedure AddEvent(EventRecord: TEventRecord; isCalcColumn: Boolean = true);
    procedure ClearEvent;
    procedure CalcColumEvent;
    procedure ColumnPoz(c: integer; var cLeft, cWidth: integer); // c {0..6}
    procedure RowPoz(r: integer; var cTop, cHeight: integer);    // r {0..15}
    function GetDateCaption: string;
    procedure SelectEvent(EventID: integer);
  published
    property BeginWeekDate: TDate read FBeginWeekDate write SetBeginWeekDate;
    property SelectDate: TDate read GetSelectDate write SetSelectDate;
    property SelectDateTime: TDateTime read FSelectDateTime write SetSelectDateTime;
    property OnDblClick: TWeekEventClick read fOnWeekDblClick write fOnWeekDblClick;
    property OnSelectionEnd: TNotifyEvent read fOnSelectionEnd write fOnSelectionEnd;
    property OnEventDbClick: TNotifyEvent read fOnEventDbClick write fOnEventDbClick;
    property OnEventClick: TNotifyEvent read fOnEventClick write fOnEventClick;
    property OnWeekChanged: TNotifyEvent read fOnWeekChanged write fOnWeekChanged;
  end;

const
  Godz_Od = 5;

implementation


{ TEventWeek }

constructor TEventWeek.Create(AOwner: TComponent; EventRecord: TEventRecord);
begin
  Inherited Create(AOwner);
  ControlStyle := ControlStyle - [csSetCaption, csOpaque];
  SetInitialBounds(0, 0, 50, 50);
  DoubleBuffered:= true;

  with EventRecord do
  begin
    if StartDate>EndDate then
    begin
      fStartDate:= EndDate;
      fEndDate:= StartDate;
    end else
    begin
      fStartDate:= StartDate;
      fEndDate:= EndDate;
    end;

    fID:= ID;
    fTitle:= Title;
    fUwagi:= Uwagi;
    fCel  := Cel;
    fBgColor:= BgColor;
  end;

  DayOfWeek       := DayOfTheWeek(fStartDate);

  StartHour       := HourOf(fStartDate)-Godz_Od; //TimeToMatrix(fStartDate);
  StartHourQuarter:= MinuteOfTheHour(fStartDate) div 15;
  EndHour         := HourOf(fEndDate)-Godz_Od;   //TimeToMatrix(fEndDate);
  EndHourQuarter  := MinuteOfTheHour(fEndDate) div 15;

  if StartHour=EndHour then EndHour:= StartHour+1;

  OLLevel:= 0;
  MaxCol:= 1;

  OnMouseEnter:= @MouseEnter;
  OnMouseLeave:= @MouseLeave;

  ShowHint:= true;
  Hint:= GetHintStr;

  FisSelected:= false;
end;

destructor TEventWeek.Destroy;
begin
  inherited Destroy;
end;

procedure TEventWeek.Calculate;
var pom: integer;
    cLeft, cWidth: integer;
    cTop, cHeight: integer;
begin
  TWeekView(Parent).ColumnPoz(DayOfWeek-1, cLeft, cWidth);
  Width:= ((cWidth-10) div MaxCol);
  Left:= 1 + cLeft + Width * OLLevel;

  TWeekView(Parent).RowPoz(StartHour, cTop, cHeight);
  pom:= StartHourQuarter * (cHeight div 4);
  Top:= cTop + pom + 1;

  TWeekView(Parent).RowPoz(EndHour, cTop, cHeight);
  pom:= EndHourQuarter * (cHeight div 4);
  Height:= (cTop+ pom) - Top ;
end;

function TEventWeek.GetHintStr: string;
begin
  Result:= FormatDateTime('HH:MM', fStartDate) + ' - ' + FormatDateTime('HH:MM', fEndDate)+ LineEnding
           + fTitle + LineEnding
           + fCel + LineEnding
           + fUwagi;
end;

procedure TEventWeek.SetFisSelected(AValue: Boolean);
begin
  if FisSelected= AValue then Exit;
  FisSelected:= AValue;
  Invalidate;
end;

procedure TEventWeek.WMEraseBkgnd(var Message: TWMEraseBkgnd);
begin
  Message.Result:= 1;
end;

procedure TEventWeek.MouseEnter(Sender: TObject);
begin
  fisMouseEnter:= true;
  Invalidate;
end;

procedure TEventWeek.MouseLeave(Sender: TObject);
begin
  fisMouseEnter:= false;
  Invalidate;
end;

procedure TEventWeek.Paint;
var rec: TRect;
    lr: TRect;
    sTime: string;
    fControl: TBitmap;
    TheCanvas: TCanvas;
begin
  fControl:= TBitmap.Create;
  fControl.SetSize(Width, Height);
  TheCanvas:= fControl.Canvas;

  SetBkMode(TheCanvas.Handle, TRANSPARENT);

  //Calculate;
  rec:= Rect(0, 0, Width, Height);

  TheCanvas.Brush.Color:= fBgColor;
  if fisMouseEnter then TheCanvas.FillRect(rec)
                   else TheCanvas.GradientFill(rec, fBgColor, $E8FFFF, gdVertical);

  TheCanvas.Brush.Style:=bsClear;
  rec.left:= 5;
  // draw godziny
  if isSelected then Inc(rec.Top, 4);

  sTime:= FormatDateTime('HH:MM', fStartDate) + ' - ' + FormatDateTime('HH:MM', fEndDate);
  TheCanvas.Font.Bold:=true;
  TheCanvas.Font.Size:= 8;

  // cień pod godziną
  rec.Left:= rec.Left + 1;
  rec.Top:=  rec.Top + 1;
  TheCanvas.Font.Color:= clSilver;
  DrawText(TheCanvas.Handle, PChar( sTime), -1, rec, DT_TOP OR DT_LEFT OR DT_END_ELLIPSIS);
  rec.Left:= rec.Left - 1;
  rec.Top:=  rec.Top - 1;
  TheCanvas.Font.Color:= clBlack;
  TheCanvas.Font.Bold:= false;
  DrawText(TheCanvas.Handle, PChar( sTime), -1, rec, DT_TOP OR DT_LEFT OR DT_END_ELLIPSIS);

  // draw Title
  TheCanvas.Font.Size:= 8;
  TheCanvas.Font.Color:= clBlack;
  rec.Top:= rec.Top + TheCanvas.TextHeight('Ą');
  DrawText(TheCanvas.Handle, PChar( fTitle), -1, rec, DT_TOP OR DT_CENTER OR DT_END_ELLIPSIS);

  // left bawel
  lr:= Rect(0,0,4,Height);
  TheCanvas.Pen.Width:= 1;
  TheCanvas.Brush.Color:= $B01C06;
  TheCanvas.FillRect(lr);

  if (fisMouseEnter)or(isSelected) then
  begin
    rec:= Rect(0,Height-1,Width, Height-1);
    TheCanvas.Pen.Color:= clGray;
    TheCanvas.Line(rec);
    rec:= Rect(Width-1,0,Width-1, Height);
    TheCanvas.Line(rec);

    if isSelected then
    begin
      rec:= Rect(0,0,Width, Height);
      TheCanvas.Frame3D(rec, clRed, $C4C4FF, 4);
    end;
  end;

  BitBlt(Canvas.Handle, 0, 0, Width, Height, TheCanvas.Handle, 0, 0, SRCCOPY);
  fControl.Free;
  //inherited Paint;
end;

//===============================================================================================================================

{ TWeekView }

constructor TWeekView.Create(AOwner: TComponent);
var i: integer;
begin
  Inherited Create(AOwner);
  OnResize:= @CalculateWeek;
  LeftSpan       := 35;
  TopSpan        := 20;
  FSelectDateTime:= Now();
  FBeginWeekDate := StartOfTheWeek(SelectDate);
  ZaznaczSwietaInColumns;
  SelectDay      := DayOfTheWeek(SelectDate);
  Color          := clWhite;
  isSelected     := false;
  DoubleBuffered := true;

  for i:=1 to 7 do
    EventsPeerDay[i]:= TListEvent.Create();
end;

destructor TWeekView.Destroy;
var i: integer;
begin
  for i:=1 to 7 do EventsPeerDay[i].Free;
  inherited Destroy;
end;

procedure TWeekView.CalculateWeek(Sender: TObject);
var c,r: integer;
    span: integer;
    Ev: TEventWeek;
begin
  // ----------------------- Calculate Columns
  DayWidth  := (Width-LeftSpan) div 7;            // widok 7 dni tygodnia
  ColSpan   := 7-(Width-LeftSpan-(DayWidth*7));

  for c:=0 to 6 do
  begin
    span:= c-ColSpan;
    if span<0 then span:= 0;
    ColumnsTab[c].Left:= LeftSpan + (DayWidth * c) + span;

    if (c-ColSpan)>=0 then span:= 1 else span:= 0;
    ColumnsTab[c].Width:= DayWidth + span + 1;
  end;

  // ----------------------- Calculate Rows
  HeightHour:= (Height-TopSpan) div 16;           // widok 16 godzin z dnia
  if HeightHour>= 30 then HalfHight:= HeightHour div 2
                     else HalfHight:= 0;
  RowSpan   := 16-(Height-TopSpan-(HeightHour*16));

  for r:=0 to 15 do
  begin
    span:= r-RowSpan;
    if span<0 then span:= 0;
    RowsTab[r].Top:= TopSpan + (HeightHour * r) + span;

    if (r-RowSpan)>=0 then span:= 1 else span:= 0;
    RowsTab[r].Height:= HeightHour + span + 1;
  end;

  // ---------------------- Calculate Events
  for c:=1 to 7 do
    for Ev in EventsPeerDay[c] do Ev.Calculate;
end;

procedure TWeekView.ZaznaczSwietaInColumns;
var d: integer;
begin
  for d:=0 to 6 do
    ColumnsTab[d].isSwieto:= DM.CzySwieto(BeginWeekDate+d);
end;

procedure TWeekView.ColumnPoz(c: integer; var cLeft, cWidth: integer);
begin
  if (c<0)or(c>6) then begin
    cLeft:= 0;
    cWidth:= 0;
    exit;
  end;
  cLeft := ColumnsTab[c].Left;
  cWidth:= ColumnsTab[c].Width;
end;

procedure TWeekView.RowPoz(r: integer; var cTop, cHeight: integer);
begin
  if (r<0)or(r>15) then begin
    cTop:= 0;
    cHeight:= 0;
    exit;
  end;
  cTop   := RowsTab[r].Top;
  cHeight:= RowsTab[r].Height;
end;

procedure TWeekView.Invalidate;
begin
  inherited Invalidate;
  if Assigned(lblWeekDate) then lblWeekDate.Caption:= GetDateCaption;
end;

procedure TWeekView.SetBeginWeekDate(AValue: TDate);
begin
  if FBeginWeekDate= AValue then Exit;
  FBeginWeekDate:= AValue;
  SelectDate:= IncDay(BeginWeekDate, SelectDay-1);
  ZaznaczSwietaInColumns;
  if Assigned(fOnWeekChanged) then fOnWeekChanged(Self);
end;

function TWeekView.GetSelectDate: TDate;
begin
  Result:= Int(FSelectDateTime);
end;

procedure TWeekView.SetSelectDate(AValue: TDate);
begin
  if SelectDate= AValue then Exit;
  SelectDateTime:= RecodeHour(AValue, SelectHour+ Godz_Od-1); // pierwszy element to godz 5.00
end;

procedure TWeekView.SetSelectDateTime(AValue: TDateTime);
begin
  if FSelectDateTime= AValue then Exit;
  FSelectDateTime:= AValue;
  SelectDay:= DayOfTheWeek(FSelectDateTime);
  BeginWeekDate:= StartOfTheWeek(SelectDate);
  Invalidate;
end;

procedure TWeekView.WMEraseBkgnd(var Message: TWMEraseBkgnd);
begin
  Message.Result:= 1;
end;

procedure TWeekView.WMLButtonDblClk(var Message: TWMLButtonDblClk);
begin
  if (isSelected) and (Assigned(fOnWeekDblClick)) then
    fOnWeekDblClick(SelectDateTime);
end;

procedure TWeekView.WMLButtonDown(var Message: TWMLButtonDown);
begin
  Inherited;
  XYToCell(Message.XPos, Message.YPos, SelectDay, SelectHour);
  if ((SelectDay = 0) or (SelectHour = 0)) then
  begin
    isSelected:= false;
    Invalidate;
    Exit;
  end;
  isSelected:= true;
  SelectDateTime:= RecodeHour(IncDay(BeginWeekDate, SelectDay-1), SelectHour+5); // pierwszy element to godz 6.00
  Invalidate;
  SetFocus;
end;

procedure TWeekView.WMLButtonUp(var Message: TWMLButtonUp);
begin
  Inherited;
  XYToCell(Message.XPos, Message.YPos, SelectDay, SelectHour);
  if ((SelectDay = 0) or (SelectHour = 0)) then
  begin
    isSelected:= false;
    Invalidate;
    Exit;
  end;
  isSelected:= true;
  SelectDateTime:= RecodeHour(IncDay(BeginWeekDate, SelectDay-1), SelectHour+5); // pierwszy element to godz 6.00

  if Assigned(fOnSelectionEnd) then fOnSelectionEnd(Self);
  Invalidate;
end;

procedure TWeekView.Paint;
var i: integer;
    CurDate: TDate;
    Ev: TEventWeek;
    rec: TRect;
    cTop, cHeight: integer;
    cLeft, cWidth: integer;
    fControl: TBitmap;
    TheCanvas: TCanvas;

  procedure DrawDayPanel;
  var DayName: string;
      d: integer;
      nRec: TRect;
  begin
    for d:=0 to 6 do // dni tygodnia
    begin
      ColumnPoz(d, cLeft, cWidth);
      rec:= Rect(cLeft, 0, cLeft+cWidth, Height);

      // tło
      if ColumnsTab[d].isSwieto then    // święta
        TheCanvas.Brush.Color:= $FFCEE7
      else
      if (d >= 5) then   // sobota, niedziela     // weekend innym kolorem tła
        TheCanvas.Brush.Color:= $E8E8E8
      else if (d in [1,3]) then
        TheCanvas.Brush.Color:= $FFFAF4
      else
        TheCanvas.Brush.Color:= clWhite;

      TheCanvas.FillRect(rec);

      // nagłówek
      nRec:= Rect(rec.Left, 0, rec.Right, TopSpan);
      CurDate:= IncDay(BeginWeekDate, d);
      DayName:= FormatDateTime('DDD, DD mmm', CurDate);
      if CurDate = Date then
        begin
          TheCanvas.Brush.Color:= clRed;
          TheCanvas.FillRect(nRec.Left, 0, nRec.Right, 3);
          TheCanvas.Brush.Color:= $FFDCB9;
          TheCanvas.FillRect(nRec.Left, 3, nRec.Right, TopSpan);
          TheCanvas.Font.Bold:= true
        end
      else TheCanvas.Font.Bold:= false;

      nRec.Top:= 3;
      DrawText(TheCanvas.Handle, PChar( DayName), -1, nRec, DT_TOP OR DT_CENTER OR DT_SINGLELINE);

      // Linie pionowe
      rec.Top:= 0; //TopSpan;
      rec.Right:= rec.Left;
      TheCanvas.Pen.Color:= $00C8C8C8;
      TheCanvas.Line(rec);
    end;
  end;

  procedure DrawLeftPanel;
  var h: integer;
      HourName: string;
  begin
    rec:= Rect(0, 0, LeftSpan, Height);
    TheCanvas.Brush.Color:= $F0F0F0;
    TheCanvas.FillRect(rec);

    TheCanvas.Brush.Style:= bsClear;
    for h:=0 to 15 do  // godziny od 5 do 20
    begin
      RowPoz(h, cTop, cHeight);
      rec:= Rect(0, cTop, LeftSpan-2, cTop + cHeight);

      if (isSelected)and(SelectHour-1=h) then
        TheCanvas.Font.Bold:= true else TheCanvas.Font.Bold:= false;

      HourName:= Format('%d:00',[(h+Godz_Od)]);
      DrawText(TheCanvas.Handle, PChar( HourName), -1, rec, DT_TOP OR DT_RIGHT OR DT_SINGLELINE);

      rec.Right := Width;
      rec.Bottom:= rec.Top;
      TheCanvas.Pen.Color:= $00C8C8C8;
      TheCanvas.Line(rec);
      if HalfHight>0 then
      begin
        rec.Top   := rec.Top+ (cHeight div 4)*2;
        rec.Bottom:= rec.Top;
        rec.Left  := LeftSpan -5;
        TheCanvas.Pen.Color:= $00DFDFDF;
        TheCanvas.Line(rec);
      end;
    end;
  end;

  procedure DrawSelected;
  begin
    ColumnPoz(SelectDay-1, cLeft, cWidth);
    RowPoz(SelectHour-1, cTop, cHeight);
    rec:= Rect(cLeft+1, cTop+1, cLeft+ cWidth-1, cTop+ cHeight-1);

    TheCanvas.Brush.Color:= $E8944F;
    TheCanvas.FillRect(rec);
  end;

  procedure DrawCurrentTimeLine;
  var tl: integer;
  begin
    RowPoz(HourOfTheDay(Time)-Godz_Od , cTop, cHeight);
    tl:= MinuteOfTheHour(Time);
    tl:= Round((cHeight / 60) * tl);
    rec:= Rect(LeftSpan - 3, cTop + tl, Width, 0);
    rec.Bottom:= rec.Top;
    TheCanvas.Pen.Color:= clRed;
    TheCanvas.Line(rec);
    TheCanvas.Brush.Color:= clRed;
    TheCanvas.EllipseC(LeftSpan-7, cTop + tl, 5,5);
  end;

begin
  //CalculateWeek;
  fControl:= TBitmap.Create;
  fControl.SetSize(Width, Height);
  TheCanvas:= fControl.Canvas;

  DrawDayPanel;
  DrawLeftPanel;
  DrawCurrentTimeLine;
  if isSelected then DrawSelected;

  BitBlt(Canvas.Handle, 0, 0, Width, Height, TheCanvas.Handle, 0, 0, SRCCOPY);
  fControl.Free;

  for i:=1 to 7 do
    for Ev in EventsPeerDay[i] do Ev.Paint; // Invalidate;
end;

procedure TWeekView.NextWeek;
begin
  ClearEvent;
  BeginWeekDate:= IncWeek(BeginWeekDate);
  Invalidate;
end;

procedure TWeekView.PrevWeek;
begin
  ClearEvent;
  BeginWeekDate:= IncWeek(BeginWeekDate, -1);
  Invalidate;
end;

procedure TWeekView.XYToCell(X, Y: Integer; var CellX, CellY: Integer);
var
  cTop, cHeight: integer;
  cLeft, cWidth: integer;
begin
  { Work out the column }
  if X < LeftSpan then CellX := 0 else
  begin
    CellX := ((X - LeftSpan) div DayWidth) + 1;
    ColumnPoz(CellX-1, cLeft, cWidth);
    if X < cLeft then Dec(CellX);
    if CellX > 7 then CellX := 0;
  end;
  { Work out the row }
  if Y < TopSpan then CellY := 0 else
  begin
    CellY := ((Y - TopSpan) div HeightHour) + 1;
    RowPoz(CellY-1, cTop, cHeight);
    if Y < cTop then Dec(CellY);
    if CellY > 16 then CellY := 0;
  end;
end;

procedure TWeekView.AddEvent(EventRecord: TEventRecord; isCalcColumn: Boolean);
var ItemEvent: TEventWeek;
    EndWeekDate: TDate;
begin
  EndWeekDate:= IncDay(BeginWeekDate, 6);
  if not DateInRange(EventRecord.StartDate, BeginWeekDate, EndWeekDate) then exit;

  ItemEvent:= TEventWeek.Create(Self, EventRecord);

  ItemEvent.Parent:= Self;
  ItemEvent.Top   := TopSpan;
  ItemEvent.Height:= Height - TopSpan;
  ItemEvent.Left  := LeftSpan;
  ItemEvent.Width := Width - LeftSpan;
  ItemEvent.OnDblClick:= OnEventDbClick;
  ItemEvent.OnClick   := OnEventClick;

  EventsPeerDay[ItemEvent.DayOfWeek].Add(ItemEvent);

  if isCalcColumn then
  begin
    CalcColumEvent;
    Invalidate;
  end;
end;

procedure TWeekView.ClearEvent;
var i: integer;
begin
  for i:=1 to 7 do EventsPeerDay[i].Clear;
  Invalidate;
end;

procedure TWeekView.CalcColumEvent;
var i: integer;

  procedure CreateEventMatrix_ver1(Events: TListEvent); // MaxCol przyjmuje wartość największego maxCol dla wszystkich Events
  var e, e1 ,p : integer;
      CzyWolnaPozycja: Boolean;
      maxPoz: integer;
  begin
    if Events.Count=1 then Events[0].Calculate;
    if Events.Count<=1 then exit;

    maxPoz:= 0;
    for e:=1 to Events.Count-1 do // dla każdego Eventu
      for p:=0 to e+1 do         // sprawdź czy jest wolna pozycja i tam dopisz
      begin
        CzyWolnaPozycja:= true;
        for e1:=0 to e-1 do
        // algorytm wymaga posortowanej listy Eventów wg. StartDate
        if Events[e1].OLLevel=p then
        if ((Events[e].fStartDate >= Events[e1].fStartDate)AND(Events[e].fEndDate <= Events[e1].fEndDate))OR // e zawie się w e1
           ((Events[e].fStartDate >= Events[e1].fStartDate)AND(Events[e].fStartDate < Events[e1].fEndDate)) then // e zaczyna się w e1
        begin
          CzyWolnaPozycja:= false;
          Break;
        end;

        if CzyWolnaPozycja then
        begin
          // dopisujemy Event
          Events[e].OLLevel:= p;  // <--------------- Ustalamy w której kolumnie zmieścimy Event
          if p>maxPoz then maxPoz:= p;
          Break; // kończymy poszukiwania
        end;
      end;

    for e:=0 to Events.Count-1 do // dla każdego Eventu
    begin
      Events[e].MaxCol:= maxPoz+1;
      Events[e].Calculate;
    end;
  end;

begin
  for i:=1 to 7 do
  begin
    CreateEventMatrix_ver1(EventsPeerDay[i]);
  end;
end;

function TWeekView.GetDateCaption: string;
begin
  Result:= DateToStr( BeginWeekDate)+ ' - ' + DateToStr( EndOfTheWeek(BeginWeekDate));
end;

procedure TWeekView.SelectEvent(EventID: integer);
var d, e: integer;
begin
  for d:=1 to 7 do
    for e:=0 to EventsPeerDay[d].Count-1 do
        EventsPeerDay[d].Items[e].isSelected:= (EventsPeerDay[d].Items[e].ID = EventID);
end;

end.

