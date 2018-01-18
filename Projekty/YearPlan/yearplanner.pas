unit YearPlanner;
{$mode objfpc}{$H+}

{  Year Planner component written by Jonathan Hosking, May 2002.
   Zmodyfikowany do Lazarusa przez Wlodarczyk Jaroslaw luty 2017
}

interface

uses
  LazUTF8, Windows, Classes, SysUtils, LResources, Forms, Controls, Graphics, Dialogs, Printers, Messages, LCLIntf;

type
  { Header and footer class }
  TPrintTitle = class(TPersistent)
  private
    fAlignment: TAlignment;
    fCaption: string;
    fFont: TFont;
    fOnChange: TNotifyEvent;
    procedure SetAlignment(Val: TAlignment);
    procedure SetCaption(Val: String);
    procedure SetFont(Val: TFont);
  public
    constructor Create(UpdateEvent: TNotifyEvent);
    destructor Destroy; override;
    procedure UpdateControl;
  published
    property Alignment: TAlignment read fAlignment write SetAlignment default taLeftJustify;
    property Caption: string read fCaption write SetCaption;
    property Font: TFont read fFont write SetFont;
    property OnChange: TNotifyEvent read fOnChange write fOnChange;
  end;

  { Printer options class }
  TPrintOptions = class(TPersistent)
  private
    fPrinterOrientation: TPrinterOrientation;
    fPrintReductionSize: Integer;
    fPrinterLeftMargin, fPrinterRightMargin: Integer;
    fPrinterBottomMargin, fPrinterTopMargin: Integer;
    fPrintHeader: TPrintTitle;
    fPrintFooter: TPrintTitle;
    fPreserveAspect: Boolean;
  public
    constructor Create(UpdateEvent: TNotifyEvent);
    destructor Destroy; override;
  published
    property LeftMargin: Integer read fPrinterLeftMargin write fPrinterLeftMargin default 0;
    property TopMargin: Integer read fPrinterTopMargin write fPrinterTopMargin default 0;
    property RightMargin: Integer read fPrinterRightMargin write fPrinterRightMargin default 0;
    property BottomMargin: Integer read fPrinterBottomMargin write fPrinterBottomMargin default 0;
    property Orientation: TPrinterOrientation read fPrinterOrientation write fPrinterOrientation default poLandscape;
    property ReductionSize: integer read fPrintReductionSize write fPrintReductionSize default 100;
    property PrintHeader: TPrintTitle read fPrintHeader write fPrintHeader;
    property PrintFooter: TPrintTitle read fPrintFooter write fPrintFooter;
    property PreserveAspect: Boolean read fPreserveAspect write fPreserveAspect default True;
  end;

  { YearPlannner component class }
  TypDOW = (ypMonday,ypTuesday,ypWednesday,ypThursday,ypFriday,ypSaturday,ypSunday);
  TypSel = (ypNotSelecting,ypSelecting,ypSelected);
  TypSelSty = (ypNormal,ypRectangle);
  TYearEvent = procedure(StDays,EnDays,StMonth,EnMonth:integer; StartDate,EndDate: TDateTime) of object;
  { Compiling under Delphi 1 limits us to a 64KB data limit, so the record
    cannot be too long.  Under later versions there are bigger data limits }
  TCellData = record
    CellHint: String;
    CellColor: TColor;
    CellFont: TFont;
    CustomColor: Boolean;
    CustomFont: Boolean;
    CellDate: TDateTime;
    Selected: Boolean;
    CellImage: Integer;
    Tag: Longint;
  end;

  TCurrentDate = record
    Day,Month: Byte;
  end;

  TDrawCalendarCell = procedure(Sender: TCustomControl; TheCanvas: TCanvas; Rect: TRect; CellData: TCellData; CellText: String) of object; // by Jaro

  { TYearPlanner }

  TYearPlanner = class(TCustomControl)
  private
    { Private declarations }
    Cells: Array[0..37,0..12] of string[15];
    fTextAlignment: TAlignment;                // by Jaro
    fTextLayout: TTextLayout;                  // by Jaro
    fTodayFont: TFont;
    fWeekendFont: TFont;
    Heights: Array[0..12] of Integer;
    Widths: Array[0..37] of Integer;
    cX,cY,OldX,OldY: Integer;
    InDay,InMonth: Integer;
    FirstTickCount: Cardinal;
    hPrinting,hUpdating,hWaiting,hWaitingToDestroy: Boolean;
    hSelecting: TypSel;
    HintDate: TDateTime;
    HintWin: THintWindow;
    PrinterPageHeight, PrinterPageWidth: Integer;
    PrinterLeftMargin, PrinterTopMargin: Integer;
    PrinterRightMargin, PrinterBottomMargin: Integer;
    fStartDate: TDateTime;
    fEndDate: TDateTime;
    fAllowSelections: Boolean;
    fControl: TBitmap;
    fDayColor: TColor;
    fDayFont: TFont;
    fEndEllipsis: Boolean;
    fFlatCells: Boolean;
    fGridLines: Boolean;
    fGridPen: TPen;
    fHeadingColor: TColor;
    fHintColor: TColor;
    fHintFont: TFont;
    fHintDelay: Integer;
    fImages: TImageList;
    fLongHint: Boolean;
    fMonthButtons: Boolean;
    fMonthColor: TColor;
    fMonthFont: TFont;
    fNoDayColor: TColor;
    fNoDayPriority: Boolean;
    fOnSelectionEnd: TNotifyEvent;
    fOnYearChange: TNotifyEvent;
    fOnYearChanged: TNotifyEvent;
    fOnYearDblClick: TYearEvent;
    fOnYearRightClick: TYearEvent;
    FOnDrawCell: TDrawCalendarCell;      // by Jaro
    fPrintOptions: TPrintOptions;
    fSelectionColor: TColor;
    fSelectionFont: TFont;
    fSelectionStyle: TypSelSty;
    fSeperator: Boolean;
    fSoftBorder: Boolean;
    fShowDefaultHint: Boolean;
    fShowToday: Boolean;
    fStartDayOfWeek: TypDOW;
    fStretchImages: Boolean;
    fStringList: TStringList;
    fTodayCircleColour: TColor;
    fTodayCircleFilled: Boolean;
    fUseBitmap: Boolean;
    fUseFreeSpace: Boolean;
    fWeekendColor: TColor;
    fWeekendHeadingColor: TColor;
    fYear: Word;
    fYearColor: TColor;
    fYearFont: TFont;
    fYearNavigators: Boolean;
    fYearNavLeft: TRect;
    fYearNavRight: TRect;
    function FindFirstWeek(aYear: Word): TDateTime;
    function IsLeapYear(Year: Word): Boolean;
    procedure ProcessSelection;
    procedure CalculateCalendar;
    procedure CalculateData;
    procedure CalculateNavigators;
    procedure CalculateSizes;
    procedure CircleToday(CCanvas: TCanvas; CircleRect: TRect; const TodayText: String; InnerColor: TColor);
    procedure OnGridPenChange(Sender:TObject);
    procedure SetTextAlignment(AValue: TAlignment);
    procedure SetTextLayout(AValue: TTextLayout);
    procedure SetTodayFont(AValue: TFont);
    procedure SetupHeadings;
    procedure SetAllowSelections(Val: Boolean);
    procedure SetDayColor(Val: TColor);
    procedure SetDayFont(Val: TFont);
    procedure SetEndEllipsis(Val: Boolean);
    procedure SetFlatCells(Val: Boolean);
    procedure SetGridLines(Val: Boolean);
    procedure SetGridPen(Val: TPen);
    procedure SetHeadingColor(Val: TColor);
    procedure SetHintColor(Val: TColor);
    procedure SetHintFont(Val: TFont);
    procedure SetHintDelay(Val: Integer);
    procedure SetLongHint(Val: Boolean);
    procedure SetMonthButtons(Val: Boolean);
    procedure SetMonthColor(Val: TColor);
    procedure SetMonthFont(Val: TFont);
    procedure SetNoDayColor(Val: TColor);
    procedure SetNoDayPriority(Val: Boolean);
    procedure SetSelectionColor(Val: TColor);
    procedure SetSelectionFont(Val: TFont);
    procedure SetSelectionStyle(Val: TypSelSty);
    procedure SetSeperator(Val: Boolean);
    procedure SetSoftBorder(Val: Boolean);
    procedure SetShowDefaultHint(Val: Boolean);
    procedure SetShowToday(Val: Boolean);
    procedure SetStartDayOfWeek(Val: TypDOW);
    procedure SetStretchImages(Val: Boolean);
    procedure SetTodayCircleColour(Val: TColor);
    procedure SetTodayCircleFilled(Val: Boolean);
    procedure SetUseFreeSpace(Val: Boolean);
    procedure SetWeekendColor(Val: TColor);
    procedure SetWeekendFont(AValue: TFont);
    procedure SetWeekendHeadingColor(Val: TColor);
    procedure SetYear(Val: Word);
    procedure SetYearColor(Val: TColor);
    procedure SetYearFont(Val:TFont);
    procedure SetYearNavigators(Val: Boolean);
    procedure WMEraseBkgnd(var Message: TWMEraseBkgnd); message wm_EraseBkgnd;
    procedure WMLButtonDblClk(var Message: TWMLButtonDblClk); message wm_LButtonDblClk;
    procedure WMLButtonDown(var Message: TWMLButtonDown); message wm_LButtonDown;
    procedure WMLButtonUp(var Message: TWMLButtonUp); message wm_LButtonUp;
    procedure WMRButtonDown(var Message: TWMRButtonDown); message wm_RButtonDown;
    procedure WMMouseMove(var Message: TWMMouseMove); message wm_MouseMove;
    procedure WMSize(var Message:TWMSize); message wm_Size;
  protected
    { Protected declarations }
    procedure Paint; override;
  public
    { Public declarations }
    CellData: Array[1..12,1..31] of TCellData;
    CurrentDate: TCurrentDate;
    EnDay: Integer;
    EnMonth: Integer;
    StDay: Integer;
    StMonth: Integer;
    StartDate: TDateTime;
    EndDate: TDateTime;
    procedure XYToCell(X,Y: Integer;var CellX,CellY: Integer);
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure LoadFromFile(var fFile: File);
    procedure LoadFromStream(var fStream:TStream);
    procedure SaveToFile(var fFile: File);
    procedure SaveToStream(var fStream:TStream);
    procedure SetColorAtDate(dt: TDateTime; cellColor: TColor; UpdateControl: Boolean);
    procedure SetFontAtDate(dt: TDateTime; cellFont: TFont; UpdateControl: Boolean);
    procedure SetHintAtDate(dt: TDateTime; cellHint: String; UpdateControl: Boolean);
    procedure SetImageAtDate(dt: TDateTime; cellImage: Integer; UpdateControl: Boolean);
    function GetCellData(dt: TDateTime): TCellData;
    procedure Print;
    function GetStartDate: TDateTime;
    function GetEndDate: TDateTime;
    function IsSelected(date: TDateTime): Boolean;
    procedure ClearSelection;
    procedure SelectCells(sDate, eDate: TDateTime);
    procedure SelectWeek(aWeek: Integer);
    procedure ClearCells;
    function WeekNumber(aDate: TDateTime): Integer;
  published
    { Published declarations }
    property Align;
    property AllowSelections: Boolean read fAllowSelections write SetAllowSelections default True;
    property Color;
    property DayColor: TColor read fDayColor write SetDayColor default clWhite;
    property DayFont:TFont read fDayFont write SetDayFont;
    property DragCursor;
    property DragMode;
    property DrawOffScreen: Boolean read fUseBitmap write fUseBitmap default True;
    property Enabled;
    property EndEllipsis: Boolean read fEndEllipsis write SetEndEllipsis default False;
    property FlatCells: Boolean read fFlatCells write SetFlatCells default True;
    property Font;
    property GridLines: Boolean read fGridLines write SetGridLines default True;
    property GridPen:TPen read fGridPen write SetGridPen;
    property HeadingColor: TColor read fHeadingColor write SetHeadingColor default clGray;
    property HintColor: TColor read fHintColor write SetHintColor default clYellow;
    property HintFont: TFont read fHintFont write SetHintFont;
    property HintDelay: Integer read fHintDelay write SetHintDelay default 0;
    property Images: TImageList read fImages write fImages;
    property LongHint: Boolean read fLongHint write SetLongHint default True;
    property MonthButtons: Boolean read fMonthButtons write SetMonthButtons default false;
    property MonthColor: TColor read fMonthColor write SetMonthColor default clGray;
    property MonthFont:TFont read fMonthFont write SetMonthFont;
    property NoDayColor: TColor read fNoDayColor write SetNoDayColor default clSilver;
    property NoDayPriority: Boolean read fNoDayPriority write SetNoDayPriority default False;
    property ParentFont;
    property ParentShowHint;
    property PopupMenu;
    property PrintOptions : TPrintOptions read fPrintOptions write fPrintOptions;
    property SelectionColor: TColor read fSelectionColor write SetSelectionColor default clBlue;
    property SelectionFont: TFont read fSelectionFont write SetSelectionFont;
    property SelectionStyle: TypSelSty read fSelectionStyle write SetSelectionStyle default ypNormal;
    property Seperator: Boolean read fSeperator write SetSeperator default True;
    property SoftBorder: Boolean read fSoftBorder write SetSoftBorder default False;
    property ShowDefaultHint: Boolean read fShowDefaultHint write SetShowDefaultHint default True;
    property ShowHint;
    property ShowToday: Boolean read fShowToday write SetShowToday;
    property StartDayOfWeek: TypDOW read fStartDayOfWeek write SetStartDayOfWeek default ypMonday;
    property StretchImages: Boolean read fStretchImages write SetStretchImages default False;
    property TextLayout: TTextLayout read fTextLayout write SetTextLayout default tlCenter;               // by Jaro
    property TextAlignment: TAlignment read fTextAlignment write SetTextAlignment default taLeftJustify;  // by Jaro
    property TodayCircleColour: TColor read fTodayCircleColour write SetTodayCircleColour;
    property TodayCircleFilled: Boolean read fTodayCircleFilled write SetTodayCircleFilled default False;
    property TodayFont: TFont read fTodayFont write SetTodayFont;                                        // by Jaro
    property UseFreeSpace: Boolean read fUseFreeSpace write SetUseFreeSpace default True;
    property Visible;
    property WeekendColor: TColor read fWeekendColor write SetWeekendColor default clGray;
    property WeekendHeadingColor: TColor read fWeekendHeadingColor write SetWeekendHeadingColor default clSilver;
    property WeekendFont: TFont read fWeekendFont write SetWeekendFont;                                  // by Jaro
    property Year: Word read fYear write SetYear;
    property YearColor: TColor read fYearColor write SetYearColor default clGray;
    property YearFont:TFont read fYearFont write SetYearFont;
    property YearNavigators: Boolean read fYearNavigators write SetYearNavigators default True;
    property OnClick;
    property OnDblClick: TYearEvent read fOnYearDblClick write fOnYearDblClick;
    property OnDrawCell: TDrawCalendarCell read FOnDrawCell write FOnDrawCell;    // by Jaro
    property OnDragDrop;
    property OnDragOver;
    property OnEndDrag;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
    property OnMouseRightClick: TYearEvent read fOnYearRightClick write fOnYearRightClick;
    property OnSelectionEnd: TNotifyEvent read fOnSelectionEnd write fOnSelectionEnd;
    property OnYearChange: TNotifyEvent read fOnYearChange write fOnYearChange;
    property OnYearChanged: TNotifyEvent read fOnYearChanged write fOnYearChanged;
  end;

