unit UPenitWPZ;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, TplGradientUnit, rxdbgrid, rxmemds, Forms,
  Controls, Graphics, Dialogs, StdCtrls, ExtCtrls, EditBtn, Spin, fpjson,
  jsonparser, dateutils, Clipbrd, Buttons, DbCtrls, datamodule, DateTimePicker,
  LSControls, LR_Class, LR_DBSet, ZDataset, db;

type
  TOrzeczenie = record
    art: string;
    lat: integer;
    msc: integer;
    dni: integer;
    zastepcza: Boolean;
    koniec_kary: TDate;
    Sdni: integer;
  end;

  { TWPZ }

  TWPZ = class
    private
      data_osadzenia: TDate;
      owz          : Boolean;
      ulamek       : string;
      ulamek_opis  : string;
      OBS_obostrzenie: Boolean;
      OBS_po_ilu   : integer; // wpz po ilu dniach
      uwagi        : string;
      WPZ          : TDate;
      przepustki   : TDate;
      postpenit    : TDate;
      orzeczenia   : array of TOrzeczenie;

      // zmienne pomocnicze
      fisObliczono: Boolean;
      fSumaKar : integer; // suma kar zasadniczych
      fKomunikaty: TStringList;

      function WymiarKaryDni(dane: TOrzeczenie): integer;
      function SumojKary: integer;
      function GetUlamekArt: string;

      procedure validateWPZ;
      procedure validatePrzepustki;
      procedure validatePostpenit;

      function SprawdzWarunki: Boolean; // sprawdza czy można wyliczyc WPZ
      function ObliczOBS: Boolean;
      function  ObliczKaryZastepcze: Boolean;
      procedure ObliczUlamek;
      procedure ObliczOwz;
      function ObliczDozywocie: Boolean;
    public
      constructor Create;
      destructor Destroy; override;
      function Oblicz: Boolean;
      function SaveToStr: String;
      procedure LoadFromStr(value: string);  // dane w formacjie JOSN
      procedure ParseFromDOC(value: string); // wklejamy fragment dokumentu (tabelka orzeczeń) z NoeNET
      function Count: integer;
      function IndexWPZ: integer; // index ostatniej kary zasadniczej
      function AddOrzeczenie(Vart: string; Vlat, Vmsc,Vdni: integer; Vzastepcza: Boolean; Vkoniec_kary: TDate): integer;
  end;

  { TPenitWPZ }

  TPenitWPZ = class(TForm)
    Bevel1: TBevel;
    btnDrukuj: TBitBtn;
    btnOblicz: TBitBtn;
    btnPaste: TBitBtn;
    btnZapiszTerminarz: TBitBtn;
    cbOBS: TCheckBox;
    cbOWZ: TCheckBox;
    cbmUlamek: TComboBox;
    DBNavigator1: TDBNavigator;
    dtpKoniecKary: TDateTimePicker;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DSOsInfo: TDataSource;
    DBText1: TDBText;
    DSOrzeczenia: TDataSource;
    dtpDataOsadzenia: TDateTimePicker;
    dtpWPZ: TDateTimePicker;
    dtpPrzepustki: TDateTimePicker;
    dtpPostpenit: TDateTimePicker;
    edUlamekDoWPZ: TEdit;
    frDBDataSet1: TfrDBDataSet;
    frReport1: TfrReport;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    lblDaneOsadzonego: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Memo1: TMemo;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel4: TPanel;
    plGradient1: TplGradient;
    RxDBGrid2: TRxDBGrid;
    RxMemoryOrzeczenia: TRxMemoryData;
    edOBS_dni: TSpinEdit;
    RxMemoryOrzeczeniaArt: TStringField;
    RxMemoryOrzeczeniaDni: TLongintField;
    RxMemoryOrzeczeniaKoniecKary: TDateField;
    RxMemoryOrzeczeniaLat: TLongintField;
    RxMemoryOrzeczeniaLp: TStringField;
    RxMemoryOrzeczeniaMsc: TLongintField;
    RxMemoryOrzeczeniaPrzepustki: TStringField;
    RxMemoryOrzeczeniaWPZ: TStringField;
    RxMemoryOrzeczeniaWymiarKary: TStringField;
    RxMemoryOrzeczeniaZastepcza: TBooleanField;
    edLat: TSpinEdit;
    ZQOsInfo: TZQuery;
    procedure btnDrukujClick(Sender: TObject);
    procedure btnObliczClick(Sender: TObject);
    procedure btnPasteClick(Sender: TObject);
    procedure btnZapiszTerminarzClick(Sender: TObject);
    procedure edLatChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RxMemoryOrzeczeniaLpGetText(Sender: TField; var aText: string;
      DisplayText: Boolean);
  private
    SelectIDO: integer;
    WPZ: TWPZ;
    function IntToIntOrNull(Value: integer): Variant; // integer or (Value = 0) : Null
    Function DateToStrDef(Value: TDate; NullStr: string): string;
    procedure WstawDaneDoTabeli;
    procedure TabelaDoWPZ;
    procedure Oblicz;
  public
    Procedure SetIDO(ido: integer);
    procedure NoweObliczenia;
  end;

  function DeleteRepeatedSpaces(s: string):string;

