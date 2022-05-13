unit datamodule;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, FileUtil, ZConnection, ZDataset, Forms,
  Dialogs, DateUtils, controls, IniPropStorage, ShellApi, ExtCtrls, Graphics,
  rxdbgrid, LMessages, LCLType, LR_Class, Clipbrd, UNotifierPopUp, DateTimePicker,
  DBDateTimePicker, Menus {, ZCompatibility};

type
  TNotifierPopUpStyle = (nots_Info, nots_Warning, nots_Clear);

  //TFPGDataSetList = specialize TFPGList<TDataSet>;
  { TDataSetList }

  TDataSetList = class(TList)
    private
    public
      procedure OpenAllDataSet;
  end;

  { TDM }

  TDM = class(TDataModule)
    DSKoszyk_sl: TDataSource;
    DSKoszyk: TDataSource;
    DSOsadzeni: TDataSource;
    ImageList1: TImageList;
    IniPropStorage1: TIniPropStorage;
    ZConnection1: TZConnection;
    ZQOsadzeni: TZQuery;
    ZQTemp: TZQuery;
    ZQKoszyk: TZQuery;
    ZQKoszyk_sl: TZQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
    KomunikatyPopUp: TNotifierPopUp;  // znikające komunikaty
    DataSetList   : TDataSetList;   // Lista otwartych ZQuery - auto reconnect

    fStatusList : TStringList;     // statusy transportowe
    Path_Update : string;
    autologin   : Boolean;
    Path_Foto   : string;
    Path_NO_Foto: string;
    Path_Raporty: string;
    Path_NrStolikow: string;
    Path_KnowHow: string;
    Path_Temp   : string; // systemowy TEMP

    login     : string;
    haslo     : string;
    PelnaNazwa: string;

    Wychowawca  : string;
    ZastepcyWych: string;
    Dzial       : string;

    Station_Name_For_Widzenia: string;
    TimerInterval            : integer;
    Podpis                   : string;
    isShortKeyCtrlP          : Boolean;
    isShortKeyCtrlN          : Boolean;
    LastLogin                : TDateTime;
    IleRazy                  : integer;

                                               // 1 : aktualizacja
                                               // 2 : nowa paczka, zwroty paczek
                                               // 3 : dodaj prosby, wnioski
                                               // 4 : dodaj wykazy
                                               // 5 : modyfikacja typu cel, (pojemność, kategorie)
                                               // 6 : widzenia
                                               // 7 : kryteria przeludnienia
                                               // 8 : admin, uprawnienia
                                               // 9 : końce kar
                                               // 10: Ambulatorium
                                               // 11: osoby bliskie (edycja, nowa)
                                               // 12: zrealizuj prosby, wnioski
                                               // 13: Terminarz admin
                                               // 14: Edycja rejestru próśb
                                               // 15: Zatrudnienie (dodaj).
                                               // 16: Środki Trwałe (depozyt).
                                               // 17: Moduł do testowania poprawności NoeNet
                                               // 18: Rezerwacja Widzeń BD i Skypa
                                               // 19: Kwat: Plan wyjazdów, edycja
                                               // 20: Kwat: Plan wyjazdów, podgląd
    uprawnienia: array[1..20] of Boolean;

    Function VersionStringToNumber(AVersionString: string): integer;
    Function fGetVersionAndConfig: string;
    Function fGetPelnaNazwaSQL: string;
    Function Aktualizacja: Boolean;
    Procedure WczytajUstawienia;
    Procedure OpenAllTable;
    procedure ObslugaBledu(Sender: TObject; e:exception);

    function ReadENUM(str: string): string;
    function CzySwieto(data: TDate): Boolean;
    function CzyWeekend(data: TDate): Boolean;
    procedure KolorowanieDni(Raport: TfrReport; data: TDate);
    Procedure SetMemoReport(Raport: TfrReport; memo_name: string; str: string);
    function GetInicjaly(NazwiskoImie: string): string;  // Włodarczyk Jarosław = JW
    function GetDateFormatPismo(data: TDate; strFormat: string): string;
    function GetNazwiskoImieByIDO(gIdo: integer): string; // Nazwisko Imię osadzonego wskazanego przez IDO
    function GetUserByIDO(gIDO: integer): string;  // user (wychowawcy) wybranego osadzonego

    function DodajDoKoszyka(vIDO: integer): Boolean;
    Procedure KomunikatPopUp(Sender: TObject; ATitle, AText: string; Style: TNotifierPopUpStyle);
    procedure Zaloguj;
  end;

  TZQueryPom = class(TZQuery)
    public
    constructor Create(AOwner: TComponent); override;
  end;

  TLoadFotoThread = class(TThread)
  private
    path: string;
    Fpic: TPicture;
    Fimg: TImage;
    Ftag: LongInt;  // kolejność wyświetleń, wyświetlamy tylko jak Image.Tag = Ftag
    procedure SetProprties;
  protected
    procedure Execute; override;
  public
    constructor Create(str : string; img: TImage);
    destructor Destroy; override;
  end;

  { TRxDBGrid }
  // Hack na RXDBGRID płynne przewijanie paskiem przewijania
  // kopiowanie całego grida do schowka
  TRxDBGrid = class(rxdbgrid.TRxDBGrid)
  private
    procedure WMVScroll(var Message : TLMVScroll); message LM_VScroll;
  public
    function CopyToClipboard: Boolean;
  end;

  function SetToBookmark(ADataSet: TDataSet; ABookmark: TBookmark): Boolean;

