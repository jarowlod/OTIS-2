unit UWeekView;

{$mode objfpc}{$H+}

interface

uses
  Windows, Classes, SysUtils, ExtCtrls, Graphics, Controls, DateUtils, LCLIntf, LazUTF8, fgl, FPImage,
  StdCtrls
  ;

type

  { TEventWeek }

  TEventWeek = class(TCustomControl)
  private
    fID: integer;
    fStartDate: TDateTime;
    fEndDate: TDateTime;
    fBgColor: TColor;
    fTitle: String;
    fisMouseEnter: boolean;
    procedure Calculate;
    procedure WMEraseBkgnd(var Message: TWMEraseBkgnd); message wm_EraseBkgnd;
    procedure MouseEnter(Sender: TObject);  overload;
    procedure MouseLeave(Sender: TObject);  overload;
  protected
    procedure Paint; override;
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
  TMatrix = array[6..22] of array of record
                                       ev: integer;  // nr Eventu
                                       poz: integer; // pozycja w pionie
                                     end;
  { TWeekView }

  TWeekView = class(TCustomControl)
  private
    FBeginWeekDate: TDate;
    fOnSelectionEnd: TNotifyEvent;
    fOnSelectionEvent: TNotifyEvent;
    fOnWeekDblClick: TWeekEventClick;
    fOnWeekChanged: TNotifyEvent;
    FSelectDateTime: TDateTime;
    LeftSpan: integer;
    TopSpan: integer;
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

    procedure AddEvent(ID: integer; StartDate, EndDate: TDateTime; Title: String; BgColor: TColor);
    procedure ClearEvent;
    procedure CalcColumEvent;
    function GetDateCaption: string;
  published
    property BeginWeekDate: TDate read FBeginWeekDate write SetBeginWeekDate;
    property SelectDate: TDate read GetSelectDate write SetSelectDate;
    property SelectDateTime: TDateTime read FSelectDateTime write SetSelectDateTime;
    property OnDblClick: TWeekEventClick read fOnWeekDblClick write fOnWeekDblClick;
    property OnSelectionEnd: TNotifyEvent read fOnSelectionEnd write fOnSelectionEnd;
    property OnSelectionEvent: TNotifyEvent read fOnSelectionEvent write fOnSelectionEvent;
    property OnWeekChanged: TNotifyEvent read fOnWeekChanged write fOnWeekChanged;
  end;

implementation

{ TEventWeek }

procedure TEventWeek.Calculate;
var pomH, pomW: integer;
begin
  pomW:= (TWeekView(Parent).DayWidth-1) div MaxCol;
  if pomW-5<0 then Width:= pomW
              else Width:= pomW - 5;
  Left:= (TWeekView(Parent).LeftSpan+ (DayOfWeek-1)*TWeekView(Parent).DayWidth) + pomW * OLLevel +1;
  Top:= TWeekView(Parent).TopSpan + (StartHour-6)*TWeekView(Parent).HeightHour + 1;
  pomH:= (EndHour-StartHour);
  if pomH<=0 then pomH:= 1;
  Height:= pomH*TWeekView(Parent).HeightHour -1;
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
    fTime: string;