procedure Register;

implementation

{ TYearPlanner }

const
  MonthDays: array[1..12] of Integer = (31,28,31,30,31,30,31,31,30,31,30,31);

{ Thanks to Paul Bailey for this procedure }
constructor TPrintOptions.Create(UpdateEvent : TNotifyEvent);
begin
  inherited Create;
  fPreserveAspect:= True;
  fPrinterOrientation := poLandscape;
  fPrintReductionSize :=  100;
  fPrinterLeftMargin := 0;
  fPrinterTopMargin := 0;
  fPrinterRightMargin := 0;
  fPrinterBottomMargin := 0;
  fPrintHeader := TPrintTitle.Create(nil);
  fPrintFooter := TPrintTitle.Create(nil);
end;

{ Thanks to Paul Bailey for this procedure }
destructor TPrintOptions.Destroy;
begin
  fPrintFooter.Free;
  fPrintHeader.Free;
  inherited Destroy;
end;

{ Thanks to Paul Bailey for this procedure }
procedure TPrintTitle.SetAlignment(Val: TAlignment);
begin
  if fAlignment <> Val then
  begin
    fAlignment := Val;
    UpdateControl;
  end;
end;

{ Thanks to Paul Bailey for this procedure }
procedure TPrintTitle.SetCaption(Val: String);
begin
  if fCaption <> Val then
  begin
    fCaption := Val;
    UpdateControl;
  end;
end;

{ Thanks to Paul Bailey and Wolf Garber for this procedure }
procedure TPrintTitle.SetFont(Val: TFont);
begin
  if fFont <> Val then
  begin
    fFont.Assign(Val);
    UpdateControl;
  end;
end;

{ Thanks to Paul Bailey for this procedure }
constructor TPrintTitle.Create(UpdateEvent: TNotifyEvent);
begin
  inherited Create;
  fFont := TFont.Create;
  fCaption := '';
  fAlignment := taLeftJustify;
end;

{ Thanks to Paul Bailey for this procedure }
destructor TPrintTitle.Destroy;
begin
  fFont.Free;
  inherited Destroy;
end;

{ Thanks to Paul Bailey for this procedure }
procedure TPrintTitle.UpdateControl;
begin
  if Assigned(fOnChange) then fOnChange(Self);
end;

{ Gives you the date of the start of the first whole week in a specified
  year.  The start day is determined by the StartDayOfWeek value }
function TYearPlanner.FindFirstWeek(aYear: Word): TDateTime;
var
  sDay, tDay: Integer;
  sDate: TDateTime;
  dateOk: Boolean;
begin
  { We have to find the first whole week, but this depends on the day when
    a week starts }
  dateOk := False;
  sDay := 1;
  while not dateOk do
  begin
    { Find out what day of the week this date is }
    sDate := EncodeDate(aYear, 1, sDay);
    { Convert Delphi day of week to my day of week array }
    tDay := (DayOfWeek(sDate) + 5) mod 7;
    { Is this the start day ? }
    if tDay = ord(fStartDayOfWeek) then dateOk := True;
    { Try the next day }
    inc(sDay);
  end;
  Result := sDate;
end;

{ Procedure to test for a leap year - This is the routine used in Delphi 5,
  but I have used it here as Delphi 1 did not have such a procedure }
function TYearPlanner.IsLeapYear(Year: Word): Boolean;
begin
  Result := (Year mod 4 = 0) and ((Year mod 100 <> 0) or (Year mod 400 = 0));
end;

{ Converts mouse coordinates to cell coordinates }
procedure TYearPlanner.XYToCell(X,Y: Integer;var CellX,CellY: Integer);
begin
  { Work out the column }
  if X < Widths[0] then CellX := 0 else
  begin
    CellX := ((X - Widths[0]) div Widths[1]) + 1;
    if CellX > 37 then CellX := 37;
  end;
  { Work out the row }
  if Y < Heights[0] then CellY := 0 else
  begin
    CellY := ((Y - Heights[0]) div Heights[1]) + 1;
    if CellY > 12 then CellY := 12;
  end;