type
  { TDateTimePicker }
  // Hack na DateTimePicker: dodanie PopUpMenu z funkcjami Kopiuj datę do schowka, wstaw i usuń datę
  // podpięte skróty Ctrl+C, Ctrl+V
  TDateTimePicker = class(DateTimePicker.TDateTimePicker)
    private
      fPopupMenuEx: TPopupMenu;
      procedure PopupMenuKopiuj(Sender: TObject);
      procedure PopupMenuWklej(Sender: TObject);
      procedure PopupMenuUsun(Sender: TObject);
    public
      constructor Create(AOwner: TComponent); override;
      destructor Destroy; override;
  end;

  { TDBDateTimePicker }
  // Hack na DBDateTimePicker: dodanie PopUpMenu z funkcjami Kopiuj datę do schowka, wstaw i usuń datę
  // podpięte skróty Ctrl+C, Ctrl+V
  TDBDateTimePicker = class(DBDateTimePicker.TDBDateTimePicker)
    private
      fPopupMenuEx: TPopupMenu;
      procedure PopupMenuKopiuj(Sender: TObject);
      procedure PopupMenuWklej(Sender: TObject);
      procedure PopupMenuUsun(Sender: TObject);
    public
      constructor Create(AOwner: TComponent); override;
      destructor Destroy; override;
  end;

  { TDBScreenApplication }

{ // Dodaje obsługę kursora ale spowalnia pracę (???)
  // dlatego wskazane jest ręczne ustawianie SQLHourGlass

  TDBScreenApplication = class(TInterfacedObject, IDBScreen)
    function GetCursor: TDBScreenCursor;
    procedure SetCursor(Cursor: TDBScreenCursor);
  end;
}
  Procedure ShowSQLWait;
  Procedure HideSQLWait;
var
  DM: TDM;

const
  wersja = '0.0.2.51';

// ZATRUDNIENIE ----------------------
const
  //status pobytu
  sp_Aktualny = 'Aktualny';
  sp_Uprzedni = 'Uprzedni';

  // status zatrudnienia
  sz_Oczekujacy  = 'oczekujący';
  sz_Zatrudniony = 'zatrudniony';
  sz_Wycofany    = 'wycofany';
  sz_Odmowa      = 'odmowa';  // TODO: do wdrożenia
// END ZATRUDNIENIE ------------------

// ETAPY WIDZENIA --------------------
  ew_Poczekalnia  = 1;
  ew_NaSali       = 2;
  ew_Zrealizowane = 3;
// END ETAPY WIDZENIA

// PACZKI rodzaj paczki
  rp_Zywnosciowa = 'żywnościowa';
  rp_Higieniczna = 'higieniczna';
  rp_Odziezowa   = 'odzieżowa';
  rp_HigOdziez   = 'hig/odzieżowa';
  rp_Inna        = 'inna';
// END PACZKI

implementation
uses strutils, UKoszykNowy, UMasterForm, ULogowanie;
{$R *.frm}

