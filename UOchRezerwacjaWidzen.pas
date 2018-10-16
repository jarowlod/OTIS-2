unit UOchRezerwacjaWidzen;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, Buttons, TplGradientUnit, YearPlanner, rxdbgrid, rxmemds,
  datamodule, LR_Class, LR_DBSet;

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
    btnDrukuj: TBitBtn;
    btnUsun: TBitBtn;
    btnZaplanuj: TBitBtn;
    DSMemWidzenia: TDataSource;
    frDBDataSet1: TfrDBDataSet;
    frReport1: TfrReport;
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
    procedure btnDrukujClick(Sender: TObject);
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
    bookmarkWidzenia: TBookMark;
    procedure WczytajDane(StartDate, EndDate: TDateTime);
  public
    procedure WczytajDaneTerminarza;
  end;

var
  OchRezerwacjaWidzen: TOchRezerwacjaWidzen;

implementation
uses DateUtils, UOchAddRezerwacjaWidzen;
{$R *.frm}

const
  WIDZEN_DZIENNIE = 6;  // od godz. 9:00 do 15:00 co 1 godz.
  WIDZENIE_OD_GODZ = 9; // widzenie rozpoczynają się od godz 9:00

{ TOchRezerwacjaWidzen }

procedure TOchRezerwacjaWidzen.FormCreate(Sender: TObject);
begin
   btnZaplanuj.Enabled:= DM.uprawnienia[18];
   btnUsun.Enabled    := DM.uprawnienia[18];

   Terminy:= TTerminyWidzenEvents.Create;
   WczytajDaneTerminarza;                  // wczytuje dane do Terminy i wyświetla w terminarzu
   // zaznacza bieżącą datę
     YearPlanner1.SelectCells(Date, Date);
     YearPlanner1.CellData[MonthOf(Date), DayOf(Date)].Selected:= true;
     YearPlanner1.StartDate:= Date;
     YearPlanner1.EndDate:= Date;
   // ---
   WczytajDane(Date, Date);                // wyświetla dane bieżącej daty
end;

procedure TOchRezerwacjaWidzen.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  FreeAndNil(Terminy);
end;

procedure TOchRezerwacjaWidzen.btnZaplanujClick(Sender: TObject);
var ido: integer;
begin
  if MemWidzenia.IsEmpty then exit;
  if MemWidzenia.FieldByName('DataGodz').AsDateTime<=Now() then
  begin
    MessageDlg('Nie można zaplanować widzenia dla daty i godziny wcześniejszej niż bieżąca.', mtInformation, [mbOK],0);
    exit;
  end;
  if MemWidzenia.FieldByName('IDO').AsInteger>0 then
  begin
    MessageDlg('Wybrana godzina widzenia jest już zajęta.', mtInformation, [mbOK],0);
    exit;
  end;
  if DM.ZQOsadzeni.IsEmpty then
    ido:= 0
  else
    ido:= DM.ZQOsadzeni.FieldByName('IDO').AsInteger;

  with TOchAddRezerwacjaWidzen.CreateIDO(Self, ido, MemWidzenia.FieldByName('DataGodz').AsDateTime) do
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

procedure TOchRezerwacjaWidzen.DSMemWidzeniaDataChange(Sender: TObject; Field: TField);
begin
  btnUsun.Enabled:= ( not MemWidzenia.IsEmpty and
                     (MemWidzenia.FieldByName('IDO').AsInteger>0) and
                     (DM.PelnaNazwa = MemWidzenia.FieldByName('User').AsString) and
                     (MemWidzenia.FieldByName('DataGodz').AsDateTime > Now));
end;

procedure TOchRezerwacjaWidzen.btnUsunClick(Sender: TObject);
var ZQPom: TZQueryPom;
begin
  // uprawnienia sprawdzane podczas dataChange
  if MessageDlg('Czy usunąć zaplanowane widzenie?', mtWarning, [mbYes, mbNo],0) <> mrYes then exit;

  try
    ZQPom:= TZQueryPom.Create(Self);
    ZQPom.SQL.Text:= 'DELETE FROM widzenia_rezerwacje WHERE ID=:id';
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

procedure TOchRezerwacjaWidzen.btnDrukujClick(Sender: TObject);
begin
  if YearPlanner1.StartDate <> YearPlanner1.EndDate then
  begin
    MessageDlg('Można wydrukować tylko wybrany dzień.', mtWarning, [mbOK],0);
    exit;
  end;

  frReport1.LoadFromFile(DM.Path_Raporty + 'och_rezerwacje_Widz_Skype.lrf');
  DM.SetMemoReport(frReport1, 'Memo_Data', 'Kłodzko, dn. '+DM.GetDateFormatPismo(Date, 'dd MMMM yyyy')+' r.' );
  DM.SetMemoReport(frReport1, 'Memo_Wykaz', 'Planowanych widzeń w oddzielnym pomieszczeniu bez osoby dozorującej');
  DM.SetMemoReport(frReport1, 'Memo_WDniu', 'w dniu '+DM.GetDateFormatPismo(YearPlanner1.StartDate, 'dd-MM-yyyy')+' r.');
  frReport1.ShowReport;
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
    ZQPom.SQL.Text:= 'SELECT * FROM widzenia_rezerwacje';

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

procedure TOchRezerwacjaWidzen.WczytajDaneTerminarza;
var ZQPom: TZQueryPom;
    d,m : integer;
    pomData: TDateTime;
begin
  Terminy.Clear;
  try
    ZQPom:= TZQueryPom.Create(Self);
    ZQPom.SQL.Text:= 'SELECT * FROM widzenia_rezerwacje WHERE Date(DataGodz) BETWEEN :StartDate AND :EndDate';
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

end.