//var
//  PenitWPZ: TPenitWPZ;

implementation
uses UPenitForm, Math;

const NullDate = TDateTime(Math.MaxDouble);

{$R *.frm}

{ TPenitWPZ }

procedure TPenitWPZ.FormCreate(Sender: TObject);
begin
  SelectIDO:= 0;
  RxMemoryOrzeczenia.Open;
  btnZapiszTerminarz.Enabled:= false;
  NoweObliczenia;
end;

// wczytuje do kontrolek: Datę osadzenia
//                        check owz jeśli występuje w os_info.Ulamek
procedure TPenitWPZ.SetIDO(ido: integer);
var ZQPom: TZQueryPom;
begin
  SelectIDO:= ido;
  btnZapiszTerminarz.Enabled:= UprawnieniaDoEdycji(SelectIDO); // From UPenitForm

  ZQOsInfo.ParamByName('ido').AsInteger:= SelectIDO;
  ZQOsInfo.Open;
  if not ZQOsInfo.IsEmpty then cbOWZ.Checked:= ( Pos('owz', ZQOsInfo.FieldByName('ulamek_wpz').AsString)>0 );

  ZQPom:= TZQueryPom.Create(Self);
  ZQPom.SQL.Text:= 'SELECT IDO, PRZYJ, NAZWISKO, IMIE, POC, KLASYF FROM osadzeni WHERE IDO=:ido';
  ZQPom.ParamByName('ido').AsInteger:= SelectIDO;
  ZQPom.Open;
  if not ZQPom.IsEmpty then
    begin
      dtpDataOsadzenia.Date:= ZQPom.FieldByName('PRZYJ').AsDateTime;
      lblDaneOsadzonego.Caption:= ZQPom.FieldByName('NAZWISKO').AsString+' '+ZQPom.FieldByName('IMIE').AsString+LineEnding+
                                  ZQPom.FieldByName('POC').AsString+'    '+ZQPom.FieldByName('KLASYF').AsString;
    end
    else
    begin
      dtpDataOsadzenia.Date:= NullDate;
      lblDaneOsadzonego.Caption:= '';
    end;
  FreeAndNil(ZQPom);
end;

procedure TPenitWPZ.edLatChange(Sender: TObject);
begin
  edOBS_dni.Value:= edLat.Value * 365;
end;

procedure TPenitWPZ.btnPasteClick(Sender: TObject);
begin
  NoweObliczenia; // create WPZ
  WPZ.ParseFromDOC(Clipboard.AsText);
  WstawDaneDoTabeli;
  cbmUlamek.Text:=  WPZ.GetUlamekArt;

  if WPZ.Count>=1 then dtpKoniecKary.Date:= WPZ.orzeczenia[WPZ.Count-1].koniec_kary
                  else dtpKoniecKary.Date:= NullDate;

  Memo1.Text:= WPZ.fKomunikaty.Text;
  WPZ.fKomunikaty.Clear;
  DM.KomunikatPopUp(Self, 'Kreator WPZ', 'Wklejono orzeczenia ze schowka.', nots_Info);
end;