{ TDM }

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  DefaultFormatSettings.DecimalSeparator := ',';
  DefaultFormatSettings.ThousandSeparator:= ' ';
  DefaultFormatSettings.ShortDateFormat:='dd/mm/yyyy';
  Application.OnException:=@ObslugaBledu;
  {$WARNINGS OFF}Application.UpdateFormatSettings:= false;{$WARNINGS ON}
  autologin:= true;

  try
  ZConnection1.Disconnect;
  except
  end;
  IniPropStorage1.IniFileName:= ExtractFilePath(ParamStr(0)) +'config.ini';
  ZConnection1.HostName:= IniPropStorage1.ReadString('HostName','serwer2');  // wczytujemy ustawienia z pliku lub domyślne.
  ZConnection1.Port    := IniPropStorage1.ReadInteger('Port',    3306);
  isShortKeyCtrlP      := IniPropStorage1.ReadBoolean('ShortKey_Ctrl+P', true);
  isShortKeyCtrlN      := IniPropStorage1.ReadBoolean('ShortKey_Ctrl+N', true);

  fStatusList:= TStringList.Create;
  fStatusList.Text:=
                    'CBTX | BEZ CZYNNOŚCI TRANSPORTOWYCH'+#13+
                    'JCAX | PLANOWANY TRANSPORT NA "CITO" - WYMAGA AKCEPTACJI'+#13+
                    'JCJX | PLANOWANY TRANSPORT NA "CITO"'+#13+
                    'JCNX | PLANOWANY TRANSPORT NA "CITO" - ODMOWA PRZEZ KTÓRYŚ DZIAŁ'+#13+
                    'JCPX | POWIADOMIONO JEDNOSTKI NA TRASIE KONWOJU'+#13+
                    'JCTX | PLANOWANY TRANSPORT NA "CITO" - AKCEPTACJA PRZEZ WSZYSTKIE DZIAŁY'+#13+
                    'LWAX | WYTYPOWANY DO TRANSPORTU - WYMAGA AKCEPTACJI DZIAŁÓW'+#13+
                    'LWNX | WYTYPOWANY DO TRANSPORTU - ODMOWA AKCEPTACJI PRZEZ KTÓRYŚ DZIAŁ'+#13+
                    'LWTX | WYTYPOWANY DO TRANSPORTU - ZAAKCEPTOWANY PRZEZ WSZYSTKIE DZIAŁY'+#13+
                    'ONZX | ZGŁOSZONY DO TRANSPORTU - NOWY'+#13+
                    'OPWX | ZGŁOSZONY DO TRANSPORTU - WYMAGA WSKAZANIA JEDNOSTKI PRZEZ CZSW'+#13+
                    'OTAX | ZGŁOSZONY DO TRANSPORTU - WYMAGA AKCEPTACJI CZSW'+#13+
                    'OTJX | ZGŁOSZONY DO TRANSPORTU - OKREŚLONO DOCELOWĄ JEDNOSTKĘ PENITENCJARNĄ'+#13+
                    'OTKX | ZGŁOSZONY DO TRANSPORTU - ZAPLANOWANO TRASĘ KONWOJOWĄ'+#13+
                    'OTPX | ZGŁOSZONY DO TRANSPORTU - POWIADOMIONO WŁAŚCIWE JEDNOSTKI PENITENCJARNE'+#13+
                    'TDRX | TRANSPORT W DRODZE'+#13+
                    'ZANX | CZYNNOŚĆ TRANSPORTOWA ANULOWANA'+#13+
                    'ZBLX | CZYNNOŚĆ ZAKOŃCZONA - ANULOWANO Z POWODU BŁĘDÓW W ZGŁOSZENIU'+#13+
                    'ZBWX | CZYNNOŚĆ ZAKOŃCZONA - WYCOFANY Z TRANSPORTU'+#13+
                    'ZPRX | CZYNNOŚĆ ZAKOŃCZONA - TRANSPORT NIE DOSZEDŁ DO SKUTKU WSKUTEK PRZESZKODY'+#13+
                    'ZTRX | CZYNNOŚĆ ZAKOŃCZONA - TRANSPORT ZREALIZOWANY';

  KomunikatyPopUp:= TNotifierPopUp.Create(Application);
  DataSetList    := TDataSetList.Create;
{ // Dodana obsługa kursora, niestety spowalnia program.
  DBScreen:= TDBScreenApplication.Create as IDBScreen;
}
end;

procedure TDM.DataModuleDestroy(Sender: TObject);
begin
  ZConnection1.Disconnect;
  fStatusList.Free;
  KomunikatyPopUp.Free;
  DataSetList.Free;
end;

function TDM.VersionStringToNumber(AVersionString: string): integer;
  // Converts 'n.n.n.n' into an integer
var
  s: string;
  i: integer;
begin
  Result := 0;
  // Fetch the 4 (or less) version elements and make into an Integer
  s := ExtractDelimited(1, AVersionString, ['.']);
  if TryStrToInt(s, i) then
    Result := Result + (i * 10000);
  s := ExtractDelimited(2, AVersionString, ['.']);
  if TryStrToInt(s, i) then
    Result := Result + (i * 1000);
  s := ExtractDelimited(3, AVersionString, ['.']);
  if TryStrToInt(s, i) then
    Result := Result + (i * 100);
  s := ExtractDelimited(4, AVersionString, ['.']);
  if TryStrToInt(s, i) then
    Result := Result + i;
end;

function TDM.fGetVersionAndConfig: string;
begin
  Result:='0.0.0.0';
    try
      ZQTemp.Close;
      ZQTemp.SQL.Text:='SELECT * FROM ver_otis2;';
      ZQTemp.Open;
      Result                   := ZQTemp.FieldByName('verP').AsString; // odczytuje versje z bazy
      Path_Update              := ZQTemp.FieldByName('Path_Update').AsString;
      Path_Foto                := ZQTemp.FieldByName('Path_Foto').AsString;
      Path_NO_Foto             := ZQTemp.FieldByName('Path_NO_Foto').AsString;
      Path_KnowHow             := ZQTemp.FieldByName('Path_KnowHow').AsString;
      Path_Temp                := GetTempDir;
      Station_Name_For_Widzenia:= ZQTemp.FieldByName('Station_Name_For_Widzenia').AsString;
      TimerInterval            := ZQTemp.FieldByName('TimerInterval').AsInteger;

      ZQTemp.Close;
    except
      ShowMessage('Brak uprawnień. Błąd podczas aktualizacji.');
      exit;
    end;
