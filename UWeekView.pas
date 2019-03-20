unit UWeekView;

{$mode objfpc}{$H+}

interface

uses
  Windows, Classes, SysUtils, ExtCtrls, Graphics, Controls, DateUtils, LCLIntf, LazUTF8, fgl, FPImage,
  StdCtrls;

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
    StartHour: Word;
    EndHour  : Word;
    constructor Create(AOwner: TComponent; EventRecord: TEventRecord); overload;
    destructor Destroy; override;
  published
    property ID: integer read fID write fID;
    property isSelected: Boolean read FisSelected write SetFisSelected;
  end;

  TListEvent = specialize TFPGObjectList<TEventWeek>;
  TWeekEventClick = procedure(StartDate: TDateTime) of object;

  // Tablica godzin wiersze od 6 do 22, tablica kolumn max ilość eventów danego dnia
  // w wersji z połówkami od 6 do 44
  // Poz = (g-6)*4 + (m div 15);  od 6 do 22 co 15 min
  TMatrix = array of array of record
    ev: integer;  // nr Eventu
    poz: integer; // pozycja w pionie
  end;
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
    SelectDay: integer;
    SelectHour: integer;
    procedure CalculateWeek;
    function GetSelectDate: TDate;
    procedure SetBeginWeekDate(AValue: TDate);
    procedure SetSelectDate(AValue: TDate);
    procedure SetSelectDateTime(AValue: TDateTime);
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
    procedure ColumnPoz(d: integer; var cLeft, cWidth: integer); // d {0..6}
    procedure RowPoz(h: integer; var cTop, cHeight: integer);    // h {0..15}
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

  function TimeToMatrix(VTime: TTime): integer;

const
  MaxMatrix = 64; // godz 6-22, co 15 min od 0
  Godz_Od = 5;

implementation

function TimeToMatrix(VTime: TTime): integer;
begin
  Result:= (HourOf(VTime)-Godz_Od)*4 + (MinuteOfTheHour(VTime) div 15);
  if Result<0 then Result:=0;
  if Result>MaxMatrix then Result:= MaxMatrix;
end;

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

  DayOfWeek:= DayOfTheWeek(fStartDate);

  StartHour:= TimeToMatrix(fStartDate);
  EndHour:= TimeToMatrix(fEndDate);

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
var pom, hDiv4: integer;
    cLeft, cWidth: integer;
    cTop, cHeight: integer;
begin
  TWeekView(Parent).ColumnPoz(DayOfWeek-1, cLeft, cWidth);
  Width:= (cWidth div MaxCol)-4;
  Left:= cLeft + Width * OLLevel;

  hDiv4:= StartHour div 4;
  TWeekView(Parent).RowPoz(hDiv4, cTop, cHeight);  // pozycja pełnej godziny
  pom:= (StartHour - hDiv4 * 4) * (cHeight div 4);  // pozycja pozostałej ćwiartki
  Top:= cTop + pom + 1;

  hDiv4:= EndHour div 4;
  TWeekView(Parent).RowPoz(hDiv4, cTop, cHeight);
  pom:= (EndHour - hDiv4 * 4)* (cHeight div 4);
  Height:= (cTop+ pom) - Top;
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
begin
  SetBkMode(Canvas.Handle, TRANSPARENT);

  Calculate;
  rec:= Rect(0, 0, Width, Height);

  Canvas.Brush.Color:= fBgColor;
  if fisMouseEnter then Canvas.FillRect(rec)
                   else Canvas.GradientFill(rec, fBgColor, $E8FFFF, gdVertical);

  Canvas.Brush.Style:=bsClear;
  rec.left:= 4;
  // draw godziny
  sTime:= FormatDateTime('HH:MM', fStartDate) + ' - ' + FormatDateTime('HH:MM', fEndDate);
  Canvas.Font.Bold:=true;
  Canvas.Font.Size:= 8;

  // cień pod godziną
  rec.Left:= rec.Left + 1;
  rec.Top:=  rec.Top + 1;
  Canvas.Font.Color:= clSilver;
  DrawText(Canvas.Handle, PChar( sTime), -1, rec, DT_TOP OR DT_LEFT OR DT_END_ELLIPSIS);
  rec.Left:= rec.Left - 1;
  rec.Top:=  rec.Top - 1;
  Canvas.Font.Color:= clBlack;
  DrawText(Canvas.Handle, PChar( sTime), -1, rec, DT_TOP OR DT_LEFT OR DT_END_ELLIPSIS);

  // draw Title
  Canvas.Font.Size:= 8;
  Canvas.Font.Color:= clBlack;
  rec.Top:= rec.Top + Canvas.TextHeight('Ą');
  DrawText(Canvas.Handle, PChar( fTitle), -1, rec, DT_TOP OR DT_CENTER OR DT_END_ELLIPSIS);

  // left bawel
  lr:= Rect(0,0,4,Height);
  Canvas.Brush.Color:= $B01C06;
  Canvas.FillRect(lr);
  if (fisMouseEnter)or(isSelected) then
  begin
    if isSelected then
    begin
      Canvas.Pen.Width:= 2;
    end;
    rec:= Rect(0,Height-1,Width, Height-1);
    Canvas.Pen.Color:= clGray;
    Canvas.Line(rec);
    rec:= Rect(Width-1,0,Width-1, Height);
    Canvas.Line(rec);
    //Canvas.Brush.Style:= bsClear;
    //Canvas.Pen.Color:= clRed;
    //Canvas.Pen.Width:= 1;
    //Canvas.Rectangle(rec);
  end;

  inherited Paint;
