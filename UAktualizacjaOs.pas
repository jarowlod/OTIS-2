unit UAktualizacjaOs;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, Buttons, rxdbgrid, datamodule, memds, db;

type

  { TAktualizacjaOs }

  TAktualizacjaOs = class(TForm)
    btnAktualizujOs: TBitBtn;
    btnWczytajSchowek: TBitBtn;
    DataSource1: TDataSource;
    Label1: TLabel;
    MemDataset1: TMemDataset;
    Memo1: TMemo;
    Memo2: TMemo;
    Panel1: TPanel;
    RxDBGrid1: TRxDBGrid;
    procedure btnAktualizujOsClick(Sender: TObject);
    procedure btnWczytajSchowekClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    daneHTML: TStringList;
    ID_Synchro: integer;
    procedure AktualizujDane;
    procedure WczytajDaneMemo;
    function WczytajDaneHTML: Boolean;
    procedure DodajUzytkownikaSynchro;
  public

  end;

  Function SplitString(const aSeparator, aString: String; outStrings: TStringList; aMax: Integer = 0): integer;

var
  AktualizacjaOs: TAktualizacjaOs;

implementation
uses Clipbrd;
{$R *.frm}

{ TAktualizacjaOs }

procedure TAktualizacjaOs.FormCreate(Sender: TObject);
begin
  Memo2.Lines.Clear;
  Memo1.Lines.Clear;
  btnAktualizujOs.Enabled:=false;
  daneHTML:= TStringList.Create;
end;

procedure TAktualizacjaOs.FormDestroy(Sender: TObject);
begin
  FreeAndNil(daneHTML);
end;

procedure TAktualizacjaOs.btnAktualizujOsClick(Sender: TObject);
begin
  AktualizujDane;
end;

procedure TAktualizacjaOs.btnWczytajSchowekClick(Sender: TObject);
begin
  btnWczytajSchowek.Enabled:= false;
  if WczytajDaneHTML then
    btnAktualizujOs.Enabled:= true
  else
    btnAktualizujOs.Enabled:= false;

  btnWczytajSchowek.Enabled:= not btnAktualizujOs.Enabled;
end;

procedure TAktualizacjaOs.AktualizujDane;
var ZQPom : TZQueryPom;
    i: integer;
    Uaktualnione: integer;
    Zma: integer;
    koniec: boolean;