end;


function TDM.Aktualizacja: Boolean;
var nowa_wersja: string;
begin
  Result:= False;
  nowa_wersja:= fGetVersionAndConfig;
  if VersionStringToNumber(nowa_wersja) > VersionStringToNumber(wersja) then // TRUE- stary program, wymaga aktualizacji
  begin
      if MessageDlg('Masz starą wersje programu. Czy rozpocząć aktualizację?', mtInformation, [mbYes, mbNo],0) = mrYes then
      begin
        Result:= True;
        ShellExecute(0, nil, PChar(Path_Update), PChar(Format('"%s" "%s" "%s"',[Application.ExeName, login, haslo])),nil, 1);
      end;
      Application.Terminate;
  end;
end;

//###############
//  Pobieram Nazwisko i Imie uzytkownika SQL
//###############
function TDM.fGetPelnaNazwaSQL: string;
begin
  Result:= login;
    try
      ZQTemp.Close;
      ZQTemp.SQL.Text:='SELECT * FROM mysql.user_info WHERE user=:user;';
      ZQTemp.ParamByName('user').AsString:= login;
      ZQTemp.Open;
      if not ZQTemp.IsEmpty then Result:= ZQTemp.FieldByName('full_name').AsString;

      ZQTemp.Close;
    except
      ShowMessage('Problem z odczytaniem mysql.user_info.');
    end;
end;

procedure TDM.WczytajUstawienia;
var ZQ: TZQueryPom;
  i: integer;
begin
  DefaultFormatSettings.ShortDateFormat:='dd/mm/yyyy';

  login:= ZConnection1.User;
  haslo:= ZConnection1.Password;

  // przeniesc full_name z mysql.user_info to uprawnienia
  //PelnaNazwa:= fGetPelnaNazwaSQL;

  Path_Raporty   := ExtractFilePath(ParamStr(0)) + 'raporty\';
  Path_NrStolikow:= ExtractFilePath(ParamStr(0)) + 'NrStolikow\';

  ZQ:=TZQueryPom.Create(Self);

  // zarujemy uprawnienia
  for i:= low(uprawnienia) to High(uprawnienia) do uprawnienia[i]:= false;

  ZQ.SQL.Text:='SELECT * FROM uprawnienia WHERE user=:user;';
  ZQ.ParamByName('user').AsString:= login;
  ZQ.Open;

  if not ZQ.IsEmpty then
  begin
      for i:= low(uprawnienia) to High(uprawnienia) do uprawnienia[i]:= ZQ.FieldByName('Mod'+i.ToString).AsInteger = 1;

      PelnaNazwa  := ZQ.FieldByName('full_name').AsString;
      // Dla kompatybilności z użtkownikiem dodanym przez Paczkownię
      if PelnaNazwa='' then PelnaNazwa:= fGetPelnaNazwaSQL;   // jeśli brak pełnej nazwy to odczytaj z mysql.user_info

      Wychowawca  := ZQ.FieldByName('Wychowawca').AsString;
      ZastepcyWych:= ZQ.FieldByName('ZastepstwaWych').AsString;
      Dzial       := ZQ.FieldByName('Dzial').AsString;
      Podpis      := ZQ.FieldByName('Podpis').AsString;
      LastLogin   := ZQ.FieldByName('Last').AsDateTime;
      IleRazy     := ZQ.FieldByName('IleRazy').AsInteger;

      ZQ.Edit;
      ZQ.FieldByName('Last').AsDateTime:= Now();
      ZQ.FieldByName('IleRazy').AsInteger:= IleRazy+1;
      ZQ.Post;
  end;

  ZQ.Close;
  ZQ.Free;
end;


procedure TDM.OpenAllTable;
begin
  if not ZConnection1.Connected then Application.Terminate;
  login:= ZConnection1.User;
  haslo:= ZConnection1.Password;

  //odczytujemy tabele ver_otis2,
  //                aktualna wersja, path update, path foto, itp...
  // Aktualizacja jest wywoływana podczas Logowania, jesli logowanie = true to OpenAllTable. Więc tutaj jest zbędna.
  // Aktualizacja;

  //Ładujemy ustawienia z tabeli uprawnienia
  //           w tym PelnaNazwa z mysql.user_info
  WczytajUstawienia;

  // otwieramy jakies tabele na start
  ZQOsadzeni.Open;

  ZQKoszyk_sl.ParamByName('user').AsString:= login;
  ZQKoszyk_sl.Open;
  ZQKoszyk.Open;

  //tablica DataSet'ów uzupelniana dynamicznie w celu odtworzenia polaczenia.
  DataSetList.OpenAllDataSet;