end;

{ Processes a selection area }
procedure TYearPlanner.ProcessSelection;
var
  sD, eD, sM, eM: Integer;
begin
  { Get the start date from the selected area }
  sD := StDay;
  sM := StMonth;
  eD := EnDay;
  eM := EnMonth;
  if StDay = 0 then Inc(sD);
  if StMonth = 0 then Inc(sM);
  if (StDay > 7) then
    while Cells[sD,sM] = '' do Dec(sD)
  else
    while Cells[sD,sM] = '' do Inc(sD);
  fStartDate := EncodeDate(fYear, sM, StrToInt(Cells[sD,sM]));
  { Get the end date from the selected area }
  if EnDay = 0 then Inc(eD);
  if EnMonth = 0 then Inc(eM);
  if (EnDay > 7) then
    while Cells[eD,eM] = '' do Dec(eD)
  else
    while Cells[eD,eM] = '' do Inc(eD);
  fEndDate := EncodeDate(fYear, eM, StrToInt(Cells[eD,eM]));
end;

{ Reads in the cell data from an open file - Thanks to Jeurgen Jakob and
  Roberto Chieregato for improving this procedure }
procedure TYearPlanner.LoadFromFile(var fFile: File);
var
  fLength, numRead, X, Y: Integer;
begin
  { Read the calender data }
  for X := 1 to 12 do
    for Y := 1 to 31 do
      with CellData[X, Y] do
      begin
        { Read in the cell data }
        BlockRead(fFile, fLength, SizeOf(fLength), numRead);
        if fLength > 0 then
        begin

          SetLength(CellHint, fLength);

          BlockRead(fFile, CellHint[1], fLength, numRead);
        end;
        BlockRead(fFile, CellColor, SizeOf(CellColor), numRead);
        BlockRead(fFile, CellFont, SizeOf(CellFont), numRead);
        BlockRead(fFile, CustomColor, SizeOf(CustomColor), numRead);
        BlockRead(fFile, CustomFont, SizeOf(CustomFont), numRead);
        BlockRead(fFile, CellDate, SizeOf(CellDate), numRead);
        BlockRead(fFile, Selected, SizeOf(Selected), numRead);

        BlockRead(fFile, CellImage, SizeOf(CellImage), numRead);

        BlockRead(fFile, Tag, SizeOf(Tag), numRead);
      end;
end;

{ Reads in the cell data from an open stream - Thanks to Roberto Chieregato for
  improving this procedure }
procedure TYearPlanner.LoadFromStream(var fStream:TStream);
var
  fLength, X, Y: Integer;
begin
  { Read the calender data }
  for X := 1 to 12 do
    for Y := 1 to 31 do
      with fStream, CellData[X, Y] do
      begin
        { Read in the cell data }
        ReadBuffer(fLength, SizeOf(fLength));
        if fLength > 0 then
        begin

          SetLength(CellHint, fLength);

          ReadBuffer(CellHint[1], fLength);
        end;
        ReadBuffer(CellColor, SizeOf(CellColor));
        ReadBuffer(CellFont, SizeOf(CellFont));
        ReadBuffer(CustomColor, SizeOf(CustomColor));
        ReadBuffer(CustomFont, SizeOf(CustomFont));
        ReadBuffer(CellDate, SizeOf(CellDate));
        ReadBuffer(Selected, SizeOf(Selected));

        ReadBuffer(CellImage, SizeOf(CellImage));

        ReadBuffer(Tag, SizeOf(Tag));
      end;
end;

{ Saves the cell data to an open file - Thanks to Jeurgen Jakob and Roberto
  Chieregato for improving this procedure }
procedure TYearPlanner.SaveToFile(var fFile: File);
var
  fLength, numWritten, X, Y: Integer;
begin
  { Save the calender data }
  for X := 1 to 12 do
    for Y := 1 to 31 do
      with CellData[X, Y] do
      begin
        { Save the cell data }
        fLength := Length(CellHint);
        BlockWrite(fFile, fLength, SizeOf(fLength), numWritten);
        if fLength > 0 then
          BlockWrite(fFile, CellHint[1], fLength, numWritten);
        BlockWrite(fFile, CellColor, SizeOf(CellColor), numWritten);
        BlockWrite(fFile, CellFont, SizeOf(CellFont), numWritten);
        BlockWrite(fFile, CustomColor, SizeOf(CustomColor), numWritten);
        BlockWrite(fFile, CustomFont, SizeOf(CustomFont), numWritten);
        BlockWrite(fFile, CellDate, SizeOf(CellDate), numWritten);
        BlockWrite(fFile, Selected, SizeOf(Selected), numWritten);

        BlockWrite(fFile, CellImage, SizeOf(CellImage));

        BlockWrite(fFile, Tag, SizeOf(Tag), numWritten);
      end;
end;

{ Saves the cell data to an open stream - Thanks to Roberto Chieregato for
  improving this procedure }
procedure TYearPlanner.SaveToStream(var fStream:TStream);
var
  fLength, X, Y: Integer;
begin
  { Save the calender data }
  for X := 1 to 12 do
    for Y := 1 to 31 do
      with fStream, CellData[X, Y] do
      begin
        { Save the cell data }
        fLength := Length(CellHint);
        WriteBuffer(fLength, SizeOf(fLength));
        if fLength > 0 then
          WriteBuffer(CellHint[1], fLength);
        WriteBuffer(CellColor, SizeOf(CellColor));
        WriteBuffer(CellFont, SizeOf(CellFont));
        WriteBuffer(CustomColor, SizeOf(CustomColor));
        WriteBuffer(CustomFont, SizeOf(CustomFont));
        WriteBuffer(CellDate, SizeOf(CellDate));
        WriteBuffer(Selected, SizeOf(Selected));

        WriteBuffer(CellImage, SizeOf(CellImage));

        WriteBuffer(Tag, SizeOf(Tag));
      end;
end;

{ Thanks to Robert Gesswein for improving this procedure }
procedure TYearPlanner.CalculateCalendar;
var
  I,J: Byte;
  DaysInMonth,StartDay: Integer;
begin
  { Set the Year cell }
  Cells[0, 0] := IntToStr(Self.Year);
  { Clear the cell contents }
  for I := 1 to 37 do
    for J := 1 to 12 do
      Cells[I,J] := '';
  { Setup the cells }
  for I := 1 to 12 do
  begin
    StartDay := DayOfWeek(EncodeDate(Year,I,1));
    StartDay := (StartDay+7-Ord(fStartDayOfWeek)-2) mod 7;
    DaysInMonth := MonthDays[I] + byte(IsLeapYear(Year) and (I = 2));
    for J := 1 to DaysInMonth do Cells[J + StartDay,I] := IntToStr(J);
  end;
end;

{ Thanks to Paul Fisher, Wolfgang Kleinrath and Roberto Chieregato for
  improving this procedure }
procedure TYearPlanner.CalculateData;
var
  I,J: Byte;
  DaysInMonth: Integer;
begin
  { Setup the hints }
  for I := 1 to 12 do
  begin
    DaysInMonth := MonthDays[I] + byte(IsLeapYear(Year) and (I = 2));
    for J := 1 to DaysInMonth do
    begin
      with CellData[I,J] do
      begin
        CellColor := $00000000;
        CellFont := fDayFont;
        CustomColor := False;
        CustomFont := False;
        CellDate := EncodeDate(Year,I,J);
        CellHint := '';
        TextLayout := fTextLayout;

        CellImage := -1;

        Tag := -1;
        Selected := False;
      end;
    end;
  end;
end;

{ Thanks to Max Evans for this routine }
procedure TYearPlanner.CalculateNavigators;
var
  sWidth,sHeight,y: Integer;
begin
  sWidth := GetSystemMetrics(SM_CXHSCROLL);
  sHeight := GetSystemMetrics(SM_CYHSCROLL);
  y := (Heights[0] - sHeight) div 2;
  fYearNavLeft :=  Rect(0 + 1,y,1 + sWidth,y + sHeight);
  fYearNavRight := Rect(Widths[0] - (sWidth + 1),y,Widths[0] - 1,y + sHeight);
end;


{ Thanks to Max Evans, Nacho Urenda and Paul Fisher for helping with this
  procedure }
procedure TYearPlanner.CalculateSizes;
var
  I: Byte;
begin
  { Calculate the cell sizes based on whether or not we are printing or
    using the free space }
  if fUseFreeSpace then
  begin
    Heights[0] := Height - ((Height div 13) * 12);
    Widths[0] := Width - ((Width div 41) * 37);
  end
  else
  begin
    Heights[0] := (Height div 13);
    Widths[0] := (Width div 41) * 4;
  end;
  for I := 1 to 37 do Widths[I] := (Width div 41);
  for I := 1 to 12 do Heights[I] := (Height div 13);
  { Calculate the navigation button sizes }
  CalculateNavigators;
end;

{ Thanks to Max Evans for this routine }
procedure TYearPlanner.CircleToday(CCanvas: TCanvas; CircleRect: TRect; const TodayText: String; InnerColor: TColor);
var SaveRect: TRect;
begin
  SaveRect:= CircleRect;
  CCanvas.Brush.Style:= bsClear;
  CCanvas.Pen.Color := TodayCircleColour;
  CCanvas.Pen.Width := 1;

  case fTextLayout of
    tlTop   : ;
    tlCenter: CircleRect.Top:= CircleRect.Top + (CircleRect.Height - CCanvas.TextHeight('0')) shr 1;
    tlBottom: CircleRect.Top:= CircleRect.Bottom - CCanvas.TextHeight('0');
  end;

  CircleRect.Bottom:= CircleRect.Top + CCanvas.TextHeight('0');

  if CircleRect.Bottom > SaveRect.Bottom then CircleRect.Bottom:= SaveRect.Bottom;
  if CircleRect.Top < SaveRect.Top then CircleRect.Top:= SaveRect.Top;

  CCanvas.Brush.Color := InnerColor;
  if TodayCircleFilled then
     CCanvas.FillRect(CircleRect)
  else
     CCanvas.Rectangle(CircleRect);