procedure TPenitWPZ.btnZapiszTerminarzClick(Sender: TObject);
begin
  if not WPZ.fisObliczono then
    if not (MessageDlg('Nie wykonano obliczeń.'+LineEnding+
                  'Czy zapisać do terminarza terminy z pola wyniki ?', mtConfirmation, [mbYes, mbNo],0) = mrYes) then exit;

  // zapisz do terminarza
  ZQOsInfo.Edit;

  ZQOsInfo.FieldByName('IDO').AsInteger              := SelectIDO;
  ZQOsInfo.FieldByName('Autoryzacja').AsString       := DM.Wychowawca;
  ZQOsInfo.FieldByName('data_autoryzacji').AsDateTime:= Now();

  if dtpWPZ.Date = NullDate        then ZQOsInfo.FieldByName('twpz').AsVariant        := Null
                                   else ZQOsInfo.FieldByName('twpz').AsDateTime       := dtpWPZ.Date;
  if dtpPrzepustki.Date = NullDate then ZQOsInfo.FieldByName('tprzepustki').AsVariant := Null
                                   else ZQOsInfo.FieldByName('tprzepustki').AsDateTime:= dtpPrzepustki.Date;
  if dtpPostpenit.Date = NullDate  then ZQOsInfo.FieldByName('tpostpenitu').AsVariant := Null
                                   else ZQOsInfo.FieldByName('tpostpenitu').AsDateTime:= dtpPostpenit.Date;
  ZQOsInfo.FieldByName('ulamek_wpz').AsString:= edUlamekDoWPZ.Text;
  // Koniec Kary zapisujemy tylko jeśli wykrył wykonane obliczenia
  if WPZ.fisObliczono then
    if dtpKoniecKary.Date = NullDate then
        ZQOsInfo.FieldByName('KoniecKary').AsVariant:= Null
      else
       ZQOsInfo.FieldByName('KoniecKary').AsDateTime:= dtpKoniecKary.Date;

  ZQOsInfo.Post;

  DM.KomunikatPopUp(Self, 'Kreator WPZ','Zmodyfikowano terminy w terminarzu. Koniec Kary, WPZ, Postpenit, Przepustki.', nots_Info);
end;

procedure TPenitWPZ.btnObliczClick(Sender: TObject);
begin
  Oblicz;
end;

procedure TPenitWPZ.btnDrukujClick(Sender: TObject);
var i: integer;
    s: string;
    MemDB: TRxMemoryData;
begin
  MemDB:= TRxMemoryData.Create(Self);
  MemDB.LoadFromDataSet(RxMemoryOrzeczenia, 0, lmCopy);
  // dopisujemy terminy WPZ i Przepustek
  // uzupełniamy RxMemory wynikiem obliczeń =====================
  MemDB.First;
  MemDB.MoveBy(WPZ.IndexWPZ);

  MemDB.Edit;
  MemDB.FieldByName('WPZ').AsString       := DateToStrDef(dtpWPZ.Date, '---');
  MemDB.FieldByName('Przepustki').AsString:= DateToStrDef(dtpPrzepustki.Date, '---');
  MemDB.Post;
  //==============================================================

  // uzupełniamy pole Wymiar Kary
  MemDB.First;
  while not MemDB.EOF do
  begin
    s:= '';
    if MemDB.FieldByName('Lat').AsInteger = 1 then s:= '1 rok ' else
    if MemDB.FieldByName('Lat').AsInteger > 4 then s:= MemDB.FieldByName('Lat').AsString + ' lat ' else
    if MemDB.FieldByName('Lat').AsInteger > 1 then s:= MemDB.FieldByName('Lat').AsString + ' lata ';

    if MemDB.FieldByName('Msc').AsInteger > 1 then s+= MemDB.FieldByName('Msc').AsString + ' msc ';
    if MemDB.FieldByName('Dni').AsInteger > 1 then s+= MemDB.FieldByName('Dni').AsString + ' dni';

    MemDB.Edit;
    MemDB.FieldByName('WymiarKary').AsString:= s;
    MemDB.Post;
    MemDB.Next;
  end;

  // uzupełniamy tabelkę pustymi wierszami do 11 pozycji
  if MemDB.RecordCount>=11 then begin MemDB.Append; MemDB.Post; end;
  for i:=MemDB.RecordCount to 10 do begin MemDB.Append; MemDB.Post; end;

  frDBDataSet1.DataSet:= MemDB;
  frReport1.LoadFromFile(DM.Path_Raporty + 'pen_obliczenieWPZ.lrf');

  DM.SetMemoReport(frReport1, 'memoPodpis', DM.GetInicjaly(DM.PelnaNazwa) + ' (' +DateToStr(Date)+ ')');
  DM.SetMemoReport(frReport1, 'memoPostpenit', DateToStrDef(dtpPostpenit.Date, '---'));
  if edUlamekDoWPZ.Text<>'' then
    DM.SetMemoReport(frReport1, 'memoUlamek', 'Uprawnienia do WPZ po ' + edUlamekDoWPZ.Text);

  frReport1.ShowReport;

  // usuwamy
  FreeAndNil(MemDB);
end;

procedure TPenitWPZ.RxMemoryOrzeczeniaLpGetText(Sender: TField;
  var aText: string; DisplayText: Boolean);
begin
    aText:= IntToStr(Sender.DataSet.RecNo)+'.';  // numerowanie wierszy
end;

function TPenitWPZ.IntToIntOrNull(Value: integer): Variant;
begin
  if Value = 0 then Result:= Null
               else Result:= Value;
end;

function TPenitWPZ.DateToStrDef(Value: TDate; NullStr: string): string;
begin
  if Value = NullDate then
      Result:= NullStr
    else
      Result:= DateToStr(Value);
