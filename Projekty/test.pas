unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, RichMemo, rxFileUtils, ZConnection, ZDataset,
  ZSqlUpdate, Forms, Controls, Dialogs, EditBtn, StdCtrls, ComCtrls,
  DBGrids, ExtCtrls, Buttons, DbCtrls, Spin, db;

type

  { TForm1 }

  TForm1 = class(TForm)
    Bevel1: TBevel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    CheckBox1: TCheckBox;
    ComboBox1: TComboBox;
    Datasource1: TDatasource;
    Datasource2: TDatasource;
    DateEdit1: TDateEdit;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    lzRichEdit1: TRichMemo;
    Memo1: TMemo;
    PageControl1: TPageControl;
    Panel1: TPanel;
    Panel2: TPanel;
    ProgressBar1: TProgressBar;
    SpeedButton1: TSpeedButton;
    SpinEdit1: TSpinEdit;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TrackBar1: TTrackBar;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    ZQuery2: TZQuery;
    ZQPom1: TZQuery;
    ZUpdateSQL1: TZUpdateSQL;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
  private
    { private declarations }
    Function GetWiadomoscFromTable(ZQWPom: TZQuery): String;
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.BitBtn3Click(Sender: TObject);
var i,p1,ido: integer;
    s,n: string;
begin
  if SpinEdit1.Value<>SpinEdit1.MaxValue then
     if MessageDlg('Czy napewno dodać do obecnie wybranej sesji?', mtWarning, [mbOK, mbCancel], 0)= mrCancel then exit;

  ZQuery2.CachedUpdates:=true;
  i:=1;
  ProgressBar1.Max:=Memo1.Lines.Count;
  ProgressBar1.Position:=0;
  ProgressBar1.Visible:=true;
  while i<Memo1.Lines.Count do
   begin
     ProgressBar1.Position:=ProgressBar1.Max - Memo1.Lines.Count;
     Application.ProcessMessages;  // nie zawieszamy programu
     if Memo1.Lines.Strings[i]<>'' then
     begin
      try
       s:=Memo1.Lines.Strings[i];
       p1:=Pos(' ',s);
       n:=copy(s,1,p1-1);
       if CheckBox1.Checked then //IDO w drugiej kolumnie
       begin
         delete(s,1,p1);
         p1:=Pos(' ',s);
         n:=copy(s,1,p1-1);
       end;
       if TryStrToInt(n, ido) then //zapisz jeśli poprawne IDO
       begin
         ZQuery2.Insert;
         ZQuery2.FieldByName('IDO').AsInteger:=ido;
         ZQuery2.FieldByName('Opis').AsString:=ComboBox1.Text;
         ZQuery2.FieldByName('ID_Sesji').AsInteger:=SpinEdit1.Value;
         ZQuery2.Post;
       end;
      except
        ShowMessage('Niewłaściwy format danych wejścionych (wiersz '+IntToStr(i+1)+'). Wklej dane z NoeNet.');
        exit;
      end;
      Memo1.Lines.Delete(i);
     end;
   end;
  ProgressBar1.Position:=ProgressBar1.Max;
  Application.ProcessMessages;

  Memo1.Lines.Clear;
  ZQuery2.ApplyUpdates;
  ZQuery2.CachedUpdates:=false;
  ZQuery2.Refresh;
  ShowMessage('OK');
  ProgressBar1.Visible:=false;
end;

// Przekazujemy wskaźnik na otwartą tabelę ZQWPom.
// Wynikiem jest gotowa wiadomość zwierająca osadzonych
Function TForm1.GetWiadomoscFromTable(ZQWPom: TZQuery): String;
var opis: string;
    wiadomosc: TStringList;
begin
  opis:='';
  wiadomosc:=TStringList.Create;

  ZQWPom.First;
  while not ZQWPom.EOF do
   begin
     if (opis = '')or(opis<>ZQWPom.FieldByName('Opis').AsString) then
     begin
       if opis<>'' then wiadomosc.Add('');
       opis:=ZQWPom.FieldByName('Opis').AsString;
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

