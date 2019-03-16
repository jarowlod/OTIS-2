unit UWeekView;

{$mode objfpc}{$H+}

interface

uses
  Windows, Classes, SysUtils, ExtCtrls, Graphics, Controls, DateUtils, LCLIntf, LazUTF8, fgl, FPImage,
  Forms;

type

  { TEventWeek }

  TEventWeek = class(TCustomControl) //TJvMovableBevel) //TCustomControl)
  private
    fID: integer;
    fStartDate: TDateTime;
    fEndDate: TDateTime;
    fBgColor: TColor;
    fTitle: String;
    fisMouseEnter: boolean;
    procedure Calculate;
    procedure WMEraseBkgnd(var Message: TWMEraseBkgnd); message wm_EraseBkgnd;
    procedure MouseEnter(Sender: TObject); overload;
    procedure MouseLeave(Sender: TObject); overload;
  protected
    procedure Paint; override;
    procedure MouseMove(Shift: TShiftState; X, Y: Integer); override;
  public
    Level: integer;
    OLLevel: integer;
    MaxCol: integer;
    DayOfWeek: integer;
    StartHour: Word;
    EndHour  : Word;
    constructor Create(AOwner: TComponent; ID: integer; StartDate, EndDate: TDateTime; Title: String; BgColor: TColor); overload;
  published
    property ID: integer read fID write fID;
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
    fOnSelectionEnd: TNotifyEvent;
    fOnSelectionEvent: TNotifyEvent;
    fOnWeekDblClick: TWeekEventClick;
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
    procedure WMEraseBkgnd(var Message: TWMEraseBkgnd); message wm_EraseBkgnd;
    procedure WMLButtonDblClk(var Message: TWMLButtonDblClk); message wm_LButtonDblClk;
    procedure WMLButtonDown(var Message: TWMLButtonDown); message wm_LButtonDown;
    procedure WMLButtonUp(var Message: TWMLButtonUp); message wm_LButtonUp;
    //procedure WMRButtonDown(var Message: TWMRButtonDown); message wm_RButtonDown;
    //procedure WMMouseMove(var Message: TWMMouseMove); message wm_MouseMove;
    procedure WMSize(var Message:TWMSize); message wm_Size;
  protected
    procedure Paint; override;
  public
    SelectDate: TDate;
    SelectDateTime: TDateTime;
    BeginWeekDate: TDate;
    EventsPeerDay: array[1..7] of TListEvent;  // tablica dni tygodnia dla eventów na każdy z nich

    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure NextWeek;
    procedure PrevWeek;
    procedure XYToCell(X,Y: Integer;var CellX,CellY: Integer);

    procedure AddEvent(ID: integer; StartDate, EndDate: TDateTime; Title: String; BgColor: TColor);
    procedure ClearEvent;
    procedure CalcColumEvent;
    procedure ColumnPoz(d: integer; var cLeft, cWidth: integer); // d {0..6}
    procedure RowPoz(h: integer; var cTop, cHeight: integer);    // h {0..15}
  published
    property OnDblClick: TWeekEventClick read fOnWeekDblClick write fOnWeekDblClick;
    property OnSelectionEnd: TNotifyEvent read fOnSelectionEnd write fOnSelectionEnd;
    property OnSelectionEvent: TNotifyEvent read fOnSelectionEvent write fOnSelectionEvent;
  end;

  function TimeToMatrix(VTime: TTime): integer;

const
  MaxMatrix = 64; // godz 22

implementation

function TimeToMatrix(VTime: TTime): integer;
begin
  Result:= (HourOf(VTime)-6)*4 + (MinuteOfTheHour(VTime) div 15);
  if Result<0 then Result:=0;
  if Result>MaxMatrix then Result:= MaxMatrix;
end;

{ TEventWeek }

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
  Top:= cTop + pom;

  hDiv4:= EndHour div 4;
  TWeekView(Parent).RowPoz(hDiv4, cTop, cHeight);
  pom:= (EndHour - hDiv4 * 4)* (cHeight div 4);
  Height:= (cTop+ pom) - top;
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

