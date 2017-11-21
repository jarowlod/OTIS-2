unit UZatZaswiadczenie;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls, Buttons, DbCtrls, db, BufDataset, rxdbgrid, rxmemds,
  datamodule, fphtml, LR_DBSet, LR_Class;

type

  { TZatZaswiadczenie }

  TZatZaswiadczenie = class(TForm)
    BitBtn1: TBitBtn;
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
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    RxDBGrid1: TRxDBGrid;
    procedure BitBtn1Click(Sender: TObject);
  private
     fIDO: integer; // IDO osadzonego
     fID : integer; // ID zat_zatrudnieni
  public
     procedure SetIDO(sIDO, sID: integer);
  end;

var
  ZatZaswiadczenie: TZatZaswiadczenie;

implementation

{$R *.lfm}

{ TZatZaswiadczenie }

procedure TZatZaswiadczenie.BitBtn1Click(Sender: TObject);
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

procedure TZatZaswiadczenie.SetIDO(sIDO, sID: integer);
var ZQPom: TZQueryPom;
    poz: integer;
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
       bufOkresy.FieldByName('Od').AsDateTime  := ZQPom.FieldByName('zat_od').AsDateTime;
    if not ZQPom.FieldByName('zat_do').IsNull then
       bufOkresy.FieldByName('Do').AsDateTime  := ZQPom.FieldByName('zat_do').AsDateTime;
    bufOkresy.FieldByName('forma').AsString := ZQPom.FieldByName('forma').AsString;
    bufOkresy.FieldByName('rodzaj').AsString:= ZQPom.FieldByName('rodzaj_zatrudnienia').AsString;
    bufOkresy.FieldByName('wymiar').AsString:= ZQPom.FieldByName('etat').AsString;
    bufOkresy.FieldByName('Jednostka').AsString:= 'ZK Kłodzko';

    bufOkresy.Post;

    ZQPom.Next;
  end;

  FreeAndNil(ZQPom);
end;

end.

