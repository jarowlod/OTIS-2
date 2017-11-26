unit UDrukWykazOsadz;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, memds, FileUtil, rxdbgrid, ZDataset, Forms, Controls,
  Graphics, Dialogs, ExtCtrls, StdCtrls, Buttons, datamodule, LR_Class,
  LR_DBSet;

type

  { TDrukWykazOsadz }

  TDrukWykazOsadz = class(TForm)
    btnDodaj: TBitBtn;
    btnKopiujDoSchowka: TBitBtn;
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
    MemWykaz: TMemDataset;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    RxDBGrid1: TRxDBGrid;
    RxDBGrid2: TRxDBGrid;
    ZQOs: TZQuery;
    procedure btnClearClick(Sender: TObject);
    procedure btnDodajClick(Sender: TObject);
    procedure btnDrukujClick(Sender: TObject);
    procedure btnKopiujDoSchowkaClick(Sender: TObject);
    procedure btnUsunClick(Sender: TObject);
    procedure edWyszukajChange(Sender: TObject);
    procedure edWyszukajKeyPress(Sender: TObject; var Key: char);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  DrukWykazOsadz: TDrukWykazOsadz;

implementation

{$R *.frm}

{ TDrukWykazOsadz }

procedure TDrukWykazOsadz.FormCreate(Sender: TObject);
begin
  edWyszukajChange(Sender); // ZQOs.Open;
  MemWykaz.Open;
end;

procedure TDrukWykazOsadz.btnClearClick(Sender: TObject);
begin
  MemWykaz.Clear(false);
end;

procedure TDrukWykazOsadz.btnDodajClick(Sender: TObject);
var vIDO: integer;
begin
  vIDO:= ZQOs.FieldByName('IDO').AsInteger;

  if MemWykaz.Locate('IDO',vIDO, []) then
  begin
    MessageDlg('Osadzony jest już dodany.', mtInformation, [mbOK],0);
    exit;
  end;

  MemWykaz.Append;
  MemWykaz.FieldByName('IDO').AsInteger:= vIDO;
  MemWykaz.FieldValues['Nazwisko']     := ZQOs.FieldValues['Nazwisko'];
  MemWykaz.FieldValues['Imie']         := ZQOs.FieldValues['Imie'];
  MemWykaz.FieldValues['Ojciec']       := ZQOs.FieldValues['Ojciec'];
  MemWykaz.FieldValues['POC']          := ZQOs.FieldValues['POC'];
  MemWykaz.Post;
end;

procedure TDrukWykazOsadz.btnDrukujClick(Sender: TObject);
begin
  frReport1.LoadFromFile(DM.Path_Raporty + 'pen_Wykaz.lrf');
  frReport1.ShowReport;
end;

procedure TDrukWykazOsadz.btnKopiujDoSchowkaClick(Sender: TObject);
begin
  // TODO
  // DM.CopyToClipboard(DataSet: TDataSet);
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
  if Key=' ' then Key:=#0;     // zabraniamy wpisywania spacji
end;

end.

