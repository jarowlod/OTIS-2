unit UZatStatystyka;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, memds, FileUtil, rxdbgrid, Forms, Controls, Graphics,
  Dialogs, ExtCtrls, StdCtrls, Buttons, datamodule, LR_Class, LR_DBSet;

type

  { TZatStatystyka }

  TZatStatystyka = class(TForm)
    BitBtn17: TBitBtn;
    DSStat: TDataSource;
    frDBDataSet1: TfrDBDataSet;
    frReport1: TfrReport;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    memStat: TMemDataset;
    Panel5: TPanel;
    RxDBGrid1: TRxDBGrid;
    procedure BitBtn17Click(Sender: TObject);
  private
    poz02: integer;  // OGÓŁEM ODPŁATNIE
    poz05: integer;  // ZIGB
    poz07: integer;  // kontrahenci zewnętrzni
    poz11: integer;  // prace porządkowe na rzecz jednostki
    poz12: Currency; // poz11 w przeliczeniu na pełen etat

    poz13: integer;  // NIEODPŁATNIE
    //poz14: integer;  // 123a§1 - prace na cele społeczne na rzecz samorządu 90 godz. i więcej
    poz15: integer;  // na rzecz organizacji pożytku publicznego (123a§2, poza ZK)
    poz16: integer;  // 123a§1 - na rzecz SW, do 90 godz.
    poz17: integer;  // 123a§2 - na rzecz SW
    poz19: integer;  // 123a§3
  public
    Procedure GetStat;
  end;

var
  ZatStatystyka: TZatStatystyka;

implementation

{$R *.lfm}

{ TZatStatystyka }

procedure TZatStatystyka.BitBtn17Click(Sender: TObject);
begin
  frReport1.LoadFromFile(DM.Path_Raporty + 'zat_Statystyki.lrf');
  frReport1.ShowReport;
end;

procedure TZatStatystyka.GetStat;
var ZQPom: TZQueryPom;
    inne : integer;
