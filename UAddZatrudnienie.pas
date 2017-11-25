unit UAddZatrudnienie;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, FileUtil, DBDateTimePicker, ZDataset, Forms,
  Controls, Graphics, Dialogs, StdCtrls, DbCtrls, ExtCtrls, Buttons, rxdbutils,
  rxdbgrid, datamodule, TplGradientUnit;

type

  { TAddZatrudnienie }

  TAddZatrudnienie = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    DBComboBox3: TDBComboBox;
    DBComboBox4: TDBComboBox;
    DBComboBox5: TDBComboBox;
    DBComboBox6: TDBComboBox;
    DBDateTimePicker1: TDBDateTimePicker;
    DBDateTimePicker2: TDBDateTimePicker;
    DBDateTimePicker3: TDBDateTimePicker;
    DBDateTimePicker4: TDBDateTimePicker;
    DBDateTimePicker5: TDBDateTimePicker;
    DBDateTimePicker6: TDBDateTimePicker;
    DBDateTimePicker7: TDBDateTimePicker;
    DBDateTimePicker8: TDBDateTimePicker;
    DBDateTimePicker9: TDBDateTimePicker;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    DBText9: TDBText;
    DSZat: TDataSource;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    Label1: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    lblNazwa: TLabel;
    Label10: TLabel;
    Label15: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    lblMiejsce: TLabel;
    lblForma: TLabel;
    lblSystem: TLabel;
    lblStanowisko: TLabel;
    memOpis: TMemo;
    Panel1: TPanel;
    Panel5: TPanel;
    plGradient1: TplGradient;
    ZQZat: TZQuery;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure DBComboBox1Select(Sender: TObject);
    procedure DBDateTimePicker3EditingDone(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
  private
    procedure WyslijKomunikaty;
  public
    id: integer;
    STANOWISKOID: integer;
    CzyNowe: Boolean;
    Procedure NoweZatrudnienie(ido: integer);
    Procedure NoweZatrudnienieStanowisko(id_stanowiska: integer);
    Procedure ModyfikujZatrudnienie(edit_id: integer);
    Procedure WstawDaneOsadzonego(ido: integer);
    Procedure WstawDaneStanowiska(id_stanowiska: integer);
    Function SprawdzStatusZatrudnienia(ido: integer): Boolean;
    Procedure CzyZapisac;
  end;

var
  AddZatrudnienie: TAddZatrudnienie;

implementation
uses UOsadzeni, UStanowiska, DateUtils, UKomunikatorNowaWiad;
{$R *.frm}

{ TAddZatrudnienie }

// ANULUJ
procedure TAddZatrudnienie.BitBtn2Click(Sender: TObject);
begin
// Close OnClose;
end;

// WYBIERZ OSADZONEGO
procedure TAddZatrudnienie.BitBtn3Click(Sender: TObject);
var ido: integer;
begin
  with TOsadzeni.Create(Application) do
  begin
    if ShowModal = mrOK then
    begin
      ido:= FIdo; // FIdo jest z TOsadzeni
      if SprawdzStatusZatrudnienia(ido) then WstawDaneOsadzonego(ido);
    end;
    Free;
  end;
end;

// WYBIERZ STANOWISKO
procedure TAddZatrudnienie.BitBtn4Click(Sender: TObject);
var id_stanowiska: integer;
begin
  with TStanowiska.Create(Application) do
  begin
    WybierzGrupe;
    if ShowModal = mrOK then
    begin
        id_stanowiska:= Fid_stanowiska;
        WstawDaneStanowiska(id_stanowiska);
    end;
    Free;
  end;
end;

procedure TAddZatrudnienie.DBComboBox1Select(Sender: TObject);
begin
  case ZQZat.FieldByName('status_zatrudnienia').AsString of
       sz_Oczekujacy : begin
                         //jesli są daty to zapytać czy je wyzerować
                         if (not ZQZat.FieldByName('zat_od').IsNull) OR (not ZQZat.FieldByName('zat_do').IsNull) then
                           if MessageDlg('Czy usunąć wprowadzone daty dotyczące zatrudnienia ?', mtInformation, [mbYes, mbNo],0) = mrYes then
                           begin
                             ZQZat.FieldByName('zat_od').Value:= NULL;
                             ZQZat.FieldByName('zat_do').Value:= NULL;
                             ZQZat.FieldByName('powod_wycofania').Value:= NULL;
                           end;
                         DBDateTimePicker1.Enabled:= False;
                         DBDateTimePicker2.Enabled:= False;
                         DBComboBox2.Enabled:= false;
                       end;
       sz_Zatrudniony: begin
                         //jesli jest data to zapytać czy wstawić bierzącą
                         if (not ZQZat.FieldByName('zat_od').IsNull) then
                           if MessageDlg('Czy zmienić datę zatrudnienia na bierzącą?', mtWarning, [mbYes, mbNo],0) = mrYes then
                           begin
                             ZQZat.FieldByName('zat_od').Value:= Date();
                             ZQZat.FieldByName('zat_do').Value:= NULL;
                             ZQZat.FieldByName('powod_wycofania').Value:= NULL;
                             ZQZat.FieldByName('data_nastepnego_urlopu').Value:= IncYear(Date());
                           end;
                         DBDateTimePicker1.Enabled:= True;
                         DBDateTimePicker2.Enabled:= False;
                         DBComboBox2.Enabled:= false;
                       end;
       sz_Wycofany  :  begin
                         //jesli jest data to zapytać czy wstawić bierzącą
                         //ZQZat.FieldByName('zat_od').Value:= Date();
                         if ZQZat.FieldByName('zat_od').IsNull then
                            MessageDlg('Brakuje daty rozpoczęcia zatrudnienia.', mtInformation, [mbOK],0);
                         if (not ZQZat.FieldByName('zat_do').IsNull) then
                            if MessageDlg('Czy zmienić datę wycofania z zatrudnienia na bierzącą?', mtInformation, [mbYes, mbNo],0) = mrYes then
                            begin
                              ZQZat.FieldByName('zat_do').Value:= Date();
                            end;
                         //ZQZat.FieldByName('powod_wycofania').Value:= NULL;
                         DBDateTimePicker1.Enabled:= True;
                         DBDateTimePicker2.Enabled:= True;
                         DBComboBox2.Enabled:= true;
                       end;
  end;
end;

procedure TAddZatrudnienie.DBDateTimePicker3EditingDone(Sender: TObject);
begin
  if ZQZat.FieldByName('data_badania').IsNull then exit;
  ZQZat.FieldByName('data_nastepnego_badania').AsDateTime:= IncYear(ZQZat.FieldByName('data_badania').AsDateTime, 1);
end;

procedure TAddZatrudnienie.FormClose(Sender: TObject;
  var CloseAction: TCloseAction);
begin
  ZQZat.Cancel;
  ZQZat.Close;
end;

//DODAJ
procedure TAddZatrudnienie.BitBtn1Click(Sender: TObject);
begin
  if CzyNowe then
    begin
      ZQZat.FieldByName('data_dodania').AsDateTime:= Now();
      ZQZat.FieldByName('user_dodania').Value:= DM.PelnaNazwa;
      ZQZat.Post;
      ZQZat.Close;
    end
  else
    begin
      ZQZat.FieldByName('data_modyfikacji').Value:= Now();
      ZQZat.FieldByName('user_modyfikacji').Value:= DM.PelnaNazwa;

      ZQZat.Post;
      ZQZat.Close;
    end;
end;

procedure TAddZatrudnienie.NoweZatrudnienie(ido: integer);
begin
  CzyNowe:= True;
  ZQZat.SQL.Text:='SELECT * FROM zat_zatrudnieni LIMIT 1;';
  ZQZat.Open;
  ZQZat.Append;

  ZQZat.FieldByName('data_dodania').AsDateTime     := Now();
  ZQZat.FieldByName('status_zatrudnienia').AsString:= sz_Oczekujacy;
  ZQZat.FieldByName('pobyt').AsString              := sp_Aktualny;

  if SprawdzStatusZatrudnienia(ido) then WstawDaneOsadzonego(ido);
end;

procedure TAddZatrudnienie.NoweZatrudnienieStanowisko(id_stanowiska: integer);
begin
  CzyNowe:= True;
  ZQZat.SQL.Text:='SELECT * FROM zat_zatrudnieni LIMIT 1;';
  ZQZat.Open;
  ZQZat.Append;

  ZQZat.FieldByName('data_dodania').AsDateTime     := Now();
  ZQZat.FieldByName('status_zatrudnienia').AsString:= sz_Oczekujacy;
  ZQZat.FieldByName('pobyt').AsString              := sp_Aktualny;

  //dodajemy dane stanowiska id
  WstawDaneStanowiska(id_stanowiska);
end;

procedure TAddZatrudnienie.ModyfikujZatrudnienie(edit_id: integer);
begin
  CzyNowe:= False;
  BitBtn3.Enabled:= False;

  id:= edit_id;
  ZQZat.SQL.Text:='SELECT * FROM zat_zatrudnieni WHERE id = :id;';
  ZQZat.ParamByName('id').AsInteger:= id;
  ZQZat.Open;

  ZQZat.Edit;

  WstawDaneStanowiska( ZQZat.FieldByName('id_stanowiska').AsInteger );
end;

procedure TAddZatrudnienie.WstawDaneOsadzonego(ido: integer);
var ZQPom: TZQueryPom;
begin
  DM.ZQTemp.SQL.Text:='SELECT * FROM osadzeni WHERE ido= :ido;';
  DM.ZQTemp.ParamByName('ido').AsInteger:= ido;
  DM.ZQTemp.Open;

  if IsDataSetEmpty( DM.ZQTemp ) then
    begin
      MessageDlg('Brak wybranego osadzonego w obecnym pobycie.', mtInformation, [mbOK],0);
    end
  else
    begin
      ZQZat.FieldByName('IDO').AsInteger      := ido;
      ZQZat.FieldByName('Nazwisko').AsString  := DM.ZQTemp.FieldByName('Nazwisko').AsString;
      ZQZat.FieldByName('Imie').AsString      := DM.ZQTemp.FieldByName('Imie').AsString;
      ZQZat.FieldByName('Ojciec').AsString    := DM.ZQTemp.FieldByName('Ojciec').AsString;
      ZQZat.FieldByName('Urodzony').AsDateTime:= DM.ZQTemp.FieldByName('Urodz').AsDateTime;
      ZQZat.FieldByName('Przyjety').AsDateTime:= DM.ZQTemp.FieldByName('Przyj').AsDateTime;
      ZQZat.FieldByName('Klasyf').AsString    := DM.ZQTemp.FieldByName('Klasyf').AsString;
      ZQZat.FieldByName('POC').AsString       := DM.ZQTemp.FieldByName('POC').AsString;

      ZQZat.FieldByName('zawod').AsString     := 'B/Z';
    end;

  DM.ZQTemp.Close;

  // odczytujemy podkulture
  ZQPom:= TZQueryPom.Create(self);
  ZQPom.SQL.Text:= 'SELECT GR, KoniecKary FROM os_info WHERE ido= :ido';
  ZQPom.ParamByName('ido').AsInteger:= ZQZat.FieldByName('ido').AsInteger;
  ZQPom.Open;
  if not IsDataSetEmpty( ZQPom ) then
  begin
    ZQZat.FieldByName('podkultura').Value := ZQPom.FieldByName('GR').Value;
    ZQZat.FieldByName('koniec_kary').Value := ZQPom.FieldByName('KoniecKary').Value;
  end;

  FreeAndNil(ZQPom);

  CzyZapisac;
end;

procedure TAddZatrudnienie.WstawDaneStanowiska(id_stanowiska: integer);
begin
  DM.ZQTemp.SQL.Text:='SELECT * FROM zat_stanowiska WHERE id= :id;';
  DM.ZQTemp.ParamByName('id').AsInteger:= id_stanowiska;
  DM.ZQTemp.Open;

  if IsDataSetEmpty( DM.ZQTemp ) then
    begin
      MessageDlg('Nie wybrano stanowiska.', mtInformation, [mbOK],0);
    end
  else
    begin
      ZQZat.FieldByName('id_stanowiska').AsInteger:= id_stanowiska;
      lblNazwa.Caption     := DM.ZQTemp.FieldByName('nazwa').AsString;
      lblMiejsce.Caption   := DM.ZQTemp.FieldByName('miejsce').AsString;
      lblStanowisko.Caption:= DM.ZQTemp.FieldByName('stanowisko').AsString;
      lblSystem.Caption    := DM.ZQTemp.FieldByName('system').AsString;
      lblForma.Caption     := DM.ZQTemp.FieldByName('forma').AsString;
      memOpis.Text         := DM.ZQTemp.FieldByName('opis').AsString;

      STANOWISKOID:= id_stanowiska;
    end;

  CzyZapisac;
  DM.ZQTemp.Close;
end;

// USUŃ wybrane stanowisko
procedure TAddZatrudnienie.BitBtn5Click(Sender: TObject);
begin
  ZQZat.FieldByName('id_stanowiska').Value:= NULL;
  lblNazwa.Caption     := '(Brak)';
  lblMiejsce.Caption   := '(Brak)';
  lblStanowisko.Caption:= '(Brak)';
  lblSystem.Caption    := '(Brak)';
  lblForma.Caption     := '(Brak)';
  memOpis.Text         := '(Brak)';

  ZQZat.FieldByName('status_zatrudnienia').AsString:= sz_Oczekujacy;
  ZQZat.FieldByName('zat_od').Value:= NULL;
  ZQZat.FieldByName('zat_do').Value:= NULL;
  ZQZat.FieldByName('powod_wycofania').Value:= NULL;
  CzyZapisac;
end;

// Uzupełnij dane z poprzedniego zatrudnienia osadzonego.
procedure TAddZatrudnienie.BitBtn6Click(Sender: TObject);
var ZQPom: TZQueryPom;
begin
  ZQPom:= TZQueryPom.Create(self);
  ZQPom.SQL.Text:= 'SELECT * FROM zat_zatrudnieni WHERE (ido= :ido)and(id<>:id) ORDER BY id DESC LIMIT 1';
  ZQPom.ParamByName('ido').AsInteger:= ZQZat.FieldByName('ido').AsInteger;
  ZQPom.ParamByName('id').AsInteger:= ZQZat.FieldByName('id').AsInteger;
  ZQPom.Open;
  if not IsDataSetEmpty( ZQPom ) then
  begin
    ZQZat.FieldByName('adres').AsString            := ZQPom.FieldByName('adres').AsString;
    ZQZat.FieldByName('kod_pocztowy').AsString     := ZQPom.FieldByName('kod_pocztowy').AsString;
    ZQZat.FieldByName('pesel').AsString            := ZQPom.FieldByName('pesel').AsString;
    ZQZat.FieldByName('miejsce_urodzenia').AsString:= ZQPom.FieldByName('miejsce_urodzenia').AsString;
    ZQZat.FieldByName('wyksztalcenie').AsString    := ZQPom.FieldByName('wyksztalcenie').AsString;
    ZQZat.FieldByName('zawod').AsString            := ZQPom.FieldByName('zawod').AsString;
  end;

  FreeAndNil(ZQPom);
end;

// Uzupełnij dane z poprzedniego zatrudnienia osadzonego. Tylko daty badań.
procedure TAddZatrudnienie.BitBtn8Click(Sender: TObject);
var ZQPom: TZQueryPom;
begin
  ZQPom:= TZQueryPom.Create(self);
  ZQPom.SQL.Text:= 'SELECT * FROM zat_zatrudnieni WHERE (ido= :ido)and(id<>:id) ORDER BY id DESC LIMIT 1';
  ZQPom.ParamByName('ido').AsInteger:= ZQZat.FieldByName('ido').AsInteger;
  ZQPom.ParamByName('id').AsInteger := ZQZat.FieldByName('id').AsInteger;
  ZQPom.Open;
  if not IsDataSetEmpty( ZQPom ) then
  begin
    ZQZat.FieldByName('data_badania').AsDateTime            := ZQPom.FieldByName('data_badania').AsDateTime;
    ZQZat.FieldByName('data_nastepnego_badania').AsDateTime := ZQPom.FieldByName('data_nastepnego_badania').AsDateTime;
    ZQZat.FieldByName('data_nastepnego_BHP').AsDateTime     := ZQPom.FieldByName('data_nastepnego_BHP').AsDateTime;

    ZQZat.FieldByName('urlop_od').AsDateTime                := ZQPom.FieldByName('urlop_od').AsDateTime;
    ZQZat.FieldByName('urlop_do').AsDateTime                := ZQPom.FieldByName('urlop_do').AsDateTime;
    ZQZat.FieldByName('data_nastepnego_urlopu').AsDateTime  := ZQPom.FieldByName('data_nastepnego_urlopu').AsDateTime;
  end;

  FreeAndNil(ZQPom);
end;

// True - dodaj osadzonego, false - nie dodawaj
function TAddZatrudnienie.SprawdzStatusZatrudnienia(ido: integer): Boolean;
begin
  DM.ZQTemp.SQL.Text:='SELECT zat.id, zat.ido, zat.status_zatrudnienia, zat.data_dodania, zat.pobyt '+
                      //'IF(os.ido=zat.ido, "Aktualny", "Uprzedni")as pobyt '+ WYLICZY POBYT
                      'FROM zat_zatrudnieni as zat LEFT OUTER JOIN osadzeni as os ON zat.ido = os.ido '+
                      'WHERE (zat.pobyt = :pobyt) AND (zat.ido= :ido) ';
                      //'HAVING pobyt = :pobyt'; JAK BYŁ WYLICZANY

  DM.ZQTemp.ParamByName('ido').AsInteger:= ido;
  DM.ZQTemp.ParamByName('pobyt').AsString:=  sp_Aktualny;
  DM.ZQTemp.Open;

  // dodaj osadzonego TRUE
  if IsDataSetEmpty( DM.ZQTemp ) then
    begin
      Result:= true;
      exit;
    end;

  Result:= true;
  while not DM.ZQTemp.EOF do
  begin
    // jesli oczekujący
    if DM.ZQTemp.FieldByName('status_zatrudnienia').AsString = sz_Oczekujacy then
      if MessageDlg('Osadzony jest już dodany do oczekujących.'+LineEnding+'Czy dodać ?', mtInformation, [mbOK, mbCancel],0) = mrOk then
       begin
         Result:= true;
         exit;
       end else
       begin
         Result:= false;
         exit;
       end;

    if DM.ZQTemp.FieldByName('status_zatrudnienia').AsString = sz_Zatrudniony then
      if MessageDlg('Osadzony jest aktualnie zatrudniony.'+LineEnding+'Czy dodać ?', mtInformation, [mbOK, mbCancel],0) = mrOk then
       begin
         Result:= true;
         exit;
       end else
       begin
         Result:= false;
         exit;
       end;

    DM.ZQTemp.Next;
  end;
end;

procedure TAddZatrudnienie.CzyZapisac;
begin
  //OK
  if ZQZat.FieldByName('ido').IsNull then
       begin
         BitBtn1.Enabled:= false;
         BitBtn6.Enabled:= false;
       end
    else
       begin
         BitBtn1.Enabled:= true;
         BitBtn6.Enabled:= true;
       end;

  // Edycja statusu i daty zatrudnienia
  if ZQZat.FieldByName('id_stanowiska').IsNull then
      begin
        DBComboBox1.Enabled:= False;
      end
  else
      begin
        DBComboBox1.Enabled:= True;
      end;

  case ZQZat.FieldByName('status_zatrudnienia').AsString of
       sz_Oczekujacy : begin
                         DBDateTimePicker1.Enabled:= False;
                         DBDateTimePicker2.Enabled:= False;
                         DBComboBox2.Enabled:= false;
                       end;
       sz_Zatrudniony: begin
                         DBDateTimePicker1.Enabled:= True;
                         DBDateTimePicker2.Enabled:= False;
                         DBComboBox2.Enabled:= false;
                       end;
       sz_Wycofany  :  begin
                         DBDateTimePicker1.Enabled:= True;
                         DBDateTimePicker2.Enabled:= True;
                         DBComboBox2.Enabled:= true;
                       end;
  end;
end;

procedure TAddZatrudnienie.BitBtn7Click(Sender: TObject);
begin
  WyslijKomunikaty;
  MessageDlg('Wysłano.', mtInformation, [mbOK],0);
end;

procedure TAddZatrudnienie.WyslijKomunikaty;
var user_list: TStringList;
    temat, tresc: string;
    ZQPom: TZQueryPom;
begin
  user_list:= TStringList.Create;
  user_list.Add( DM.GetUserByIDO( ZQZat.FieldByName('ido').AsInteger ) ); // dodaje wychowawce wybranego osadzonego.

  ZQPom:= TZQueryPom.Create(Self);
  ZQPom.SQL.Text:= 'SELECT user, Full_name, Dzial FROM uprawnienia WHERE Dzial = :dzial';
  ZQPom.ParamByName('dzial').AsString:= 'BHP';
  ZQPom.Open;
  while not ZQPom.EOF do
  begin
    user_list.Add( ZQPom.FieldByName('user').AsString );
    ZQPom.Next;
  end;

  temat:= 'Zatrudnienie: '+ZQZat.FieldByName('Nazwisko').AsString+' '+ZQZat.FieldByName('Imie').AsString;

  tresc:='';
  case ZQZat.FieldByName('status_zatrudnienia').AsString of
       sz_Oczekujacy : tresc:= 'Osadzony jest jako oczekujący do zatrudnienia' + LineEnding;
       sz_Zatrudniony: tresc:= 'Zatrudniono osadzonego' + LineEnding;
       sz_Wycofany   :  begin
                          tresc:= 'Osadzony został wycofany z zatrudnienia' + LineEnding;
                          tresc:= tresc +'przyczyna wycofania: ' +ZQZat.FieldByName('powod_wycofania').AsString + LineEnding;
                        end;
  end;
  tresc:=tresc+ ZQZat.FieldByName('POC').AsString+' '+ZQZat.FieldByName('Nazwisko').AsString+' '+ZQZat.FieldByName('Imie').AsString;

  with TKomunikatorNowaWiad.Create(Self) do
  begin
       AutoKomunikat(user_list, temat, tresc);
       Free;
  end;

  FreeAndNil(user_List);
end;

{


procedure TAddZatrudnienie.Button1Click(Sender: TObject);
var i: integer;
  st: TStringList;
  s: string;
  x: integer;

begin
  MemDataset1.Clear(false);
  st:= TStringList.Create;
  i:=0;

  while i < Memo1.Lines.Count do
  begin
    st.Clear;
    s:=Memo1.Lines.Strings[i];
    ExtractStrings([#9], [], PChar(s), st, true);

    MemDataset1.Append;

    for x:=0 to 43 do MemDataset1.FieldByName('MemDataset1Field'+IntToStr(x+1)).AsString := st[x];

    MemDataset1.Post;

    inc(i);
  end;
  FreeAndNil(st);
end;

procedure TAddZatrudnienie.Button2Click(Sender: TObject);
begin
  ZQZat.Close;
  ZQZat.SQL.Text:='SELECT * FROM zat_zatrudnieni LIMIT 1;';
  ZQZat.Open;
  ZQZat.Append;

  ZQZat.FieldByName('data_dodania').AsDateTime     := Date();
  ZQZat.FieldByName('status_zatrudnienia').AsString:= sz_Zatrudniony;
  ZQZat.FieldByName('pobyt').AsString              := sp_Aktualny;
  ZQZat.FieldByName('id_stanowiska').AsInteger:= STANOWISKOID;

  ZQZat.FieldByName('nr_ewidencyjny').AsString   := MemDataset1.FieldByName('MemDataset1Field1').AsString;
  ZQZat.FieldByName('zat_od').AsString           := MemDataset1.FieldByName('MemDataset1Field43').AsString;
  ZQZat.FieldByName('etat').AsString             := MemDataset1.FieldByName('MemDataset1Field27').AsString;
  ZQZat.FieldByName('data_badania').AsString     := MemDataset1.FieldByName('MemDataset1Field11').AsString;
  ZQZat.FieldByName('data_nastepnego_badania').AsString := MemDataset1.FieldByName('MemDataset1Field12').AsString;
  ZQZat.FieldByName('urlop_od').AsString        := MemDataset1.FieldByName('MemDataset1Field37').AsString;

  ZQZat.FieldByName('adres').AsString           := MemDataset1.FieldByName('MemDataset1Field7').AsString;
  ZQZat.FieldByName('kod_pocztowy').AsString    := MemDataset1.FieldByName('MemDataset1Field6').AsString;
  ZQZat.FieldByName('wyksztalcenie').AsString   := MemDataset1.FieldByName('MemDataset1Field16').AsString;
  ZQZat.FieldByName('pesel').AsString           := MemDataset1.FieldByName('MemDataset1Field24').AsString;
  ZQZat.FieldByName('zawod').AsString           := MemDataset1.FieldByName('MemDataset1Field17').AsString;
  ZQZat.FieldByName('miejsce_urodzenia').AsString     := MemDataset1.FieldByName('MemDataset1Field5').AsString;
  ZQZat.FieldByName('nr_dowodu').AsString       := MemDataset1.FieldByName('MemDataset1Field25').AsString;
  ZQZat.FieldByName('art').AsString             := MemDataset1.FieldByName('MemDataset1Field21').AsString;
  if MemDataset1.FieldByName('MemDataset1Field38').AsString= 'TAK' then ZQZat.FieldByName('zobowiazania').AsString    := '1';
  if MemDataset1.FieldByName('MemDataset1Field40').AsString= 'TAK' then ZQZat.FieldByName('alimety').AsString         := '1';
  if MemDataset1.FieldByName('MemDataset1Field38').AsString= 'NIE' then ZQZat.FieldByName('zobowiazania').AsString    := '0';
  if MemDataset1.FieldByName('MemDataset1Field40').AsString= 'NIE' then ZQZat.FieldByName('alimety').AsString         := '0';
  if MemDataset1.FieldByName('MemDataset1Field18').AsString= 'TAK' then ZQZat.FieldByName('zawod_potwierdzony').AsString := '1';
  if MemDataset1.FieldByName('MemDataset1Field18').AsString= 'NIE' then ZQZat.FieldByName('zawod_potwierdzony').AsString := '0';
end;

procedure TAddZatrudnienie.Button3Click(Sender: TObject);
begin
  ZQZat.FieldByName('data_dodania').AsDateTime:= Now();
  ZQZat.FieldByName('user_dodania').Value:= DM.PelnaNazwa;
  ZQZat.Post;
  ZQZat.Close;
end;
}

end.