end;

procedure TDM.ObslugaBledu(Sender: TObject; e: exception);
begin
  MessageDlg(E.Message, mtWarning, [mbOK],0);
end;

function TDM.ReadENUM(str: string): string;
begin
  Delete(str, 1, 6 ); // enum('
  str:= Copy(str, 0, Length(str)-2); // ')
  str:= DelChars(str, Char(39));     // '
  Result:= StringReplace(str,',',LineEnding,[rfReplaceAll]);
end;

function TDM.CzySwieto(data: TDate): Boolean;
var rok, msc, dzien: Word;
    a,b,c,d,e: integer;
    p_data: TDate;

begin
  Result:= false;
  DecodeDate(data, rok, msc, dzien);
  // if DayOfTheWeek(data)>=6 then Result:= true;         // sobota, niedziela

  if (msc=1) and (dzien=1) then Result:= true else     // Nowy rok
  if (msc=1) and (dzien=6) then Result:= true else     // Trzech Króli
  if (msc=5) and (dzien=1) then Result:= true else     // 1 maja
  if (msc=5) and (dzien=3) then Result:= true else     // 3 maja
  if (msc=8) and (dzien=15) then Result:= true else    // Wniebowzięcie Najświętszej Marii Panny, Święto Wojska Polskiego
  if (msc=11) and (dzien=1) then Result:= true else    // Dzień Wszystkich Świętych
  if (msc=11) and (dzien=11) then Result:= true else   // Dzień Niepodległości
  if (msc=12) and ((dzien=25) or (dzien=26)) then Result:= true else   // Boże Narodzenie
    begin
      a:= rok mod 19;
      b:= rok mod 4;
      c:= rok mod 7;
      d:= (a * 19 +24) mod 30;
      e:= (2 * b +4 * c + 6 * d + 5) mod 7;
      if (d=29) and (e=6) then d:=d - 7;
      if (d=28) and (e=6) and (a>10) then d:=d-7;
      p_data:= EncodeDate(rok, 3, 22);

      p_data:= IncDay(p_data, d+e+1);  // +1 Drugi dzien wielkanocy
      if (msc=MonthOf(p_data)) and (dzien=DayOf(p_data)) then Result:= true;  // Wielkanoc (poniedziałek)

      p_data:= IncDay(p_data, 59);
      if (msc=MonthOf(p_data)) and (dzien=DayOf(p_data)) then Result:= true;  // Boże Ciało
    end;
end;

function TDM.CzyWeekend(data: TDate): Boolean;
begin
  Result:= (DayOfTheWeek(data) >= 6);   // sobota, niedziela
end;

procedure TDM.KolorowanieDni(Raport: TfrReport; data: TDate);
var i: integer;
    p_memo: TfrMemoView;
    p_data: TDate;
    p_maxdni: integer;
begin
  p_data:= StartOfTheMonth( data );
  p_maxdni:= DaysInMonth(p_data);
  //====================================== numerowanie dni i kolorowanie weekend'u
  for i:=1 to 31 do
  begin
    p_memo:= (Raport.FindObject('dzien'+ IntToStr(i)) as TfrMemoView);
    if Assigned(p_memo) then
       begin
         if i<=p_maxdni then
            begin
              p_memo.Memo.Text:= IntToStr(i);
              if CzyWeekend(p_data) or CzySwieto(p_data) then p_memo.FillColor:= clGray; //sobota niedziela i święta
            end
         else
            p_memo.Memo.Text:='';
       end;
     p_data:= IncDay(p_data, 1);
  end;
  //============================================================================
end;

procedure TDM.SetMemoReport(Raport: TfrReport; memo_name: string; str: string);
var p_memo: TfrMemoView;
begin
  p_memo:= (Raport.FindObject(memo_name) as TfrMemoView);
  if Assigned(p_memo) then
     begin
       p_memo.Memo.Text:= str;
       //p_memo.FillColor:= clGray;
     end;
end;

function TDM.GetInicjaly(NazwiskoImie: string): string;
var i: integer;
    s: string;
begin
  i:= Pos(' ', NazwiskoImie);
  s:= Copy(NazwiskoImie, i+1 , 1);
  s:= s + NazwiskoImie[1];
  Result:= s;
end;

function TDM.GetDateFormatPismo(data: TDate; strFormat: string): string;
var DataFormat: TFormatSettings;
    sLongMonthNames: TMonthNameArray = ('stycznia','lutego','marca','kwietnia','maja','czerwca','lipca','sierpnia','września','października','listopada','grudnia');
begin
  DataFormat:= DefaultFormatSettings;
  DataFormat.LongMonthNames:= sLongMonthNames;
  Result:= FormatDateTime(strFormat,data,DataFormat,[]);
end;


