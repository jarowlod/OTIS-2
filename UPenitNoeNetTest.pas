unit UPenitNoeNetTest;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  ComCtrls, Buttons, DBCtrls, TplGradientUnit, rxdbgrid, datamodule, DB,
  ZDataset, rxdbutils, rxmemds;

type

  { TPenitNoeNetTest }

  TPenitNoeNetTest = class(TForm)
    btnAnalizaAlimenty: TBitBtn;
    btnAnalizaZobowiazania: TBitBtn;
    btnWyslijAll: TBitBtn;
    btnUstawIDSesji: TBitBtn;
    btnAnaliza: TBitBtn;
    cbIDO_2Kolumna: TCheckBox;
    cmbOpis: TComboBox;
    DSAlimenty: TDataSource;
    DSWychowawcy: TDataSource;
    DSBledyGrup: TDataSource;
    DBNavigator1: TDBNavigator;
    DSBledy: TDataSource;
    DSSesje: TDataSource;
    Label1: TLabel;
    lblNrSesji: TLabel;
    Label8: TLabel;
    memZobowiazania: TMemo;
    Memo1: TMemo;
    memAlimenty: TMemo;
    PageControl1: TPageControl;
    PageControl2: TPageControl;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    plGradient3: TplGradient;
    ProgressBar1: TProgressBar;
    RxDBGrid1: TRxDBGrid;
    RxDBGrid2: TRxDBGrid;
    RxDBGrid3: TRxDBGrid;
    RxDBGrid4: TRxDBGrid;
    RxDBGrid5: TRxDBGrid;
    RxMemAlimenty: TRxMemoryData;
    RxMemAlimentymemIDO: TLongintField;
    RxMemAlimentymemNazwiskoImie: TStringField;
    RxMemAlimentymemRata: TStringField;
    RxMemAlimentymemWplacil: TStringField;
    RxMemAlimentymemZadluzenie: TStringField;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    ZQSesje: TZQuery;
    ZQBledy: TZQuery;
    ZQWychowawcy: TZQuery;
    ZQBledyGrup: TZQuery;
    procedure btnAnalizaAlimentyClick(Sender: TObject);
    procedure btnAnalizaClick(Sender: TObject);
    procedure btnUstawIDSesjiClick(Sender: TObject);
    procedure btnWyslijAllClick(Sender: TObject);
    procedure DSSesjeDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure RxDBGrid2DblClick(Sender: TObject);
  private
    FID_Sesji: integer;
    Function GetWiadomoscFromTable(ZQWPom: TZQuery): String;
  public

  end;

//var
//  PenitNoeNetTest: TPenitNoeNetTest;

implementation
uses UKomunikatorNowaWiad;
{$R *.frm}

{ TPenitNoeNetTest }

procedure TPenitNoeNetTest.DSSesjeDataChange(Sender: TObject; Field: TField);
begin
  ZQBledy.Close;
  ZQWychowawcy.Close;
  ZQBledyGrup.Close;

  if ZQSesje.IsEmpty then exit;

  ZQBledy.ParamByName('ID_Sesji').AsInteger:= ZQSesje.FieldByName('ID_Sesji').AsInteger;
  ZQBledy.Open;

  ZQWychowawcy.ParamByName('ID_Sesji').AsInteger:= ZQSesje.FieldByName('ID_Sesji').AsInteger;
  ZQWychowawcy.Open;

  ZQBledyGrup.ParamByName('ID_Sesji').AsInteger:= ZQSesje.FieldByName('ID_Sesji').AsInteger;
  ZQBledyGrup.Open;
end;

procedure TPenitNoeNetTest.FormCreate(Sender: TObject);
begin
  ZQSesje.Open;
  if ZQSesje.IsEmpty then FID_Sesji:= 0
  else
    FID_Sesji:= ZQSesje.FieldByName('ID_Sesji').AsInteger+1; // ustalamy nowy numer sesji o jeden większy niż ostatnia sesja (pierwsza jest ostatnią, sort DESC)

  lblNrSesji.Caption:= 'Nr Sesji: '+ IntToStr(FID_Sesji);
end;

procedure TPenitNoeNetTest.RxDBGrid2DblClick(Sender: TObject);
begin
  btnUstawIDSesjiClick(Sender);
end;

