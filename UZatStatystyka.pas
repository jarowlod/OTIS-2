unit UZatStatystyka;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, memds, FileUtil, rxdbgrid, Forms, Controls, Graphics,
  Dialogs, ExtCtrls, StdCtrls, Buttons, datamodule, LR_Class, LR_DBSet;

type

  { TStatZatGen }

  TStatZatGen = class
  private
    fKodMZK: string;
    FNazwa: string;
    fSql: string;
    fNzawa: string;
    fWynik: string;
    procedure SetSql(AValue: string);
    procedure OpenSql;
  public
    constructor Create(nazwa, kodMZK, sql: string);

    property Sql: string read FSql write SetSql;
    property Nazwa: string read FNazwa write fNzawa;
    property Wynik: string read fWynik write fWynik;
    property KodMZK: string read fKodMZK write fKodMZK;
  end;

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
    procedure FormShow(Sender: TObject);
    procedure RxDBGrid1GetCellProps(Sender: TObject; Field: TField; AFont: TFont; var Background: TColor);
  private
    WynikiList: TList;
    function GetPlatneOgolem: TStatZatGen;                   // OGÓŁEM ZATRUDNIENI ODPŁATNIE
    function GetPlatneGospodartwoBudzetowe: TStatZatGen;     // instytucje gospodarki budżetowej
    function GetPlatneKontrahenciPozawiezienni: TStatZatGen; // kontrahenci pozawięzienni
    function GetPlatnePracePorzadkowe: TStatZatGen;          // prace porządkowe oraz pomocnicze na rzecz jednostki
    function GetPlatnePracePorzadkoweKwota: TStatZatGen;     // wiersz 11 w przeliczeniu na pełnozatrudnionych

    function GetNPOgolem: TStatZatGen;                       // OGÓŁEM ZATRUDNIENI NIEODPŁATNIE
    function GetNPSpoleczne: TStatZatGen;                    // prace społeczne na rzecz podmiotów art. 56§3 oraz pożytku publicznego - art. 123a§2 kkw
    function GetNPPorzadkowePar1: TStatZatGen;               // prace porządkowe oraz pomocnicze na rzecz SW - art. 123a§1 kkw
    function GetNPPorzadkowePar2: TStatZatGen;               // prace porządkowe oraz pomocnicze na rzecz SW - art. 123a§1 kkw
    function GetNPGospodarstwoBudzetowePar3: TStatZatGen;    // instytucje gospodarki budżetowej na podstawie art. 123a§3 kkw

    function GetR2pawB: TStatZatGen;                // osadzonych z R-2 w paw. B
    function GetR2pawBPraca: TStatZatGen;           // osadzonych z R-2 w paw. B - pracujących
    function GetR2pawBPracaBezKonwoju: TStatZatGen; // osadzonych z R-2 w paw. B - pracujących bez konwojenta
    function GetOgolZatrudnionych: TStatZatGen;     // OGÓŁ ZATRUDNIONYCH

    function GetAlimentyAll: TStatZatGen;
    function GetAlimentyZatOdplatnie: TStatZatGen;
    function GetAlimentyZatNieOdplatnie: TStatZatGen;
    function GetAlimentyWycofani: TStatZatGen;

    function GetSpan: TStatZatGen;
    procedure TestPoprawnosci;
  public
    constructor Create(TheOwner: TComponent); override;
    destructor Destroy; override;
    procedure GetStat;
  end;

var
  ZatStatystyka: TZatStatystyka;

implementation

{$R *.frm}

{ TStatZatGen }

procedure TStatZatGen.SetSql(AValue: string);
begin
  if FSql=AValue then Exit;
  FSql:=AValue;
  OpenSql;
end;

procedure TStatZatGen.OpenSql;
var ZQPom: TZQueryPom;
begin
  if FSql='' then exit;
  try
    ZQPom:= TZQueryPom.Create(nil);
    ZQPom.SQL.Text:= FSql;
    ZQPom.Open;
    if not ZQPom.IsEmpty then
      fWynik:= ZQPom.FieldByName('ile').AsString;
    ZQPom.Close;
    if fWynik='' then fWynik:= '0';
  finally
    FreeAndNil(ZQPom);
  end;
end;

constructor TStatZatGen.Create(nazwa, kodMZK, sql: string);
begin
  fNazwa:= nazwa;
  fSql:= sql;
  fKodMZK:= kodMZK;
  OpenSql;