end;

procedure TPenitWPZ.WstawDaneDoTabeli;
var i: integer;
begin
  RxMemoryOrzeczenia.EmptyTable;
  if WPZ.Count=0 then exit;
  for i:=0 to WPZ.Count-1 do
  begin
    RxMemoryOrzeczenia.Append;
    RxMemoryOrzeczeniaArt.AsString := WPZ.orzeczenia[i].art;
    RxMemoryOrzeczeniaLat.AsVariant:= IntToIntOrNull(WPZ.orzeczenia[i].lat);
    RxMemoryOrzeczeniaMsc.AsVariant:= IntToIntOrNull(WPZ.orzeczenia[i].msc);
    RxMemoryOrzeczeniaDni.AsVariant:= IntToIntOrNull(WPZ.orzeczenia[i].dni);
    RxMemoryOrzeczeniaZastepcza.AsBoolean:= WPZ.orzeczenia[i].zastepcza;

    if WPZ.orzeczenia[i].koniec_kary = NullDate then
        RxMemoryOrzeczeniaKoniecKary.AsDateTime:= Null
      else
        RxMemoryOrzeczeniaKoniecKary.AsDateTime:= WPZ.orzeczenia[i].koniec_kary;

    RxMemoryOrzeczenia.Post;
  end;
end;

procedure TPenitWPZ.TabelaDoWPZ;
var i: integer;
begin
  RxMemoryOrzeczenia.First;
  SetLength(WPZ.orzeczenia, RxMemoryOrzeczenia.RecordCount);
  for i:=0 to WPZ.Count-1 do
  begin
    WPZ.orzeczenia[i].art:= RxMemoryOrzeczeniaArt.AsString;
    WPZ.orzeczenia[i].lat:= RxMemoryOrzeczeniaLat.AsInteger;
    WPZ.orzeczenia[i].msc:= RxMemoryOrzeczeniaMsc.AsInteger;
    WPZ.orzeczenia[i].dni:= RxMemoryOrzeczeniaDni.AsInteger;
    WPZ.orzeczenia[i].zastepcza:= RxMemoryOrzeczeniaZastepcza.AsBoolean;

    if RxMemoryOrzeczeniaKoniecKary.IsNull then
        WPZ.orzeczenia[i].koniec_kary:= NullDate
      else
        WPZ.orzeczenia[i].koniec_kary:= RxMemoryOrzeczeniaKoniecKary.AsDateTime;

    RxMemoryOrzeczenia.Next;
  end;
end;

procedure TPenitWPZ.Oblicz;
begin
  Memo1.Clear;
  WPZ.fKomunikaty.Clear;
  WPZ.owz            := cbOWZ.Checked;
  WPZ.data_osadzenia := dtpDataOsadzenia.Date;
  WPZ.OBS_obostrzenie:= cbOBS.Checked;
  WPZ.OBS_po_ilu     := edOBS_dni.Value;
  WPZ.ulamek         := cbmUlamek.Text;
  TabelaDoWPZ;   // przenosi dane z tabeli RxMemoryOrzeczenia do obiektu WPZ
  if WPZ.Count>=1 then dtpKoniecKary.Date:= WPZ.orzeczenia[WPZ.Count-1].koniec_kary
                  else dtpKoniecKary.Date:= NullDate;

  if WPZ.Oblicz then
    begin
      dtpWPZ.Date       := WPZ.WPZ;
      dtpPrzepustki.Date:= WPZ.przepustki;
      dtpPostpenit.Date := WPZ.postpenit;
      edUlamekDoWPZ.Text:= WPZ.ulamek_opis;
      DM.KomunikatPopUp(Self, 'Kreator WPZ', 'Obliczono nowe terminy.', nots_Info);
    end
  else
    begin
      dtpWPZ.Date       := NullDate;
      dtpPrzepustki.Date:= NullDate;
      dtpPostpenit.Date := NullDate;
      edUlamekDoWPZ.Text:= '';
      DM.KomunikatPopUp(Self, 'Kreator WPZ', 'Wystąpił błąd w obliczeniach terminów.', nots_Warning);
    end;

  Memo1.Text:= WPZ.fKomunikaty.Text;
end;

procedure TPenitWPZ.NoweObliczenia;
begin
  if WPZ <> Nil then FreeAndNil(WPZ);
  WPZ:= TWPZ.Create;

  cbOBS.Checked       := false;
  edOBS_dni.Value     := 0;
  edLat.Value         := 0;
  cbmUlamek.ItemIndex := 0;
  edUlamekDoWPZ.Text  := '';
  dtpWPZ.Date         := NullDate;
  dtpPostpenit.Date   := NullDate;
  dtpPrzepustki.Date  := NullDate;
  dtpKoniecKary.Date  := NullDate;

  Memo1.Clear;