procedure TForm1.BitBtn2Click(Sender: TObject);
var wiadomosc: TStringList;
    pomWiad: string;
begin
  wiadomosc:= TStringList.Create;
  wiadomosc.Add('Stwierdzono następujące nieprawidłowości do uzupełnienia.');
  wiadomosc.Add('---------------------------------------------------------');

  pomWiad:='';
  pomWiad:= GetWiadomoscFromTable(ZQuery2);

  if pomWiad<>'' then
  begin
    wiadomosc.Add( pomWiad );
    ZQPom1.SQL.Text := 'INSERT INTO komunikaty (odbiorca, dataNadania, nadawca, komunikat, status) VALUES (:odbiorca, NOW(), :nadawca, :komunikat, :status)';
    ZQPom1.ParamByName('odbiorca').AsString := ZQuery1.FieldByName('user').AsString;
    ZQPom1.ParamByName('nadawca').AsString := ZConnection1.User;
    ZQPom1.ParamByName('status').AsInteger := 0;
    ZQPom1.ParamByName('komunikat').AsMemo := wiadomosc.Text;
    ZQPom1.ExecSQL;
    ZQPom1.Close;
  end;

  wiadomosc.Free;
  ShowMessage('OK. Wysłane do wybranego.');
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
var wiadomosc, pom: TStringList;
    pomWiad: string;
    pomWiadZ: string;
    wychZ: string;
begin
  wiadomosc:= TStringList.Create;
  pom:= TStringList.Create;

  ZQuery1.First;
  while not ZQuery1.EOF do
  begin
    wiadomosc.Clear;
    wiadomosc.Add('Stwierdzono następujące nieprawidłowości do uzupełnienia.');
    wiadomosc.Add('---------------------------------------------------------');

    pomWiadZ:='';
    pomWiad:='';
    pomWiad:= GetWiadomoscFromTable(ZQuery2);

    pom.Clear;
    pom.Text:=ZQuery1.FieldByName('ZastepstwaWych').AsString;
    if pom.Text<>'' then
    begin
      wychZ:= pom.Strings[0];

      ZQPom1.SQL.Text:=ZQuery2.SQL.Text + ' AND (wychowawca = :wychowawca)';
      ZQPom1.ParamByName('wychowawca').AsString:= wychZ;
      ZQPom1.ParamByName('ID_Sesji').AsInteger:= SpinEdit1.Value;
      ZQPom1.Open;
      pomWiadZ:= GetWiadomoscFromTable( ZQPom1 );
      ZQPom1.Close;
    end;

    if (pomWiad<>'')or(pomWiadZ<>'') then
    begin
      if pomWiad<>'' then wiadomosc.Add( pomWiad );
      if pomWiadZ<>'' then
      begin
        wiadomosc.Add('');
        wiadomosc.Add('=========================================================');
        wiadomosc.Add('= Nieprawidłowości u wychowawcy w zastępstwie: '+wychZ);
        wiadomosc.Add('=========================================================');
        wiadomosc.Add( pomWiadZ );
      end;
      ZQPom1.SQL.Text := 'INSERT INTO komunikaty (odbiorca, dataNadania, nadawca, komunikat, status) VALUES (:odbiorca, NOW(), :nadawca, :komunikat, :status)';
      ZQPom1.ParamByName('odbiorca').AsString := ZQuery1.FieldByName('user').AsString;
      ZQPom1.ParamByName('nadawca').AsString := ZConnection1.User;
      ZQPom1.ParamByName('status').AsInteger := 0;
      ZQPom1.ParamByName('komunikat').AsMemo := wiadomosc.Text;
      ZQPom1.ExecSQL;
      ZQPom1.Close;
    end;

    ZQuery1.Next;
  end;
  wiadomosc.Free;
  pom.Free;
  ShowMessage('OK. Wysłane do wszystkich.');
end;

procedure TForm1.BitBtn4Click(Sender: TObject);
begin
  ZQPom1.Close;
  ZQPom1.SQL.Text:='DELETE FROM wykaz_bledow WHERE ID_Sesji = :ID_Sesji;';
  ZQPom1.ParamByName('ID_Sesji').AsInteger:= SpinEdit1.Value;
  ZQPom1.ExecSQL;
  ZQuery2.Refresh;
  ShowMessage('OK. Wyczyszczono tabelę z nieprawidłowościami.');