end;

{ TZatStatystyka }

procedure TZatStatystyka.BitBtn17Click(Sender: TObject);
begin
  frReport1.LoadFromFile(DM.Path_Raporty + 'zat_Statystyki.lrf');
  frReport1.ShowReport;
end;

procedure TZatStatystyka.FormShow(Sender: TObject);
begin
  GetStat;
end;

procedure TZatStatystyka.RxDBGrid1GetCellProps(Sender: TObject; Field: TField; AFont: TFont; var Background: TColor);
begin
  if not Assigned(Field) then exit;
  if Field.IsNull then exit;

  if (memStat.FieldByName('Nr').AsString= '02')or(memStat.FieldByName('Nr').AsString= '13') then
  begin
     AFont.Style:= [fsBold];
     Background:= $C1C1FF;
  end;
end;

function TZatStatystyka.GetPlatneOgolem: TStatZatGen;
var sql: string;
begin
  sql:= 'SELECT count(*) as ile'+
        ' FROM zat_zatrudnieni as zat'+
        '  LEFT OUTER JOIN zat_stanowiska as sta'+
        '  ON zat.id_stanowiska = sta.id'+
        ' WHERE (zat.status_zatrudnienia = "zatrudniony") and'+
        '       (sta.forma="ODPŁATNIE")';

  Result:= TStatZatGen.Create('OGÓŁEM ZATRUDNIENI ODPŁATNIE', '02', sql);
end;

function TZatStatystyka.GetPlatneGospodartwoBudzetowe: TStatZatGen;
var sql: string;
begin
  sql:= 'SELECT count(*) as ile'+
        ' FROM zat_zatrudnieni as zat'+
        '  LEFT OUTER JOIN zat_stanowiska as sta'+
        '  ON zat.id_stanowiska = sta.id'+
        ' WHERE (zat.status_zatrudnienia = "zatrudniony") and'+
        '       (sta.forma="ODPŁATNIE") and'+
        '       (sta.miejsce LIKE "MIGB%")';

  Result:= TStatZatGen.Create('instytucje gospodarki budżetowej', '05', sql);
end;

function TZatStatystyka.GetPlatneKontrahenciPozawiezienni: TStatZatGen;
var sql: string;
begin
  sql:= 'SELECT count(*) as ile'+
        ' FROM zat_zatrudnieni as zat'+
        '  LEFT OUTER JOIN zat_stanowiska as sta'+
        '  ON zat.id_stanowiska = sta.id'+
        ' WHERE (zat.status_zatrudnienia = "zatrudniony") and'+
        '       (sta.forma="ODPŁATNIE") and'+
        '       (sta.miejsce not LIKE "MIGB%") and'+
        '       (sta.miejsce not LIKE "DZIAŁ%")';

  Result:= TStatZatGen.Create('kontrahenci pozawięzienni', '07', sql);
end;

function TZatStatystyka.GetPlatnePracePorzadkowe: TStatZatGen;
var sql: string;
begin
  sql:= 'SELECT count(*) as ile'+
        ' FROM zat_zatrudnieni as zat'+
        '  LEFT OUTER JOIN zat_stanowiska as sta'+
        '  ON zat.id_stanowiska = sta.id'+
        ' WHERE (zat.status_zatrudnienia = "zatrudniony") and'+
        '       (sta.forma="ODPŁATNIE") and'+
        '       (sta.miejsce LIKE "DZIAŁ%")';

  Result:= TStatZatGen.Create('prace porządkowe oraz pomocnicze na rzecz jednostki', '11', sql);
end;

function TZatStatystyka.GetPlatnePracePorzadkoweKwota: TStatZatGen;
var sql: string;
begin
  sql:= 'SELECT count(*) as c, round(sum(zat.etat)/8+0.005,2)as ile'+    //ceil(sum((zat.etat )/8)*100)/100 as suma'+
        ' FROM zat_zatrudnieni as zat'+
        '  LEFT OUTER JOIN zat_stanowiska as sta'+
        '  ON zat.id_stanowiska = sta.id'+
        ' WHERE (zat.status_zatrudnienia = "zatrudniony") and'+
        '       (sta.forma="ODPŁATNIE") and'+
        '       (sta.miejsce LIKE "DZIAŁ%")';

  Result:= TStatZatGen.Create('wiersz 11 w przeliczeniu na pełnozatrudnionych', '12', sql);
end;

