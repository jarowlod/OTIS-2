unit UOchRezerwacjaWidzen;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, DB, memds, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, Buttons, TplGradientUnit, YearPlanner, rxdbgrid, datamodule;

type
  { TTerminyEvent }

  { TTerminyWidzenEvent }

  TTerminyWidzenEvent = class
  private
    fSumaWidzen : integer;
  public
    procedure DrawCell(TheCanvas: TCanvas; Rect: TRect);
    procedure Clear;
    property SumaWidzen     : integer read FSumaWidzen write fSumaWidzen default 0;
  end;

  { TTerminyEvents }

  { TTerminyWidzenEvents }

  TTerminyWidzenEvents = class
  private
    fDaneTerminarza: array[1..12,1..31] of TTerminyWidzenEvent;
    function GetDaneTerminarza(msc, day: integer): TTerminyWidzenEvent;
    procedure SetDaneTerminarza(msc, day: integer; AValue: TTerminyWidzenEvent);
  public
    constructor Create;
    destructor Destroy; override;
    procedure Clear;
    property DaneTerminarza[msc, day: integer]: TTerminyWidzenEvent read GetDaneTerminarza write SetDaneTerminarza; default;
  end;

  { TOchRezerwacjaWidzen }

  TOchRezerwacjaWidzen = class(TForm)
    btnUsun: TBitBtn;
    btnZaplanuj: TBitBtn;
    DSMemWidzenia: TDataSource;
    Image1: TImage;
    Label1: TLabel;
    MemWidzenia: TMemDataset;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel5: TPanel;
    plGradient2: TplGradient;
    RxDBGrid1: TRxDBGrid;
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
    Terminy: TTerminyWidzenEvents;
    procedure WczytajDane(StartDate, EndDate: TDateTime);
  public
    procedure WczytajDaneTerminarza;
  end;

var
  OchRezerwacjaWidzen: TOchRezerwacjaWidzen;

implementation
uses DateUtils;
{$R *.frm}

const
  WIDZEN_DZIENNIE = 6;  // od godz. 9:00 do 15:00 co 1 godz.
  WIDZENIE_OD_GODZ = 9; // widzenie rozpoczynają się od godz 9:00
{ TTerminyWidzenEvents }

function TTerminyWidzenEvents.GetDaneTerminarza(msc, day: integer): TTerminyWidzenEvent;
begin
  Result:= fDaneTerminarza[msc, day];
end;

procedure TTerminyWidzenEvents.SetDaneTerminarza(msc, day: integer; AValue: TTerminyWidzenEvent);
begin
  fDaneTerminarza[msc, day]:= AValue
end;

constructor TTerminyWidzenEvents.Create;
var
  m, d: Integer;
begin
  for m:=1 to 12 do
    for d:=1 to 31 do DaneTerminarza[m, d]:= TTerminyWidzenEvent.Create;
  inherited Create;
end;

destructor TTerminyWidzenEvents.Destroy;
var
  m, d: Integer;
begin
  for m:=1 to 12 do
    for d:=1 to 31 do DaneTerminarza[m, d].Free;
  inherited Destroy;
end;

procedure TTerminyWidzenEvents.Clear;
var
  m, d: Integer;
begin
  for m:=1 to 12 do
    for d:=1 to 31 do DaneTerminarza[m, d].Clear;
end;

{ TTerminyWidzenEvent }

procedure TTerminyWidzenEvent.DrawCell(TheCanvas: TCanvas; Rect: TRect);
var
  h, x, h1: integer;
  DesRect: TRect;
begin
  if SumaWidzen=0 then exit; // nie ma co wyswietlac

  h:= Rect.Height - 12;    // ustalamy max wysokość kolumny
  if h<=0 then h:=1;
  x:= Rect.Width div 2;  // szerokosc słupka

  Rect.Left:= Rect.Left+ (x div 2); // wypośrodkowanie

  h1:= round(h* SumaWidzen / WIDZEN_DZIENNIE);  // 6 to jest 100% wysokości
  if h1=0 then h1:=1; // minimalna wysokość to 1
  if h1>h then h1:=h; // jeśli przekroczymy wysokość to dajemy maxa.

  DesRect.Bottom:= Rect.Bottom;
  DesRect.Left  := Rect.Left;
  DesRect.Right := Rect.Left  + x;
  DesRect.Top   := Rect.Bottom - h1;

  if SumaWidzen < WIDZEN_DZIENNIE then
    TheCanvas.GradientFill(DesRect, $00007D1A, $00F0FFF2, gdHorizontal) // są jeszcze wolne wakaty więc zielone światło
  else
    TheCanvas.GradientFill(DesRect, clRed    , $00DDDDFF, gdHorizontal); // jest już max, brak wolnych miejsc więc czerwone
end;

procedure TTerminyWidzenEvent.Clear;
begin
  fSumaWidzen:= 0;
end;

{ TOchRezerwacjaWidzen }

procedure TOchRezerwacjaWidzen.btnZaplanujClick(Sender: TObject);
begin
  WczytajDane(YearPlanner1.StartDate, YearPlanner1.StartDate);
end;