begin
  btnAktualizujOs.Enabled:= false;
  btnWczytajSchowek.Enabled:= false;
  Memo1.ReadOnly:= true;
  Memo1.Lines.Clear;
  // dodajemy uzytkownika do tabeli synchro
  DodajUzytkownikaSynchro;

  ZQPom:= TZQueryPom.Create(Self);
  ZQPom.SQL.Text:= 'SELECT IDO, NAZWISKO, IMIE, OJCIEC, KLASYF, POC, URODZ, PRZYJ, STATUS FROM osadzeni;';
  ZQPom.Open;
  ZQPom.First;

  Uaktualnione:=0;
  Zma:=0;
  ZQPom.DisableControls;
  MemDataset1.DisableControls;

  while not ZQPom.Eof do    // <-- aktualizacja, znaczniki delete
  begin
    MemDataset1.First;
    koniec:= false;
    Application.ProcessMessages;  // nie zawieszamy programu

    while (not MemDataset1.Eof) and (not koniec) do
    begin
      if MemDataset1.FieldByName('IDO').AsInteger = ZQPom.FieldByName('IDO').AsInteger then
      begin
        // aktualizacja danych
          ZQPom.Edit;
          if ZQPom.FieldByName('NAZWISKO').AsString<>MemDataset1.FieldByName('NAZWISKO').AsString then begin ZQPom.FieldByName('NAZWISKO').AsString:= MemDataset1.FieldByName('NAZWISKO').AsString; Zma:=1; end;
          if ZQPom.FieldByName('IMIE').AsString    <>MemDataset1.FieldByName('IMIE').AsString     then begin ZQPom.FieldByName('IMIE').AsString    := MemDataset1.FieldByName('IMIE').AsString;     Zma:=1; end;
          if ZQPom.FieldByName('OJCIEC').AsString  <>MemDataset1.FieldByName('OJCIEC').AsString   then begin ZQPom.FieldByName('OJCIEC').AsString  := MemDataset1.FieldByName('OJCIEC').AsString;   Zma:=1; end;
          if ZQPom.FieldByName('KLASYF').AsString  <>MemDataset1.FieldByName('KLASYF').AsString   then begin ZQPom.FieldByName('KLASYF').AsString  := MemDataset1.FieldByName('KLASYF').AsString;   Zma:=1; end;
          if ZQPom.FieldByName('POC').AsString     <>MemDataset1.FieldByName('POC').AsString      then
                  begin
                    Memo1.Lines.Add( MemDataset1.FieldByName('IDO').AsString +' '
                        +ZQPom.FieldByName('Nazwisko').AsString+' '
                        +ZQPom.FieldByName('POC').AsString+' -> ' + MemDataset1.FieldByName('POC').AsString);
                    ZQPom.FieldByName('POC').AsString:= MemDataset1.FieldByName('POC').AsString;
                    Zma:=1;
                  end;
          //if FieldByName('URODZ').AsDateTime <>dane[i].Urodzony then begin FieldByName('URODZ').AsDateTime :=dane[i].Urodzony; Zma:=1; end;
          if ZQPom.FieldByName('PRZYJ').AsDateTime <>MemDataset1.FieldByName('PRZYJ').AsDateTime then begin ZQPom.FieldByName('PRZYJ').AsDateTime := MemDataset1.FieldByName('PRZYJ').AsDateTime; Zma:=1; end;
          if ZQPom.FieldByName('STATUS').AsString  <>MemDataset1.FieldByName('STATUS').AsString  then begin ZQPom.FieldByName('STATUS').AsString  := MemDataset1.FieldByName('STATUS').AsString;  Zma:=1; end;

          if Zma=1 then ZQPom.Post else ZQPom.Cancel;

        // koniec aktualizacji danych
        // wyrzuca zaktualizowane dane z tabeli
        MemDataset1.Delete;
        koniec:=true; // wyjście z pętli
        Uaktualnione:= Uaktualnione+Zma;   // zwiekaszamy jesli bylo bylo uaktualnienie
        Zma:=0;
      end
      else
        MemDataset1.Next;
    end;  //while

    if not koniec then    // nie znalazł osadzonego wiec go kasujemy
      if not (ZQPom.FieldByName('POC').AsString = 'ubył') then
      begin
        Memo1.Lines.Add( ZQPom.FieldByName('IDO').AsString+ ' '
                        +ZQPom.FieldByName('Nazwisko').AsString+ ' '
                        +ZQPom.FieldByName('POC').AsString+' -> ' +'ubył');
        ZQPom.Edit;
        ZQPom.FieldByName('POC').AsString:= 'ubył';  //znacznik aby potem skasować hurtem
        ZQPom.Post;
      end;

    ZQPom.Next;
  end;  //while  aktualizacja, znaczniki delete

  Memo2.Lines.Add( IntToStr(Uaktualnione)+' - osadzonych zaktualizowanych.');

  i:=0;
  ZQPom.Close;
  ZQPom.SQL.Text:= 'INSERT INTO osadzeni (IDO, NAZWISKO, IMIE, OJCIEC, URODZ, PRZYJ, KLASYF, POC, ID_SYNCHRO, STATUS) VALUES (:IDO, :NAZWISKO, :IMIE, :OJCIEC, :URODZ, :PRZYJ, :KLASYF, :POC, :ID_SYNCHRO, :STATUS);';
  MemDataset1.First;
  while not MemDataset1.eof do     // <-- dopisujemy nowych
  begin
      inc(i);
      Application.ProcessMessages;  // nie zawieszamy programu
      Memo1.Lines.Add( MemDataset1.FieldByName('IDO').AsString+' '
                        +MemDataset1.FieldByName('NAZWISKO').AsString+' '
                        +MemDataset1.FieldByName('POC').AsString+' nowy');
      ZQPom.ParamByName('IDO').AsInteger     := MemDataset1.FieldByName('IDO').AsInteger;
      ZQPom.ParamByName('NAZWISKO').AsString := MemDataset1.FieldByName('NAZWISKO').AsString;
      ZQPom.ParamByName('IMIE').AsString     := MemDataset1.FieldByName('IMIE').AsString;
      ZQPom.ParamByName('OJCIEC').AsString   := MemDataset1.FieldByName('OJCIEC').AsString;
      ZQPom.ParamByName('URODZ').AsDate      := MemDataset1.FieldByName('URODZ').AsDateTime;
      ZQPom.ParamByName('PRZYJ').AsDate      := MemDataset1.FieldByName('PRZYJ').AsDateTime;
      ZQPom.ParamByName('KLASYF').AsString   := MemDataset1.FieldByName('KLASYF').AsString;
      ZQPom.ParamByName('POC').AsString      := MemDataset1.FieldByName('POC').AsString;
      ZQPom.ParamByName('STATUS').AsString   := MemDataset1.FieldByName('STATUS').AsString;
      ZQPom.ParamByName('ID_SYNCHRO').AsInteger:= ID_Synchro;
      ZQPom.ExecSQL;

    MemDataset1.Next;
  end;                  // koniec dopisywania
  Memo2.Lines.Add(IntToStr(i)+' - osadzonych dopisanych.');
      // alternatywne rozwiązanie zapisania Opisu do DB
      //
      //ZQPom.SQL.Text:= 'SELECT ID, Opis FROM synchro WHERE ID=:id';
      //ZQPom.ParamByName('id').AsInteger:= ID_Synchro;
      //ZQPom.Open;
      //ZQPom.Edit;
      //ZQPom.FieldByName('Opis').AsString:= Memo1.Text;
      //ZQPom.Post;
      //ZQPom.Close;
      // -----------------------------------------------

      ZQPom.SQL.Text:= 'UPDATE synchro SET opis=:opis WHERE ID=:id;';
      ZQPom.ParamByName('id').AsInteger := ID_Synchro;
      ZQPom.ParamByName('opis').AsString:= Memo1.Text;  // zapis przez ParamByName('opis').AsMemo powoduje błąd
      ZQPom.ExecSQL;

  MemDataset1.EnableControls;
  btnWczytajSchowek.Enabled:= true;
  Memo1.ReadOnly:= true;
  Memo2.Lines.Add('Aktualizacja zakończona.');

  // Usuwamy os_info takie które zostały ponownie przyjęte data przyjęcia jest większa od daty autoryzacji
  //
  // ZQPom.SQL.Text:= 'DELETE FROM os_info WHERE IDO in (SELECT os.IDO FROM os_info as inf JOIN osadzeni as os ON os.IDO=inf.IDO WHERE os.PRZYJ > inf.data_autoryzacji)';
  // ZQPom.ExecSQL;

  FreeAndNil(ZQPom);
