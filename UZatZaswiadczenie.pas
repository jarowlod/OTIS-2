unit UZatZaswiadczenie;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls, Buttons, DbCtrls, db, BufDataset, rxdbgrid, rxmemds,
  fphtml, LR_DBSet, LR_Class, DBGrids, datamodule;

type

  { TZatZaswiadczenie }

  TZatZaswiadczenie = class(TForm)
    btnDrukuj: TBitBtn;
    btnZapisz: TBitBtn;
    btnWczytaj: TBitBtn;
    bufOkresy: TBufDataset;
    DBNavigator1: TDBNavigator;
    DSOkresy: TDataSource;
    edNazwiskoImie: TEdit;
    edOjciec: TEdit;
    edUrodzony: TEdit;
    edMiejscowosc: TEdit;
    edPracodawca_1: TEdit;
    edStanowisko: TEdit;
    edPracodawca_2: TEdit;
    frDBDataSet1: TfrDBDataSet;
    frReport1: TfrReport;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    RxDBGrid1: TRxDBGrid;
    procedure btnDrukujClick(Sender: TObject);
    procedure btnWczytajClick(Sender: TObject);
    procedure btnZapiszClick(Sender: TObject);
  private
     fIDO: integer; // IDO osadzonego
     fID : integer; // ID zat_zatrudnieni
    procedure ZapiszDopisaneOkresyPracy;
    procedure WczytajDopisaneOkresyPracy;
  public
     procedure SetIDO(sIDO, sID: integer);
  end;


implementation
{$R *.frm}

{ TZatZaswiadczenie }

procedure TZatZaswiadczenie.btnDrukujClick(Sender: TObject);
begin
  frReport1.LoadFromFile(DM.Path_Raporty + 'zat_ZaswiadczeniePracy.lrf');
  DM.SetMemoReport(frReport1, 'memo_DataPisma1', 'Kłodzko, dn. '+DM.GetDateFormatPismo(Date, 'dd MMMM yyyy')+' r.' );
  DM.SetMemoReport(frReport1, 'memNazwisko', edNazwiskoImie.Text);
  DM.SetMemoReport(frReport1, 'memOjciec',   edOjciec.Text);
  DM.SetMemoReport(frReport1, 'memUrodzony', edUrodzony.Text);
  DM.SetMemoReport(frReport1, 'memMiejscowosc', edMiejscowosc.Text);

  DM.SetMemoReport(frReport1, 'memPracodawca1', edPracodawca_1.Text);
  DM.SetMemoReport(frReport1, 'memPracodawca2', edPracodawca_2.Text);
  DM.SetMemoReport(frReport1, 'memStanowisko',  edStanowisko.Text);

  frReport1.ShowReport;
end;

procedure TZatZaswiadczenie.btnWczytajClick(Sender: TObject);
begin
  WczytajDopisaneOkresyPracy;
end;

procedure TZatZaswiadczenie.btnZapiszClick(Sender: TObject);
begin
  ZapiszDopisaneOkresyPracy;
end;

procedure TZatZaswiadczenie.ZapiszDopisaneOkresyPracy;
var ZQPom: TZQueryPom;
begin
  if not (MessageDlg('Czy zapisać wprowadzone zmiany?'+LineEnding+'Poprzednio zapisane zmiany zostaną skasowane.', mtConfirmation, [mbOK, mbCancel],0) = mrOk) then Exit;

  ZQPom:= TZQueryPom.Create(Self);
  try
    ZQPom.SQL.Text:= 'DELETE FROM zat_okresy_pracy WHERE IDO=:ido';
    ZQPom.ParamByName('ido').AsInteger:= fIDO;
    ZQPom.ExecSQL;

    ZQPom.SQL.Text:= 'SELECT * FROM zat_okresy_pracy WHERE IDO=:ido';
    ZQPom.ParamByName('ido').AsInteger:= fIDO;
    ZQPom.Open;

    bufOkresy.First;
    while not bufOkresy.EOF do
    begin
      if bufOkresy.FieldByName('zOTISa').IsNull then
         begin
           ZQPom.Append;
           ZQPom.FieldByName('IDO').AsInteger     := fIDO;
           ZQPom.FieldByName('Od').AsString       := bufOkresy.FieldByName('Od').AsString;
           ZQPom.FieldByName('Do').AsString       := bufOkresy.FieldByName('Do').AsString;
           ZQPom.FieldByName('forma').AsString    := bufOkresy.FieldByName('forma').AsString;
           ZQPom.FieldByName('rodzaj').AsString   := bufOkresy.FieldByName('rodzaj').AsString;
           ZQPom.FieldByName('wymiar').AsString   := bufOkresy.FieldByName('wymiar').AsString;
           ZQPom.FieldByName('Jednostka').AsString:= bufOkresy.FieldByName('Jednostka').AsString;
           ZQPom.Post;
         end;
      bufOkresy.Next;
    end;

    ShowMessage('Zapisano dopisane okresy zatrudnienia.');

  finally
    FreeAndNil(ZQPom);
  end;
end;