end;

//===============================================================================================================================

{ TWeekView }

constructor TWeekView.Create(AOwner: TComponent);
var i: integer;
begin
  Inherited Create(AOwner);
  FSelectDateTime:= Now();
  FBeginWeekDate:= StartOfTheWeek(SelectDate);
  SelectDay:= DayOfTheWeek(SelectDate);
  Color:= clWhite;
  isSelected:= false;
  DoubleBuffered:= true;
  for i:=1 to 7 do
    EventsPeerDay[i]:= TListEvent.Create();
end;

destructor TWeekView.Destroy;
var i: integer;
begin
  for i:=1 to 7 do EventsPeerDay[i].Free;
  inherited Destroy;
end;

procedure TWeekView.CalculateWeek;
begin
  LeftSpan  := 30;
  TopSpan   := 20;
  HalfHight := 0;
  DayWidth  := (Width-LeftSpan) div 7;
  ColSpan   := 7-(Width-LeftSpan-(DayWidth*7));

  HeightHour:= (Height-TopSpan) div 16;
  if HeightHour>= 30 then HalfHight:= HeightHour div 2;

  RowSpan   := 16-(Height-TopSpan-(HeightHour*16));
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

  procedure DrawDayPanel;
  var DayName: string;
      d: integer;
  begin
    for d:=0 to 6 do // dni tygodnia
    begin
      ColumnPoz(d, cLeft, cWidth);
      rec:= Rect(cLeft, 0, cLeft+cWidth, Height);

      //if DM.CzySwieto(BeginWeekDate+d-1) then    // święta
      //   Canvas.Brush.Color:= $FFCEE7
      //else
      if (d >= 5) then   // sobota, niedziela     // weekend innym kolorem tła
        Canvas.Brush.Color:= $E8E8E8
      else
        Canvas.Brush.Color:= clWhite;

      Canvas.FillRect(rec);

      CurDate:= IncDay(BeginWeekDate, d);
      DayName:= FormatDateTime('DDD, DD mmm', CurDate);
      if CurDate = Date then Canvas.Font.Bold:= true
                        else Canvas.Font.Bold:= false;
      DrawText(Canvas.Handle, PChar( DayName), -1, rec, DT_TOP OR DT_CENTER OR DT_SINGLELINE);

      // Linie pionowe
      rec.Top:= 0; //TopSpan;
      rec.Right:= rec.Left;
      Canvas.Pen.Color:= $00C8C8C8;
      Canvas.Line(rec);
    end;
  end;

  procedure DrawLeftPanel;
  var h: integer;
      HourName: string;
  begin
    Canvas.Brush.Style:= bsClear;
    for h:=0 to 15 do  // godziny od 5 do 20
    begin
      RowPoz(h, cTop, cHeight);
      rec:= Rect(0, cTop, LeftSpan-2, cTop + cHeight);

      HourName:= Format('%d:00',[(h+Godz_Od)]);
      DrawText(Canvas.Handle, PChar( HourName), -1, rec, DT_TOP OR DT_RIGHT OR DT_SINGLELINE);

      rec.Right := Width;
      rec.Bottom:= rec.Top;
      Canvas.Pen.Color:= $00C8C8C8;
      Canvas.Line(rec);
      if HalfHight>0 then
      begin
        rec.Top   := rec.Top+ HalfHight;
        rec.Bottom:= rec.Top;
        rec.Left  := LeftSpan -5;
        Canvas.Pen.Color:= $00DFDFDF;
        Canvas.Line(rec);
      end;
    end;
  end;

  procedure DrawSelected;
  begin
    ColumnPoz(SelectDay-1, cLeft, cWidth);
    RowPoz(SelectHour-1, cTop, cHeight);
    rec:= Rect(cLeft, cTop, cLeft+ cWidth, cTop+ cHeight);

    Canvas.Brush.Color:= $E8944F;
    Canvas.FillRect(rec);
  end;

  procedure DrawCurrentTimeLine;
  var tl: integer;
  begin
    RowPoz(HourOfTheDay(Time)-Godz_Od , cTop, cHeight);
    tl:= MinuteOfTheHour(Time);
    tl:= Round((cHeight / 60) * tl);
    rec:= Rect(LeftSpan - 3, cTop + tl, Width, 0);
    rec.Bottom:= rec.Top;
    Canvas.Pen.Color:= clRed;
    Canvas.Line(rec);
    Canvas.Brush.Color:= clRed;
    Canvas.EllipseC(LeftSpan-7, cTop + tl, 5,5);
  end;