begin
  ZQPom:= TZQueryPom.Create(Self);
  ZQPom.SQL.Text:= 'SELECT count(*) as ile'+
                   ' FROM zat_zatrudnieni as zat'+
                   '  LEFT OUTER JOIN zat_stanowiska as sta'+
                   '  ON zat.id_stanowiska = sta.id'+
                   ' WHERE (zat.status_zatrudnienia = "zatrudniony") and'+
                   '       (sta.forma="ODPŁATNIE")';
  ZQPom.Open;
  poz02:= ZQPom.FieldByName('ile').AsInteger;

  ZQPom.SQL.Text:= 'SELECT count(*) as ile'+
                   ' FROM zat_zatrudnieni as zat'+
                   '  LEFT OUTER JOIN zat_stanowiska as sta'+
                   '  ON zat.id_stanowiska = sta.id'+
                   ' WHERE (zat.status_zatrudnienia = "zatrudniony") and'+
                   '       (sta.forma="ODPŁATNIE") and'+
                   '       (sta.miejsce LIKE "ZIGB%")';
  ZQPom.Open;
  poz05:= ZQPom.FieldByName('ile').AsInteger;

  ZQPom.SQL.Text:= 'SELECT count(*) as ile'+
                   ' FROM zat_zatrudnieni as zat'+
                   '  LEFT OUTER JOIN zat_stanowiska as sta'+
                   '  ON zat.id_stanowiska = sta.id'+
                   ' WHERE (zat.status_zatrudnienia = "zatrudniony") and'+
                   '       (sta.forma="ODPŁATNIE") and'+
                   '       (sta.miejsce not LIKE "ZIGB%") and'+
                   '       (sta.miejsce not LIKE "DZIAŁ%")';
  ZQPom.Open;
  poz07:= ZQPom.FieldByName('ile').AsInteger;

  ZQPom.SQL.Text:= 'SELECT count(*) as ile, round(sum(zat.etat)/8+0.005,2)as suma'+    //ceil(sum((zat.etat )/8)*100)/100 as suma'+
                   ' FROM zat_zatrudnieni as zat'+
                   '  LEFT OUTER JOIN zat_stanowiska as sta'+
                   '  ON zat.id_stanowiska = sta.id'+
                   ' WHERE (zat.status_zatrudnienia = "zatrudniony") and'+
                   '       (sta.forma="ODPŁATNIE") and'+
                   '       (sta.miejsce LIKE "DZIAŁ%")';
  ZQPom.Open;
  poz11:= ZQPom.FieldByName('ile').AsInteger;
  poz12:= ZQPom.FieldByName('suma').AsCurrency;

  memStat.AppendRecord(['OGÓŁEM ZATRUDNIENI ODPŁATNIE', '02', poz02]);
  memStat.AppendRecord(['instytucje gospodarki budżetowej', '05', poz05]);
  memStat.AppendRecord(['kontrahenci pozawięzienni', '07', poz07]);
  memStat.AppendRecord(['prace porządkowe oraz pomocnicze na rzecz jednostki', '11', poz11]);
  memStat.AppendRecord(['wiersz 11 w przeliczeniu na pełnozatrudnionych', '12', poz12]);

  // =========================================================================
  // NIEODPŁATNIE
  ZQPom.SQL.Text:= 'SELECT count(*) as ile'+
                   ' FROM zat_zatrudnieni as zat'+
                   '  LEFT OUTER JOIN zat_stanowiska as sta'+
                   '  ON zat.id_stanowiska = sta.id'+
                   ' WHERE (zat.status_zatrudnienia = "zatrudniony") and'+
                   '       (sta.forma="NIEODPŁATNIE")';
  ZQPom.Open;
  poz13:= ZQPom.FieldByName('ile').AsInteger;

  ZQPom.SQL.Text:= 'SELECT count(*) as ile'+
                   ' FROM zat_zatrudnieni as zat'+
                   '  LEFT OUTER JOIN zat_stanowiska as sta'+
                   '  ON zat.id_stanowiska = sta.id'+
                   ' WHERE (zat.status_zatrudnienia = "zatrudniony") and'+
                   '       (sta.forma="NIEODPŁATNIE") and'+
                   '       (zat.rodzaj_zatrudnienia="123a§2") and'+
                   '       (sta.system="BEZ KONWOJENTA") and'+
                   '       (sta.miejsce NOT LIKE "DZIAŁ%")';
  ZQPom.Open;
  poz15:= ZQPom.FieldByName('ile').AsInteger;

  ZQPom.SQL.Text:= 'SELECT count(*) as ile'+
                   ' FROM zat_zatrudnieni as zat'+
                   '  LEFT OUTER JOIN zat_stanowiska as sta'+
                   '  ON zat.id_stanowiska = sta.id'+
                   ' WHERE (zat.status_zatrudnienia = "zatrudniony") and'+
                   '       (sta.forma="NIEODPŁATNIE") and'+
                   '       (zat.rodzaj_zatrudnienia="123a§1") and'+
                   '       (sta.miejsce LIKE "DZIAŁ%")';
  ZQPom.Open;
  poz16:= ZQPom.FieldByName('ile').AsInteger;

  ZQPom.SQL.Text:= 'SELECT count(*) as ile'+
                   ' FROM zat_zatrudnieni as zat'+
                   '  LEFT OUTER JOIN zat_stanowiska as sta'+
                   '  ON zat.id_stanowiska = sta.id'+
                   ' WHERE (zat.status_zatrudnienia = "zatrudniony") and'+
                   '       (sta.forma="NIEODPŁATNIE") and'+
                   '       (zat.rodzaj_zatrudnienia="123a§2") and'+
                   '       (sta.miejsce LIKE "DZIAŁ%")';
  ZQPom.Open;
  poz17:= ZQPom.FieldByName('ile').AsInteger;

  ZQPom.SQL.Text:= 'SELECT count(*) as ile'+
                   ' FROM zat_zatrudnieni as zat'+
                   '  LEFT OUTER JOIN zat_stanowiska as sta'+
                   '  ON zat.id_stanowiska = sta.id'+
                   ' WHERE (zat.status_zatrudnienia = "zatrudniony") and'+
                   '       (sta.forma="NIEODPŁATNIE") and'+
                   '       (zat.rodzaj_zatrudnienia="123a§3")';
  ZQPom.Open;
  poz19:= ZQPom.FieldByName('ile').AsInteger;

  memStat.AppendRecord(['OGÓŁEM ZATRUDNIENI NIEODPŁATNIE', '13', poz13]);
  memStat.AppendRecord(['prace społeczne na rzecz podmiotów art. 56§3 oraz pożytku publicznego - art. 123a§2 kkw', '15', poz15]);
  memStat.AppendRecord(['prace porządkowe oraz pomocnicze na rzecz SW - art. 123a§1 kkw', '16', poz16]);
  memStat.AppendRecord(['prace porządkowe oraz pomocnicze na rzecz SW - art. 123a§2 kkw', '17', poz17]);
  memStat.AppendRecord(['instytucje gospodarki budżetowej na podstawie art. 123a§3 kkw', '19', poz19]);

  //==============================================================================
  // dodatkowe statystyki

  ZQPom.SQL.Text:= 'SELECT count(*) as ile'+
                   ' FROM osadzeni'+
                   ' WHERE (klasyf LIKE "R-2/%") and'+
                   '       (POC LIKE "B-%")';
  ZQPom.Open;
  inne:= ZQPom.FieldByName('ile').AsInteger;
  memStat.AppendRecord(['osadzonych z R-2 w paw. B', '---', inne]);

  ZQPom.SQL.Text:= 'SELECT count(*) as ile'+
                   ' FROM zat_zatrudnieni as zat'+
                   '  LEFT OUTER JOIN osadzeni as os'+
                   '   ON zat.ido = os.ido'+
                   ' WHERE (zat.status_zatrudnienia = "zatrudniony") and'+
                   '       (os.klasyf LIKE "R-2/%") and'+
                   '       (os.POC LIKE "B-%")';
  ZQPom.Open;
  inne:= ZQPom.FieldByName('ile').AsInteger;
  memStat.AppendRecord(['osadzonych z R-2 w paw. B - pracujących', '---', inne]);

  ZQPom.SQL.Text:= 'SELECT count(*) as ile'+
                   ' FROM zat_zatrudnieni as zat'+
                   '  LEFT OUTER JOIN zat_stanowiska as sta'+
                   '   ON zat.id_stanowiska = sta.id'+
                   '  LEFT OUTER JOIN osadzeni as os'+
                   '   ON zat.ido = os.ido'+
                   ' WHERE (zat.status_zatrudnienia = "zatrudniony") and'+
                   '       (sta.system = "BEZ KONWOJENTA") and'+
                   '       (os.klasyf LIKE "R-2/%") and'+
                   '       (os.POC LIKE "B-%")';

  ZQPom.Open;
  inne:= ZQPom.FieldByName('ile').AsInteger;
  memStat.AppendRecord(['osadzonych z R-2 w paw. B - pracujących bez konwojenta', '---', inne]);

  ZQPom.SQL.Text:= 'SELECT count(*) as ile'+
                   ' FROM zat_zatrudnieni as zat'+
                   ' WHERE (zat.status_zatrudnienia = "zatrudniony")';
  ZQPom.Open;
  inne:= ZQPom.FieldByName('ile').AsInteger;
  memStat.AppendRecord(['OGÓŁ ZATRUDNIONYCH', '---', inne]);


  FreeAndNil(ZQPom);
end;

end.