end;

{ TWPZ ================================================================================================================}

function TWPZ.WymiarKaryDni(dane: TOrzeczenie): integer;
begin
  Result:= dane.lat*365 + dane.msc*30 + dane.dni;
end;

function TWPZ.SumojKary: integer;
var i: integer;
begin
  Result:= 0;
  for i:=0 to Count-1 do
    if not orzeczenia[i].zastepcza then Result+= orzeczenia[i].Sdni;
end;

function TWPZ.GetUlamekArt: string;
var i: integer;
    ranga: integer;
begin
  ranga:=0; // 1/2
  Result:= '1/2';

  for i:=0 to Count-1 do
    if not orzeczenia[i].zastepcza then
    begin
      if (orzeczenia[i].Sdni=0)and(ranga<4) then
      begin
        ranga:= 4;
        Result:= 'po 25';
        fKomunikaty.Add('Wykryto karę dożywocia w wierszu '+IntToStr(i+1));
      end else
      if (orzeczenia[i].lat=25)and(ranga<3) then
      begin
        ranga:= 3;
        Result:= 'po 15';
        fKomunikaty.Add('Wykryto karę 25 lat w wierszu '+IntToStr(i+1));
      end else
      if (orzeczenia[i].art.IndexOf(' 64§1')>=0)and(ranga<1) then
      begin
        ranga:=1;
        Result:='2/3';
        fKomunikaty.Add('Wykryto art.64§1 w wierszu '+IntToStr(i+1));
      end else
      if (orzeczenia[i].art.IndexOf(' 64§2')>=0)and(ranga<2) then
      begin
        ranga:=2;
        Result:='3/4';
        fKomunikaty.Add('Wykryto art.64§2 w wierszu '+IntToStr(i+1));
      end else
      if (orzeczenia[i].art.IndexOf(' 65§1')>=0)and(ranga<2) then
      begin
        ranga:=2;
        Result:='3/4';
        fKomunikaty.Add('Wykryto art.65§1 w wierszu '+IntToStr(i+1));
      end;

      if (orzeczenia[i].art.IndexOf(' 77§2')>=0) then
        fKomunikaty.Add('Wykryto obostrzenie do WPZ art.77§2 w wierszu '+IntToStr(i+1));
    end;
end;

procedure TWPZ.validateWPZ;
var wpz_po15: TDate;
begin
  // górne ograniczenie
  // wpz nie może być większe niż po 15 latach (dla 1/2, 2/3, 3/4, i po 15 latach)
  if (not OBS_obostrzenie)and(fSumaKar>=(15*365)) then
  begin
    wpz_po15:= IncDay(orzeczenia[IndexWPZ].koniec_kary, -(fSumaKar-(15*365)));
    if WPZ > wpz_po15 then
    begin
      WPZ:= wpz_po15;
      fKomunikaty.Add('WPZ ograniczone; max po 15 latach.');
    end;
  end;

  // dolne ograniczenie
  if WPZ < data_osadzenia then
  begin
    WPZ:= data_osadzenia;  // validate
    fKomunikaty.Add('WPZ z dniem osadzenia.');
  end;
end;

procedure TWPZ.validatePrzepustki;
begin
  if przepustki < data_osadzenia then
  begin
    przepustki:= data_osadzenia;  // validate
    fKomunikaty.Add('Przepustki z dniem osadzenia.');
  end;
end;

procedure TWPZ.validatePostpenit;
begin
  if postpenit < data_osadzenia then
  begin
    postpenit:= data_osadzenia;  // validate
    fKomunikaty.Add('Postpenit z dniem osadzenia.');
  end;
end;

function TWPZ.SprawdzWarunki: Boolean;
begin
  Result:= true;
  if data_osadzenia=NullDate then begin fKomunikaty.Add('Brak daty osadzenia.'); Result:= False; end;
  if Count   = 0 then begin fKomunikaty.Add('Brak wprowadzonych orzeczeń.'); Result:= False; end;

//  if (IndexWPZ>=0)and(data_osadzenia>orzeczenia[IndexWPZ]) then begin fKomunikaty.Append('Data osadzenia jest większa od daty końca kary zasadniczej.'); Result:= fasle; end;
end;