// Przekazujemy wskaźnik na otwartą tabelę ZQWPom.
// Wynikiem jest gotowa wiadomość zwierająca osadzonych
function TPenitNoeNetTest.GetWiadomoscFromTable(ZQWPom: TZQuery): String;
var opis: string;
    wiadomosc: TStringList;
begin
  opis:='';
  wiadomosc:= TStringList.Create;

  ZQWPom.First;
  while not ZQWPom.EOF do
   begin
     if (opis = '')or(opis<>ZQWPom.FieldByName('Opis').AsString) then
     begin
       if opis<>'' then wiadomosc.Add('');
       opis:= ZQWPom.FieldByName('Opis').AsString;
       wiadomosc.Add(opis);
     end;
     wiadomosc.Add( ZQWPom.FieldByName('POC').AsString + ' ' +
                    ZQWPom.FieldByName('NAZWISKO').AsString + ' ' +
                    ZQWPom.FieldByName('IMIE').AsString + ' ' +
                    ZQWPom.FieldByName('OJCIEC').AsString + ' ' +
                    ZQWPom.FieldByName('Klasyf').AsString);
     ZQWPom.Next;
   end;
  Result:= wiadomosc.Text;
  wiadomosc.Free;
end;

procedure TPenitNoeNetTest.btnAnalizaClick(Sender: TObject);
var i,p1,ido: integer;
    s,n: string;
    ZQPom: TZQueryPom;
begin
  if Memo1.Lines.Text='' then exit;
  if cmbOpis.Text='' then exit;

  ZQPom:= TZQueryPom.Create(Self);
  ZQPom.SQL.Text:= 'INSERT INTO wykaz_bledow (data_wpisu, user, ID_Sesji, IDO, Opis) VALUES (CURDATE(), :user, :ID_Sesji, :IDO, :Opis)';

  i:= 1;
  ProgressBar1.Max     := Memo1.Lines.Count;
  ProgressBar1.Position:= 0;
  ProgressBar1.Visible := true;

  ZQPom.Connection.StartTransaction;
  ShowSQLWait;
  try
    while i<Memo1.Lines.Count do
     begin
       ProgressBar1.Position:= ProgressBar1.Max - Memo1.Lines.Count;
       Application.ProcessMessages;  // nie zawieszamy programu
       if Memo1.Lines.Strings[i]<>'' then
       begin
         s:= Memo1.Lines.Strings[i];
         p1:= Pos(' ',s);
         n:= copy(s,1,p1-1);
         if cbIDO_2Kolumna.Checked then //IDO w drugiej kolumnie
         begin
           delete(s,1,p1);
           p1:= Pos(' ',s);
           n:= copy(s,1,p1-1);
         end;
         if TryStrToInt(n, ido) then //zapisz jeśli poprawne IDO
         begin
           ZQPom.ParamByName('user').AsString     := DM.PelnaNazwa;
           ZQPom.ParamByName('ID_Sesji').AsInteger:= FID_Sesji;
           ZQPom.ParamByName('IDO').AsInteger     := ido;
           ZQPom.ParamByName('Opis').AsString     := cmbOpis.Text;
           ZQPom.ExecSQL;
         end;
       end;
       Memo1.Lines.Delete(i);
     end;
    Memo1.Lines.Clear;
  except
    ShowMessage('Niewłaściwy format danych wejścionych (wiersz '+IntToStr(ProgressBar1.Position+1)+'). Wklej dane z NoeNet.');
    ProgressBar1.Visible:= false;
    ZQPom.Connection.Rollback;
    HideSQLWait;
    exit;
  end;
  ZQPom.Connection.Commit;

  // UPDATE wykaz_bledow w celu uzupełnienia o kolejne dane
  ZQPom.SQL.Text:= 'UPDATE wykaz_bledow w' +
                   ' inner join osadzeni os ON os.IDO=w.IDO' +
                   ' inner join typ_cel c ON c.POC=os.POC and c.Wychowawca<>""'+
                   ' inner join uprawnienia u ON u.Wychowawca=c.Wychowawca'+
                   ' SET'+
                   ' w.POC = os.POC, w.NAZWISKO=os.NAZWISKO, w.IMIE=os.IMIE, w.OJCIEC=os.OJCIEC, w.KLASYF=os.KLASYF, w.Wychowawca=c.Wychowawca, w.wych_login=u.user'+
                   ' WHERE ID_Sesji=:ID_Sesji';
  ZQPom.ParamByName('ID_Sesji').AsInteger:= FID_Sesji;
  ZQPom.ExecSQL;

  ProgressBar1.Position:= ProgressBar1.Max;
  Application.ProcessMessages;
  ShowMessage('OK');
  ProgressBar1.Visible:= false;

  RefreshQuery(ZQSesje);
  HideSQLWait;