end;

procedure TForm1.BitBtn5Click(Sender: TObject);
var sPom : TStringStream;
begin
  if lzRichEdit1.Lines.Text = '' then exit;

  sPom:= TStringStream.Create('');
  lzRichEdit1.SaveRichText(sPom);
  ZQuery1.First;
  while not ZQuery1.EOF do
  begin
    ZQPom1.SQL.Text := 'INSERT INTO komunikaty (odbiorca, dataNadania, nadawca, komunikat, status) VALUES (:odbiorca, NOW(), :nadawca, :komunikat, :status)';
    ZQPom1.ParamByName('odbiorca').AsString := ZQuery1.FieldByName('user').AsString;
    ZQPom1.ParamByName('nadawca').AsString := ZConnection1.User;
    ZQPom1.ParamByName('status').AsInteger := 0;
    ZQPom1.ParamByName('komunikat').AsMemo := sPom.DataString;
    ZQPom1.ExecSQL;
    ZQPom1.Close;

    ZQuery1.Next;
  end;
  sPom.Free;
  ShowMessage('OK. Wysłane do wszystkich.');
end;

procedure TForm1.BitBtn6Click(Sender: TObject);
begin
  if BitBtn6.Caption = 'Połącz' then
  begin;
    if (LabeledEdit1.Text<>'')AND(LabeledEdit2.Text<>'') then
    begin
     ZConnection1.User:= LabeledEdit1.Text;
     ZConnection1.Password:= LabeledEdit2.Text;
     ZConnection1.Connect;

     ZQPom1.SQL.Text := 'SELECT max(ID_Sesji)as max, max(data_wpisu)as data_wpisu FROM wykaz_bledow;';
     ZQPom1.Open;
     SpinEdit1.MaxValue:= ZQPom1.FieldByName('max').AsInteger+1;
     SpinEdit1.Value:= SpinEdit1.MaxValue;
     DateEdit1.Date:= ZQPom1.FieldByName('data_wpisu').AsDateTime;
     SpinEdit1.Hint:= 'Ostatnia sesja nr: '+IntToStr(SpinEdit1.MaxValue-1)+'   z dnia:'+ DateToStr(DateEdit1.Date);
     ZQPom1.Close;

     ZQuery1.Open;
     ZQuery2.Open;
     LabeledEdit1.Enabled:=false;
     LabeledEdit2.Enabled:=false;
     PageControl1.Enabled:=true;
     Panel2.Enabled:=true;
    end;
  end else
  begin
    ZConnection1.Disconnect;
    LabeledEdit1.Enabled:=true;
    LabeledEdit2.Enabled:=true;
    PageControl1.Enabled:=false;
    Panel2.Enabled:=false;
  end;
  if ZConnection1.Connected then BitBtn6.Caption:='Rozłącz' else BitBtn6.Caption:='Połącz';
end;

procedure TForm1.BitBtn7Click(Sender: TObject);
begin
  ShowMessage('2013-2017 - program do wysyłania komunikatów o nieprawidłowościach w Noe. Wersja 2');
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  LabeledEdit1.Text:=GetUserName;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  SpinEdit1.MaxValue:=SpinEdit1.MaxValue+1;
  SpinEdit1.Value:=SpinEdit1.MaxValue;
end;

procedure TForm1.SpinEdit1Change(Sender: TObject);
begin
  ZQuery2.Close;
  ZQuery2.ParamByName('ID_Sesji').AsInteger:=SpinEdit1.Value;
  if ZConnection1.Connected then ZQuery2.Open;
end;

procedure TForm1.TrackBar1Change(Sender: TObject);
begin
  SpinEdit1.Value:= SpinEdit1.MaxValue + (TrackBar1.Position - 30);
end;