begin
  CalculateWeek;
  DrawDayPanel;
  DrawLeftPanel;
  DrawCurrentTimeLine;
  if isSelected then DrawSelected;
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
      Events[e].MaxCol:= maxPoz+1;
  end;

  procedure CreateEventMatrix(Events: TListEvent);  // Rozkład Events jest równomierny dla danego dnia,
  var g, p, e: integer;
      matrix: TMatrix;
      CzyWolnaPozycja: Boolean;
      maxPoz: integer;
  begin
    if Events.Count<=1 then exit;
    // Create Matrix
    matrix:= [];
    SetLength(matrix, MaxMatrix+1);
    for g:= 0 to MaxMatrix do
      SetLength(matrix[g], Events.Count);

    for g:= 0 to MaxMatrix do
      for p:= 0 to Events.Count-1 do
      begin
        matrix[g,p].ev := -1;
        matrix[g,p].poz:= -1;
      end;
    //----------------------

    //Dodajemy Eventy do Matrixa
    for e:=0 to Events.Count-1 do // dla każdego Eventu
      for p:=0 to e+1 do         // sprawdź czy jest wolna pozycja i tam dopisz
      begin
        CzyWolnaPozycja:= true;
        for g:= TimeToMatrix(Events[e].fStartDate) to TimeToMatrix(Events[e].fEndDate)-1 do // jeśli pozycja jest zajęta to wyjdź i sprawdz kolejną kolumnę
          if matrix[g,p].ev>=0 then
          begin
            CzyWolnaPozycja:= false;
            Break;
          end;

        if CzyWolnaPozycja then
        begin
          // dopisujemy Event
          for g:= TimeToMatrix(Events[e].fStartDate) to TimeToMatrix(Events[e].fEndDate)-1 do
          begin
            matrix[g,p].ev   := e;  // numer Eventu
            matrix[g,p].poz  := p;  // pozycja w pionie
            Events[e].OLLevel:= p;  // <--------------- Ustalamy w której kolumnie zmieścimy Event
          end;
          Break; // kończymy poszukiwania
        end;
      end;
    // --------------------------------------

    // Normalizujemy w poziomie
    for g:=0 to MaxMatrix do
    begin
      maxPoz:= -1;
      for p:= Events.Count-1 downto 0 do
        if matrix[g,p].poz > maxPoz then
          maxPoz:= matrix[g,p].poz;

      if maxPoz>0 then
        for p:= maxPoz downto 0 do
          if matrix[g,p].ev>=0 then
          begin
            matrix[g,p].poz:= maxPoz;
            if Events[matrix[g,p].ev].MaxCol< (maxPoz+1) then
            begin
              Events[matrix[g,p].ev].MaxCol:= maxPoz+1;  // <---- Ustalamy mksymalną liczbę kolumn dla Eventa, +1 bo poz są od 0
              for e:=g{Events[matrix[g,p].ev].StartHour} to TimeToMatrix(Events[matrix[g,p].ev].fEndDate)-1 do // rzutujemy na Event w pionie
                if matrix[e,p].poz<maxPoz then matrix[e,p].poz:= maxPoz;
            end;
          end;
    end;
    //------------------------------

    // Normalizujemy w pionie, każdy Event ma mieć ustawioną najwięszą pozycję
    //for e:= 0 to Events.Count-1 do
    //begin
    //  maxPoz:= -1;
    //  for g:=Events[e].StartHour to Events[e].EndHour-1 do
    //    if matrix[g,Events[e].OLLevel].poz > maxPoz then
    //    begin
    //      maxPoz:= matrix[g,Events[e].OLLevel].poz;
    //    end;
    //
    //  if maxPoz>=0 then
    //    Events[e].MaxCol:= maxPoz+1;  // <--------------- Ustalamy mksymalną liczbę kolumn dla Eventa
    //end;
    //---------------------------------------------------------------------------

    for g:= 0 to MaxMatrix do
      SetLength(matrix[g], 0);
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
      if EventsPeerDay[d].Items[e].ID = EventID then
         EventsPeerDay[d].Items[e].isSelected:= true
      else
         EventsPeerDay[d].Items[e].isSelected:= false;

end;

procedure TWeekView.ColumnPoz(d: integer; var cLeft, cWidth: integer);
var span: integer;
begin
  span:= d-ColSpan;
  if span<0 then span:= 0;
  cLeft:= LeftSpan + (DayWidth * d) + span;

  if span>=0 then span:= 1 else span:= 0;
  cWidth:= DayWidth + span;
end;

procedure TWeekView.RowPoz(h: integer; var cTop, cHeight: integer);
var span: integer;
begin
  span:= h-RowSpan;
  if span<0 then span:= 0;
  cTop:= TopSpan + (HeightHour * h) + span;

  if span>=0 then span:= 1 else span:= 0;
  cHeight:= HeightHour + span;
end;

end.