function TZatStatystyka.GetNPOgolem: TStatZatGen;
var sql: string;
begin
  sql:= 'SELECT count(*) as ile'+
        ' FROM zat_zatrudnieni as zat'+
        '  LEFT OUTER JOIN zat_stanowiska as sta'+
        '  ON zat.id_stanowiska = sta.id'+
        ' WHERE (zat.status_zatrudnienia = "zatrudniony") and'+
        '       (sta.forma="NIEODPŁATNIE")';

  Result:= TStatZatGen.Create('OGÓŁEM ZATRUDNIENI NIEODPŁATNIE', '13', sql);
end;

function TZatStatystyka.GetNPSpoleczne: TStatZatGen;
var sql: string;
begin
  sql:= 'SELECT count(*) as ile'+
        ' FROM zat_zatrudnieni as zat'+
        '  LEFT OUTER JOIN zat_stanowiska as sta'+
        '  ON zat.id_stanowiska = sta.id'+
        ' WHERE (zat.status_zatrudnienia = "zatrudniony") and'+
        '       (sta.forma="NIEODPŁATNIE") and'+
        '       (zat.rodzaj_zatrudnienia="123a§2") and'+
        '       (sta.system="BEZ KONWOJENTA") and'+
        '       (sta.miejsce NOT LIKE "DZIAŁ%")';

  Result:= TStatZatGen.Create('prace społeczne na rzecz podmiotów art. 56§3 oraz pożytku publicznego - art. 123a§2 kkw', '15', sql);
end;

function TZatStatystyka.GetNPPorzadkowePar1: TStatZatGen;
var sql: string;
begin
  sql:= 'SELECT count(*) as ile'+
        ' FROM zat_zatrudnieni as zat'+
        '  LEFT OUTER JOIN zat_stanowiska as sta'+
        '  ON zat.id_stanowiska = sta.id'+
        ' WHERE (zat.status_zatrudnienia = "zatrudniony") and'+
        '       (sta.forma="NIEODPŁATNIE") and'+
        '       (zat.rodzaj_zatrudnienia="123a§1") and'+
        '       (sta.miejsce LIKE "DZIAŁ%")';

  Result:= TStatZatGen.Create('prace porządkowe oraz pomocnicze na rzecz SW - art. 123a§1 kkw', '16', sql);
end;

function TZatStatystyka.GetNPPorzadkowePar2: TStatZatGen;
var sql: string;
begin
  sql:= 'SELECT count(*) as ile'+
        ' FROM zat_zatrudnieni as zat'+
        '  LEFT OUTER JOIN zat_stanowiska as sta'+
        '  ON zat.id_stanowiska = sta.id'+
        ' WHERE (zat.status_zatrudnienia = "zatrudniony") and'+
        '       (sta.forma="NIEODPŁATNIE") and'+
        '       (zat.rodzaj_zatrudnienia="123a§2") and'+
        '       (sta.miejsce LIKE "DZIAŁ%")';

  Result:= TStatZatGen.Create('prace porządkowe oraz pomocnicze na rzecz SW - art. 123a§2 kkw', '17', sql);
end;

function TZatStatystyka.GetNPGospodarstwoBudzetowePar3: TStatZatGen;
var sql: string;
begin
  sql:= 'SELECT count(*) as ile'+
        ' FROM zat_zatrudnieni as zat'+
        '  LEFT OUTER JOIN zat_stanowiska as sta'+
        '  ON zat.id_stanowiska = sta.id'+
        ' WHERE (zat.status_zatrudnienia = "zatrudniony") and'+
        '       (sta.forma="NIEODPŁATNIE") and'+
        '       (zat.rodzaj_zatrudnienia="123a§3")';

  Result:= TStatZatGen.Create('instytucje gospodarki budżetowej na podstawie art. 123a§3 kkw', '19', sql);
end;

function TZatStatystyka.GetR2pawB: TStatZatGen;
var sql: string;
begin
  sql:= 'SELECT count(*) as ile'+
        ' FROM osadzeni'+
        ' WHERE (klasyf LIKE "R-2/%") and'+
        '       (POC LIKE "B-%")';

  Result:= TStatZatGen.Create('osadzonych z R-2 w paw. B', '---', sql);
end;