begin
  SetBkMode(Canvas.Handle, TRANSPARENT);

  Calculate;
  rec:= Rect(0, 0, Width, Height);

  Canvas.Brush.Color:= fBgColor;
  if fisMouseEnter then Canvas.GradientFill(rec, fBgColor, clWhite, gdVertical)
                   else Canvas.FillRect(rec);

  Canvas.Brush.Style:=bsClear;
  rec.left:= 5;

  // draw godziny
  fTime:= FormatDateTime('HH:MM', fStartDate) + ' - ' + FormatDateTime('HH:MM', fEndDate);
  Canvas.Font.Size:= 7;
  Canvas.Font.Color:= $808080;
  DrawText(Canvas.Handle, PChar( fTime), -1, rec, DT_TOP OR DT_LEFT OR DT_END_ELLIPSIS);

  // draw Title
  Canvas.Font.Size:= 8;
  Canvas.Font.Color:= clBlack;
  rec.Top:= rec.Top + Canvas.TextHeight('Ą');
  DrawText(Canvas.Handle, PChar( fTitle), -1, rec, DT_TOP OR DT_CENTER OR DT_END_ELLIPSIS);

  // left bawel
  lr:= Rect(0,0,4,Height);
  Canvas.Brush.Color:= $B01C06;
  Canvas.FillRect(lr);
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

  fID:= ID;
  fTitle:= Title;
  fBgColor:= BgColor;

  DayOfWeek:= DayOfTheWeek(fStartDate);

  StartHour:= HourOf(fStartDate);  // 6 do 21
  EndHour  := HourOf(fEndDate);
  if StartHour<6 then StartHour:= 6;
  if StartHour>21 then StartHour:= 21;
  if EndHour<7 then EndHour:= 7;
  if EndHour>22 then EndHour:= 22;

  if StartHour=EndHour then EndHour:= StartHour+1;

  OLLevel:= 0;
  MaxCol:= 1;

  OnMouseEnter:= @MouseEnter;
  OnMouseLeave:= @MouseLeave;
end;

//===============================================================================================================================

{ TWeekView }

constructor TWeekView.Create(AOwner: TComponent);
var i: integer;
begin
  Inherited Create(AOwner);
  FSelectDateTime:= Now();
  FBeginWeekDate:= StartOfTheWeek(SelectDate);
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

procedure TWeekView.CalculateWeek;
begin
  LeftSpan  := 30;
  TopSpan   := 20;
  HeightHour:= 20;
  HalfHight := 0;
  DayWidth  := (Width-LeftSpan) div 7;
  //LeftSpan:= Width - (7*DayWidth); // wyrównanie szerokości paneli dni, różnica dodana do LeftSpan

  HeightHour:= (Height-TopSpan) div 16;
  if HeightHour>= 30 then HalfHight:= HeightHour div 2;
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
  SelectDateTime:= RecodeHour(AValue, SelectHour+5); // pierwszy element to godz 6.00
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
var i,d: integer;
    CurDate: TDate;
    Ev: TEventWeek;

  procedure DrawDayPanel(d: integer);
  var rect: TRect;
      DayName: string;
  begin
    rect:= TRect.Create(LeftSpan, 0, LeftSpan, Height);
    rect.Left:= (DayWidth*d)+LeftSpan;
    if d<6 then
      rect.Right:= rect.Left+ DayWidth
    else
      rect.Right:= Width;

    if (d >= 5) then   // sobota, niedziela     // weekend innym kolorem tła
      Canvas.Brush.Color:= $00DFDFDF
    else
      Canvas.Brush.Color:= clWhite;

    Canvas.FillRect(rect);

    CurDate:= IncDay(BeginWeekDate, d);
    DayName:= FormatDateTime('DDD, DD mmm',CurDate);
    if CurDate = Date then Canvas.Font.Bold:= true
                      else Canvas.Font.Bold:= false;
    DrawText(Canvas.Handle, PChar( DayName), -1, rect, DT_TOP OR DT_CENTER OR DT_SINGLELINE);

    // Linie pionowe
    rect.Top:= 0; //TopSpan;
    rect.Right:= rect.Left;
    Canvas.Pen.Color:= $00C8C8C8;
    Canvas.Line(rect);
  end;

  procedure DrawLeftPanel;
  var h: integer;
      rec: TRect;
      HourName: string;
  begin
    //Canvas.Brush.Color:= clBtnFace;
    Canvas.Brush.Style:= bsClear;
    for h:=0 to 15 do  // godziny od 6 do 21
    begin
      rec.Left:= 0;
      rec.Top:= TopSpan+(h*HeightHour);
      rec.Right:= LeftSpan-2;
      rec.Bottom:= rec.Top + HeightHour;
      HourName:= Format('%d:00',[(h+6)]);
      DrawText(Canvas.Handle, PChar( HourName), -1, rec, DT_TOP OR DT_RIGHT OR DT_SINGLELINE);

      rec.Right:= Width;
      rec.Bottom:= rec.Top;
      Canvas.Pen.Color:= $00C8C8C8;
      Canvas.Line(rec);
      if HalfHight>0 then
      begin
        rec.Top:= rec.Top+ HalfHight;
        rec.Bottom:= rec.Top;
        rec.Left:= LeftSpan -5;
        Canvas.Pen.Color:= $E8E8E8;
        Canvas.Line(rec);
      end;
    end;
    // domykamy ostatnią linię
    rec:= Rect(0,TopSpan+(16*HeightHour), Width, 0);
    rec.Bottom:= rec.Top;
    Canvas.Pen.Color:= $00C8C8C8;
    Canvas.Line(rec);
  end;

  procedure DrawSelected;
  var rec: TRect;
  begin
    rec.Left  := (LeftSpan+ (SelectDay-1)*DayWidth);
    rec.Top   := TopSpan + (SelectHour-1)*HeightHour;
    rec.Width := DayWidth;
    rec.Height:= HeightHour;

    Canvas.Brush.Color:= $E8944F;
    Canvas.FillRect(rec);
  end;

  procedure DrawCurrentTimeLine;
  var rec: TRect;
      tl: integer;
  begin
    tl:= MinuteOfTheDay(Time) - 6*60; // która minute po godzinie 6
    tl:= Round((HeightHour / 60) * tl);
    rec:= Rect(0,TopSpan + tl, Width, 0);
    rec.Bottom:= rec.Top;
    Canvas.Pen.Color:= clRed;
    Canvas.Line(rec);
  end;

