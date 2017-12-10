unit UDrukWykazOsadz;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, BufDataset, FileUtil, rxdbgrid, rxmemds,
  ZDataset, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls, Buttons,
  datamodule, LR_Class, LR_DBSet, DBGrids;

type

  { TDrukWykazOsadz }

  TDrukWykazOsadz = class(TForm)
    btnDodaj: TBitBtn;
    btnKopiujDoSchowka: TBitBtn;
    btnKopiujDoKoszyka: TBitBtn;
    btnUsun: TBitBtn;
    btnClear: TBitBtn;
    btnDrukuj: TBitBtn;
    DSWykaz: TDataSource;
    DSOs: TDataSource;
    edWyszukaj: TEdit;
    frDBDataSet1: TfrDBDataSet;
    frReport1: TfrReport;
    Label1: TLabel;
    Label2: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    RxDBGrid1: TRxDBGrid;
    RxDBGrid2: TRxDBGrid;
    MemWykaz: TRxMemoryData;
    ZQOs: TZQuery;
    procedure btnClearClick(Sender: TObject);
    procedure btnDodajClick(Sender: TObject);
    procedure btnDrukujClick(Sender: TObject);
    procedure btnKopiujDoKoszykaClick(Sender: TObject);
    procedure btnKopiujDoSchowkaClick(Sender: TObject);
    procedure btnUsunClick(Sender: TObject);
    procedure edWyszukajChange(Sender: TObject);
    procedure edWyszukajKeyPress(Sender: TObject; var Key: char);
    procedure FormCreate(Sender: TObject);
  private

  public
    procedure DodajDoWykazu(AIDO: integer; ANazwisko, AImie, AOjciec, APoc: string; cicho: Boolean);
  end;

var
  DrukWykazOsadz: TDrukWykazOsadz;

implementation
uses rxdbutils;
{$R *.frm}

{ TDrukWykazOsadz }

procedure TDrukWykazOsadz.FormCreate(Sender: TObject);
begin
  edWyszukajChange(Sender); // ZQOs.Open;
  MemWykaz.Open;
end;

procedure TDrukWykazOsadz.DodajDoWykazu(AIDO: integer; ANazwisko, AImie, AOjciec, APoc: string; cicho: Boolean);
begin
  if MemWykaz.Locate('IDO',AIDO, []) then
  begin
    if not cicho then MessageDlg('Osadzony jest już dodany.', mtInformation, [mbOK],0);
    exit;
  end;

  MemWykaz.Append;
  MemWykaz.FieldByName('IDO').AsInteger     := AIDO;
  MemWykaz.FieldByName('Nazwisko').AsString := ANazwisko;
  MemWykaz.FieldByName('Imie').AsString     := AImie;
  MemWykaz.FieldByName('Ojciec').AsString   := AOjciec;
  MemWykaz.FieldByName('POC').AsString      := APoc;
  MemWykaz.Post;
end;

procedure TDrukWykazOsadz.btnClearClick(Sender: TObject);
begin
  MemWykaz.CloseOpen;
end;

procedure TDrukWykazOsadz.btnDodajClick(Sender: TObject);
begin
  if ZQOs.IsEmpty then exit;

  DodajDoWykazu( ZQOs.FieldByName('IDO').AsInteger,
                 ZQOs.FieldByName('Nazwisko').AsString,
                 ZQOs.FieldByName('Imie').AsString,
                 ZQOs.FieldByName('Ojciec').AsString,
                 ZQOs.FieldByName('POC').AsString,
                 False
               );
end;

procedure TDrukWykazOsadz.btnDrukujClick(Sender: TObject);
begin
  frReport1.LoadFromFile(DM.Path_Raporty + 'pen_wykaz_grupowy_1.lrf');
  DM.SetMemoReport(frReport1, 'Memo_Data', 'Kłodzko, dn. '+DM.GetDateFormatPismo(Date, 'dd MMMM yyyy')+' r.' );
  frReport1.ShowReport;
end;

procedure TDrukWykazOsadz.btnKopiujDoKoszykaClick(Sender: TObject);
begin
  if IsDataSetEmpty(MemWykaz) then exit;
  MemWykaz.First;
  while not MemWykaz.EOF do
  begin
    DM.DodajDoKoszyka(MemWykaz.FieldByName('IDO').AsInteger);
    MemWykaz.Next;
  end;
  MessageDlg('Dodano osadzonego/nych do koszyka.', mtInformation, [mbOK], 0);
end;

procedure TDrukWykazOsadz.btnKopiujDoSchowkaClick(Sender: TObject);
begin
  RxDBGrid2.CopyToClipboard;
end;

procedure TDrukWykazOsadz.btnUsunClick(Sender: TObject);
begin
  MemWykaz.Delete;
end;

procedure TDrukWykazOsadz.edWyszukajChange(Sender: TObject);
begin
  with ZQOs do
  begin
     Close;
     ParamByName('edWyszukaj').AsString:= Trim( edWyszukaj.Text +'%');
     Open;
  end;
end;

procedure TDrukWykazOsadz.edWyszukajKeyPress(Sender: TObject; var Key: char);
begin
  if Key=#27 then    // ESC
  begin
      edWyszukaj.Text:='';
      edWyszukaj.SetFocus;
  end else
  if Key=#13 then
  begin
      btnDodajClick(Sender);
  end else
  if Key=' ' then Key:=#0;     // zabraniamy wpisywania spacji

end;

end.