end;

procedure TPenitNoeNetTest.btnUstawIDSesjiClick(Sender: TObject);
begin
  if MessageDlg('Czy napewno dodawać wyniki analizy do obecnie wybranej sesji?', mtWarning, [mbOK, mbCancel], 0)= mrOK then
  begin
    FID_Sesji:= ZQSesje.FieldByName('ID_Sesji').AsInteger;
    lblNrSesji.Caption:= 'Nr Sesji: '+ IntToStr(FID_Sesji);
  end;
end;

procedure TPenitNoeNetTest.btnWyslijAllClick(Sender: TObject);
var wiadomosc, user_list: TStringList;
    pomWiad : string;
    ZQWychowawcyPom, ZQPom: TZQueryPom;
begin
  wiadomosc:= TStringList.Create;
  user_list:= TStringList.Create;
  ZQWychowawcyPom:= TZQueryPom.Create(Self);
  ZQPom       := TZQueryPom.Create(Self);

  ZQPom.SQL.Text:= 'SELECT * FROM wykaz_bledow WHERE ID_Sesji=:ID_Sesji AND Wychowawca=:Wychowawca';

  ZQWychowawcyPom.SQL.Text:= 'SELECT Wychowawca, wych_login FROM wykaz_bledow WHERE ID_Sesji=:ID_Sesji AND Wychowawca IS NOT NULL GROUP BY Wychowawca';
  ZQWychowawcyPom.ParamByName('ID_Sesji').AsInteger:= FID_Sesji;
  ZQWychowawcyPom.Open;

  if ZQWychowawcyPom.IsEmpty then exit;

  wiadomosc.Add('Stwierdzono następujące nieprawidłowości do uzupełnienia.');
  wiadomosc.Add('---------------------------------------------------------');

  while not ZQWychowawcyPom.EOF do
  begin
    wiadomosc.Add('');
    wiadomosc.Add('=========================================================');
    wiadomosc.Add('= Wychowawca: ' + ZQWychowawcyPom.FieldByName('Wychowawca').AsString );
    wiadomosc.Add('=========================================================');

    ZQPom.Close;
    ZQPom.ParamByName('Wychowawca').AsString:= ZQWychowawcyPom.FieldByName('Wychowawca').AsString;
    ZQPom.ParamByName('ID_Sesji').AsInteger:= FID_Sesji;
    ZQPom.Open;

    pomWiad:= GetWiadomoscFromTable(ZQPom);
    wiadomosc.Add(pomWiad);

    ZQWychowawcyPom.Next;
  end;

  // dodajemu wychowawców do listy wysyłkowej
  ZQWychowawcyPom.First;
  while not ZQWychowawcyPom.EOF do
  begin
    user_list.Add( ZQWychowawcyPom.FieldByName('wych_login').AsString );
    ZQWychowawcyPom.Next;
  end;

  with TKomunikatorNowaWiad.Create(Self) do
  begin
       AutoKomunikat(user_list, 'Sprawdzenie poprawności danych w NoeNet', wiadomosc.Text, false);
       ShowModal;
       Free;
  end;

  //ShowMessage('OK. Wysłane do wszystkich.');
  wiadomosc.Free;
  user_list.Free;
end;

procedure TPenitNoeNetTest.btnAnalizaAlimentyClick(Sender: TObject);
var ali: string;
    p1: integer;
    str: string;
    ZQ: TZQueryPom;