end;

{ Thanks to Max Evans for this routine }
procedure TYearPlanner.OnGridPenChange(Sender:TObject);
begin
  Invalidate;
end;

procedure TYearPlanner.SetTextAlignment(AValue: TAlignment);
begin
  if fTextAlignment=AValue then Exit;
  fTextAlignment:=AValue;
  Invalidate;
end;

procedure TYearPlanner.SetTextLayout(AValue: TTextLayout);
begin
  if fTextLayout=AValue then Exit;
  fTextLayout:=AValue;
  Invalidate;
end;

procedure TYearPlanner.SetTodayFont(AValue: TFont);
begin
  if fTodayFont=AValue then Exit;
  fTodayFont.Assign(AValue);
  Invalidate;
end;

{ Thanks to Paolo Prandini, Richard Haven and Robert Gesswein for this
  improved procedure }
procedure TYearPlanner.SetupHeadings;
var
   I,J: Byte;
begin
  for I := 1 to 37 do
  begin
    J := (((I - 1) + (Ord(fStartDayOfWeek))) mod 7) + 2;
    if J = 8 then J := 1;
    Cells[I,0] := DefaultFormatSettings.ShortDayNames[J];
  end;
  for I := 1 to 12 do Cells[0,I] := DefaultFormatSettings.LongMonthNames[I];
end;

procedure TYearPlanner.SetAllowSelections(Val: Boolean);
begin
  if fAllowSelections <> Val then
  begin
    fAllowSelections := Val;
    Invalidate;
  end;
end;

procedure TYearPlanner.SetDayColor(Val: TColor);
begin
  if fDayColor <> Val then
  begin
    fDayColor := Val;
    Invalidate;
  end;
end;

{ Thanks to Max Evans for this routine }
procedure TYearPlanner.SetDayFont(Val: TFont);
begin
  if fDayFont <> Val then
  begin
    fDayFont.Assign(Val);
    Invalidate;
  end;
end;


procedure TYearPlanner.SetEndEllipsis(Val: Boolean);
begin
  if fEndEllipsis <> Val then
  begin
    fEndEllipsis := Val;
    Invalidate;
  end;
end;


procedure TYearPlanner.SetFlatCells(Val: Boolean);
begin
  if fFlatCells <> Val then
  begin
    fFlatCells := Val;
    Invalidate;
  end;
end;

procedure TYearPlanner.SetGridLines(Val: Boolean);
begin
  if fGridLines <> Val then
  begin
    fGridLines := Val;
    Invalidate;
  end;
end;

{ Thanks to Max Evans for this routine }
procedure TYearPlanner.SetGridPen(Val: TPen);
begin
  if fGridPen <> Val then
  begin
    fGridPen.Assign(Val);
    Invalidate;
  end;
end;

procedure TYearPlanner.SetHeadingColor(Val: TColor);
begin
  if fHeadingColor <> Val then
  begin
    fHeadingColor := Val;
    Invalidate;
  end;
end;

procedure TYearPlanner.SetHintColor(Val: TColor);
begin
  if fHintColor <> Val then
  begin
    fHintColor := Val;
    Invalidate;
  end;
end;

procedure TYearPlanner.SetHintDelay(Val: Integer);
begin
  if fHintDelay <> Val then
  begin
    fHintDelay := Val;
    if fHintDelay < 0 then fHintDelay := 0;
    Invalidate;
  end;
end;

procedure TYearPlanner.SetHintFont(Val: TFont);
begin
  if fHintFont <> Val then
  begin
    fHintFont.Assign(Val);
    Invalidate;
  end;
end;

procedure TYearPlanner.SetLongHint(Val: Boolean);
begin
  if fLongHint <> Val then
  begin
    fLongHint := Val;
    Invalidate;
  end;
end;

{ Thanks to Max Evans for this routine }

procedure TYearPlanner.SetMonthButtons(Val: Boolean);
begin
  if fMonthButtons <> Val then
  begin
    fMonthButtons := Val;
    Invalidate;
  end;
end;


procedure TYearPlanner.SetMonthColor(Val: TColor);
begin
  if fMonthColor <> Val then
  begin
    fMonthColor := Val;
    Invalidate;
  end;
end;

{ Thanks to Max Evans for this routine }
procedure TYearPlanner.SetMonthFont(Val: TFont);
begin
  if fMonthFont <> Val then
  begin
    fMonthFont.Assign(Val);
    Invalidate;
  end;
end;

procedure TYearPlanner.SetNoDayColor(Val: TColor);
begin
  if fNoDayColor <> Val then
  begin
    fNoDayColor := Val;
    Invalidate;
  end;
end;

{ Thanks to Robert Gesswein contributing this procedure }
procedure TYearPlanner.SetNoDayPriority(Val: Boolean);
begin
  if fNoDayPriority <> Val then
  begin
    fNoDayPriority := Val;
    Invalidate;
  end;
end;

procedure TYearPlanner.SetSelectionColor(Val: TColor);
begin
  if fSelectionColor <> Val then
  begin
    fSelectionColor := Val;
    Invalidate;
  end;
end;

procedure TYearPlanner.SetSelectionFont(Val: TFont);
begin
  if fSelectionFont <> Val then
  begin
    fSelectionFont.Assign(Val);
    Invalidate;
  end;
end;

procedure TYearPlanner.SetSelectionStyle(Val: TypSelSty);
begin
  if fSelectionStyle <> Val then
  begin
    fSelectionStyle := Val;
    Invalidate;
  end;
end;


procedure TYearPlanner.SetSeperator(Val: Boolean);
begin
  if fSeperator <> Val then
  begin
    fSeperator := Val;
    Invalidate;
  end;
end;

procedure TYearPlanner.SetSoftBorder(Val: Boolean);
begin
  if fSoftBorder <> Val then
  begin
    fSoftBorder := Val;
    Invalidate;
  end;
end;


procedure TYearPlanner.SetShowDefaultHint(Val: Boolean);
begin
  if fShowDefaultHint <> Val then
  begin
    fShowDefaultHint := Val;
    Invalidate;
  end;
end;

{ Thanks to Max Evans for this routine }
procedure TYearPlanner.SetShowToday(Val: Boolean);
begin
  if fShowToday <> Val then
  begin
    fShowToday := Val;
    Invalidate;
  end;
end;

{ Thanks to Robert Gesswein for contributing this procedure }
procedure TYearPlanner.SetStartDayOfWeek(Val: TypDOW);
begin
  if fStartDayOfWeek <> Val then
  begin
    fStartDayOfWeek := Val;
    SetupHeadings;
    CalculateCalendar;
    CalculateData;
    Invalidate;
  end;
end;

procedure TYearPlanner.SetStretchImages(Val: Boolean);
begin
  if fStretchImages <> Val then
  begin
    fStretchImages := Val;
    Invalidate;
  end;
end;

{ Thanks to Max Evans for this routine }
procedure TYearPlanner.SetTodayCircleColour(Val: TColor);
begin
  if fTodayCircleColour <> Val then
  begin
    fTodayCircleColour := Val;
    Invalidate;
  end;
end;

procedure TYearPlanner.SetTodayCircleFilled(Val: Boolean);
begin
  if fTodayCircleFilled <> Val then
  begin
    fTodayCircleFilled := Val;
    Invalidate;
  end;
end;

procedure TYearPlanner.SetUseFreeSpace(Val: Boolean);
begin
  if fUseFreeSpace <> Val then
  begin
    fUseFreeSpace := Val;
    CalculateSizes;
    Invalidate;
  end;
end;

procedure TYearPlanner.SetWeekendColor(Val: TColor);
begin
  if fWeekendColor <> Val then
  begin
    fWeekendColor := Val;
    Invalidate;
  end;
end;

procedure TYearPlanner.SetWeekendFont(AValue: TFont);
begin
  if fWeekendFont=AValue then Exit;
  fWeekendFont.Assign(AValue);
  Invalidate;
end;

procedure TYearPlanner.SetWeekendHeadingColor(Val: TColor);
begin
  if fWeekendHeadingColor <> Val then
  begin
    fWeekendHeadingColor := Val;
    Invalidate;
  end;
end;

procedure TYearPlanner.SetYear(Val: Word);
begin
  if fYear <> Val then
  begin
    { Handle the OnYearChange event, if there is one }
    if Assigned(fOnYearChange) then fOnYearChange(Self);
    { Change the year }
    fYear := Val;
    { Setup the calender }
    CalculateCalendar;
    CalculateData;
    { Clear the selection }
    ClearSelection;
    { Handle the OnYearChanged event, if there is one }
    if Assigned(fOnYearChanged) then fOnYearChanged(Self);
    { Update the control }
    Invalidate;
  end;
end;

{ Thanks to Max Evans for this routine }
procedure TYearPlanner.SetYearColor(Val: TColor);
begin
  if fYearColor <> Val then
  begin
    fYearColor:= Val;
    Invalidate;
  end;
end;

{ Thanks to Max Evans for this routine }
procedure TYearPlanner.SetYearFont(Val: TFont);
begin
  if fYearFont <> Val then
  begin
    fYearFont.Assign(Val);
    Invalidate;
  end;
end;

procedure TYearPlanner.SetYearNavigators(Val: Boolean);
begin
  if fYearNavigators <> Val then
  begin
    fYearNavigators := Val;
    Invalidate;
  end;