end;

procedure TAktualizacjaOs.WczytajDaneMemo;
var st    : TStringList;
    i     : integer;
    s     : string;
    kol   : integer;
begin
  Memo1.ReadOnly:= true;
  Memo2.Lines.Add('Wczytywanie danych do pamięci tymczasowej...');

  i :=1;  // pomijamy nagłówek
  st:= TStringList.Create;

  while Memo1.Lines.Count>i do
  begin
    Application.ProcessMessages;

    s:= Memo1.Lines.Strings[i];
    st.Clear;
    kol:= ExtractStrings([' '], [], PChar(s), st, true);  // liczba kolumn, prawidłowo powinno być ????

    if kol = 12 then
    begin
      Memo1.Lines.Delete(i);
      MemDataset1.Append;

      MemDataset1.FieldByName('IDO').AsString     := st[0];
      MemDataset1.FieldByName('NAZWISKO').AsString:= st[1];
      MemDataset1.FieldByName('IMIE').AsString    := st[2];
      MemDataset1.FieldByName('OJCIEC').AsString  := st[3];
      MemDataset1.FieldByName('URODZ').AsString   := st[4];
      MemDataset1.FieldByName('PRZYJ').AsString   := st[7];
      MemDataset1.FieldByName('KLASYF').AsString  := st[5];
      MemDataset1.FieldByName('POC').AsString     := st[10];
      MemDataset1.FieldByName('STATUS').AsString  := st[6];

      MemDataset1.Post;
    end
    else inc(i);
  end;
  // linie które pozostały (bez nagłówka) zawierają inną liczbę kolumn (np. Nazwisko dwóczłonowe)

  Memo1.ReadOnly:= false;
  FreeAndNil(st);
end;

Function TAktualizacjaOs.WczytajDaneHTML: boolean;
var s: string;
    poz: integer;
    st: TStringList;
    i: integer;