//----------------------------------------------------------------------
Constructor TZQueryPom.Create(AOwner: TComponent);
begin
    inherited Create(AOwner);
    Connection:=DM.ZConnection1;
end;

function TDM.GetNazwiskoImieByIDO(gIdo: integer): string;
var ZQPom: TZQueryPom;
begin
  Result:='';
  try
    ZQPom:= TZQueryPom.Create(Self);
    ZQPom.SQL.Text:= 'SELECT NAZWISKO, IMIE FROM osadzeni WHERE IDO = :ido';
    ZQPom.ParamByName('ido').AsInteger:= gIdo;
    ZQPom.Open;
    if not ZQPom.IsEmpty then Result:= ZQPom.FieldByName('NAZWISKO').AsString+' '+ZQPom.FieldByName('IMIE').AsString;
  except
  end;
  FreeAndNil(ZQPom);
end;

function TDM.GetUserByIDO(gIDO: integer): string;
var ZQPom: TZQueryPom;
begin
  Result:='';
  try
    ZQPom:= TZQueryPom.Create(Self);
    ZQPom.SQL.Text:= 'SELECT os.IDO, os.POC, typ.wychowawca, upr.user, upr.Full_name FROM osadzeni as os '+
                     'LEFT JOIN typ_cel as typ ON (os.POC = typ.POC) '+
                     'LEFT JOIN uprawnienia as upr ON (typ.wychowawca = upr.wychowawca) '+
                     'WHERE (os.IDO = :ido) AND (typ.wychowawca<>"") ';
    ZQPom.ParamByName('ido').AsInteger:= gIDO;
    ZQPom.Open;
    if not ZQPom.IsEmpty then Result:= ZQPom.FieldByName('user').AsString;
  except
  end;
  FreeAndNil(ZQPom);
end;

function TDM.DodajDoKoszyka(vIDO: integer): Boolean;
var ZQPom: TZQueryPom;
begin
  Result:= False;
  if ZQKoszyk_sl.IsEmpty then
  begin
    if MessageDlg('Nie masz jeszcze utworzonego koszyka.'+LineEnding+'Czy utworzyć nowy koszyk ?', mtInformation, [mbYes, mbNo],0) = mrYes then
      with TKoszykNowy.Create(Self) do
      begin
           ShowModal;
           Free;
      end;

    if ZQKoszyk_sl.IsEmpty then
    begin
      MessageDlg('Najpierw musisz utworzyć nowy koszyk.', mtInformation, [mbOK], 0);
      exit;
    end;
  end;

  ZQPom:= TZQueryPom.Create(Self);

    // sprawdzamy czy osadzony już istnieje w koszyku
    ZQPom.SQL.Text:= 'SELECT IDO FROM koszyk WHERE (ID_koszyka = :id_koszyka) and (IDO = :ido) ';
    ZQPom.ParamByName('id_koszyka').AsInteger:= ZQKoszyk_sl.FieldByName('ID_koszyka').AsInteger;
    ZQPom.ParamByName('ido').AsInteger       := vIDO;
    ZQPom.Open;
    if ZQPom.IsEmpty then
      begin
        // dopisujemy osadzonego do koszyka
        ZQPom.SQL.Text:= 'INSERT INTO koszyk (ID_koszyka, IDO, data_dodania) VALUES (:id_koszyka, :ido, NOW());';
        ZQPom.ParamByName('id_koszyka').AsInteger:= ZQKoszyk_sl.FieldByName('ID_koszyka').AsInteger;
        ZQPom.ParamByName('ido').AsInteger       := vIDO;
        ZQPom.ExecSQL;
        Result:= True;
      end
    else
      begin
        KomunikatPopUp(Self, 'Koszyk', 'Osadzony jest już w koszyku.', nots_Warning);
      end;

  FreeAndNil(ZQPom);
end;

procedure TDM.KomunikatPopUp(Sender: TObject; ATitle, AText: string; Style: TNotifierPopUpStyle);
var img: TPicture;
begin
  img:= TPicture.Create;
  try
  case Style of
    nots_Clear  : ;
    nots_Info   : begin
                    ImageList1.GetBitmap(34, img.Bitmap);
                    KomunikatyPopUp.Icon.Assign(img);
                    KomunikatyPopUp.ColorTop:= clBlack;
                  end;
    nots_Warning: begin
                    ImageList1.GetBitmap(28, img.Bitmap);
                    KomunikatyPopUp.Icon.Assign(img);
                    KomunikatyPopUp.ColorTop:= clRed;
                    KomunikatyPopUp.Color:= $00D9D9FF;
                  end;
  end;

  KomunikatyPopUp.AddNotifer(ATitle, AText);

  //TForm(Sender).SetFocus;
  finally
    FreeAndNil(img);
  end;
end;