begin
  if memAlimenty.Text='' then exit;

  ali:= memAlimenty.Lines.Text;
  while Pos('/', ali)>0 do
  begin
    RxMemAlimenty.Append;
    // początek danych do wycięcia
    p1:= Pos('/', ali);
    Delete(ali, 1, p1);

    p1:= Pos('|', ali);
    Delete(ali, 1, p1);
    // nazwisko
    p1:= Pos('|', ali);
    str:= Copy(ali, 1, p1-1);
    str:= TrimRight(str);
    RxMemAlimenty.FieldByName('memNazwiskoImie').AsString:= str;
    delete(ali, 1, p1);
    // zadłużenie
    p1:= Pos('|', ali);
    str:= Copy(ali, 1, p1-1);
    str:= TrimLeft(str);
    RxMemAlimenty.FieldByName('memZadluzenie').AsString:= str;
    delete(ali, 1, p1);
    // rata
    p1:= Pos('|', ali);
    str:= Copy(ali, 1, p1-1);
    str:= TrimLeft(str);
    RxMemAlimenty.FieldByName('memRata').AsString:= str;
    delete(ali, 1, p1);
    // Wpłacił
    p1:= Pos('|', ali);
    str:= Copy(ali, 1, p1-1);
    str:= TrimLeft(str);
    RxMemAlimenty.FieldByName('memWplacil').AsString:= str;
    delete(ali, 1, p1);
    // Imie ojciec
    p1:= Pos('|', ali);
    Delete(ali, 1, p1);
    p1:= Pos('|', ali);
    Delete(ali, 1, p1);
    p1:= Pos('|', ali);
    Delete(ali, 1, p1);

    p1:= Pos('|', ali);
    str:= Copy(ali, 1, p1-1);
    str:= TrimRight(str);
    RxMemAlimenty.FieldByName('memNazwiskoImie').AsString:= RxMemAlimenty.FieldByName('memNazwiskoImie').AsString+  ' ' + str;
    delete(ali, 1, p1);

    RxMemAlimenty.Post;
  end;

  // Dodajemy IDO  do RxMemAlimenty
  ZQ:= TZQueryPom.Create(Self);
  try
    ZQ.SQL.Text:= 'SELECT IDO, CONCAT_WS(" ",NAZWISKO,IMIE,"s.",OJCIEC) NazwiskoImie FROM osadzeni';
    ZQ.Open;
    RxMemAlimenty.First;
    while not RxMemAlimenty.EOF do
    begin
      if ZQ.Locate('NazwiskoImie', RxMemAlimenty.FieldByName('memNazwiskoImie').AsString, []) then
         begin
           RxMemAlimenty.Edit;
           RxMemAlimenty.FieldByName('memIDO').AsInteger:= ZQ.FieldByName('IDO').AsInteger;
           RxMemAlimenty.Post;
         end;
      RxMemAlimenty.Next;
    end;

    // uaktualniamy dane dla os_info w zakresie alimentacji
    ZQ.SQL.Text:= 'SELECT IDO, alimenty, ali_stan_na_dzien, ali_Zadluzenie, ali_Rata, ali_Wplacil FROM os_info';
    ZQ.Open;
    RxMemAlimenty.First;
    while not RxMemAlimenty.EOF do
    begin
      if ZQ.Locate('IDO', RxMemAlimenty.FieldByName('memIDO').AsInteger, []) then
         begin
           ZQ.Edit;
           ZQ.FieldByName('ali_stan_na_dzien').AsDateTime:= Date();
           ZQ.FieldByName('alimenty').AsBoolean     := true;
           ZQ.FieldByName('ali_Zadluzenie').AsString:= RxMemAlimenty.FieldByName('memZadluzenie').AsString;
           ZQ.FieldByName('ali_Rata').AsString      := RxMemAlimenty.FieldByName('memRata').AsString;
           ZQ.FieldByName('ali_Wplacil').AsString   := RxMemAlimenty.FieldByName('memWplacil').AsString;
           ZQ.Post;
         end else
         begin
           ZQ.Append;
           ZQ.FieldByName('ali_stan_na_dzien').AsDateTime:= Date();
           ZQ.FieldByName('alimenty').AsBoolean     := true;
           ZQ.FieldByName('ali_Zadluzenie').AsString:= RxMemAlimenty.FieldByName('memZadluzenie').AsString;
           ZQ.FieldByName('ali_Rata').AsString      := RxMemAlimenty.FieldByName('memRata').AsString;
           ZQ.FieldByName('ali_Wplacil').AsString   := RxMemAlimenty.FieldByName('memWplacil').AsString;
           ZQ.Post;
         end;
      RxMemAlimenty.Next;
    end;

  finally
    FreeAndNil(ZQ);
  end;
end;

end.

