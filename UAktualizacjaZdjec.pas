unit UAktualizacjaZdjec;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, Buttons, ComCtrls, DB, rxmemds, rxdbgrid, ZDataset, datamodule;

type

  { TCheckFotosThread }

  TCheckFotosThread = class(TThread)
  private
    ZQOs: TZQuery;
    Memo, MemoBrak: TRxMemoryData;
    ProgressBar: TProgressBar;
    Btn: TCustomButton;
    i: word;
    wiekZdj: Integer;
    procedure SetProprties;
    procedure SetProprtiesBrak;
  protected
    procedure Execute; override;
  public
    constructor Create(vMemoBrak, vMemo: TRxMemoryData; vProgressBar: TProgressBar; vBtn: TCustomButton);
    destructor Destroy; override;
  end;

  { TAktualizacjaZdjec }

  TAktualizacjaZdjec = class(TForm)
    btnZnajdz: TBitBtn;
    DSMem: TDataSource;
    DSMemBrak: TDataSource;
    Image1: TImage;
    PageControl1: TPageControl;
    Panel1: TPanel;
    Panel2: TPanel;
    ProgressBar1: TProgressBar;
    RxDBGrid1: TRxDBGrid;
    RxDBGrid2: TRxDBGrid;
    RxMem: TRxMemoryData;
    RxMemBrak: TRxMemoryData;
    StaticText1: TStaticText;
    TabSheetStare: TTabSheet;
    TabSheetBrzkZdj: TTabSheet;
    procedure btnZnajdzClick(Sender: TObject);
    procedure RxDBGrid2DblClick(Sender: TObject);
   private
    watek: TCheckFotosThread;
   public

  end;

//var
//  AktualizacjaZdjec: TAktualizacjaZdjec;

implementation
uses dateutils, UWidokZdjecia;
{$R *.frm}

{ TCheckFotosThread }

procedure TCheckFotosThread.SetProprties;
var bok: TBookMark;
begin
  if terminated then begin
    ProgressBar.Visible:= false;
    Btn.Enabled:= true;
    exit;
  end;
  Memo.DisableControls;
  bok:= Memo.GetBookmark;
  Memo.AppendRecord([ZQOs.FieldByName('IDO').AsInteger, ZQOs.FieldByName('Nazwisko').AsString, ZQOs.FieldByName('Imie').AsString, wiekZdj]);
  memo.GotoBookmark(bok);
  Memo.EnableControls;
  ProgressBar.Position:= i;
end;

procedure TCheckFotosThread.SetProprtiesBrak;
var bok: TBookMark;
begin
  if terminated then begin
    ProgressBar.Visible:= false;
    Btn.Enabled:= true;
    exit;
  end;
  MemoBrak.DisableControls;
  bok:= MemoBrak.GetBookmark;
  MemoBrak.AppendRecord([ZQOs.FieldByName('IDO').AsInteger, ZQOs.FieldByName('Nazwisko').AsString, ZQOs.FieldByName('Imie').AsString]);
  memoBrak.GotoBookmark(bok);
  MemoBrak.EnableControls;
  ProgressBar.Position:= i;
end;

procedure TCheckFotosThread.Execute;
var
  fileName: String;
  fileDate: TDateTime;
begin
  i:=0;
  ProgressBar.Max:= ZQOs.RecordCount;

  while not ZQOs.EOF do
  begin
    inc(i);
    fileName := DM.Path_Foto + ZQOs.FieldByName('IDO').AsString+'.jpg';

    if not FileExists( fileName ) then
      begin
        Synchronize( @SetProprtiesBrak );
      end
    else
      begin
        // sprawdzamy wiek zdjęcia po dacie
        fileDate := FileDateToDateTime( FileAge( fileName ));
        wiekZdj := YearsBetween( fileDate, Date() );
        //if fileDate < ZQOs.FieldByName('PRZYJ').AsDateTime then // zdjęcie z poprzedniego pobytu
        if (wiekZdj>=2)and(fileDate < ZQOs.FieldByName('PRZYJ').AsDateTime) then // zdjęcia starsze niż 2 lata i z poprzedniego pobytu
        begin
          Synchronize( @SetProprties );
        end;
      end;
    ZQOs.Next;
  end;
  Terminate;
  Synchronize( @SetProprties );
end;

constructor TCheckFotosThread.Create(vMemoBrak, vMemo: TRxMemoryData; vProgressBar: TProgressBar; vBtn: TCustomButton);
begin
  inherited Create(False); // wywołanie wątku, uruchomienie automatyczne
  FreeOnTerminate := True; // zwolnij po zakończeniu wątku
  Memo:= vMemo;
  MemoBrak:= vMemoBrak;
  ProgressBar:= vProgressBar;
  ProgressBar.Visible:= true;
  Btn:= vBtn;
  Btn.Enabled:= false;

  ZQOs:= TZQueryPom.Create(nil);
  ZQOs.SQL.Text:= 'SELECT * FROM osadzeni';
  ZQOs.Open;
end;

destructor TCheckFotosThread.Destroy;
begin
  FreeAndNil(ZQOs);
  inherited Destroy;
end;

{ TAktualizacjaZdjec }

procedure TAktualizacjaZdjec.btnZnajdzClick(Sender: TObject);
begin
  if Assigned(watek) then
  begin
    watek.Terminate;
  end;
  RxMem.EmptyTable;
  RxMemBrak.EmptyTable;
  watek:= TCheckFotosThread.Create(RxMemBrak, RxMem, ProgressBar1, btnZnajdz);
end;

procedure TAktualizacjaZdjec.RxDBGrid2DblClick(Sender: TObject);
begin
  if TRxDBGrid(Sender).DataSource.DataSet.IsEmpty then exit;
  with TWidokZdjecia.CreateForm(Self, TRxDBGrid(Sender).DataSource.DataSet.FieldByName('IDO').AsInteger) do begin
    ShowModal;
    Free;
  end;
end;

end.