procedure TDM.Zaloguj;
begin
  autologin:= false;
  try
    Logowanie:= TLogowanie.Create(Self);  // uruchamiamy dostęp do bazy (login i hasło)
    if Logowanie.ShowModal= mrOK then
          OpenAllTable
       else
          Application.Terminate;

    MasterForm.RefreshUprawnienia;
  finally
    FreeAndNil(Logowanie);
  end;
end;

//------------------------------------------------------------------------
//-------------- wczytywanie zdjecia w tle do TImage
constructor TLoadFotoThread.Create(str : string; img: TImage);
begin
  Fimg:= img;
  path:= str;

  // zapamiętujemy numer wywołania w Tag'u zdjęcia i w zmiennej Ftag
  // zapobiega to wyświetleniu zdjęć na miejscu którym mają wyświetlać się nowe/kolejne zdjęcia.
  Fimg.Tag:= Fimg.Tag + 1;
  Ftag:= Fimg.Tag;
  inherited Create(False); // wywołanie wątku, uruchomienie automatyczne
end;

destructor TLoadFotoThread.Destroy;
begin
  Fpic.Free;
  inherited;
end;

procedure TLoadFotoThread.Execute;
begin
  FreeOnTerminate := True; // zwolnij po zakończeniu wątku

  if not FileExists(path) then path:= DM.Path_NO_Foto;  // zdjecie kotka
  Fpic:= TPicture.Create;
  Fpic.LoadFromFile(path);
  Synchronize( @SetProprties );
end;

procedure TLoadFotoThread.SetProprties;
begin
    if terminated then exit;
    if Ftag <> Fimg.Tag then exit;  // jeśli Img.Tag jest inny od zapamiętanego Ftag to zakończ.
    if Assigned( Fimg ) then
    Fimg.Picture.Assign( Fpic );
end;

//#############################################################################
//#############################################################################

//------------------------------------------------------------------------
//-------------- Nadpisanie komponentu TRxDBGrid aby płynnie przewijał widok
//-------------- unit datamodule musi być zdefiniowany po rxdbgrid !!!!!!!!!!!!!!!!!!!!!!!!!!!!!
procedure TRxDBGrid.WMVScroll(var Message : TLMVScroll);
begin
  if Message.ScrollCode = SB_THUMBTRACK then
    Message.ScrollCode := SB_THUMBPOSITION;
  inherited WMVScroll(Message);
end;

function TRxDBGrid.CopyToClipboard: Boolean;
var bookmark: TBookMark;
    S: string;
    K, i: integer;
    DS: TDataSet;
begin
  S:='';
  DS:= DataSource.DataSet;
  bookmark:= DS.GetBookmark;
  DS.DisableControls;

  DS.First;
  while not DS.EOF do
  begin
    if S<>'' then
      S:= S + LineEnding;
    K:= 0;
    for i:= 0 to Columns.Count-1 do
    begin
      if Assigned(Columns[i].Field) then
      begin
        if K<>0 then
          S:= S + #09;
        S:= S + Columns[i].Field.DisplayText;
        inc(K);
      end;
    end;
    DS.Next;
  end;

  SetToBookmark(DS, bookmark);
  DS.EnableControls;

  if S<>'' then
  begin
    try
      Clipboard.Open;
      Clipboard.AsText:= S;
    finally
      Clipboard.Close;
    end;
  end;

  Result:= (S<>'');
end;

function SetToBookmark(ADataSet: TDataSet; ABookmark: TBookmark): Boolean;
begin
  Result := False;
  with ADataSet do
    if Active and (ABookmark <> nil) and not (Bof and Eof) and
      BookmarkValid(ABookmark) then
    try
      ADataSet.GotoBookmark(ABookmark);
      Result := True;
    except
    end;
end;

{ TDateTimePicker }

procedure TDateTimePicker.PopupMenuKopiuj(Sender: TObject);
var obj: TObject;
begin
  obj:= ((Sender as TMenuItem).GetParentMenu as TPopupMenu).PopupComponent;
  if TDateTimePicker(obj).Date = NullDate then Clipboard.AsText:= 'Brak'
                                          else Clipboard.AsText:= DateToStr(TDateTimePicker(obj).Date);
end;

procedure TDateTimePicker.PopupMenuWklej(Sender: TObject);
var obj: TObject;
begin
  obj:= ((Sender as TMenuItem).GetParentMenu as TPopupMenu).PopupComponent;
  TDateTimePicker(obj).Date:= StrToDateDef(Clipboard.AsText, NullDate);
end;

procedure TDateTimePicker.PopupMenuUsun(Sender: TObject);
var obj: TObject;
begin
  obj:= ((Sender as TMenuItem).GetParentMenu as TPopupMenu).PopupComponent;
  TDateTimePicker(obj).Date:= NullDate;
end;

constructor TDateTimePicker.Create(AOwner: TComponent);
var
  Item: TMenuItem;