procedure TEventWeek.MouseMove(Shift: TShiftState; X, Y: Integer);
begin
  inherited MouseMove(Shift, X, Y);
end;

procedure TEventWeek.Paint;
var rec: TRect;
    lr: TRect;
begin
  SetBkMode(Canvas.Handle, TRANSPARENT);

  Calculate;
  rec:= Rect(0, 0, Width, Height);

  Canvas.Brush.Color:= fBgColor;
  Canvas.FillRect(rec);
  if fisMouseEnter then begin
    Canvas.GradientFill(rec, fBgColor, clWhite, gdVertical);
  end;

  Canvas.Brush.Style:=bsClear;
  rec.left:= 4;
  DrawText(Canvas.Handle, PChar( fTitle), -1, rec, DT_TOP OR DT_CENTER OR DT_END_ELLIPSIS);
  rec.Top:= rec.Top+14;
  DrawText(Canvas.Handle, PChar( OLLevel.ToString+'/'+MaxCol.ToString), -1, rec, DT_TOP OR DT_CENTER OR DT_END_ELLIPSIS);

  lr:= Rect(0,0,4,Height);
  Canvas.Brush.Color:= $B01C06;
  Canvas.FillRect(lr);
  if fisMouseEnter then begin
    rec:= Rect(0,0,Width, Height);
    Canvas.Brush.Style:= bsClear;
    Canvas.Pen.Color:= clRed;
    Canvas.Pen.Width:= 1;
    Canvas.Rectangle(rec);
  end;
end;

constructor TEventWeek.Create(AOwner: TComponent; ID: integer; StartDate, EndDate: TDateTime; Title: String; BgColor: TColor);
begin
  Inherited Create(AOwner);
  if StartDate>EndDate then
  begin
    fStartDate:= EndDate;
    fEndDate:= StartDate;
  end else
  begin
    fStartDate:= StartDate;
    fEndDate:= EndDate;
  end;
  if DateOf(fStartDate)<>DateOf(fEndDate) then fEndDate:= RecodeHour(fStartDate, 23);

  fID:= ID;
  fTitle:= Title;
  fBgColor:= BgColor;

  DayOfWeek:= DayOfTheWeek(fStartDate);

  StartHour:= TimeToMatrix(fStartDate);
  EndHour:= TimeToMatrix(fEndDate);

  if StartHour=EndHour then EndHour:= StartHour+1;

  OLLevel:= 0;
  MaxCol:= 1;

  OnMouseEnter:= @MouseEnter;
  OnMouseLeave:= @MouseLeave;

  Hint := fTitle+ LineEnding + 'godzina S: '+TimeToStr(StartDate) + LineEnding + 'godzina E: '+TimeToStr(fEndDate);
  ShowHint:= true;
end;

//===============================================================================================================================

{ TWeekView }

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
  XYToCell(Message.XPos,Message.YPos,SelectDay,SelectHour);
  if ((SelectDay = 0) or (SelectHour = 0)) then
  begin
    isSelected:= false;
    Invalidate;
    Exit;
  end;
  isSelected:= true;
  SelectDateTime:= IncDay(BeginWeekDate, SelectDay-1);
  SelectDateTime:= RecodeHour(SelectDateTime, SelectHour+5); // pierwszy element to godz 6.00
end;

procedure TWeekView.WMLButtonUp(var Message: TWMLButtonUp);
begin
  XYToCell(Message.XPos,Message.YPos,SelectDay,SelectHour);
  if ((SelectDay = 0) or (SelectHour = 0)) then
  begin
    isSelected:= false;
    Invalidate;
    Exit;
  end;
  isSelected:= true;
  SelectDateTime:= IncDay(BeginWeekDate, SelectDay-1);
  SelectDateTime:= RecodeHour(SelectDateTime, SelectHour+5); // pierwszy element to godz 6.00

  if Assigned(fOnSelectionEnd) then fOnSelectionEnd(Self);
  invalidate;
  Inherited;
end;