function TWPZ.ObliczOBS: Boolean;
var odKonca: integer;
begin
  Result:= false;
  if OBS_obostrzenie then
  begin
    fKomunikaty.Add('Obostrzenie: po '+IntTostr(OBS_po_ilu)+' dniach. Uwzględnia okresy zaliczenia kary.');
    odKonca:= fSumaKar - OBS_po_ilu;

    WPZ:= IncDay(orzeczenia[IndexWPZ].koniec_kary, -odKonca);
    validateWPZ;

    przepustki:= IncDay(WPZ, -Trunc(OBS_po_ilu / 2));
    validatePrzepustki;

    postpenit:= IncDay(WPZ, -(6*30));
    validatePostpenit;

    if (OBS_po_ilu div 365)=round(OBS_po_ilu/365) then
        ulamek_opis:= 'art.77§2 po '+IntToStr(OBS_po_ilu div 365)+' latach'
      else
        ulamek_opis:= 'art.77§2 po '+IntToStr(OBS_po_ilu)+' dniach';

    fisObliczono:= true;
    Result:= true;
  end;
end;

function TWPZ.ObliczKaryZastepcze: Boolean;
begin
  Result:= false;
  // brak uprawnien do WPZ, mamy tylko kary zastępcze
  if (Count>0)and(IndexWPZ=-1) then
  begin
    WPZ       := NullDate;
    przepustki:= NullDate;
    postpenit := IncDay(orzeczenia[Count-1].koniec_kary, -(6*30));
    validatePostpenit;

    fKomunikaty.Add('Brak uprawnien do WPZ. Kary zastępcze.');
    ulamek_opis:= 'Brak';
    fisObliczono:= true;
    Result:= true;
  end;
end;

procedure TWPZ.ObliczUlamek;
var dni_od_konca: integer;
    dni_do_przpustki: integer;
begin
  fisObliczono:= false;
  // sprawdzamy czy wprowadzono jakieś orzeczenia
  if IndexWPZ= -1 then begin fKomunikaty.Add('Brak kary zasadniczej.'); exit; end;

  if ulamek = '1/2' then
  begin
   dni_od_konca:= Trunc(fSumaKar/2);
   dni_do_przpustki:= Trunc(dni_od_konca/2);
  end else
  if ulamek = '2/3' then
  begin
    dni_od_konca:= Trunc(fSumaKar/3);
    dni_do_przpustki:= dni_od_konca;
  end else
  if ulamek = '3/4' then
  begin
    dni_od_konca:= Trunc(fSumaKar/4);
    dni_do_przpustki:= dni_od_konca+Trunc(dni_od_konca/2);
  end else
  if ulamek = 'po 15' then
  begin
    dni_od_konca:= fSumaKar-(15*365);
    dni_do_przpustki:= 2737; // 1/2 z 15 lat = 2737
  end else // skazany na 25 lat
  if ulamek = 'po 25' then if ObliczDozywocie then exit;  // skazany na dożywocie

  // sprawdzamy czy jest wprowadzony koniec kary w ostatnim orzeczeniu
  if orzeczenia[IndexWPZ].koniec_kary = NullDate then begin fKomunikaty.Add('Brak daty końca kary.'); exit; end;

  fKomunikaty.Add('Obliczono po: '+ulamek);

  wpz:= IncDay(orzeczenia[IndexWPZ].koniec_kary, -dni_od_konca);
  validateWPZ;

  przepustki:= IncDay(wpz, -dni_do_przpustki);
  validatePrzepustki;

  postpenit:= IncDay(wpz, -(6*30));
  validatePostpenit;

  fisObliczono:= true;
end;

procedure TWPZ.ObliczOwz;
var owz_wpz: TDate;
    i: integer;
    dni_do_wpz: integer;