procedure TZatZaswiadczenie.WczytajDopisaneOkresyPracy;
var ZQPom: TZQueryPom;
begin
  ZQPom:= TZQueryPom.Create(Self);
  try
    ZQPom.SQL.Text:= 'SELECT * FROM zat_okresy_pracy WHERE IDO=:ido';
    ZQPom.ParamByName('ido').AsInteger:= fIDO;
    ZQPom.Open;

    if ZQPom.IsEmpty then begin
      ShowMessage('Brak wcześniejszych zapisów.');;
      Exit;
    end;

    while not ZQPom.EOF do
    begin
      bufOkresy.Append;
      bufOkresy.FieldByName('Od').AsString       := ZQPom.FieldByName('Od').AsString;
      bufOkresy.FieldByName('Do').AsString       := ZQPom.FieldByName('Do').AsString;
      bufOkresy.FieldByName('forma').AsString    := ZQPom.FieldByName('forma').AsString;
      bufOkresy.FieldByName('rodzaj').AsString   := ZQPom.FieldByName('rodzaj').AsString;
      bufOkresy.FieldByName('wymiar').AsString   := ZQPom.FieldByName('wymiar').AsString;
      bufOkresy.FieldByName('Jednostka').AsString:= ZQPom.FieldByName('Jednostka').AsString;
      bufOkresy.Post;

      ZQPom.Next;
    end;

    ShowMessage('Wczytano poprzednio dopisane okresy zatrudnienia.');

  finally
    FreeAndNil(ZQPom);
  end;
end;

procedure TZatZaswiadczenie.SetIDO(sIDO, sID: integer);
var ZQPom: TZQueryPom;
    poz: integer;
    sEtat: string;
begin

  bufOkresy.CreateDataset;

  fIDO:= sIDO;
  fID := sID;
  //wczytujemy potrzebne dane do kontrolek formy
  ZQPom:= TZQueryPom.Create(Self);
  ZQPom.SQL.Text:= 'SELECT zat.Nazwisko, zat.Imie, zat.Ojciec, zat.Urodzony, zat.miejsce_urodzenia, zat.zat_od, zat.zat_do, zat.etat, zat.rodzaj_zatrudnienia, sta.forma'+
                   ' FROM zat_zatrudnieni as zat'+
                   ' LEFT OUTER JOIN zat_stanowiska as sta ON (zat.id_stanowiska = sta.id)'+
                   ' WHERE zat.id = :id';
  ZQPom.ParamByName('id').AsInteger:= fID; // zczytujemy dane konkretnego zatrudnienia
  ZQPom.Open;

  edNazwiskoImie.Text:= ZQPom.FieldByName('Imie').AsString + ' ' + ZQPom.FieldByName('Nazwisko').AsString;
  edOjciec.Text      := ZQPom.FieldByName('Ojciec').AsString;
  edMiejscowosc.Text := ZQPom.FieldByName('miejsce_urodzenia').AsString;
  edUrodzony.Text    := ZQPom.FieldByName('Urodzony').AsString;


  ZQPom.SQL.Text:= 'SELECT zat.Nazwisko, zat.Imie, zat.Ojciec, zat.Urodzony, zat.miejsce_urodzenia, zat.zat_od, zat.zat_do, zat.etat, zat.status_zatrudnienia, zat.rodzaj_zatrudnienia, sta.forma'+
                   ' FROM zat_zatrudnieni as zat'+
                   ' LEFT OUTER JOIN zat_stanowiska as sta ON (zat.id_stanowiska = sta.id)'+
                   ' WHERE (zat.ido = :ido) AND NOT(zat.status_zatrudnienia="oczekujący")';
  ZQPom.ParamByName('ido').AsInteger:= fIDO; // zczytujemy dane wszystkich zatrudnień osadzonego
  ZQPom.Open;

  poz:=0;
  while not ZQPom.EOF do
  begin
    inc(poz);
    bufOkresy.Append;
    if not ZQPom.FieldByName('zat_od').IsNull then
       bufOkresy.FieldByName('Od').AsString  := FormatDateTime('YYYY-MM-DD', ZQPom.FieldByName('zat_od').AsDateTime);
    if not ZQPom.FieldByName('zat_do').IsNull then
       bufOkresy.FieldByName('Do').AsString  := FormatDateTime('YYYY-MM-DD', ZQPom.FieldByName('zat_do').AsDateTime);
    bufOkresy.FieldByName('forma').AsString := 'SKIEROWANIE';
    bufOkresy.FieldByName('rodzaj').AsString:= ZQPom.FieldByName('forma').AsString; //ZQPom.FieldByName('rodzaj_zatrudnienia').AsString;
    sEtat:= ZQPom.FieldByName('etat').AsString;
    if Pos('/', sEtat)>0 then sEtat += ' ETATU';
    bufOkresy.FieldByName('wymiar').AsString   := sEtat;
    bufOkresy.FieldByName('Jednostka').AsString:= 'ZK Kłodzko';
    bufOkresy.FieldByName('zOTISa').AsBoolean  := true;

    bufOkresy.Post;

    ZQPom.Next;
  end;

  // sprawdzamy czy mamy zapisane wcześniejsze okresy pracy.
  ZQPom.SQL.Text:= 'SELECT IDO FROM zat_okresy_pracy WHERE IDO=:ido';
  ZQPom.ParamByName('ido').AsInteger:= fIDO;
  ZQPom.Open;
  btnWczytaj.Enabled:= not ZQPom.IsEmpty;

  FreeAndNil(ZQPom);
end;


end.