procedure TOchRezerwacjaWidzen.DSMemWidzeniaDataChange(Sender: TObject; Field: TField);
begin
  btnUsun.Enabled:= ( not MemWidzenia.IsEmpty and
                     (MemWidzenia.FieldByName('ID').AsInteger>0) and
                     (DM.PelnaNazwa = MemWidzenia.FieldByName('User').AsString) and
                     (MemWidzenia.FieldByName('DataGodz').AsDateTime > Now));
end;

procedure TOchRezerwacjaWidzen.btnUsunClick(Sender: TObject);
var ZQPom: TZQueryPom;
begin
  // uprawnienia sprawdzane podczas dataChange
  try
    ZQPom:= TZQueryPom.Create(Self);
    ZQPom.SQL.Text:= 'DELETE widzenia_rezerwacje WHERE ID=:id';
    ZQPom.ParamByName('id').AsInteger:= MemWidzenia.FieldByName('ID').AsInteger;
    ZQPom.ExecSQL;

  finally
    FreeAndNil(ZQPom);
    WczytajDaneTerminarza;
    WczytajDane(YearPlanner1.StartDate, YearPlanner1.EndDate);
  end;
end;

procedure TOchRezerwacjaWidzen.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  FreeAndNil(Terminy);
end;

procedure TOchRezerwacjaWidzen.FormCreate(Sender: TObject);
begin
   Terminy:= TTerminyWidzenEvents.Create;
   btnZaplanuj.Enabled:= DM.uprawnienia[18];
   btnUsun.Enabled    := DM.uprawnienia[18];
end;

procedure TOchRezerwacjaWidzen.YearPlanner1DrawCell(Sender: TCustomControl; TheCanvas: TCanvas; Rect: TRect; CellData: TCellData; CellText: String);
var m,d: integer;
begin
  m:= MonthOf( CellData.CellDate );
  d:= DayOf( CellData.CellDate );
  Terminy[m,d].DrawCell(TheCanvas, Rect);
end;

procedure TOchRezerwacjaWidzen.YearPlanner1SelectionEnd(Sender: TObject);
begin
  //MakeSQLTerminy(ZQKalendarz, YearPlanner1.StartDate, YearPlanner1.EndDate);
  WczytajDane(YearPlanner1.StartDate, YearPlanner1.EndDate);
end;

procedure TOchRezerwacjaWidzen.YearPlanner1YearChanged(Sender: TObject);
begin
  WczytajDaneTerminarza;
end;

procedure TOchRezerwacjaWidzen.WczytajDane(StartDate, EndDate: TDateTime);
var
  ZQPom: TZQueryPom;
  i: Integer;
  godzW: word;

  Procedure AppendToMemo;
  begin
    MemWidzenia.Append;
    MemWidzenia.FieldByName('').AsDateTime:= ZQPom.FieldByName('').AsDateTime;
    // ...
    MemWidzenia.Post;
  end;

begin
  if not YearPlanner1.IsSelected(StartDate) then
    begin
      MemWidzenia.Clear(false);
      exit;
    end;

  try
    ZQPom:= TZQueryPom.Create(Self);
    ZQPom.SQL.Text:= 'SELECT * FROM widzenia_rezerwacje';

    MemWidzenia.DisableControls;
    MemWidzenia.Clear(false);
    // wczytujemy konkretny dzień i zupełniamy wakatami
    if StartDate=EndDate then
    begin
      RxDBGrid1.ColumnByFieldName('DataGodz').DisplayFormat:= 'hh:nn';
      ZQPom.SQL.Add('WHERE DATE(DataGodz)=:StartDate'); // warunek daty
      ZQPom.SQL.Add('ORDER BY DataGodz');
      ZQPom.ParamByName('StartDate').AsDate:= StartDate;
      ZQPom.Open;

      for i:=0 to WIDZEN_DZIENNIE-1 do
      begin
        godzW:= WIDZENIE_OD_GODZ + i;
        if HourOf(ZQPom.FieldByName('DataGodz').AsDateTime) = godzW then
        begin
          AppendToMemo;
          ZQPom.Next;
        end
        else
        begin
          MemWidzenia.Append;
          MemWidzenia.FieldByName('DataGodz').AsDateTime:= ComposeDateTime(StartDate, EncodeTime(godzW,0,0,0));
          MemWidzenia.Post;
        end;
      end;
    end
    else
    // wczytujemy zakres dni bez uzupełniania wakatów
    begin
      RxDBGrid1.ColumnByFieldName('DataGodz').DisplayFormat:= 'yyyy/mm/dd hh:nn';
      ZQPom.SQL.Add('WHERE DataGodz BETWEEN :StartDate AND :EndDate'); // warunek od StartDate do EndDate
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
    MemWidzenia.EnableControls;
    FreeAndNil(ZQPom);
  end;
end;

procedure TOchRezerwacjaWidzen.WczytajDaneTerminarza;
var ZQPom: TZQueryPom;
    d,m : integer;
    pomData: TDateTime;
begin
  Terminy.Clear;
  try
    ZQPom:= TZQueryPom.Create(Self);
    ZQPom.SQL.Text:= 'SELECT * FROM widzenia_rezerwacje';
    ZQPom.Open;
    //MakeSQLTerminy( TZQuery(ZQPom), EncodeDate( YearPlanner1.Year ,1,1), EncodeDate( YearPlanner1.Year ,12,31));

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
end;

end.