begin
  ulamek_opis:= ulamek_opis+' owz';
  // oblicz po roku od osadzenia a dla dożywocia po 5 latach
  if ulamek = 'po 25' then
      begin
        owz_wpz:= IncDay(data_osadzenia, 5*365);  // po 5 latach
        fKomunikaty.Add('Sprawdzam owz, nie wcześniej niż po 5 latach.');
      end
    else
      begin
        owz_wpz:= IncDay(data_osadzenia, 365); // po roku
        fKomunikaty.Add('Sprawdzam owz, nie wcześniej niż po roku.');
      end;

  // przesuwamy owz_wpz o kary zastępcze które są przed wyliczoną datą
  for i:=0 to Count-1 do
  begin
    if (orzeczenia[i].zastepcza)and(owz_wpz >= orzeczenia[i].koniec_kary) then
    begin
      owz_wpz:= IncDay(owz_wpz, orzeczenia[i].Sdni);
    end;
  end;

  // wpz nie może być wcześniej niż po 1 lub 5 latach od osadzenia
  if wpz<owz_wpz then
  begin
    wpz:= owz_wpz;

    // jeśli wpz wypada puźniej niż koniec kary to brak uprawnień
    if wpz>orzeczenia[IndexWPZ].koniec_kary then
    begin
      fKomunikaty.Add('Zastosowano art. 81. Bez uprawnień do WPZ. WPZ po końcu kary.');
      ulamek_opis:= ulamek_opis+' art.81, KK';
      wpz:= NullDate;
      przepustki:= NullDate;
      postpenit:= IncDay(orzeczenia[Count-1].koniec_kary, -(6*30)); // 6 msc przed końcem kary
      validatePostpenit;
      fisObliczono:= true;
      exit;
    end;

    // przepustki po połowie kary (od osadzenia do wpz)
    dni_do_wpz:= DaysBetween(data_osadzenia, wpz);
    przepustki:= IncDay(wpz, -Trunc(dni_do_wpz / 2));
    validatePrzepustki;

    postpenit:= IncDay(wpz, -(6*30));
    validatePostpenit;

    fKomunikaty.Add('Zastosowano art. 81. Po roku od osadzenia, uwazględniono przesunięcie o kary zastępcze.');
    ulamek_opis:= ulamek_opis+' art.81 po roku';
    fisObliczono:= true;
  end;
end;

function TWPZ.ObliczDozywocie: Boolean;
begin
  wpz:= IncDay(data_osadzenia, (25*365)); // po 25 latach od osadzenia

  przepustki:= IncDay(wpz, -4562); // 25 lat / 2 = 4562 dni
  validatePrzepustki;

  postpenit:= IncDay(wpz, -(6*30));
  validatePostpenit;

  fKomunikaty.Add('Obliczono wpz dla dożywocia.');
  fisObliczono:= true;
  Result:= true;
end;

constructor TWPZ.Create;
begin
  inherited Create;
  fKomunikaty:= TStringList.Create;
  fisObliczono:= false;
end;

destructor TWPZ.Destroy;
begin
  FreeAndNil(fKomunikaty);
  inherited Destroy;
end;

function TWPZ.Oblicz: Boolean;  // ============================== OBLICZ WPZ ===========================================
begin
  // inicjiujemy obliczenia
  fSumaKar    := SumojKary;
  Result      := false;
  fisObliczono:= false;
  ulamek_opis := ulamek;

  if not SprawdzWarunki then exit;
  if ObliczKaryZastepcze then begin Result:= true; exit; end;
  if ObliczOBS then begin Result:= true; exit; end;

  ObliczUlamek;
  if (owz)and(fisObliczono) then ObliczOwz;

  Result:= fisObliczono;
end;

function TWPZ.SaveToStr: String;
var JObj, JObjDane: TJSONObject;
    JArr: TJSONArray;
    i: integer;
begin
  // object to json to str
  DefaultFormatSettings.ShortDateFormat:='dd/mm/yyyy';

  //JData:= TJSONData.Create;
  JObj:= TJSONObject.Create; //(JData);

  //JDane:= TJSONData.Create;
  JObjDane:= TJSONObject.Create;//(JDane);
  JObjDane.Add('data_osadzenia', DateToStr(data_osadzenia));
  JObjDane.Add('owz', owz);
  JObjDane.Add('ulamek', ulamek);
  JObjDane.Add('OBS_obostrzenie', OBS_obostrzenie);
  JObjDane.Add('OBS_po_ilu', OBS_po_ilu);
  JObjDane.Add('uwagi', uwagi);
  JObjDane.Add('WPZ', DateToStr(wpz));
  JObjDane.Add('przepustki', DateToStr(przepustki));
  JObjDane.Add('postpenit', DateToStr(postpenit));

  JObj.Add('dane', JObjDane);

  JArr:= TJSONArray.Create;
  for i:=0 to Count-1 do
  begin
    //JDane:= TJSONData.Create;
    JObjDane:= TJSONObject.Create;//(JDane);
    JObjDane.Add('art', orzeczenia[i].art);
    JObjDane.Add('lat', orzeczenia[i].lat);
    JObjDane.Add('msc', orzeczenia[i].msc);
    JObjDane.Add('dni', orzeczenia[i].dni);
    JObjDane.Add('zastepcza', orzeczenia[i].zastepcza);
    JObjDane.Add('koniec_kary', DateToStr(orzeczenia[i].koniec_kary));

    JArr.Add(JObjDane);
  end;

  TJSONObject(JObj.Find('dane')).Add('orzeczenia', JArr);

  Result:= JObj.FormatJSON();
end;

procedure TWPZ.LoadFromStr(value: string);
var JData: TJSONData;
    JObj: TJSONObject;
    JArr: TJSONArray;
    i: integer;