begin
  inherited Create(AOwner);
  fPopupMenuEx:= TPopupMenu.Create(Self);
    Item:= TMenuItem.Create(fPopupMenuEx);
    Item.Caption:= 'Kopiuj';
    Item.OnClick:= @PopupMenuKopiuj;
    Item.ShortCut:= ShortCut(Ord('C'), [ssCtrl]);
  fPopupMenuEx.Items.Add(Item);
    Item:= TMenuItem.Create(fPopupMenuEx);
    Item.Caption:= 'Wklej';
    Item.OnClick:= @PopupMenuWklej;
    Item.ShortCut:= ShortCut(Ord('V'), [ssCtrl]);
  fPopupMenuEx.Items.Add(Item);
    Item:= TMenuItem.Create(fPopupMenuEx);
    Item.Caption:= 'Usuń';
    Item.OnClick:= @PopupMenuUsun;
  fPopupMenuEx.Items.Add(Item);
  fPopupMenuEx.PopupComponent:= Self;
  PopupMenu:= fPopupMenuEx;
end;

destructor TDateTimePicker.Destroy;
begin
  FreeAndNil(fPopupMenuEx);
  inherited Destroy;
end;

{ TDBDateTimePicker }

procedure TDBDateTimePicker.PopupMenuKopiuj(Sender: TObject);
var obj: TObject;
begin
  obj:= ((Sender as TMenuItem).GetParentMenu as TPopupMenu).PopupComponent;
  if TDBDateTimePicker(obj).DateIsNull then Clipboard.AsText:= TDBDateTimePicker(obj).TextForNullDate
                                       else Clipboard.AsText:= DateToStr(TDBDateTimePicker(obj).Date);
end;

procedure TDBDateTimePicker.PopupMenuWklej(Sender: TObject);
var obj: TObject;
begin
  obj:= ((Sender as TMenuItem).GetParentMenu as TPopupMenu).PopupComponent;
  TDBDateTimePicker(obj).Date:= StrToDateDef(Clipboard.AsText, NullDate);
  TDBDateTimePicker(obj).Change;
end;

procedure TDBDateTimePicker.PopupMenuUsun(Sender: TObject);
var obj: TObject;
begin
  obj:= ((Sender as TMenuItem).GetParentMenu as TPopupMenu).PopupComponent;
  TDBDateTimePicker(obj).Date:= NullDate;
  TDBDateTimePicker(obj).Change;
end;

constructor TDBDateTimePicker.Create(AOwner: TComponent);
var
  Item: TMenuItem;
begin
  inherited Create(AOwner);
  fPopupMenuEx:= TPopupMenu.Create(Self);
    Item:= TMenuItem.Create(fPopupMenuEx);
    Item.Caption:= 'Kopiuj';
    Item.OnClick:= @PopupMenuKopiuj;
    Item.ShortCut:= ShortCut(Ord('C'), [ssCtrl]);
  fPopupMenuEx.Items.Add(Item);
    Item:= TMenuItem.Create(fPopupMenuEx);
    Item.Caption:= 'Wklej';
    Item.OnClick:= @PopupMenuWklej;
    Item.ShortCut:= ShortCut(Ord('V'), [ssCtrl]);
  fPopupMenuEx.Items.Add(Item);
    Item:= TMenuItem.Create(fPopupMenuEx);
    Item.Caption:= 'Usuń';
    Item.OnClick:= @PopupMenuUsun;
  fPopupMenuEx.Items.Add(Item);
  fPopupMenuEx.PopupComponent:= Self;
  PopupMenu:= fPopupMenuEx;
end;

destructor TDBDateTimePicker.Destroy;
begin
  FreeAndNil(fPopupMenuEx);
  inherited Destroy;
end;

{ TDataSetList }

procedure TDataSetList.OpenAllDataSet;
var
  i: Integer;
begin
  // otwiera DataSety lub gdy puste to je usuwa
  //    ShowMessage( Count.ToString );
  for i:=Count-1 downto 0 do
  begin
    try
      TDataSet(Items[i]).Open;
    except
      // jeśli DataSet nie istnieje to usuń z listy
      Delete(i);
    end;
  end;
end;

procedure ShowSQLWait;
begin
  Screen.Cursor:= crSQLWait;
end;

procedure HideSQLWait;
begin
  Screen.Cursor:= crDefault;
end;

{ TDBScreenApplication

function TDBScreenApplication.GetCursor: TDBScreenCursor;
begin
  case Screen.Cursor of
    crDefault: Result := dcrDefault;
    crHourGlass: Result := dcrHourGlass;
    crSQLWait: Result := dcrSQLWait;
  else
    Result := dcrOther;
  end;
end;

procedure TDBScreenApplication.SetCursor(Cursor: TDBScreenCursor);
begin
  case Cursor of
    dcrDefault: Screen.Cursor := crDefault;
    dcrHourGlass: Screen.Cursor := crHourGlass;
    dcrSQLWait: ;//begin Screen.Cursor := crSQLWait; end;
  end;
end;
}

end.