begin
  // Nagłówek
  CalculateWeek;
  for d:=0 to 6 do // dni tygodnia
  begin
    DrawDayPanel(d);
  end;
  DrawLeftPanel;
  DrawCurrentTimeLine;
  if isSelected then DrawSelected;
  for i:=1 to 7 do
    for Ev in EventsPeerDay[i] do Ev.Invalidate;
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
begin
  { Work out the column }
  if X < LeftSpan then CellX := 0 else
  begin
    CellX := ((X - LeftSpan) div DayWidth) + 1;
    if CellX > 7 then CellX := 0;
  end;
  { Work out the row }
  if Y < TopSpan then CellY := 0 else
  begin
    CellY := ((Y - TopSpan) div HeightHour) + 1;
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
  Invalidate;
end;

procedure TWeekView.ClearEvent;
var i: integer;
begin
  for i:=1 to 7 do EventsPeerDay[i].Clear;
  Invalidate;
end;

procedure TWeekView.CalcColumEvent;
var i: integer;

  procedure CreateEventMatrix(Events: TListEvent);
  var g, p, e: integer;
      matrix: TMatrix;
      CzyWolnaPozycja: Boolean;
      maxPoz: integer;
  begin
    // Create Matrix
    for g:= 6 to 22 do
      SetLength(matrix[g], Events.Count);
    for g:= 6 to 22 do
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
        for g:=Events[e].StartHour to Events[e].EndHour-1 do // jeśli pozycja jest zajęta to wyjdź i sprawdz kolejną kolumnę
          if matrix[g,p].ev>=0 then
          begin
            CzyWolnaPozycja:= false;
            Break;
          end;

        if CzyWolnaPozycja then
        begin
          // dopisujemy Event
          for g:=Events[e].StartHour to Events[e].EndHour-1 do
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
    for g:=6 to 22 do
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
            for e:=g{Events[matrix[g,p].ev].StartHour} to Events[matrix[g,p].ev].EndHour-1 do // rzutujemy na Event w pionie
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

    for g:= 6 to 22 do
      SetLength(matrix[g], 0);
  end;

begin
  for i:=1 to 7 do
  begin
    CreateEventMatrix(EventsPeerDay[i]);
  end;
end;

function TWeekView.GetDateCaption: string;
begin
  Result:= DateToStr( BeginWeekDate)+ ' - ' + DateToStr( EndOfTheWeek(BeginWeekDate));
end;

end.