end.





  object ZQuery1: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'SELECT'
      'typ_cel.Wychowawca,'
      'uprawnienia.`user`,'
      'uprawnienia.ZastepstwaWych'
      'FROM'
      'typ_cel'
      'Inner Join uprawnienia ON typ_cel.Wychowawca = uprawnienia.Wychowawca AND typ_cel.Wychowawca <> '''''
      'GROUP BY'
      'typ_cel.Wychowawca'
	  
	  
	  
  object ZQuery2: TZQuery
    Connection = ZConnection1
    SortedFields = 'Opis'
    UpdateObject = ZUpdateSQL1
    SQL.Strings = (
      'SELECT'
      'wykaz_bledow.id,'
      'wykaz_bledow.Opis,'
      'osadzeni.NAZWISKO,'
      'osadzeni.IMIE,'
      'osadzeni.OJCIEC,'
      'osadzeni.KLASYF,'
      'osadzeni.POC,'
      'wykaz_bledow.IDO,'
      'wykaz_bledow.data_wpisu,'
      'wykaz_bledow.ID_Sesji,'
      'typ_cel.Wychowawca'
      'FROM'
      'wykaz_bledow'
      'Left Join osadzeni ON wykaz_bledow.IDO = osadzeni.IDO'
      'Left Join typ_cel ON osadzeni.POC = typ_cel.POC'
      'WHERE (ID_Sesji = :ID_Sesji)'
    )
    Params = <    
      item
        DataType = ftUnknown
        Name = 'ID_Sesji'
        ParamType = ptUnknown
      end>
    MasterFields = 'Wychowawca'
    MasterSource = Datasource1
    LinkedFields = 'Wychowawca'
    IndexFieldNames = 'Opis Asc'
    left = 784
    top = 160
    ParamData = <    
      item
        DataType = ftUnknown
        Name = 'ID_Sesji'
        ParamType = ptUnknown
      end>
  end
  object Datasource2: TDataSource
    DataSet = ZQuery2
    left = 784
    top = 213
  end
  object ZUpdateSQL1: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM wykaz_bledow'
      'WHERE'
      '  wykaz_bledow.id = :OLD_id'
    )
    InsertSQL.Strings = (
      'INSERT INTO wykaz_bledow'
      '  (data_wpisu, IDO, Opis, ID_Sesji)'
      'VALUES'
      '  (CURDATE(), :IDO, :Opis, :ID_Sesji)'
    )
    ModifySQL.Strings = (
      'UPDATE wykaz_bledow SET'
      '  IDO = :IDO,'
      '  Opis = :Opis'
      'WHERE'
      '  wykaz_bledow.id = :OLD_id'
    )
	
	
	
	
	
	        Items.Strings = (
          'Uruchom nagrodę.'
          'Uruchom Karę.'
          'Nagrody do zaopiniowania.'
          'Kary do zaopiniowania.'
          'Przeterminowany termin oceny.'
          'Przeterminowany termin weryfikacji potrzeb.'
          'Przeterminowany termin udokumentowania wykształcenia.'
          'Przeterminowany: PRAWO DO ŁĄCZENIA WIDZEŃ DO DNIA'
          'Przeterminowany: TERMIN PRZYJĘCIA DO ODDZIAŁU TERAPEUTYCZNEGO'
          'Przeterminowany: TERMIN OCENY WERYFIKACJI IPO'
          'Przeterminowany: TERMIN REALIZACJI PRZEZ SKAZANEGO ZADANIA WYNIKAJĄCEGO Z IPO'
          'Brak Poziomu wykształcenia, Typu szkoły.'
          'Konflikt palenia.'
        )


		
=======================================
Update wykaz_bledow w
inner join osadzeni os ON os.IDO=w.IDO
inner join typ_cel c ON c.POC=os.POC and c.Wychowawca<>''
inner join uprawnienia u ON u.Wychowawca=c.Wychowawca
SET
w.POC = os.POC, w.NAZWISKO=os.NAZWISKO, w.IMIE=os.IMIE, w.OJCIEC=os.OJCIEC, w.KLASYF=os.KLASYF,
w.Wychowawca=c.Wychowawca, w.wych_login=u.user
WHERE w.POC is null	