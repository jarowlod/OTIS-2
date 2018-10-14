unit UOchRezerwacjaSkype;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, Buttons, TplGradientUnit, YearPlanner, rxdbgrid, rxmemds,
  datamodule;

type
  { TTerminyEvent }

  { TTerminySkypeEvent }

  TTerminySkypeEvent = class
  private
    fSumaWidzen : integer;
  public
    procedure DrawCell(TheCanvas: TCanvas; Rect: TRect);
    procedure Clear;
    property SumaWidzen     : integer read FSumaWidzen write fSumaWidzen default 0;
  end;

  { TTerminyEvents }

  { TTerminySkypeEvents }

  TTerminySkypeEvents = class
  private
    fDaneTerminarza: array[1..12,1..31] of TTerminySkypeEvent;
    function GetDaneTerminarza(msc, day: integer): TTerminySkypeEvent;
    procedure SetDaneTerminarza(msc, day: integer; AValue: TTerminySkypeEvent);
  public
    constructor Create;
    destructor Destroy; override;
    procedure Clear;
    property DaneTerminarza[msc, day: integer]: TTerminySkypeEvent read GetDaneTerminarza write SetDaneTerminarza; default;
  end;

  { TOchRezerwacjaSkype }

  TOchRezerwacjaSkype = class(TForm)
    btnUsun: TBitBtn;
    btnZaplanuj: TBitBtn;
    DSMemWidzenia: TDataSource;
    Image1: TImage;
    Label1: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel5: TPanel;
    plGradient2: TplGradient;
    RxDBGrid1: TRxDBGrid;
    MemWidzenia: TRxMemoryData;
    Splitter1: TSplitter;
    YearPlanner1: TYearPlanner;
    procedure btnUsunClick(Sender: TObject);
    procedure btnZaplanujClick(Sender: TObject);
    procedure DSMemWidzeniaDataChange(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure YearPlanner1DrawCell(Sender: TCustomControl; TheCanvas: TCanvas; Rect: TRect; CellData: TCellData; CellText: String);
    procedure YearPlanner1SelectionEnd(Sender: TObject);
    procedure YearPlanner1YearChanged(Sender: TObject);
  private
    Terminy: TTerminySkypeEvents;
    bookmarkWidzenia: TBookMark;
    procedure WczytajDane(StartDate, EndDate: TDateTime);
  public
    procedure WczytajDaneTerminarza;
  end;

var
  OchRezerwacjaSkype: TOchRezerwacjaSkype;

implementation
uses DateUtils, UOchAddRezerwacjaSkype;
{$R *.frm}

const
  SKYPE_DZIENNIE= 15; // od godz. 9:00 do 15:00 co 25 minut.
  SKYPE_OD_GODZ = 9;  // widzenie rozpoczynają się od godz 9:00
  SKYPE_PRZERWA = 10; // przerwa pomiędzy rozmowami w minutach
  SKYPE_CZAS    = 15; // czas trwania rozmowy w minutach

{ TOchRezerwacjaSkype }

procedure TOchRezerwacjaSkype.FormCreate(Sender: TObject);
begin
   btnZaplanuj.Enabled:= DM.uprawnienia[18];
   btnUsun.Enabled    := DM.uprawnienia[18];

   Terminy:= TTerminySkypeEvents.Create;
   WczytajDaneTerminarza;                  // wczytuje dane do Terminy i wyświetla w terminarzu
     YearPlanner1.SelectCells(Date, Date);   // zaznacza bieżącą datę
     YearPlanner1.CellData[MonthOf(Date), DayOf(Date)].Selected:= true;
   WczytajDane(Date, Date);                // wyświetla dane bieżącej daty
end;

procedure TOchRezerwacjaSkype.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  FreeAndNil(Terminy);
end;

procedure TOchRezerwacjaSkype.btnZaplanujClick(Sender: TObject);
var ido: integer;
begin
  if MemWidzenia.IsEmpty then exit;
  if MemWidzenia.FieldByName('DataGodz').AsDateTime<=Now() then
  begin
    MessageDlg('Nie można zaplanować Skype dla daty i godziny wcześniejszej niż bieżąca.', mtInformation, [mbOK],0);
    exit;
  end;
  if MemWidzenia.FieldByName('IDO').AsInteger>0 then
  begin
    MessageDlg('Wybrana godzina Skype jest już zajęta.', mtInformation, [mbOK],0);
    exit;
  end;
  if DM.ZQOsadzeni.IsEmpty then
    ido:= 0
  else
    ido:= DM.ZQOsadzeni.FieldByName('IDO').AsInteger;

  with TOchAddRezerwacjaSkype.CreateIDO(Self, ido, MemWidzenia.FieldByName('DataGodz').AsDateTime) do
  begin
    if ShowModal = mrOK then
    begin
      WczytajDaneTerminarza;
      bookmarkWidzenia:= MemWidzenia.GetBookmark;
      WczytajDane(YearPlanner1.StartDate, YearPlanner1.EndDate);
      SetToBookmark(MemWidzenia, bookmarkWidzenia);
    end;
    Free;
  end;
end;

procedure TOchRezerwacjaSkype.DSMemWidzeniaDataChange(Sender: TObject; Field: TField);
begin
  btnUsun.Enabled:= ( not MemWidzenia.IsEmpty and
                     (MemWidzenia.FieldByName('IDO').AsInteger>0) and
                     (DM.PelnaNazwa = MemWidzenia.FieldByName('User').AsString) and
                     (MemWidzenia.FieldByName('DataGodz').AsDateTime > Now));
end;

procedure TOchRezerwacjaSkype.btnUsunClick(Sender: TObject);
var ZQPom: TZQueryPom;
begin
  // uprawnienia sprawdzane podczas dataChange
  if MessageDlg('Czy usunąć zaplanowaną rozmowę Skype?', mtWarning, [mbYes, mbNo],0) <> mrYes then exit;

  try
    ZQPom:= TZQueryPom.Create(Self);
    ZQPom.SQL.Text:= 'DELETE FROM widzenia_skype WHERE ID=:id';
    ZQPom.ParamByName('id').AsInteger:= MemWidzenia.FieldByName('ID').AsInteger;
    ZQPom.ExecSQL;
  finally
    FreeAndNil(ZQPom);
  end;

  WczytajDaneTerminarza;

  bookmarkWidzenia:= MemWidzenia.GetBookmark;
  WczytajDane(YearPlanner1.StartDate, YearPlanner1.EndDate);
  SetToBookmark(MemWidzenia, bookmarkWidzenia);
end;

procedure TOchRezerwacjaSkype.YearPlanner1DrawCell(Sender: TCustomControl; TheCanvas: TCanvas; Rect: TRect; CellData: TCellData; CellText: String);
var m,d: integer;
begin
  m:= MonthOf( CellData.CellDate );
  d:= DayOf( CellData.CellDate );
  Terminy[m,d].DrawCell(TheCanvas, Rect);
end;

procedure TOchRezerwacjaSkype.YearPlanner1SelectionEnd(Sender: TObject);
begin
  WczytajDane(YearPlanner1.StartDate, YearPlanner1.EndDate);
end;

procedure TOchRezerwacjaSkype.YearPlanner1YearChanged(Sender: TObject);
begin
  WczytajDaneTerminarza;
end;

procedure TOchRezerwacjaSkype.WczytajDane(StartDate, EndDate: TDateTime);
var
  ZQPom: TZQueryPom;
  i: Integer;
  godzW: TDateTime;
  minutaW: integer;

  Procedure AppendToMemo;
  var j: integer;
  begin
    MemWidzenia.Append;
    for j:=0 to ZQPom.FieldCount-1 do
        MemWidzenia.Fields[j].AsVariant:= ZQPom.Fields[j].AsVariant;  // kolejność w bazie i w MemWidzenia musi być identyczna
    MemWidzenia.Post;
  end;

begin
  if not YearPlanner1.IsSelected(StartDate) then
    begin
      MemWidzenia.EmptyTable;
      exit;
    end;

  try
    ZQPom:= TZQueryPom.Create(Self);
    ZQPom.SQL.Text:= 'SELECT * FROM widzenia_skype';

    MemWidzenia.DisableControls;
    MemWidzenia.EmptyTable;
    // wczytujemy konkretny dzień i uzupełniamy wakatami
    if StartDate=EndDate then
    begin
      RxDBGrid1.ColumnByFieldName('DataGodz').DisplayFormat:= 'hh:nn';
      ZQPom.SQL.Add('WHERE DATE(DataGodz)=:StartDate'); // warunek daty
      ZQPom.SQL.Add('ORDER BY DataGodz');
      ZQPom.ParamByName('StartDate').AsDate:= StartDate;
      ZQPom.Open;

      for i:=0 to SKYPE_DZIENNIE-1 do
      begin
        minutaW:= i * (SKYPE_CZAS + SKYPE_PRZERWA);
        godzW:= EncodeTime(SKYPE_OD_GODZ, 0, 0, 0);
        godzW:= IncMinute(godzW, minutaW);
        if MinuteOfTheDay(ZQPom.FieldByName('DataGodz').AsDateTime) = MinuteOfTheDay(godzW) then
        begin
          AppendToMemo;
          ZQPom.Next;
        end
        else
        begin
          MemWidzenia.Append;
          MemWidzenia.FieldByName('DataGodz').AsDateTime:= ComposeDateTime(StartDate, godzW);
          MemWidzenia.FieldByName('IDO').AsInteger:= 0; // wakat oznaczamy IDO=0;
          MemWidzenia.Post;
        end;
      end;
    end
    else
    // wczytujemy zakres dni bez uzupełniania wakatów
    begin
      RxDBGrid1.ColumnByFieldName('DataGodz').DisplayFormat:= 'yyyy/mm/dd hh:nn';
      ZQPom.SQL.Add('WHERE Date(DataGodz) BETWEEN :StartDate AND :EndDate'); // warunek od StartDate do EndDate
      ZQPom.SQL.Add('ORDER BY DataGodz');
      ZQPom.ParamByName('StartDate').AsDate:= StartDate;
      ZQPom.ParamByName('EndDate').AsDate:= EndDate;
      ZQPom.Open;

      while not ZQPom.EOF do
      begin
        AppendToMemo;
        ZQPom.Next;
      end;
    end;
  finally
    FreeAndNil(ZQPom);
  end;
  MemWidzenia.First;
  MemWidzenia.EnableControls;
end;

procedure TOchRezerwacjaSkype.WczytajDaneTerminarza;
var ZQPom: TZQueryPom;
    d,m : integer;
    pomData: TDateTime;
begin
  Terminy.Clear;
  try
    ZQPom:= TZQueryPom.Create(Self);
    ZQPom.SQL.Text:= 'SELECT * FROM widzenia_skype WHERE Date(DataGodz) BETWEEN :StartDate AND :EndDate';
    ZQPom.ParamByName('StartDate').AsDate:= EncodeDate( YearPlanner1.Year ,1,1);
    ZQPom.ParamByName('EndDate').AsDate  := EncodeDate( YearPlanner1.Year ,12,31);
    ZQPom.Open;

    while not ZQPom.Eof do
    begin
      pomData:= ZQPom.FieldByName('DataGodz').AsDateTime;

      m:= MonthOf( pomData );
      d:= DayOf( pomData );
      Terminy[m,d].SumaWidzen:= Terminy[m,d].SumaWidzen + 1;

      ZQPom.Next;
    end;
  finally
    FreeAndNil(ZQPom);
  end;
  YearPlanner1.Invalidate;
end;

// =======================================================================================================
{ TTerminySkypeEvents }

function TTerminySkypeEvents.GetDaneTerminarza(msc, day: integer): TTerminySkypeEvent;
begin
  Result:= fDaneTerminarza[msc, day];
end;

procedure TTerminySkypeEvents.SetDaneTerminarza(msc, day: integer; AValue: TTerminySkypeEvent);
begin
  fDaneTerminarza[msc, day]:= AValue
end;

constructor TTerminySkypeEvents.Create;
var
  m, d: Integer;
begin
  for m:=1 to 12 do
    for d:=1 to 31 do DaneTerminarza[m, d]:= TTerminySkypeEvent.Create;
  inherited Create;
end;

destructor TTerminySkypeEvents.Destroy;
var
  m, d: Integer;
begin
  for m:=1 to 12 do
    for d:=1 to 31 do DaneTerminarza[m, d].Free;
  inherited Destroy;
end;

procedure TTerminySkypeEvents.Clear;
var
  m, d: Integer;
begin
  for m:=1 to 12 do
    for d:=1 to 31 do DaneTerminarza[m, d].Clear;
end;

{ TTerminySkypeEvent }

procedure TTerminySkypeEvent.DrawCell(TheCanvas: TCanvas; Rect: TRect);
var
  h, x, h1: integer;
  DesRect: TRect;
begin
  if SumaWidzen=0 then exit; // nie ma co wyswietlac

  h:= Rect.Height - 12;    // ustalamy max wysokość kolumny
  if h<=0 then h:=1;
  x:= Rect.Width div 2;  // szerokosc słupka

  Rect.Left:= Rect.Left+ (x div 2); // wypośrodkowanie

  h1:= round(h* SumaWidzen / SKYPE_DZIENNIE);  // 6 to jest 100% wysokości
  if h1=0 then h1:=1; // minimalna wysokość to 1
  if h1>h then h1:=h; // jeśli przekroczymy wysokość to dajemy maxa.

  DesRect.Bottom:= Rect.Bottom;
  DesRect.Left  := Rect.Left;
  DesRect.Right := Rect.Left  + x;
  DesRect.Top   := Rect.Bottom - h1;

  if SumaWidzen < SKYPE_DZIENNIE then
    TheCanvas.GradientFill(DesRect, $00007D1A, $00F0FFF2, gdHorizontal) // są jeszcze wolne wakaty więc zielone światło
  else
    TheCanvas.GradientFill(DesRect, clRed    , $00DDDDFF, gdHorizontal); // jest już max, brak wolnych miejsc więc czerwone
end;

procedure TTerminySkypeEvent.Clear;
begin
  fSumaWidzen:= 0;
end;

end.