begin
  // str_json to object
  DefaultFormatSettings.ShortDateFormat:='dd/mm/yyyy';

  JData:= GetJSON(value);
  JObj:= TJSONObject(JData.FindPath('dane'));

  data_osadzenia := StrToDateDef(JObj.Get('data_osadzenia',''), NullDate);
  owz           := JObj.Get('owz', false);
  ulamek        := JObj.Get('ulamek','1/2');
  OBS_obostrzenie:= JObj.Get('OBS_obostrzenie', false);
  OBS_po_ilu     := JObj.Get('OBS_po_ilu', 0);
  uwagi         := JObj.Get('uwagi','');
  WPZ           := StrToDateDef(JObj.Get('wpz',''), NullDate);
  przepustki    := StrToDateDef(JObj.Get('przepustki',''), NullDate);
  postpenit     := StrToDateDef(JObj.Get('postpenit',''), NullDate);

  JArr:= TJSONArray(JData.FindPath('dane.orzeczenia'));
  SetLength(orzeczenia, JArr.Count);
  for i:=0 to JArr.Count-1 do
  begin
    JObj:= TJSONObject(JArr[i]);
    orzeczenia[i].art:= JObj.Get('art', '');
    orzeczenia[i].lat:= JObj.Get('lat',0);
    orzeczenia[i].msc:= JObj.Get('msc',0);
    orzeczenia[i].dni:= JObj.Get('dni',0);
    orzeczenia[i].zastepcza:= JObj.Get('zastepcza', false);
    orzeczenia[i].koniec_kary:= StrToDateDef(JObj.Get('koniec_kary',''), NullDate);

    orzeczenia[i].Sdni:= WymiarKaryDni(orzeczenia[i]);
  end;
  fSumaKar:= SumojKary;

  FreeAndNil(JData);
end;

procedure TWPZ.ParseFromDOC(value: string);
var dane: TStringList;
    i: integer;
begin
  // dane z skopiowane z dokumentu wygenerowanego przez Noe.NET
  DefaultFormatSettings.ShortDateFormat:='dd/mm/yyyy';
  dane:= TStringList.Create;
  dane.Text:= value;

  SetLength(orzeczenia, 0);

  i:=0;
  while i <= dane.Count-1 do
  begin
    if dane[i].IndexOf('Sąd') >=0 then
    begin
      SetLength(orzeczenia, Count+1);

      orzeczenia[Count-1].art:= DeleteRepeatedSpaces(dane[i]); inc(i);
      orzeczenia[Count-1].lat:= StrToIntDef(Trim(dane[i]),0); inc(i);
      orzeczenia[Count-1].msc:= StrToIntDef(Trim(dane[i]),0); inc(i,2);
      orzeczenia[Count-1].dni:= StrToIntDef(Trim(dane[i]),0); inc(i,2);
      orzeczenia[Count-1].koniec_kary:= StrToDateDef(Trim(dane[i]), NullDate); inc(i,2);

      orzeczenia[Count-1].Sdni:= WymiarKaryDni(orzeczenia[Count-1]);
      orzeczenia[Count-1].zastepcza:= (orzeczenia[Count-1].dni>0);
    end;
    inc(i);
  end;

  if Count=0 then fKomunikaty.Add('Błędne dane.')
             else fKomunikaty.Add('Wklejono: dane poprawne.');

  FreeAndNil(dane);
end;

function TWPZ.Count: integer;
begin
  Result:= Length(orzeczenia);
end;

function TWPZ.IndexWPZ: integer;
var i: integer;
begin
  Result:= -1;
  for i:=0 to Count-1 do
    if not orzeczenia[i].zastepcza then Result:= i;
end;

function TWPZ.AddOrzeczenie(Vart: string; Vlat, Vmsc, Vdni: integer;
  Vzastepcza: Boolean; Vkoniec_kary: TDate): integer;
begin
  SetLength(orzeczenia, Count+1);
  Result:= Count-1;
  with orzeczenia[Result] do
  begin
    art:= Vart;
    lat:= Vlat;
    msc:= Vmsc;
    dni:= Vdni;
    zastepcza:= Vzastepcza;
    koniec_kary:= Vkoniec_kary;

    Sdni:= WymiarKaryDni(orzeczenia[Result]);
  end;

  fSumaKar:= SumojKary;
  // Oblicz;
end;

function DeleteRepeatedSpaces(s: string):string;
var i:integer;
begin
  Result := '';
  s:= Trim(s);
  if Length(s)=0 then exit;
  for i := 1 to Length(S)-1 do begin
    if not ((s[i]=' ') and (s[i-1]=' ')) then begin
      Result := Result + s[i];
    end;
  end;
end;

end.