procedure TWeekView.WMSize(var Message: TWMSize);
begin
  //CalculateWeek;
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

      if (d >= 5) then   // sobota, niedziela     // weekend innym kolorem tła
        Canvas.Brush.Color:= $8C8CFF
      else
        Canvas.Brush.Color:= $DFFFFF;

      Canvas.FillRect(rec);

      CurDate:= IncDay(BeginWeekDate, d);
      DayName:= FormatDateTime('DDD, DD mmm',CurDate);
      DrawText(Canvas.Handle, PChar( DayName), -1, rec, DT_TOP OR DT_CENTER OR DT_SINGLELINE);

      // Linie pionowe
      rec.Top:= TopSpan;
      rec.Right:= rec.Left;
      Canvas.Pen.Color:= clGray;
      Canvas.Line(rec);
    end;
  end;

  procedure DrawLeftPanel;
  var h: integer;
      HourName: string;
  begin
    Canvas.Brush.Style:= bsClear;
    for h:=0 to 15 do  // godziny od 6 do 21
    begin
      RowPoz(h, cTop, cHeight);
      rec:= Rect(0, cTop, LeftSpan-2, cTop + cHeight);

      HourName:= Format('%d:00',[(h+6)]);
      DrawText(Canvas.Handle, PChar( HourName), -1, rec, DT_TOP OR DT_RIGHT OR DT_SINGLELINE);

      rec.Right := Width;
      rec.Bottom:= rec.Top;
      Canvas.Pen.Color:= clGray;
      Canvas.Line(rec);
      if HalfHight>0 then
      begin
        rec.Top   := rec.Top+ HalfHight;
        rec.Bottom:= rec.Top;
        rec.Left  := LeftSpan -5;
        Canvas.Pen.Color:= $999999;
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

begin
  CalculateWeek;
  DrawDayPanel;
  DrawLeftPanel;
  if isSelected then DrawSelected;
  for i:=1 to 7 do for Ev in EventsPeerDay[i] do Ev.Paint; // Invalidate;
end;

constructor TWeekView.Create(AOwner: TComponent);
var i: integer;
begin
  Inherited Create(AOwner);
  SelectDate:= Date();
  BeginWeekDate:= StartOfTheWeek(SelectDate);
  Color:= clWhite;
  isSelected:= false;
  for i:=1 to 7 do
    EventsPeerDay[i]:= TListEvent.Create();
end;

destructor TWeekView.Destroy;
var i: integer;
begin
  for i:=1 to 7 do EventsPeerDay[i].Free;
  inherited Destroy;
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

procedure TWeekView.AddEvent(ID: integer; StartDate, EndDate: TDateTime; Title: String; BgColor: TColor);
var ItemEvent: TEventWeek;
begin
  if not DateInRange(StartDate, BeginWeekDate, IncDay(BeginWeekDate, 6)) then exit;
  ItemEvent:= TEventWeek.Create(Self, ID, StartDate, EndDate, Title, BgColor);
  ItemEvent.Parent:= Self;
  ItemEvent.Top   := TopSpan;
  ItemEvent.Height:= Height - TopSpan;
  ItemEvent.Left  := LeftSpan;
  ItemEvent.Width := Width - LeftSpan;
  ItemEvent.OnDblClick:= OnSelectionEvent;
  EventsPeerDay[ItemEvent.DayOfWeek].Add(ItemEvent);
  CalcColumEvent;
end;

procedure TWeekView.ClearEvent;
var i: integer;
begin
  for i:=1 to 7 do EventsPeerDay[i].Clear;
end;

procedure TWeekView.CalcColumEvent;
var i: integer;

  procedure CreateEventMatrix(Events: TListEvent);
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
            if Events[matrix[g,p].ev].MaxCol< (maxPoz+1) then Events[matrix[g,p].ev].MaxCol:= maxPoz+1;  // <---- Ustalamy mksymalną liczbę kolumn dla Eventa, +1 bo poz są od 0
            for e:=g{Events[matrix[g,p].ev].StartHour} to TimeToMatrix(Events[matrix[g,p].ev].fEndDate)-1 do // rzutujemy na Event w pionie
              if matrix[e,p].poz<maxPoz then matrix[e,p].poz:= maxPoz;
          end;
          //else Dec(maxPoz);
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
    CreateEventMatrix(EventsPeerDay[i]);
  end;
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