end;

procedure TYearPlanner.WMEraseBkgnd(var Message: TWMEraseBkgnd);
begin
  Message.Result := 1;
end;

{ Thanks to Kaj Ekman, Max Evans, Paul Fisher, Rob Schoenaker and Roberto
  Chieregato for improving this routine }
procedure TYearPlanner.Paint;
var
  I,J: Byte;
  T,tH,X,Y: Integer;
  fBorderRect, fSepRect, GridCellRect: TRect;
  fTodayDay, fTodayMonth, fTodayYear: Word;
  GridCol, OldColor: TColor;
  CurrWidth, CurrHeight : Integer;
  CellText: string;
  CellTextLen: Integer;
  TheCanvas: TCanvas;
  DrawDC: HDC;
  nXStart, nYStart, tXStart, tYStart: Integer;
  BitmapRect, TempDRect, TempSRect: TRect;
  ImageH, ImageIndex, ImageW: Integer;
  ImageBmp: TPicture;

{ This function determines if a cell is selected - Thanks to Roberto Chieregato
  for improving it }
function CellSelected: Boolean;
var
  crDate: TDateTime;
begin
  { By default we assume that the cell is not selected }
  Result := False;
  { We cannot select cells if selections are not allowed }
  if not fAllowSelections then Exit;
  { Is the cell selected ? }
  if SelectionStyle = ypNormal then
  begin
    { With normal selections we check the date range }
    crDate := EncodeDate(Year,J,StrToInt(Cells[I,J]));
    if (crDate >= fStartDate) and (crDate <= fEndDate) then Result := True;
  end
  else
    { With rectangular selections we check the selection coordinates }
    if (I >= StDay) and (I <= EnDay) and (J >= StMonth) and (J <= EnMonth)
      then Result := True;
end;

{ This function determines the font to use for a day cell }
function CellFont: TFont;
var
  Dy,Mn: Byte;