function TZatStatystyka.GetR2pawBPraca: TStatZatGen;
var sql: string;
begin
  sql:= 'SELECT count(*) as ile'+
        ' FROM zat_zatrudnieni as zat'+
        '  LEFT OUTER JOIN osadzeni as os'+
        '   ON zat.ido = os.ido'+
        ' WHERE (zat.status_zatrudnienia = "zatrudniony") and'+
        '       (os.klasyf LIKE "R-2/%") and'+
        '       (os.POC LIKE "B-%")';

  Result:= TStatZatGen.Create('osadzonych z R-2 w paw. B - pracujących', '---', sql);
end;

function TZatStatystyka.GetR2pawBPracaBezKonwoju: TStatZatGen;
var sql: string;
begin
  sql:= 'SELECT count(*) as ile'+
        ' FROM zat_zatrudnieni as zat'+
        '  LEFT OUTER JOIN zat_stanowiska as sta'+
        '   ON zat.id_stanowiska = sta.id'+
        '  LEFT OUTER JOIN osadzeni as os'+
        '   ON zat.ido = os.ido'+
        ' WHERE (zat.status_zatrudnienia = "zatrudniony") and'+
        '       (sta.system = "BEZ KONWOJENTA") and'+
        '       (os.klasyf LIKE "R-2/%") and'+
        '       (os.POC LIKE "B-%")';

  Result:= TStatZatGen.Create('osadzonych z R-2 w paw. B - pracujących bez konwojenta', '---', sql);
end;

function TZatStatystyka.GetOgolZatrudnionych: TStatZatGen;
var sql: string;
begin
  sql:= 'SELECT count(*) as ile'+
        ' FROM zat_zatrudnieni as zat'+
        ' WHERE (zat.status_zatrudnienia = "zatrudniony")';

  Result:= TStatZatGen.Create('OGÓŁ ZATRUDNIONYCH', '---', sql);
end;

function TZatStatystyka.GetAlimentyAll: TStatZatGen;
var sql: string;
begin
  sql:= 'SELECT count(*) as ile'+
        ' FROM osadzeni o'+
        ' LEFT JOIN os_info i ON (i.IDO=o.IDO)'+
        ' WHERE (i.alimenty=1)';

  Result:= TStatZatGen.Create('Osadzeni zobowiązani alimentacyjnie', '---', sql);
end;

function TZatStatystyka.GetAlimentyZatOdplatnie: TStatZatGen;
var sql: string;
begin
  sql:= 'SELECT count(*) as ile'+
        ' FROM zat_zatrudnieni zat'+
        ' LEFT JOIN zat_stanowiska as sta ON (zat.id_stanowiska = sta.id)'+
        ' WHERE (zat.alimenty=1) and'+
        '       (zat.status_zatrudnienia = "zatrudniony") and'+
        '       (sta.forma="ODPŁATNIE")';

  Result:= TStatZatGen.Create('Osadzeni zobowiązani alimentacyjnie, zatrudnieni odpłatnie', '---', sql);
end;

function TZatStatystyka.GetAlimentyZatNieOdplatnie: TStatZatGen;
var sql: string;
begin
  sql:= 'SELECT count(*) as ile'+
        ' FROM zat_zatrudnieni zat'+
        ' LEFT JOIN zat_stanowiska as sta ON (zat.id_stanowiska = sta.id)'+
        ' WHERE (zat.alimenty=1) and'+
        '       (zat.status_zatrudnienia = "zatrudniony") and'+
        '       (sta.forma="NIEODPŁATNIE")';

  Result:= TStatZatGen.Create('Osadzeni zobowiązani alimentacyjnie, zatrudnieni nieodpłatnie', '---', sql);
end;

function TZatStatystyka.GetAlimentyWycofani: TStatZatGen;
var sql: string;
begin
  sql:= 'SELECT count(*) as ile'+
        ' FROM osadzeni o'+
        ' WHERE (o.IDO in (SELECT IDO FROM zat_zatrudnieni'+
        '                  WHERE (alimenty = 1) and'+
        '                       (status_zatrudnienia = "wycofany") and'+
        '                       (pobyt = "Aktualny"))'+
        '       ) and'+
        '       (o.IDO not in (SELECT IDO FROM zat_zatrudnieni WHERE status_zatrudnienia = "zatrudniony"))';

  Result:= TStatZatGen.Create('Osadzeni zobowiązani alimentacyjnie, wycofani z zatrudnienia', '---', sql);
end;

function TZatStatystyka.GetSpan: TStatZatGen;
begin
  Result:= TStatZatGen.Create('---------------------------------', '---', '');
  Result.Wynik:= '---';
