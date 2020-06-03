unit UWypiska;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, Buttons, ExtCtrls,
  StdCtrls, rxmemds, rxdbgrid, ZDataset, datamodule, LazUTF8, LR_Class,
  LR_DBSet;

type

  { TWypiska }

  TWypiska = class(TForm)
    btnDoSchowka: TBitBtn;
    btnWklejZeSchowka: TBitBtn;
    btnDrukuj: TBitBtn;
    DSMem: TDataSource;
    frDBDataSet1: TfrDBDataSet;
    frReport1: TfrReport;
    OpenDialog1: TOpenDialog;
    Panel1: TPanel;
    RxDBGrid1: TRxDBGrid;
    RxMem: TRxMemoryData;
    ZQOsadzeni: TZQuery;
    procedure btnDoSchowkaClick(Sender: TObject);
    procedure btnDrukujClick(Sender: TObject);
    procedure btnWklejZeSchowkaClick(Sender: TObject);
  private
    function dodajKwote(s: string): string;
    function dodajLP(s: string): string;
    function dodajNazwisko(s: string): string;
    function dodajSyn(s: string): string;
    function RownajL(S: string; Zn: char; ile: byte): string;
    function ZnajdzPOC(NazwiskoImieOjciec: string): string;
  public

  end;

var
  Wypiska: TWypiska;

implementation
uses Clipbrd;
{$R *.frm}

{ TWypiska }

procedure TWypiska.btnWklejZeSchowkaClick(Sender: TObject);
var dane: TStringList;
    fileName: String;
    i: integer;
    s: string;
begin
    if OpenDialog1.Execute then
    begin
      filename := OpenDialog1.Filename;
    end else exit;

  RxMem.EmptyTable;

  try
  dane:= TStringList.Create;
  //dane.Text:= Clipboard.AsText;
  dane.LoadFromFile(fileName);

  ZQOsadzeni.Open;

  // wczytywanie paragonów
  i:= 0;
  while i<=dane.Count-1 do
  begin
    s:= dane[i];
    if length(s)>5 then
    if (s[2]='L') and (s[3]='p') then
    begin
      RxMem.Append;
      RxMem.FieldByName('Lp').AsString:= dodajLP(s);
      inc(i);
      s:=dane[i];
      RxMem.FieldByName('Kwota').AsString:= dodajKwote(s);
      inc(i);
      s:=dane[i];
      RxMem.FieldByName('Nazwisko').AsString:= dodajNazwisko(s);
      inc(i);
      s:=dane[i];
      RxMem.FieldByName('Imie').AsString:= dodajNazwisko(s);
      inc(i);
      s:=dane[i];
      RxMem.FieldByName('Ojciec').AsString:= dodajSyn(s);
      inc(i);
      RxMem.FieldByName('POC').AsString:= ZnajdzPOC(RxMem.FieldByName('Nazwisko').AsString+
                                                    RxMem.FieldByName('Imie').AsString+
                                                    RxMem.FieldByName('Ojciec').AsString);
      RxMem.Post;
    end;
    inc(i);
  end;

  finally
    ZQOsadzeni.Close;
    FreeAndNil(dane);
  end;
end;

procedure TWypiska.btnDoSchowkaClick(Sender: TObject);
var s: string;
    paw: string;
    nazwa: string;
    kwota: string;
    nazwaLength: integer;
    separateLength: integer;
begin
  RxMem.SortOnFields('POC');
  RxMem.First;
  s:='';

  while not RxMem.EOF do
  begin
    paw:= RxMem.FieldByName('POC').AsString;
    s+=' cela ' + paw + LineEnding;

    while (not RxMem.EOF)and(paw = RxMem.FieldByName('POC').AsString) do
    begin
      nazwa:= RxMem.FieldByName('Nazwisko').AsString + ' ' +
              RxMem.FieldByName('Imie').AsString + ' ' +
              RxMem.FieldByName('Ojciec').AsString;
      nazwaLength:= Utf8Length(nazwa);
      separateLength:= 51 - nazwaLength;

      kwota:= RownajL(RxMem.FieldByName('Kwota').AsString, ' ', separateLength);
      s+= '       ' + nazwa + ' ' + kwota + LineEnding;

      RxMem.Next;
    end;
    s+= LineEnding;
  end;

  s+= RownajL('-','-',58) + LineEnding;
  s+= 'Wszystkich pozycji '+ RxMem.RecordCount.ToString +', na podstawie wydruku z programu Depozyt.' + LineEnding;
  s+= 'Aktualne cele z CBDOPW.' + LineEnding;
  s+= 'Oprogramowanie ver.3 - Włodarczyk Jarosław';

  Clipboard.AsText:= s;
end;

procedure TWypiska.btnDrukujClick(Sender: TObject);
begin
  RxMem.SortOnFields('POC');
  RxMem.First;

  frReport1.LoadFromFile(DM.Path_Raporty + 'dep_wypiska.lrf');
  frReport1.ShowReport;
end;

function TWypiska.dodajLP(s: string): string;
begin
  delete(s,11,length(s));
  delete(s,1,5);
  result:= s;
end;

function TWypiska.dodajKwote(s: string): string;
begin
  delete(s,70,length(s));
  delete(s,1,30);
  result:= Trim(s);
end;

function TWypiska.dodajNazwisko(s: string): string;
begin
  delete(s,29,length(s));
  delete(s,1,1);
  result:= Trim(s);
end;

function TWypiska.dodajSyn(s: string): string;
begin
  delete(s,29,length(s));
  delete(s,1,Pos('ojca',s)+4);
  result:= Trim(s);
end;

function TWypiska.ZnajdzPOC(NazwiskoImieOjciec: string): string;
begin
  if ZQOsadzeni.Locate('NazwiskoImie', NazwiskoImieOjciec, []) then
    Result:= ZQOsadzeni.FieldByName('POC').AsString
  else
    Result:= 'brak danych';
end;

Function TWypiska.RownajL(S: string; Zn: char; ile: byte): string;
begin
    if Utf8Length(s)<ile then
      begin
        Repeat
          S:=Zn+S;
        Until length(S)>=ile;
      end;
    RownajL:=S;
end;

end.