begin
  Result := fDayFont;
  if Cells[I,J] = '' then Exit;
  { It's a calender day, so check for a custom font }
  Dy := StrToInt(Cells[I,J]);
  Mn := J;
  if CellData[Mn,Dy].CustomFont then
  begin
    Result := CellData[Mn,Dy].CellFont;
    Exit;
  end;
  { Jesli jest weekend to zmien kolor }
  if ( Byte(I+Ord(fStartDayOfWeek)) in [6,7,13,14,20,21,27,28,34,35,41,42]) then
      Result := fWeekendFont;
  { Jesli jest dzien bierzacy to zmien kolor czcionki }
  if (fShowToday) and (Dy = fTodayDay) and (J = fTodayMonth) and (fYear = fTodayYear) then Result:= fTodayFont;  // by Jaro
  { Check for a selection font }
  if CellSelected then Result := fSelectionFont;
end;

{ This procedure works out the color of a cell - Thanks to Christian Hackbart,
  Max Evans, Paolo Prandini and Robert Gesswein for improving it }
function GridColor: TColor;
var
  Dy,Mn: Byte;
begin
  if I = 0 then
  begin
    if J = 0 then Result:= fYearColor else
      Result := fMonthColor;
    Exit;
  end;
  if (J > 0) and (J < 13) then
    if (Cells[I,J] <> '') then
    begin
      { It's a calender day, so check for a color }
      Dy := StrToInt(Cells[I,J]);
      Mn := J;
      CellData[Mn,Dy].Selected := CellSelected;
      if CellData[Mn,Dy].Selected then
      begin
        { It's a selected cell }
        Result := fSelectionColor;
        Exit;
      end;
      if CellData[Mn,Dy].CustomColor then
      begin
        { Use the custom color }
        Result := CellData[Mn,Dy].CellColor;
        CellData[Mn,Dy].Selected := False;
        Exit;
      end;
    end;
  if J = 13 then Result := fNoDayColor else
  begin
    if ((( Byte(I+Ord(fStartDayOfWeek)) in [0,6,7,13,14,20,21,27,28,34,35,41,42]) or (J = 0))
      and ((not fNoDayPriority) or (Cells[I,J] <> ''))) then
    begin
      { Weekend day or heading }
      Result := fWeekendColor;
      if J = 0 then
        if ( Byte(I+Ord(fStartDayOfWeek)) in [6,7,13,14,20,21,27,28,34,35,41,42]) then
          Result := fWeekendHeadingColor else
            Result := fHeadingColor;
    end
    else
    begin
      { Normal day }
      if Cells[I,J] = '' then Result := fNoDayColor
        else Result := fDayColor;
    end;
  end;
end;

{ Thanks to Roberto Chieregato for this new routine }
function GridImage: Integer;
var
  Dy,Mn: Byte;
begin
  Result := -1;
  if (Images <> nil) and (J > 0) and (J < 13) and (I > 0) then
    if (Cells[I,J] <> '') then
    begin
      Dy := StrToInt(Cells[I,J]);
      Mn := J;
      Result := CellData[Mn,Dy].CellImage;
    end;
end;

{ Thanks to Max Evans, Paolo Prandini and Rob Schoenaker for helping with
  this routine }
procedure DrawGridLines;
var
  L: Integer;
  // LineHeight: Integer;
begin
  {
  with TheCanvas do
  begin
    // Draw the grid
    Pen.Assign(fGridPen);
    DrawDC := TheCanvas.Handle;
    X := Widths[0] ;   // bylo -1
    Y := Heights[0] ;  // bylo -1
    LineHeight := Heights[1] shl 2 + Heights[1] shl 3 ; // bylo +1  // przesuniecie o wysokosc naglowka

    for L := 1 to 38 do
    begin
      Windows.MoveToEx(DrawDC, X, Y, nil);
      Windows.LineTo(DrawDC, X, Y + LineHeight);
      if L < 38 then Inc(X, Widths[L]);
    end;

    for L := 1 to 13 do
    begin
      Windows.MoveToEx(DrawDC, Widths[0], Y, nil);
      Windows.LineTo(DrawDC, X, Y);
      if L < 13 then Inc(Y, Heights[L]);
    end;

  end;
  }
  with TheCanvas do    // by Jaro
  begin
    { Draw the grid }
    Pen.Assign(fGridPen);
    DrawDC := TheCanvas.Handle;
    X := Widths[0] ;
    Y := Heights[0] ;

    for L := 1 to 38 do
    begin
      Windows.MoveToEx(DrawDC, X, 0, nil);
      Windows.LineTo(DrawDC, X, Height);
      if L < 38 then Inc(X, Widths[L]);
    end;

    for L := 1 to 13 do
    begin
      Windows.MoveToEx(DrawDC, 0, Y, nil);
      Windows.LineTo(DrawDC, Width, Y);
      if L < 13 then Inc(Y, Heights[L]);
    end;
  end;
end;

begin
  { Setup the offscreen bitmap }
  CalculateSizes;
  if (fUseBitmap) and not (csDesigning in ComponentState) then
  begin
    fControl.Width := Width;
    fControl.Height := Height;
    TheCanvas := fControl.Canvas;
  end
  else
    TheCanvas := Canvas;
  { Get today's date }
  DecodeDate(Date, fTodayYear, fTodayMonth, fTodayDay);
  with TheCanvas do
  begin
    { Draw the calender cells and text }
    Brush.Style := bsSolid;
    Font := Self.Font;
    DrawDC := TheCanvas.Handle;
    SetBKMode(DrawDC, TRANSPARENT);
    X := 0;
    for I := 0 to 37 do
    begin
      J := 0;
      Y := 0;
      CurrWidth := Widths[I];
      OldColor := GridColor;
      repeat
        T := Y;
        repeat
          Inc(Y,Heights[J]);
          Inc(J);
          GridCol := GridColor;
        until (GridCol <> OldColor) or (J = 13);
        GridCellRect := Rect(X, T, X + CurrWidth, Y);
        Brush.Color := OldColor;
        OldColor := GridCol;
        Windows.FillRect(DrawDC, GridCellRect, Brush.Reference.Handle);
      until J = 13;

      Y := 0;
      for J := 0 to 12 do
      begin
        CurrHeight := Heights[J];
        //GridCellRect := Rect(X,Y + 1,X + CurrWidth - 1,Y + CurrHeight - 1);
        GridCellRect := Rect(X,Y,X + CurrWidth ,Y + CurrHeight );
        if (I = 0) then
        begin
           fSepRect:= GridCellRect;
           InFlateRect(fSepRect,-10,0);
           if fSeperator then DrawEdge(DrawDC, fSepRect, EDGE_RAISED, BF_BOTTOM);
        end;
        { Draw the month buttons and flat cells }
        if (fMonthButtons) and (I = 0) and (J > 0) then
          DrawEdge(DrawDC, GridCellRect, EDGE_RAISED, BF_RECT OR BF_SOFT)
        else
          if not fFlatCells then
            DrawEdge(DrawDC, GridCellRect, BDR_RAISEDINNER, BF_RECT);

        { Draw the cell images }
        ImageIndex := GridImage;
        If ImageIndex > -1 then
        begin
          ImageBmp := TPicture.Create;
          { Do we want to draw a stretched image ? }
          if fStretchImages then
          begin
            { Stretch the image to fill the cell }
            BitmapRect := Rect(X, Y, X + CurrWidth, Y + CurrHeight);
            Images.GetBitmap(ImageIndex, ImageBmp.Bitmap);
            TheCanvas.StretchDraw(BitmapRect, ImageBmp.Bitmap);
          end
          else
          begin
            { Center the image in the cell }
            Images.GetBitmap(ImageIndex, ImageBmp.Bitmap);
            ImageW := ImageBmp.Bitmap.Width;
            ImageH := ImageBmp.Bitmap.Height;
            { Crop the image so that it is not drawn over other cells }
            if ImageBmp.Width > CurrWidth then
            begin
              { Crop the image width }
              tXStart := (ImageW - CurrWidth) div 2;
              TempSRect := Rect(tXStart, 0, tXStart + CurrWidth, ImageH);
              TempDRect := Rect(0, 0, CurrWidth, ImageH);
              with ImageBmp.Bitmap do Canvas.CopyRect(TempDRect,Canvas,TempSRect);
              ImageBmp.Bitmap.Width := CurrWidth;
              ImageW := ImageBmp.Bitmap.Width;
            end;
            if ImageBmp.Height > CurrHeight then
            begin
              { Crop the image height }
              tYStart := (ImageH - CurrHeight) div 2;
              TempSRect := Rect(0, tYStart, CurrWidth, tYStart + CurrHeight);
              TempDRect := Rect(0, 0, ImageW, CurrHeight);
              with ImageBmp.Bitmap do Canvas.CopyRect(TempDRect,Canvas,TempSRect);
              ImageBmp.Bitmap.Height := CurrHeight;
              ImageH := ImageBmp.Bitmap.Height;
            end;
            { Work out the top left coordinates of the image }
            nXStart := (X + (CurrWidth div 2)) - (ImageW div 2);
            nYStart := (Y + (CurrHeight div 2)) - (ImageH div 2);
            { Draw the image }
            TheCanvas.Draw(nXStart, nYStart, ImageBmp.Bitmap);
          end;
          ImageBmp.Free;
        end;
        // else
        begin
          CellText := Cells[I,J];
          CellTextLen := Length(CellText);
          { Select the font to use }
          if CellTextLen <> 0 then
          begin
            if (I = 0) and (J > 0) then
            begin
              { Month Cell }
              Font := fMonthFont;
              DrawDC := TheCanvas.Handle;
              SetBKMode(DrawDC, TRANSPARENT);
            end;
            if (J = 0) and (I > 0) then
            begin
              { Day Cell }
                                                 { Weekend day or heading }
              if ( Byte(I+Ord(fStartDayOfWeek)) in [6,7,13,14,20,21,27,28,34,35,41,42]) then
                Font := fWeekendFont
              else
                Font := fDayFont;

              DrawDC := TheCanvas.Handle;
              SetBKMode(DrawDC, TRANSPARENT);
            end;
            if (J = 0) and (I = 0) then
            begin
              { Year Cell }
              Font := fYearFont;
              DrawDC := TheCanvas.Handle;
              SetBKMode(DrawDC, TRANSPARENT);
              if fYearNavigators then
              begin
                { Draw the year navigation buttons }
                CalculateNavigators;
                if fMonthButtons then
                begin
                  DrawFrameControl(DrawDC, fYearNavLeft, DFC_SCROLL, DFCS_SCROLLLEFT);
                  DrawFrameControl(DrawDC, fYearNavRight, DFC_SCROLL, DFCS_SCROLLRIGHT);
                end
                else
                begin
                  DrawFrameControl(DrawDC, fYearNavLeft, DFC_SCROLL, DFCS_SCROLLLEFT or DFCS_FLAT);
                  DrawFrameControl(DrawDC, fYearNavRight, DFC_SCROLL, DFCS_SCROLLRIGHT or DFCS_FLAT);
                end;

              end;
            end;

            { dzisiejszy dzien wyrozniamy}
            if (fShowToday) and (Cells[I, J] = IntToStr(fTodayDay)) and (J = fTodayMonth) and (fYear = fTodayYear) then
                begin
                  Font := CellFont;
                  if fTodayCircleFilled then
                     CircleToday(TheCanvas, GridCellRect, IntToStr(fTodayDay), fTodayCircleColour)
                  else
                     CircleToday(TheCanvas, GridCellRect, IntToStr(fTodayDay), GridColor);
                end;

            if (J > 0) and (I > 0) then
            begin
              { Normal Cells }
              Font := CellFont;
              DrawDC := TheCanvas.Handle;
              SetBKMode(DrawDC, TRANSPARENT);

              case fTextLayout of
                tlTop   : th := DT_TOP;
                tlCenter: th := DT_VCENTER; //(CurrHeight - SizeRec.cy) shr 1;
                tlBottom: th := DT_BOTTOM;  // (CurrHeight - SizeRec.cy);
              end;
              case fTextAlignment of
                taLeftJustify  : th:= th OR DT_LEFT;
                taCenter       : th:= th OR DT_CENTER;
                taRightJustify : th:= th OR DT_RIGHT;
              end;

              fSepRect.Top   := GridCellRect.Top;
              fSepRect.Bottom:= GridCellRect.Bottom+2;
              fSepRect.Left  := GridCellRect.Left+2;
              fSepRect.Right := GridCellRect.Right-2;

              DrawText(DrawDC, PChar( CellText), -1, fSepRect, th OR DT_SINGLELINE);
            end else
            { Draw the text in the center of the cell }
            { Draw text naglowek i miesiace   }
            begin
               if fEndEllipsis then
                begin
                  DrawText(DrawDC, PChar( CellText), -1, GridCellRect, DT_VCENTER OR DT_CENTER OR DT_SINGLELINE OR DT_END_ELLIPSIS);
                end
              else
                begin
                  //GetTextExtentPoint32(DrawDC, PChar(CellText), Length(CellText), SizeRec);
                  //tW := (CurrWidth - SizeRec.cx) shr 1;      // ustawiamy srodek tekstu
                  //tH := (CurrHeight - SizeRec.cy) shr 1;
                  //TextOut(X + tW, Y + tH, CellText);
                   DrawText(DrawDC, PChar( CellText), -1, GridCellRect, DT_VCENTER OR DT_CENTER OR DT_SINGLELINE);
                end;
            end;
          end;
        end;
        //========================== nadpisanie celi z numerami dni wlasnym OnDrawCell
        if (J > 0) and (I > 0) and (CellTextLen <> 0) then
          if Assigned(FOnDrawCell) then
              FOnDrawCell(self, TheCanvas, GridCellRect, CellData[J,StrToInt(Cells[I,J])] , Cells[I,J] );
        //==========================================

        Inc(Y,CurrHeight);
      end;
      Inc(X,CurrWidth);
    end;

    if fGridlines then DrawGridLines;

    if fSoftBorder then
    begin
      SetBKMode(DrawDC, OPAQUE);
      fBorderRect:= Rect(0,0,Width,Height);
      DrawEdge(DrawDC,fBorderRect,EDGE_ETCHED,BF_RECT);
    end;

  end;
  { Now copy the bitmap to the screen }
  if fUseBitmap then
    BitBlt(Canvas.Handle, 0, 0, Width, Height, DrawDC, 0, 0, SRCCOPY);
  { If we are printing, copy the canvas and stretch it to the page }
  if hPrinting then
    StretchBlt(Printer.Canvas.Handle, PrinterLeftMargin, PrinterTopMargin,
      PrinterPageWidth, PrinterPageHeight, Canvas.Handle, 0, 0,
      Width, Height, SRCCOPY);
end;

{ Thanks to Max Evans for improving this routine }
constructor TYearPlanner.Create(AOwner: TComponent);
var
  Dy,Mn,Yr: Word;
begin
  { Setup the control }
  Inherited Create(AOwner);
  HintWin := THintWindow.Create(Self);
  fStringList := TStringList.Create;
  fPrintOptions := TPrintOptions.Create(nil);
  fGridPen := TPen.Create;
  fGridPen.OnChange:= @OnGridPenChange;
  { Create the fonts }
  fDayFont    := TFont.Create;
  fHintFont   := TFont.Create;
  fMonthFont  := TFont.Create;
  fSelectionFont := TFont.Create;
  fTodayFont  := TFont.Create;
  fYearFont   := TFont.Create;
  fWeekendFont:= TFont.Create;

  Width := 615;
  Height := 300;
  Color := clDefault;
  DecodeDate(Date, Yr, Mn, Dy);
  fAllowSelections := True;

  fDayColor := clWhite;
  fDayFont.Color:= $00333333;
  fDayFont.Name:= 'Arial';
  fDayFont.Size:= 8;

  fTextAlignment:= taLeftJustify;
  fTextLayout:= tlTop;

  fHeadingColor := clWhite;

  fHintColor := clYellow;
  fHintDelay := 0;
  fLongHint := True;

  fMonthColor := clWhite;
  fMonthButtons := false;
  fMonthFont.Color:= $00333333;
  fMonthFont.Name:= 'Arial';
  fMonthFont.Size:= 8;

  fNoDayColor := $00F1F1F1;

  fSelectionColor := $00FF9933;
  fSelectionStyle := ypNormal;
  fSelectionFont.Color:= $00333333;
  fSelectionFont.Name:= 'Arial';
  fSelectionFont.Size:= 8;

  fSeperator  := false;
  fSoftBorder := false;
  fFlatCells  := true;
  fGridLines  := true;
  fGridPen.Color:= $00C8C8C8;

  fShowDefaultHint := True;

  fShowToday:= True;
  fTodayCircleColour := $00D59D31;
  fTodayCircleFilled := True;
  fTodayFont.Name:= 'Arial';
  fTodayFont.Color:= clWhite;
  fTodayFont.Size:= 8;

  fStartDayOfWeek := ypMonday;
  fStretchImages := False;
  fUseBitmap := True;
  fUseFreeSpace := True;

  fWeekendColor := $00DFDFDF;
  fWeekendHeadingColor := $00DFDFDF;
  fWeekendFont.Name:= 'Arial';
  fWeekendFont.Color:= clRed;
  fWeekendFont.Size:= 8;

  fYear := Yr;
  fYearColor:= $00DFDFDF;
  fYearFont.Color:= $00333333;
  fYearFont.Name:= 'Arial';
  fYearFont.Size:= 8;
  fYearNavigators := True;

  fStartDate := Now;
  fEndDate := Now;
  hUpdating := False;
  hWaiting := False;
  hWaitingToDestroy := False;
  CurrentDate.Day := 0;
  CurrentDate.Month := 0;
  OldX := -1;
  OldY := -1;
  hPrinting := False;
  hSelecting := ypNotSelecting;
  { Create the off screen bitmap }
  fControl := TBitmap.Create;
  { Setup the calender }
  SetupHeadings;
  CalculateCalendar;
  CalculateData;
  CalculateSizes;
end;

{ Thanks to Max Evans for improving this routine }
destructor TYearPlanner.Destroy;
begin
  { Kill the control }
  fPrintOptions.Free;
  fStringList.Free;
  { Inform the hint window that the control is destroying }
  hWaitingToDestroy := True;
  { If a hint is being displayed, we release the hint window }
  if hUpdating then HintWin.ReleaseHandle;
  { Free the hint window }
  HintWin.Free;
  { Free used bitmap }
  fControl.Free;
  { Free the fonts }
  fGridPen.OnChange:= nil;
  fGridPen.Free;
  fYearFont.Free;
  fSelectionFont.Free;
  fMonthFont.Free;
  fHintFont.Free;
  fDayFont.Free;
  fTodayFont.Free;
  fWeekendFont.Free;
  { Here the control is destroyed.  If a hint was being displayed, the hint
    procedure will safely exit by picking up the csDestroying flag in the
    ComponentState property }
  Inherited Destroy;
end;

procedure TYearPlanner.WMLButtonDblClk(var Message: TWMLButtonDblClk);
begin
  { If a selection has been made, and a double click procedure has been set,
    execute it }
  if (hSelecting = ypSelected) and (Assigned(fOnYearDblClick)) then
    fOnYearDblClick(StDay,EnDay,EnMonth,StMonth,fStartDate,fEndDate);
end;

{ Thanks to Martin Roberts, Max Evans, Paul Fisher and Wolf Garber for
  helping with this routine }
procedure TYearPlanner.WMLButtonDown(var Message: TWMLButtonDown);
var
  Pt,Temp: TPoint;
  tX,tY: Integer;
  fOnClick: TNotifyEvent;
begin
  Inherited;
  if fYearNavigators then
  begin
    { Check the navigation buttons }
    GetCursorPos(Pt);
    Pt := ScreenToClient(Pt);
    if PtInRect(fYearNavLeft,Pt) then
    begin
      { User clicked the previous year button }
      Year := Year - 1;
      Invalidate;
      Exit;
    end;
    if PtInRect(fYearNavRight,Pt) then
    begin
      { User clicked the next year button }
      Year := Year + 1;
      Invalidate;
      Exit;
    end;
  end;
  { Check to see if the mouse is over a cell }
  Temp := ClientToScreen(Point(Message.XPos,Message.YPos));
  if not (FindDragTarget(Temp, True) = Self) then Exit;
  XYToCell(Message.XPos,Message.YPos,tX,tY);
  { If we are selecting in date range style, we must select a cell with a date }
  if ((tx = 0) or (ty = 0) or (cells[tx,ty] = '')) and (fSelectionStyle = ypNormal) then
  begin
    ClearSelection;
    Exit;
  end;
  { If the user has assigned an OnClick event, we cannot use selections }
  fOnClick := OnClick;
  if not Assigned(fOnClick) then hSelecting := ypSelecting;
  { Set the initial and start coordinates }
  InDay := tX;
  InMonth := tY;
  StDay := InDay;
  StMonth := InMonth;
  EnDay := InDay;
  EnMonth := InMonth;
  { Set the date range, if we are using date range selection style }
  if fSelectionStyle = ypNormal then
  begin
    fStartDate := EncodeDate(fYear, ty, StrToInt(Cells[tx,ty]));
    fEndDate := fStartDate;
  end;
  { Update the control }
  Invalidate;
end;

{ Thanks to Paul Fisher, Goldschmidt Jean-Jacques and Istvan Mesaros for
  helping with this routine }
procedure TYearPlanner.WMLButtonUp(var Message: TWMLButtonUp);
var
  CountX,CountY: Integer;
begin
  { We cannot allow the user to select a range of cells which do not
    contain dates }
  hSelecting := ypNotSelecting;
  for CountX := StDay to EnDay do
    for CountY := StMonth to EnMonth do
      if Cells[CountX,CountY] <> '' then
        hSelecting := ypSelected;
  { Process the selection coordinates }
  ProcessSelection;
  { Update the start and end date variables }
  StartDate := fStartDate;
  EndDate := fEndDate;
  { Handle an OnSelectionEnd event if one exists }
  if Assigned(fOnSelectionEnd) then fOnSelectionEnd(Self);
  Inherited;
end;

{ Thanks to Paul Fisher for helping with this routine }
procedure TYearPlanner.WMRButtonDown(var Message: TWMRButtonDown);
begin
  Inherited;
  { If a selection has been made, and a right click procedure has been set,
    execute it }
  if (hSelecting = ypSelected) and (Assigned(fOnYearRightClick)) then
    fOnYearRightClick(StDay,EnDay,EnMonth,StMonth,fStartDate, fEndDate);
end;

procedure TYearPlanner.WMMouseMove(var Message: TWMMouseMove);
var
  Temp: TPoint;
  HintText, TmpHint, TmpText: String;
  HintRect: TRect;
  HDelay : Cardinal;
  HintH, HintLines, HintSH, HintW: Integer;
  Dy,Mn: Byte;
  swapTmp:integer;
begin
  { If the control is destroying we cannot continue }
  if hWaitingToDestroy then Exit;
  Inherited;
  { Check to see if the mouse is over a cell }
  Temp := ClientToScreen(Point(Message.XPos,Message.YPos));
  if not (FindDragTarget(Temp, True) = Self) then Exit;
  XYToCell(Message.XPos,Message.YPos,cX,cY);
  { We do not use hints when selecting cells }
  if hSelecting = ypSelecting then
  begin
    { Update the selection coordinates }
    StDay := InDay;
    StMonth := InMonth;
    EnDay := cX;
    EnMonth := cY;
    { Do we need to change the selection coordinates ? }
    if fSelectionStyle = ypNormal then
    begin
      if (StMonth > EnMonth) or ((StMonth = EnMonth) and (StDay > EnDay)) then
      begin
        { With normal selections we reverse the date range }
        swapTmp := StDay;
        StDay := EnDay;
        EnDay := swapTmp;
        swapTmp := StMonth;
        StMonth := EnMonth;
        EnMonth := swapTmp;
      end;
    end
    else
    begin
      { With rectangular selections, we simply switch the coordinates }
      if StDay > EnDay then
      begin
        swapTmp := StDay;
        StDay := EnDay;
        EnDay := swapTmp;
      end;
      if StMonth > EnMonth then
      begin
        swapTmp := StMonth;
        StMonth := EnMonth;
        EnMonth := swapTmp;
      end;
    end;
    { Process the selection coordinates }
    ProcessSelection;
    { Repaint the control }
    Invalidate;
    Exit;
  end;
  { Is this cell a calender day? }
  if ((OldX = cX) and (OldY = cY)) or (cX = 0) or (cY = 0) or
    (Cells[cX,cY] = '') then Exit;
  { Update the current date }
  CurrentDate.Day := StrToInt(Cells[cX,cY]);
  CurrentDate.Month := cY;
  { Now check to see if we can use hints }
  if not (Application.ShowHint and (ShowHint or ParentShowHint)) then Exit;
  { Do we show this hint? }
  if (CellData[cY,CurrentDate.Day].CellHint = '') and (not fShowDefaultHint) then Exit;
  { If a hint is being displayed, we mark a hint status flag to say that
    another hint is waiting }
  if hUpdating then
  begin
    hWaiting := True;
    Exit;
  end;
  { Now we setup the hint }
  OldX := cX;
  OldY := cY;
  Dy := CurrentDate.Day;
  Mn := CurrentDate.Month;
  HintText := CellData[Mn,Dy].CellHint;
  if HintText = '' then
  begin
    { Now we determine whether we display a long or short date }
    if fLongHint then
      HintText := FormatDateTime( DefaultFormatSettings.LongDateFormat, EncodeDate(Year, Mn, Dy))
    else
      HintText := FormatDateTime( DefaultFormatSettings.ShortDateFormat, EncodeDate(Year, Mn, Dy));
  end;
  HintDate := CellData[Mn,Dy].CellDate;
  { Set the hint status flags }
  hUpdating := True;
  hWaiting := False;
  { Set the hint width }
  TmpHint := HintText;
  if TmpHint[Length(TmpHint)] <> #13 then
    TmpHint := TmpHint + #13;
  HintLines := 0;
  HintW := 0;
  repeat
    Inc(HintLines);
    TmpText := Copy(TmpHint,1,Pos(#13,TmpHint)-1);
    if HintWin.Canvas.TextWidth(TmpText) + 5 > HintW then
      HintW := HintWin.Canvas.TextWidth(TmpText) + 15;
    Delete(TmpHint,1,Pos(#13,TmpHint));
  until Pos(#13,TmpHint) = 0;
  { Set the hint height }
  HintH := (HintWin.Canvas.TextHeight('0') * HintLines) + 3;
  HintSH := HintWin.Canvas.TextHeight('0') + 3;
  { Set the delay length }
  if fHintDelay = 0 then HDelay := Application.HintPause else
    HDelay := fHintDelay;
  { Display the hint }
  HintRect := Rect(Temp.X, Temp.Y + HintSH, Temp.X + HintW, Temp.Y + HintH + HintSH + 8 );
  HintWin.Color := fHintColor;
  HintWin.Canvas.Font.Assign(fHintFont);
  HintWin.ActivateHint(HintRect, HintText);
  { Display the hint window for some time }
  FirstTickCount := GetTickCount64;
  repeat
    { If another hint is waiting, get rid of this hint }
    Application.ProcessMessages;
    { If the control has been destroyed, this code will safely exit the
      procedure without causing an access violation }
    if csDestroying in ComponentState then Exit;
    { If the parent control has been hidden or the application has terminated
      the hint shouldn't be shown }
    if (not Parent.Showing) or (Application.Terminated) then Break;
    { Otherwise, we deal with the hint in the normal way }
    if (hSelecting = ypSelecting) or (hWaiting) or (hWaitingToDestroy) then Break;
  until (GetTickCount64 - FirstTickCount > HDelay);
  { Destroy the hint window }
  HintWin.ReleaseHandle;
  hUpdating := False;
end;

{ Thanks to Max Evans for this routine }
procedure TYearPlanner.WMSize(var Message:TWMSize);
begin
  CalculateNavigators;
end;

{ Thanks to Robert Gesswein for helping with this procedure }
procedure TYearPlanner.SetColorAtDate(dt: TDateTime; cellColor: TColor; UpdateControl: Boolean);
var
  mm,dd,yy: word;
begin
  DecodeDate(dt, yy, mm, dd);
  CellData[mm, dd].CellColor := cellColor;
  CellData[mm, dd].CustomColor := True;
  if UpdateControl then Invalidate;
end;

procedure TYearPlanner.SetFontAtDate(dt: TDateTime; cellFont: TFont; UpdateControl: Boolean);
var
  mm,dd,yy: word;
begin
  DecodeDate(dt, yy, mm, dd);
  CellData[mm, dd].CellFont := cellFont;
  CellData[mm, dd].CustomFont := True;
  if UpdateControl then Invalidate;
end;

procedure TYearPlanner.SetHintAtDate(dt: TDateTime; cellHint: String; UpdateControl: Boolean);
var
  mm,dd,yy: word;
begin
  DecodeDate(dt, yy, mm, dd);
  CellData[mm, dd].CellHint := cellHint;
  if UpdateControl then Invalidate;
end;


procedure TYearPlanner.SetImageAtDate(dt: TDateTime; cellImage: Integer; UpdateControl: Boolean);
var
  mm,dd,yy: word;
begin
  DecodeDate(dt, yy, mm, dd);
  CellData[mm, dd].CellImage := cellImage;
  if UpdateControl then Invalidate;
end;


function TYearPlanner.GetCellData(dt: TDateTime): TCellData;
var
  mm,dd,yy: word;
begin
  DecodeDate(dt, yy, mm, dd);
  Result := CellData[mm, dd];
end;

{ Thanks to Paul Bailey, Paul Fisher and Wolf Garber for this routine }
procedure TYearPlanner.Print;
var
  TempCap: array[0..255] of char;
  pHeight, pWidth: Integer;
  DrawFlags: Longint;
  TheRect: TRect;
  Ratio: Extended;
begin
  hPrinting := True;
  { Work out the page size and margins }
  with fPrintOptions do
  begin
    Printer.Orientation := fPrinterOrientation;
    { The page width and height exclude the margins }
    pWidth := Printer.PageWidth - fPrinterLeftMargin - fPrinterRightMargin;
    pHeight := Printer.PageHeight - fPrinterTopMargin - fPrinterBottomMargin;
    { Resize the page size based on the reduction ratio }
    PrinterPageWidth := round(pWidth * (fPrintReductionSize / 100));
    PrinterPageHeight := round(pHeight * (fPrintReductionSize / 100));
    {Preserve Aspect Ratio}
    if PreserveAspect then
    begin
      Ratio := Height/Width;
      PrinterPageHeight := round(Ratio * PrinterPageWidth);
      if PrinterPageHeight > pHeight then
      begin
        PrinterPageWidth:= round(PrinterPageWidth*(pHeight/PrinterPageHeight));
        PrinterPageHeight:= round(pHeight);
      end;
    end;
    { Set the margins }
    PrinterLeftMargin := fPrinterLeftMargin;
    PrinterTopMargin := fPrinterTopMargin;
    PrinterRightMargin := fPrinterRightMargin;
    PrinterBottomMargin := fPrinterBottomMargin;
  end;
  try
    Printer.BeginDoc;
    { Paint the YearPlanner }
    self.Paint;
    { Draw the headers and footers }
    with fPrintOptions, Printer.Canvas do
    begin
      { Draw the header }
      if PrintHeader.Caption <> '' then
      begin
        { Setup the header }
        StrPCopy(TempCap, PrintHeader.Caption);
        Font := PrintHeader.Font;
        TheRect := Rect(PrinterLeftMargin, 0, PrinterLeftMargin + pWidth,
          PrinterTopMargin);
        { The text is vetically centered in the top margin }
        DrawFlags := DT_VCENTER or DT_SINGLELINE;
        { Do the alignment }
        case PrintHeader.Alignment of
          taLeftJustify: DrawFlags := DrawFlags or DT_LEFT;
          taCenter: DrawFlags := DrawFlags or DT_CENTER;
          taRightJustify: DrawFlags := DrawFlags or DT_RIGHT;
        end;
        { Draw the text }
        DrawText(Handle, TempCap, StrLen(TempCap), TheRect, DrawFlags);
      end;
      { Draw the footer }
      if PrintFooter.Caption <> '' then
      begin
        { Setup the footer }
        StrPCopy(TempCap, PrintFooter.Caption);
        Font := PrintFooter.Font;
        TheRect := Rect(PrinterLeftMargin, PrinterTopMargin + pHeight,
          PrinterLeftMargin + pWidth, PrinterTopMargin + pHeight + PrinterBottomMargin);
        { The text is vetically centered in the bottom margin }
        DrawFlags := DT_VCENTER or DT_SINGLELINE;
        { Do the alignment }
        case PrintFooter.Alignment of
          taLeftJustify: DrawFlags := DrawFlags or DT_LEFT;
          taCenter: DrawFlags := DrawFlags or DT_CENTER;
          taRightJustify: DrawFlags := DrawFlags or DT_RIGHT;
        end;
        { Draw the text }
        DrawText(Handle, TempCap, StrLen(TempCap), TheRect, DrawFlags);
      end;
    end;
  finally
    Printer.EndDoc;
    hPrinting := False;
  end;
end;

{ Thanks to Goldschmidt Jean-Jacques for this routine }
function TYearPlanner.GetStartDate: TDateTime;
begin
  GetStartDate := fStartDate;
end;

{ Thanks to Goldschmidt Jean-Jacques for this routine }
function TYearPlanner.GetEndDate: TDateTime;
begin
  GetEndDate := fEndDate;
end;

{ Thanks to Goldschmidt Jean-Jacques for this routine }
function TYearPlanner.IsSelected(date: TDateTime): Boolean;
var
  mm,dd,yy: word;
begin
  DecodeDate(date, yy, mm, dd);
  IsSelected := CellData[mm, dd].Selected;
end;

{ Clear the selection }
procedure TYearPlanner.ClearSelection;
begin
  StDay := 0;
  StMonth := 0;
  EnDay := 0;
  EnMonth := 0;
  fStartDate := Now;
  fEndDate := Now;
  Invalidate;
end;

{ Manually select a single cell }
procedure TYearPlanner.SelectCells(sDate, eDate: TDateTime);
var
  eD, eM, eY, sD, sM, sY: word;
  CountX: Integer;
  tmpDate:  TDateTime;
begin
  { We may need to reverse the cell dates }
  if sDate > eDate then
  begin
    tmpDate := sDate;
    sDate := eDate;
    eDate := tmpDate;
  end;
  { Get the start and end cell dates }
  DecodeDate(sDate, sY, sM, sD);
  DecodeDate(eDate, eY, eM, eD);
  { Find the start date cell }
  for CountX := 1 to 37 do
    if StrToIntDef(Cells[CountX, sM],0) = sD then
    begin
      { Select the cell }
      StDay := CountX;
      StMonth := sM;
      fStartDate := sDate;
    end;
  { Find the end date cell }
  for CountX := 1 to 37 do
    if StrToIntDef(Cells[CountX, eM],0) = eD then
    begin
      { Select the cell }
      EnDay := CountX;
      EnMonth := eM;
      fEndDate := eDate;
    end;
  { Repaint the control }
  Invalidate;
  Exit;
end;

{ Selects a given week }
procedure TYearPlanner.SelectWeek(aWeek: Integer);
var
  eDate, sDate: TDateTime;
begin
  { Set the dates }
  sDate := FindFirstWeek(Year) + ((aWeek - 1) * 7);
  eDate := sDate + 6;
  { Select the cells }
  SelectCells(sDate, eDate);
end;

{ Thanks to Trev for this routine }
procedure TYearPlanner.ClearCells;
var
  mm, dd: Integer;
begin
  for mm := 1 to 12 do
    for dd := 1 to 31 do
      with CellData[mm, dd] do
      begin
        CellColor := $00000000;
        CellFont := fDayFont;
        CellHint := '';
        CustomColor := False;
        CustomFont := False;

        CellImage := -1;

        Tag := -1;
      end;
  Invalidate;
end;

{ Gives you the week number of a specified date. }
function TYearPlanner.WeekNumber(aDate: TDateTime): Integer;
var
  sDay, sMonth, sYear: Word;
begin
  { Extract the current year }
  DecodeDate(aDate, sYear, sMonth, sDay);
  { We now have the start date of the first week, so find out the difference }
  Result := Trunc((StrToInt(FloatToStr(aDate - FindFirstWeek(sYear))) / 7) + 1);
end;

procedure Register;
begin
  {$I yearplanner_icon.ctrs}
  RegisterComponents('Jaro', [TYearPlanner]);
end;

end.