end;

// TEST POPRAWNOŚCI
// sprawdzam poprawność zatrudnionych nieopłatnie
procedure TZatStatystyka.TestPoprawnosci;
var ZQPom: TZQueryPom;
    sumaNieodplatnych: integer;
    NieodplatnychOgolem: integer;
    sNazwiska: string;
begin
  sumaNieodplatnych:= StrToIntDef(TStatZatGen(WynikiList[6]).Wynik, 0)+
                      StrToIntDef(TStatZatGen(WynikiList[7]).Wynik, 0)+
                      StrToIntDef(TStatZatGen(WynikiList[8]).Wynik, 0)+
                      StrToIntDef(TStatZatGen(WynikiList[9]).Wynik, 0);
  NieodplatnychOgolem:= StrToIntDef(TStatZatGen(WynikiList[5]).Wynik, 0);
  if NieodplatnychOgolem=sumaNieodplatnych then exit;

  ZQPom:= TZQueryPom.Create(nil);
  try
    ZQPom.SQL.Text:= 'SELECT Nazwisko'+
                     ' FROM zat_zatrudnieni as zat'+
                     '  LEFT OUTER JOIN zat_stanowiska as sta'+
                     '  ON zat.id_stanowiska = sta.id'+
                     ' WHERE (zat.status_zatrudnienia = "zatrudniony") and'+
                     '       (sta.forma="NIEODPŁATNIE") and'+
                     '       (zat.rodzaj_zatrudnienia not LIKE "123a§%")';
    ZQPom.Open;

    sNazwiska:='';
    while not ZQPom.EOF do
    begin
      if sNazwiska<>'' then sNazwiska:= sNazwiska+', ';
      sNazwiska:= sNazwiska+ ZQPom.FieldByName('Nazwisko').AsString;
      ZQPom.Next;
    end;
  finally
    FreeAndNil(ZQPom);
  end;

  MessageDlg('Istnieje różnica pomiędzy ilością zatrudnionych nieodpłatnie a sumą poszczególnych paragrafów.'+LineEnding+
             'Różnica nieodpłatnych: '+(NieodplatnychOgolem-sumaNieodplatnych).ToString+ LineEnding+
             '('+ sNazwiska +')', mtWarning, [mbOK],0);
end;

constructor TZatStatystyka.Create(TheOwner: TComponent);
begin
  inherited Create(TheOwner);
  WynikiList:= TList.Create;
end;

destructor TZatStatystyka.Destroy;
begin
  FreeAndNil(WynikiList);
  inherited Destroy;
end;

procedure TZatStatystyka.GetStat;
var wynik: TStatZatGen;
  i: Integer;
begin
  WynikiList.Add(GetPlatneOgolem);                     // index 0
  WynikiList.Add(GetPlatneGospodartwoBudzetowe);       // index 1
  WynikiList.Add(GetPlatneKontrahenciPozawiezienni);   // index 2
  WynikiList.Add(GetPlatnePracePorzadkowe);            // index 3
  WynikiList.Add(GetPlatnePracePorzadkoweKwota);       // index 4

  WynikiList.Add(GetNPOgolem);                         // index 5
  WynikiList.Add(GetNPSpoleczne);                      // index 6
  WynikiList.Add(GetNPPorzadkowePar1);                 // index 7
  WynikiList.Add(GetNPPorzadkowePar2);                 // index 8
  WynikiList.Add(GetNPGospodarstwoBudzetowePar3);      // index 9

  WynikiList.Add(GetR2pawB);                           // index 10
  WynikiList.Add(GetR2pawBPraca);                      // index 11
  WynikiList.Add(GetR2pawBPracaBezKonwoju);            // index 12
  WynikiList.Add(GetOgolZatrudnionych);                // index 13

  WynikiList.Add(GetSpan);

  WynikiList.Add(GetAlimentyAll);
  WynikiList.Add(GetAlimentyZatOdplatnie);
  WynikiList.Add(GetAlimentyZatNieOdplatnie);
  WynikiList.Add(GetAlimentyWycofani);

  //dodajemy wyniki do memStat;
  for i:=0 to WynikiList.Count-1 do
  begin
    wynik:= TStatZatGen(WynikiList[i]);
    memStat.AppendRecord([wynik.Nazwa, wynik.kodMZK, wynik.Wynik]);
  end;

  TestPoprawnosci;
end;

end.