begin
  Result:= false;
  MemDataset1.Clear(false);

  Memo2.Lines.Add('Wczytywanie danych do pamięci tymczasowej...');

  //Wklej ze schowka jako HTML
  daneHTML.Clear;
  daneHTML.Text:= Clipboard.AsText;
  // sprawdzamy nagłówek czy jest zgodny z oczekiwaniami
  if daneHTML[0] <> 'IDO Nazwisko Imię Imię o. Urodz. Klasyf. ST Przyj. Zdjęto JP POC TA ' then
  begin
    Memo2.Lines.Add('Nieprawidłowe Dane.');
    exit;
  end;
  daneHTML.Clear;

  Memo2.Lines.Add('Dane nagłówka poprawne...');

  // zapamiętujemy zawartość schowka HTML
  s:= Clipboard().GetAsHtml(false);
  Memo1.Text:=s;

  // dzielimy tekst po znaczniku <TR>, jest to liczba wierszy z danymi i zapisujemy do daneHTML
  poz:= SplitString('<TR>', s, daneHTML, 0);
  if poz<=10 then exit;  // wartość 10 jest przykładowa, nie mniej niż 10 pozycji zapobiega omyłkowemu wklejenu danych

  s:='';
  st:= TStringList.Create;
  i:=2;  // właściwe dane od 0(śmieci), 1(nagłówek) , >= 2 <=

  MemDataset1.DisableControls;
  while i < daneHTML.Count do
  begin
    st.Clear;
    s:= StringReplace(daneHTML[i], '</TD>'+LineEnding ,'',[rfReplaceAll]);
    SplitString('<TD>', s, st, 0);

    MemDataset1.Append;
    MemDataset1.FieldByName('IDO').AsString     := st[1];
    MemDataset1.FieldByName('NAZWISKO').AsString:= st[2];
    MemDataset1.FieldByName('IMIE').AsString    := st[3];
    MemDataset1.FieldByName('OJCIEC').AsString  := st[4];
    MemDataset1.FieldByName('URODZ').AsString   := st[5];
    MemDataset1.FieldByName('PRZYJ').AsString   := st[8];
    MemDataset1.FieldByName('KLASYF').AsString  := st[6];
    MemDataset1.FieldByName('POC').AsString     := st[11];
    MemDataset1.FieldByName('STATUS').AsString  := st[7];
    MemDataset1.Post;

    inc(i);
  end;
  MemDataset1.EnableControls;

  FreeAndNil(st);

  Memo2.Lines.Add('Wczytano pozycji: ' + IntToStr(MemDataset1.RecordCount));
  Result:= true;
end;

Procedure TAktualizacjaOs.DodajUzytkownikaSynchro;
var ZQPom: TZQueryPom;
begin
  // dodajemy uzytkownika do tabeli synchro
  ZQPom:= TZQueryPom.Create(Self);
  ZQPom.SQL.Text:= 'INSERT INTO synchro (DODANO, NAZWISKO) VALUES (:DODANO, :NAZWISKO)';
  ZQPom.ParamByName('DODANO').AsDateTime:= Now;
  ZQPom.ParamByName('NAZWISKO').AsString:= DM.PelnaNazwa;
  ZQPom.ExecSQL;
  ZQPom.SQL.Clear;
  ZQPom.SQL.Text:= 'SELECT LAST_INSERT_ID() as id';
  ZQPom.Open;
  ID_Synchro:= ZQPom.FieldByName('id').AsInteger;
  ZQPom.Close;
  FreeAndNil(ZQPom);
  // koniec dodawania
end;




Function SplitString(const aSeparator, aString: String; outStrings: TStringList; aMax: Integer = 0): integer;
var
  i, strt, cnt: Integer;
  sepLen: Integer;

    procedure AddString(aEnd: Integer = -1);
    var endPos: Integer;
    begin
      if (aEnd = -1) then
        endPos := i
      else
        endPos := aEnd + 1;

      if (strt < endPos) then
        outStrings.Add( Copy(aString, strt, endPos - strt) )
      else
        outStrings.Add('');

      Inc(cnt);
    end;

begin
  if (aString = '') or (aMax < 0) then
  begin
    Result:=-1;
    outStrings.Clear;
    EXIT;
  end;

  if (aSeparator = '') then
  begin
    Result:=1;
    outStrings.Add(aString);
    EXIT;
  end;

  sepLen := Length(aSeparator);

  i     := 1;
  strt  := i;
  cnt   := 0;
  while (i <= (Length(aString)- sepLen + 1)) do
  begin
    if (aString[i] = aSeparator[1]) then
      if (Copy(aString, i, sepLen) = aSeparator) then
      begin
        AddString;

        if (cnt = aMax) then
        begin
          Result:= cnt;
          EXIT;
        end;

        Inc(i, sepLen - 1);
        strt := i + 1;
      end;

    Inc(i);
  end;

  AddString(Length(aString));
  result:=cnt;
end;

end.

