unit UPenitTerminarz;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, YearPlanner, rxdbgrid, Forms, Controls, Graphics,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, UPenitForm, LR_DBSet, LR_Class, db,
  ZDataset, DBGrids, Menus, dateutils, Clipbrd, Buttons, CheckLst, rxdbutils,
  datamodule, BCPanel;

type
  { TTerminyEvent }

  TTerminyEvent = class
  private
    fSumOcen     : integer;
    fSumWPZ      : integer;
    fSumPostpenit: integer;
    fSumKK       : integer;
  public
    procedure DrawCell(TheCanvas: TCanvas; Rect: TRect);
    procedure Clear;
    procedure IncTermin(rodzaj: string);

    property SumOcen     : integer read FSumOcen write fSumOcen default 0;
    property SumWPZ      : integer read FSumWPZ write fSumWPZ default 0;
    property SumPostpenit: integer read FSumPostpenit write fSumPostpenit default 0;
    property SumKK       : integer read FSumKK write fSumKK default 0;
  end;

  { TTerminyEvents }

  TTerminyEvents = class
  private
    fDaneTerminarza: array[1..12,1..31] of TTerminyEvent;
    function GetDaneTerminarza(msc, day: integer): TTerminyEvent;
    procedure SetDaneTerminarza(msc, day: integer; AValue: TTerminyEvent);
  public
    constructor Create;
    destructor Destroy; override;
    procedure Clear;
    property DaneTerminarza[msc, day: integer]: TTerminyEvent read GetDaneTerminarza write SetDaneTerminarza; default;
  end;

  { TPenitTerminarz }

  TPenitTerminarz = class(TForm)
    BCPanel1: TBCPanel;
    BCPanel2: TBCPanel;
    BCPanel3: TBCPanel;
    BCPanel4: TBCPanel;
    cbWychowawcy: TComboBox;
    cbListTerminy: TCheckListBox;
    DSTerminarz: TDataSource;
    DSKalendarz: TDataSource;
    Edit1: TEdit;
    frDBDataSet1: TfrDBDataSet;
    frDBDataSet2: TfrDBDataSet;
    frDBDataSet3: TfrDBDataSet;
    frReport1: TfrReport;
    Image1: TImage;
    ImageList1: TImageList;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Oceny: TLabel;
    lblGR: TLabel;
    lblZatrudnionych: TLabel;
    lblOs: TLabel;
    lblProg: TLabel;
    lblWolne: TLabel;
    MenuItem1: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem16: TMenuItem;
    miZatZmienOpis: TMenuItem;
    miZatZmienOpisAll: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuDrukujWykazKal: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    MenuItemDoKoszyka: TMenuItem;
    MenuWykazDoSchowkaKal: TMenuItem;
    Oceny1: TLabel;
    Oceny2: TLabel;
    Oceny3: TLabel;
    PageControl1: TPageControl;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    PopupMenuTerminy: TPopupMenu;
    PopupMenuKalendarz: TPopupMenu;
    RxDBGrid1: TRxDBGrid;
    RxDBGrid2: TRxDBGrid;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Timer1: TTimer;
    YearPlanner1: TYearPlanner;
    ZQTerminarz: TZQuery;
    ZQKalendarz: TZQuery;
    ZQTerminarzArch: TSmallintField;
    ZQTerminarzAutoryzacja: TStringField;
    ZQTerminarzdata_autoryzacji: TDateTimeField;
    ZQTerminarzGR: TSmallintField;
    ZQTerminarzID: TLargeintField;
    ZQTerminarzIDO: TLargeintField;
    ZQTerminarzIMIE: TStringField;
    ZQTerminarzKLASYF: TStringField;
    ZQTerminarzKoniecKary: TDateField;
    ZQTerminarzNAZWISKO: TStringField;
    ZQTerminarzNazwiskoImie: TStringField;
    ZQTerminarzOJCIEC: TStringField;
    ZQTerminarzPOC: TStringField;
    ZQTerminarzpostpenit_notatka: TSmallintField;
    ZQTerminarzPRZYJ: TDateField;
    ZQTerminarzStarszy: TSmallintField;
    ZQTerminarzSTATUS: TStringField;
    ZQTerminarztoceny: TDateField;
    ZQTerminarztpostpenitu: TDateField;
    ZQTerminarztprzepustki: TDateField;
    ZQTerminarztterapii: TDateField;
    ZQTerminarztwpz: TDateField;
    ZQTerminarzulamek_wpz: TStringField;
    ZQTerminarzURODZ: TDateField;
    ZQTerminarzwpz_stanowisko: TSmallintField;
    ZQTerminarzWywiad: TSmallintField;
    ZQTerminarzZatrudnienie: TStringField;
    ZQTerminarzzat_od: TDateField;
    ZQZatReport: TZQuery;
    procedure cbWychowawcyChange(Sender: TObject);
    procedure cbListTerminyClickCheck(Sender: TObject);
    procedure DSTerminarzDataChange(Sender: TObject; Field: TField);
    procedure Edit1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure MenuItem11Click(Sender: TObject);
    procedure MenuItem13Click(Sender: TObject);
    procedure MenuItem14Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure MenuDrukujWykazKalClick(Sender: TObject);
    procedure MenuItem9Click(Sender: TObject);
    procedure MenuItemDoKoszykaClick(Sender: TObject);
    procedure MenuWykazDoSchowkaKalClick(Sender: TObject);
    procedure miZatZmienOpisAllClick(Sender: TObject);
    procedure miZatZmienOpisClick(Sender: TObject);
    procedure OnTimerDataChange(Sender: TObject);
    procedure PopupMenuTerminyPopup(Sender: TObject);
    procedure RxDBGrid1GetCellProps(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor);
    procedure TabSheet1Show(Sender: TObject);
    procedure YearPlanner1DrawCell(Sender: TCustomControl; TheCanvas: TCanvas;
      Rect: TRect; CellData: TCellData; CellText: String);
    procedure YearPlanner1SelectionEnd(Sender: TObject);
    procedure YearPlanner1YearChanged(Sender: TObject);
    procedure ZQTerminarzAfterClose(DataSet: TDataSet);
    procedure ZQTerminarzAfterOpen(DataSet: TDataSet);
  private
    PanelOsInfo: TPenitForm;
    SelectSQL: string;
    WhereSQL: string;
    OrderSQL: string;
    fRecCount: integer;
    fOldWychowawca: string;

    WolneCele: array of record
                          ID: integer;
                          POC: string[10];
                          Wolne: integer;
                        end;
    fWolneCeleCount: integer;
    fWakaty: integer;
    isSetWakaty: Boolean;

    WykazCel: array of record
                         ID : integer;
                         odd: Boolean;
                       end;

    Terminy: TTerminyEvents;

    FirstShowTerminarz: Boolean; // jeżeli true to ustaw Date terminarza na bierzącą
    procedure StatusBarRefresh;
    procedure WczytajWakaty;
    procedure WstawWakaty;

    procedure AddIDCeliToWykazCel;
    function FindIDCeli(id: integer): Boolean;

    Procedure MakeSQLTerminy(var ZQ: TZQuery; DataOd, DataDo: TDate);
    procedure WczytajDaneTerminarza;
    Function OsadzeniFieldsToString(ZQPom: TZQuery): string;
    Function ZmienOpisZatrudnienia(vIDO: integer): Boolean;
  public
    Procedure NewSelect;
  end;

var
  PenitTerminarz: TPenitTerminarz;  // wymagane w Unit1;

implementation
uses UDrukWykazOsadz, UKoszyk, UKoszykNowy;

{$R *.frm}

{ TPenitTerminarz }

procedure TPenitTerminarz.FormCreate(Sender: TObject);
begin
  // zmienne dla zabezpieczenia przed zbędnym odświeżaniem
  fRecCount:= 0;
  fOldWychowawca:= '';

  ZQTerminarz.Close;
  SelectSQL:= ZQTerminarz.SQL.Text;
  WhereSQL:= ' WHERE typ_cel.Wychowawca =:wych';
  OrderSQL:=''; // ' ORDER BY typ_cel.ID ASC';

  PanelOsInfo:= TPenitForm.Create( Panel3 );
  PanelOsInfo.BorderStyle:= bsNone;
  PanelOsInfo.Align      := alClient;
  PanelOsInfo.Parent     := Panel3;
  PanelOsInfo.Show;

  // wczytanie wychowawców w zastepstwie
  cbWychowawcy.Items.Text:= DM.ZastepcyWych;
  cbWychowawcy.Items.Insert(0, DM.Wychowawca);
  cbWychowawcy.ItemIndex:= 0;

  NewSelect;

  FirstShowTerminarz:= true;
  PageControl1.TabIndex:= 1;

  // save DataSet to List
  DM.DataSetList.Add(ZQKalendarz);
  DM.DataSetList.Add(ZQTerminarz);

  Terminy:= TTerminyEvents.Create;
end;

procedure TPenitTerminarz.FormClose(Sender: TObject;
  var CloseAction: TCloseAction);
begin
  PanelOsInfo.Close;
  FreeAndNil(PanelOsInfo);
  FreeAndNil(Terminy);

  // remove DataSet from List
  DM.DataSetList.Remove(ZQKalendarz);
  DM.DataSetList.Remove(ZQTerminarz);
end;

procedure TPenitTerminarz.NewSelect;
begin
  ZQTerminarz.DisableControls;

  ZQTerminarz.Close;
  if cbWychowawcy.Text='' then exit;

  WczytajWakaty; // wczytujemy wakaty przed open (podczas AfterOpen tabeli uzupełnia wakaty)

  ZQTerminarz.SQL.Text:= SelectSQL;
  ZQTerminarz.SQL.Add( WhereSQL );
  ZQTerminarz.SQL.Add( OrderSQL );

  ZQTerminarz.ParamByName('wych').AsString:= cbWychowawcy.Text;
  ZQTerminarz.Open;

  // dodanie wakatów do cel jeśli nie dodano poczas AfterOpen
  WstawWakaty;

  AddIDCeliToWykazCel; // zapamietujemy ID celi wybranego wychowawcy w tablicy WykazCel[]; kolorowanie celi

  ZQTerminarz.EnableControls;

  RxDBGrid1.SetSort(['POC'], [smUp], true);  // musi być EnableControls
  ZQTerminarz.First; //powinno być po sortowaniu, tutaj będzie w UstawOddColors
end;

procedure TPenitTerminarz.OnTimerDataChange(Sender: TObject);
begin
  Timer1.Enabled:= false;
  if Assigned(PanelOsInfo) then
     PanelOsInfo.SetIDO( ZQTerminarz.FieldByName('IDO').AsInteger, ZQTerminarz );
end;

//======================================================================================================================
//-------------------------------- KOSZYK ------------------------------------------------------------------------------
procedure TPenitTerminarz.PopupMenuTerminyPopup(Sender: TObject);
var koszyk_name: string;
begin
   koszyk_name:='';
   if not DM.ZQKoszyk_sl.IsEmpty then koszyk_name:= DM.ZQKoszyk_sl.FieldByName('nazwa').AsString;
   if Length(koszyk_name) > 30 then
      begin
         koszyk_name:= copy(koszyk_name,1,30);
         koszyk_name:= koszyk_name + '...';
      end;
   if koszyk_name='' then koszyk_name:='(nowy koszyk)';
   MenuItemDoKoszyka.Caption:= 'Dodaj do: '+koszyk_name;
end;

procedure TPenitTerminarz.MenuItemDoKoszykaClick(Sender: TObject);
begin
  if IsDataSetEmpty(ZQTerminarz) then exit;
  if DM.DodajDoKoszyka(ZQTerminarz.FieldByName('IDO').AsInteger) then
   DM.KomunikatPopUp(Sender, 'Koszyk', 'Dodano osadzonego do koszyka.', nots_Info);
end;

procedure TPenitTerminarz.MenuItem13Click(Sender: TObject);
begin
  with TKoszykNowy.Create(Self) do
  begin
       ShowModal;
       Free;
  end;
end;

procedure TPenitTerminarz.MenuItem14Click(Sender: TObject);
begin
  with TKoszyk.Create(Self) do
  begin
       ShowModal;
       Free;
  end;
end;

//======================================================================================================================
//--------------------------------END KOSZYK ---------------------------------------------------------------------------

procedure TPenitTerminarz.RxDBGrid1GetCellProps(Sender: TObject; Field: TField;
  AFont: TFont; var Background: TColor);
begin
  if ( RxDBGrid1.SortField='ID;NAZWISKO' ) then
  begin
    if FindIDCeli(ZQTerminarzID.AsInteger) then
         Background := RxDBGrid1.AlternateColor
       else
         Background := RxDBGrid1.Color;
  end;

  if not Assigned(Field) then exit;
  if Field.IsNull then exit;

  if (Field.FieldName = 'NazwiskoImie') then
        begin
          if Field.AsString = 'Wolne' then
          begin
             Background := clGreen;
             AFont.Color:= clWhite;
          end else                              // wyróżnij nowych (null), obcych ( <> wych. w zastępstwie or DM.wychowawca),
          if (ZQTerminarzAutoryzacja.IsNull) or    // wychowawca w zastępstwie
             ((ZQTerminarzAutoryzacja.AsString <> cbWychowawcy.Text) and (ZQTerminarzAutoryzacja.AsString <> DM.Wychowawca)) then // wychowawca właściwy
          begin
            Background := clLime;
            AFont.Color:= clBlack;
          end;
        end
  else
  if (Field.FieldName = 'twpz') then
        begin
          if (Field.AsDateTime < IncMonth(Date(),1)) and (ZQTerminarzwpz_stanowisko.AsInteger = 0) then
          begin
            Background := clRed;
          end;
        end
  else
  if (Field.FieldName = 'toceny') then
        begin
          if (Field.AsDateTime < IncMonth(Date(),1)) then
          begin
            Background := clRed;
          end;
        end
  else
  if (Field.FieldName = 'KoniecKary') then
        begin
          if (Field.AsDateTime < IncDay(Date(),7)) then
          begin
            Background := clRed;
          end;
        end
  else
  if (Field.FieldName = 'tpostpenitu') and (ZQTerminarzpostpenit_notatka.AsInteger = 0) then
        begin
          if (Field.AsDateTime < IncMonth(Date(),1)) then
          begin
            Background := clRed;
          end;
        end
  else
  if (Field.FieldName = 'tterapii') then
        begin
          if (Field.AsDateTime < IncMonth(Date(),1)) then
          begin
            Background := clRed;
          end;
        end
  else
  if (Field.FieldName = 'POC') then
        begin
          if (ZQTerminarzStarszy.AsInteger = 1) then
          begin
            Background := clYellow;
            AFont.Color:= clBlack;
          end;
        end
  else
  if (Field.FieldName = 'STATUS') then
      begin
        if (Field.AsString <> 'CBTX') then
        begin
          Background := clRed;
        end;
      end
  else
  if (Field.FieldName = 'zat_od')and(not Field.IsNull) then
      begin
        Background := $00B0FFB0;
      end;
end;

procedure TPenitTerminarz.DSTerminarzDataChange(Sender: TObject; Field: TField);
begin
  Timer1.Enabled:= false;
  Timer1.Enabled:= true;
  StatusBarRefresh;
end;

procedure TPenitTerminarz.Edit1Change(Sender: TObject);
begin
  if Edit1.Text<>'' then
    ZQTerminarz.Locate('NAZWISKO', Edit1.Text, [loPartialKey]);
end;

procedure TPenitTerminarz.cbWychowawcyChange(Sender: TObject);
begin
  NewSelect;
  if TabSheet1.Visible then
    begin
      YearPlanner1.ClearCells;
      WczytajDaneTerminarza;
    end;
end;

procedure TPenitTerminarz.cbListTerminyClickCheck(Sender: TObject);
begin
  YearPlanner1.ClearCells;
  WczytajDaneTerminarza;
end;

procedure TPenitTerminarz.StatusBarRefresh;
var bookmark: TBookMark;
    s       : string;
    system_p   : integer;
    fOsadzonych: integer;
    fGR        : integer;
    fZatrudnionych: integer;
begin
  // zabezpieczenie przed zbędnym odświeżaniem
  if (fRecCount = ZQTerminarz.RecordCount)and(cbWychowawcy.Text=fOldWychowawca) then exit;
  // -----------------------------------------
  fRecCount:= ZQTerminarz.RecordCount;
  fOldWychowawca:= cbWychowawcy.Text;
  fOsadzonych:= fRecCount;

  ZQTerminarz.DisableControls;
  bookmark:= ZQTerminarz.Bookmark;
  ZQTerminarz.First;
  system_p:= 0;
  fGR     := 0;
  fZatrudnionych:= 0;

  while not ZQTerminarz.EOF do
  begin
    s:= ZQTerminarzKLASYF.AsString;
    if Pos('/P',s)>0 then inc(system_p);
    if ZQTerminarzNazwiskoImie.AsString = 'Wolne' then dec(fOsadzonych);
    if ZQTerminarzGR.AsBoolean then inc(fGR);
    if not ZQTerminarzzat_od.IsNull then inc(fZatrudnionych);
    ZQTerminarz.Next;
  end;

  ZQTerminarz.GotoBookmark( bookmark );
  ZQTerminarz.EnableControls;

  lblOs.Caption   := IntToStr( fOsadzonych );
  lblWolne.Caption:= IntToStr( fWakaty );
  lblProg.Caption := IntToStr( system_p );
  lblGR.Caption   := IntToStr( fGR );
  lblZatrudnionych.Caption:= IntToStr( fZatrudnionych );
end;

procedure TPenitTerminarz.WczytajWakaty;
var ZQPom: TZQueryPom;
    i: integer;
begin
  SetLength(WolneCele,0);

  ZQPom:= TZQueryPom.Create(Self);
  ZQPom.SQL.Text:= 'SELECT typ_cel.ID, typ_cel.POC, (typ_cel.Pojemnosc - count(osadzeni.POC)) AS Wolne, typ_cel.Wychowawca FROM typ_cel'+
                   ' LEFT JOIN osadzeni ON (typ_cel.POC = osadzeni.POC)'+
                   WhereSQL+
                   ' GROUP BY POC'+
                   ' HAVING Wolne>0';
  ZQPom.ParamByName('wych').AsString:= cbWychowawcy.Text;
  ZQPom.Open;
  fWolneCeleCount:= ZQPom.RecordCount;
  fWakaty:= 0;
  SetLength(WolneCele, fWolneCeleCount); // od [0..fWolneCeleCount-1]
  i:=-1;
  while not ZQPom.EOF do
  begin
    inc(i);   // inc(-1) = [0..n]
    WolneCele[i].ID:=  ZQPom.FieldByName('ID').AsInteger;
    WolneCele[i].POC:= ZQPom.FieldByName('POC').AsString;
    WolneCele[i].Wolne:= ZQPom.FieldByName('Wolne').AsInteger; // wakaty w celi
    fWakaty:= fWakaty + WolneCele[i].Wolne;
    ZQPom.Next;
  end;

  ZQPom.Close;
  FreeAndNil(ZQPom);
end;

procedure TPenitTerminarz.WstawWakaty;
var i,n: integer;
begin
  if isSetWakaty then exit;
  isSetWakaty:= true;
  if fWolneCeleCount = 0 then exit;

  for i:=0 to fWolneCeleCount-1 do
    for n:=1 to WolneCele[i].Wolne do
    begin
      //ZQTerminarz.Edit;
      ZQTerminarz.Append;
      ZQTerminarz.FieldByName('ID').AsInteger:= WolneCele[i].ID;
      ZQTerminarz.FieldByName('POC').AsString:= WolneCele[i].POC;
      ZQTerminarz.FieldByName('NazwiskoImie').AsString:= 'Wolne';
      ZQTerminarz.FieldByName('NAZWISKO').AsString:= 'zzz'; // w celu sortowania, Wolne na końcu
      ZQTerminarz.Post;
    end;
end;

procedure TPenitTerminarz.ZQTerminarzAfterClose(DataSet: TDataSet);
begin
  isSetWakaty:= false;
end;

procedure TPenitTerminarz.ZQTerminarzAfterOpen(DataSet: TDataSet);
begin
  if not isSetWakaty then WstawWakaty;   // jak robimy refresh z karty UPenitForm w celu aktualizacji widoku danych
end;

procedure TPenitTerminarz.AddIDCeliToWykazCel;
var ZQPom: TZQueryPom;
    i, iCount: integer;
begin
  ZQPom:= TZQueryPom.Create(Self);
  ZQPom.SQL.Text:= 'SELECT id FROM typ_cel '+ WhereSQL +' ORDER BY ID';
  ZQPom.ParamByName('wych').AsString:= cbWychowawcy.Text;
  ZQPom.Open;

  iCount:= ZQPom.RecordCount;
  SetLength(WykazCel, iCount);

  i:=-1;
  while not ZQPom.EOF do
  begin
    inc(i);   // inc(-1) = [0..n]
    WykazCel[i].ID:=  ZQPom.FieldByName('ID').AsInteger;
    WykazCel[i].odd:= odd(i);
    ZQPom.Next;
  end;

  FreeAndNil(ZQPom);
end;

function TPenitTerminarz.FindIDCeli(id: integer): Boolean;
var i: integer;
begin
  result:= false;
  for i:=Low(WykazCel) to High(WykazCel) do
    if WykazCel[i].ID = id then
      begin
        result:= WykazCel[i].odd;
        exit;
      end;
end;

//==================================================================
//=================== TERMINARZ ====================================

procedure TPenitTerminarz.MakeSQLTerminy(var ZQ: TZQuery; DataOd, DataDo: TDate);
var i: integer;

procedure AddSelect(AValue: integer);
begin
  if ZQ.SQL.Text<>'' then ZQ.SQL.Text:= ZQ.SQL.Text+' UNION ALL '+#13;
  case AValue of
    0: ZQ.SQL.Text:= ZQ.SQL.Text
                    +'SELECT o.IDO, o.NAZWISKO, o.IMIE, o.OJCIEC, o.POC, o.KLASYF, t.ID, t.Wychowawca,'
                    +' i.toceny as Termin, "Ocena" as Rodzaj '
                    +'FROM typ_cel t'
                    +' Inner Join osadzeni o ON t.Wychowawca = :wych AND o.POC = t.POC '
                    +' Inner Join os_info i ON i.IDO = o.IDO AND i.toceny BETWEEN :dataOd AND :dataDo ';
    1: ZQ.SQL.Text:= ZQ.SQL.Text
                    +'SELECT o.IDO, o.NAZWISKO, o.IMIE, o.OJCIEC, o.POC, o.KLASYF, t.ID, t.Wychowawca,'
                    +' i.twpz as Termin, "WPZ" as Rodzaj '
                    +'FROM typ_cel t'
                    +' Inner Join osadzeni o ON t.Wychowawca = :wych AND o.POC = t.POC '
                    +' Inner Join os_info i ON i.IDO = o.IDO AND wpz_stanowisko = 0 AND i.twpz BETWEEN :dataOd AND :dataDo ';
    2: ZQ.SQL.Text:= ZQ.SQL.Text
                    +'SELECT o.IDO, o.NAZWISKO, o.IMIE, o.OJCIEC, o.POC, o.KLASYF, t.ID, t.Wychowawca,'
                    +' i.KoniecKary as Termin, "KK" as Rodzaj '
                    +'FROM typ_cel t'
                    +' Inner Join osadzeni o ON t.Wychowawca = :wych AND o.POC = t.POC '
                    +' Inner Join os_info i ON i.IDO = o.IDO AND i.KoniecKary BETWEEN :dataOd AND :dataDo ';
    3: ZQ.SQL.Text:= ZQ.SQL.Text
                    +'SELECT o.IDO, o.NAZWISKO, o.IMIE, o.OJCIEC, o.POC, o.KLASYF, t.ID, t.Wychowawca,'
                    +' i.tPostpenitu as Termin, "Postpenit" as Rodzaj '
                    +'FROM typ_cel t'
                    +' Inner Join osadzeni o ON t.Wychowawca = :wych AND o.POC = t.POC '
                    +' Inner Join os_info i ON i.IDO = o.IDO AND postpenit_notatka = 0 AND i.tPostpenitu BETWEEN :dataOd AND :dataDo ';
  end;
end;

begin
    ZQ.Close;
    ZQ.SQL.Text:= '';

    for i:=0 to cbListTerminy.Count-1 do
      if cbListTerminy.Checked[i] then AddSelect(i);

   if ZQ.SQL.Text<>'' then
     begin;
        ZQ.ParamByName('wych').AsString:= cbWychowawcy.Text;
        ZQ.ParamByName('dataOd').AsDate:= DataOd;
        ZQ.ParamByName('dataDo').AsDate:= DataDo;
        ZQ.Open;
     end;
end;

procedure TPenitTerminarz.WczytajDaneTerminarza;
var ZQPom: TZQueryPom;
    d,m : integer;
    rodzaj : string;
    pomData: TDate;
    //oc,kk, nr_img: integer;
begin
  Terminy.Clear;

  ZQPom:= TZQueryPom.Create(Self);

  MakeSQLTerminy( TZQuery(ZQPom), EncodeDate( YearPlanner1.Year ,1,1), EncodeDate( YearPlanner1.Year ,12,31));

  while not ZQPom.Eof do
  begin
    pomData:= ZQPom.FieldByName('termin').AsDateTime;
    rodzaj := ZQPom.FieldByName('rodzaj').AsString;

    m:= MonthOf( pomData );
    d:= DayOf( pomData );

    Terminy[m,d].IncTermin(rodzaj);

    ZQPom.Next;
  end;

  FreeAndNil(ZQPom);

 // Wstawiamy Images (słupki) do Terminarza na konkretny dzień.
 // Obecnie zastąpione przez
{
  for m:=1 to 12 do
    for d:=1 to 31 do
    begin
      //wstawiamy nr zdjecia
      oc:=0; kk:=0;
      oc:= DaneTerminarza[m][d].SumOcen + DaneTerminarza[m][d].SumWPZ;
      kk:= DaneTerminarza[m][d].SumPostpenit + DaneTerminarza[m][d].SumKK;
      if (oc+kk > 0) then
        begin
          if oc>3 then oc:=3; // wartość max 3
          if kk>3 then kk:=3;
          nr_img:= 4*oc + kk;
          YearPlanner1.CellData[m,d].CellImage:= nr_img;
        end;
    end;}
end;

procedure TPenitTerminarz.TabSheet1Show(Sender: TObject);
begin
  if (FirstShowTerminarz and (YearPlanner1.Year<>YearOf(Date()))) then
    begin
      YearPlanner1.Year:= YearOf( Date() );
    end
  else
  begin
    YearPlanner1.ClearCells;
    WczytajDaneTerminarza;
  end;

  FirstShowTerminarz:= false;
end;

procedure TPenitTerminarz.YearPlanner1DrawCell(Sender: TCustomControl;
  TheCanvas: TCanvas; Rect: TRect; CellData: TCellData; CellText: String);
var m,d: integer;
begin
  m:= MonthOf( CellData.CellDate );
  d:= DayOf( CellData.CellDate );
  Terminy[m,d].DrawCell(TheCanvas, Rect);
end;

procedure TPenitTerminarz.YearPlanner1SelectionEnd(Sender: TObject);
begin
  MakeSQLTerminy(ZQKalendarz, YearPlanner1.StartDate, YearPlanner1.EndDate);
end;

procedure TPenitTerminarz.YearPlanner1YearChanged(Sender: TObject);
begin
  WczytajDaneTerminarza;
end;

// Drukuj wykaz osadzonych
procedure TPenitTerminarz.MenuItem1Click(Sender: TObject);
begin
  frReport1.LoadFromFile(DM.Path_Raporty + 'pen_wykaz_grupy_wych.lrf');
    TfrBandView(frReport1.FindObject('GroupHeader1')).Visible:= (RxDBGrid1.SortField = 'ID;NAZWISKO');
  frReport1.ShowReport;
end;

// Drukuj starszych celi
procedure TPenitTerminarz.MenuItem2Click(Sender: TObject);
begin
  // filtr
  ZQTerminarz.Filtered:= false;
  ZQTerminarz.Filter:= 'Starszy = 1';
  ZQTerminarz.Filtered:= true;

  frReport1.LoadFromFile(DM.Path_Raporty + 'pen_wykaz_starszych_celi.lrf');
  frReport1.ShowReport;

  ZQTerminarz.Filtered:= false;
  ZQTerminarz.Filter:= '';
end;

// Kopiuj do schowka wykaz osadzonych.
procedure TPenitTerminarz.MenuItem11Click(Sender: TObject);
var bookmark: TBookMark;
    schowek: string;
begin
  // do schowka wszyscy widoczni osadzeni
  if ZQTerminarz.IsEmpty then exit;
  bookmark:= ZQTerminarz.GetBookmark;
  ZQTerminarz.DisableControls;
  ZQTerminarz.First;
  // Nagłówek
  schowek:= 'IDO'+ #09 +'POC'+ #09 +'Nazwisko'+ #09 +'Imię'+ #09 +'Ojciec'+ #09 +'Klasyf'+ #09 +'GR'+ #09 +'ocena'+ #09 +'wpz'+ #09
           +'KK'+ #09 +'postpenit'+ #09 +'terapia'+ #09 +'przepustki'+ #09 +'uwagi';

  while not ZQTerminarz.EOF do
  begin
    if schowek<>'' then schowek:= schowek + LineEnding;
    schowek:= schowek + OsadzeniFieldsToString(ZQTerminarz);
    ZQTerminarz.Next;
  end;

  Clipboard.AsText:= schowek;

  ZQTerminarz.GotoBookmark(bookmark);
  ZQTerminarz.EnableControls;
  DM.KomunikatPopUp(Sender, 'Terminarz','Dodano osadzonych do schowka.', nots_Info);
end;

function TPenitTerminarz.OsadzeniFieldsToString(ZQPom: TZQuery): string;  // osadzeni z terminarza
var s: string;
begin
  s:= ZQPom.FieldByName('IDO').AsString;
  s:= s+ #09 +ZQPom.FieldByName('POC').AsString;
  s:= s+ #09 +ZQPom.FieldByName('Nazwisko').AsString;
  s:= s+ #09 +ZQPom.FieldByName('Imie').AsString;
  s:= s+ #09 +ZQPom.FieldByName('Ojciec').AsString;
  s:= s+ #09 +ZQPom.FieldByName('Klasyf').AsString;
  s:= s+ #09 +ZQPom.FieldByName('GR').AsString;
  s:= s+ #09 +ZQPom.FieldByName('toceny').AsString;
  s:= s+ #09 +ZQPom.FieldByName('twpz').AsString;
  s:= s+ #09 +ZQPom.FieldByName('KoniecKary').AsString;
  s:= s+ #09 +ZQPom.FieldByName('tpostpenitu').AsString;
  s:= s+ #09 +ZQPom.FieldByName('tterapii').AsString;
  s:= s+ #09 +ZQPom.FieldByName('tprzepustki').AsString;
  s:= s+ #09 +ZQPom.FieldByName('zatrudnienie').AsString;
  Result:= s;
end;

function TPenitTerminarz.ZmienOpisZatrudnienia(vIDO: integer): Boolean;
var ZQPom: TZQueryPom;
    Opis: string;
begin
  Result:= false;
  Opis:= '';

  ZQPom:= TZQueryPom.Create(Self);
  ZQPom.SQL.Text:= 'SELECT z.IDO, s.Nazwa, z.zat_od FROM zat_zatrudnieni z, zat_stanowiska s WHERE (z.IDO=:ido)AND(z.status_zatrudnienia="zatrudniony")AND(z.id_stanowiska=s.ID) LIMIT 1';
  ZQPom.ParamByName('ido').AsInteger:= vIDO;
  ZQPom.Open;
  if not ZQPom.IsEmpty then
    begin
      Opis:= ZQPom.FieldByName('Nazwa').AsString+' od '+ ZQPom.FieldByName('zat_od').AsString;

      ZQPom.Close;
      ZQPom.SQL.Text:= 'SELECT IDO, Zatrudnienie FROM os_info WHERE IDO=:ido';
      ZQPom.ParamByName('ido').AsInteger:= vIDO;
      ZQPom.Open;
      if ZQPom.FieldByName('Zatrudnienie').AsString<>Opis then
        begin
          ZQPom.Edit;
          ZQPom.FieldByName('Zatrudnienie').AsString:= Opis;
          ZQPom.Post;
          Result:= true;
        end;
    end;

  FreeAndNil(ZQPom);
end;

procedure TPenitTerminarz.MenuItem3Click(Sender: TObject);
begin
  ZQTerminarz.Filtered:= false;
  ZQTerminarz.Filter:= 'Wywiad <> 1';
  ZQTerminarz.Filtered:= true;
end;

procedure TPenitTerminarz.MenuItem5Click(Sender: TObject);
begin
  ZQTerminarz.Filtered:= false;
  ZQTerminarz.Filter:= 'Arch <> 1';
  ZQTerminarz.Filtered:= true;
end;

procedure TPenitTerminarz.MenuItem9Click(Sender: TObject);
begin
  ZQTerminarz.Filtered:= false;
  ZQTerminarz.Filter:= 'zat_od IS NOT NULL';
  ZQTerminarz.Filtered:= true;
end;

procedure TPenitTerminarz.MenuItem6Click(Sender: TObject);
begin
  ZQTerminarz.Filtered:= false;
  ZQTerminarz.Filter:= '';
end;

procedure TPenitTerminarz.MenuItem7Click(Sender: TObject);
begin
  ZQZatReport.ParamByName('wych').AsString:= cbWychowawcy.Text;
  ZQZatReport.Open;
  frReport1.LoadFromFile(DM.Path_Raporty + 'pen_wykaz_zat.lrf');
  frReport1.ShowReport;
  ZQZatReport.Close;
end;

procedure TPenitTerminarz.MenuDrukujWykazKalClick(Sender: TObject);
var bookmark: TBookMark;
begin
  if ZQKalendarz.IsEmpty then exit;
  bookmark:= ZQKalendarz.GetBookmark;
  ZQKalendarz.DisableControls;
  ZQKalendarz.First;

  with TDrukWykazOsadz.Create(Self) do
  begin
    while not ZQKalendarz.EOF do
    begin
      DodajDoWykazu( ZQKalendarz.FieldByName('IDO').AsInteger,
                     ZQKalendarz.FieldByName('Nazwisko').AsString,
                     ZQKalendarz.FieldByName('Imie').AsString,
                     ZQKalendarz.FieldByName('Ojciec').AsString,
                     ZQKalendarz.FieldByName('POC').AsString,
                     True
                   );
      ZQKalendarz.Next;
    end;

    ShowModal;
    Free;
  end;

  SetToBookmark(ZQKalendarz, bookmark);
  ZQKalendarz.EnableControls;
end;

procedure TPenitTerminarz.MenuWykazDoSchowkaKalClick(Sender: TObject);
var schowek: string;
    bookmark: TBookMark;

    Function KalendarzFieldsToString: string;
    var s: string;
    begin
      s:= IntTostr(ZQKalendarz.RecNo);
      s:=s+ #09 + ZQKalendarz.FieldByName('NAZWISKO').AsString;
      s:=s+ #09 + ZQKalendarz.FieldByName('IMIE').AsString;
      s:=s+ #09 + ZQKalendarz.FieldByName('OJCIEC').AsString;
      s:=s+ #09 + ZQKalendarz.FieldByName('KLASYF').AsString;
      s:=s+ #09 + ZQKalendarz.FieldByName('POC').AsString;
      s:=s+ #09 + ZQKalendarz.FieldByName('Termin').AsString;
      s:=s+ #09 + ZQKalendarz.FieldByName('Rodzaj').AsString;
      Result:=s;
    end;

begin
  // do schowka wszyscy zaznaczeni z Kalendarza
  if ZQKalendarz.IsEmpty then exit;
  ZQKalendarz.DisableControls;
  bookmark:= ZQKalendarz.GetBookmark;

  ZQKalendarz.First;
  schowek:= '';
  while not ZQKalendarz.EOF do
  begin
    if schowek<>'' then schowek:= schowek + LineEnding;
    schowek:= schowek + KalendarzFieldsToString;
    ZQKalendarz.Next;
  end;

  Clipboard.AsText:= schowek;
  SetToBookmark(ZQKalendarz, bookmark);
  ZQKalendarz.EnableControls;
  DM.KomunikatPopUp(Sender, 'Terminarz','Dodano osadzonych do schowka.', nots_Info);
end;

procedure TPenitTerminarz.miZatZmienOpisAllClick(Sender: TObject);
var bookmark: TBookMark;
    i: integer;
    listaZmian: string;
begin
  if ZQTerminarz.IsEmpty then exit;
  bookmark:= ZQTerminarz.GetBookmark;
  ZQTerminarz.DisableControls;

  i:=0;
  listaZmian:= '';
  ZQTerminarz.First;
  while not ZQTerminarz.EOF do
  begin
    if (not ZQTerminarz.FieldByName('IDO').IsNull)and(ZmienOpisZatrudnienia(ZQTerminarz.FieldByName('IDO').AsInteger)) then
      begin
        inc(i);
        if listaZmian<>'' then listaZmian:= listaZmian+', ';
        listaZmian:= listaZmian + ZQTerminarz.FieldByName('NazwiskoImie').AsString;
      end;
    ZQTerminarz.Next;
  end;

  ZQTerminarz.Close;
  ZQTerminarz.Open;
  SetToBookmark(ZQTerminarz, bookmark);
  ZQTerminarz.EnableControls;

  MessageDlg('Zmodyfikowano opisy zatrudnienia zgodnie z aktualnym zatrudnieniem. Poz: '+IntToStr(i)+LineEnding+listaZmian, mtInformation, [mbOK],0);
end;

procedure TPenitTerminarz.miZatZmienOpisClick(Sender: TObject);
begin
  if (ZQTerminarz.IsEmpty)or(ZQTerminarz.FieldByName('IDO').IsNull) then exit;
  if ZmienOpisZatrudnienia(ZQTerminarz.FieldByName('IDO').AsInteger) then
    begin
      if Assigned(PanelOsInfo) then RefreshQuery(PanelOsInfo.ZQOsInfo);
      RefreshQuery( ZQTerminarz );
      DM.KomunikatPopUp(Self, 'Terminarz', 'Zmodyfikowano opis zatrudnienia zgodnie z aktualnym zatrudnieniem.', nots_Info);
    end;
end;


{ TTerminyEvent }

procedure TTerminyEvent.DrawCell(TheCanvas: TCanvas; Rect: TRect);
var h,h1,x: integer;
    DesRect: TRect;
    kol, ckol: integer;

procedure DrawKolumn(AValue: integer; AStart, AStop: TColor);
begin
  //inc(ckol);   // kolumny wyświetlane na stałym miejscu
  if AValue<=0 then exit;
  inc(ckol); // kolumny wyświetlane po koleji

  h1:= round(h* AValue / 8);  // 8 to jest 100% wysokości
  if h1=0 then h1:=1; // minimalna wysokość to 1
  if h1>h then h1:=h; // jeśli przekroczymy wysokość to dajemy maxa.

  DesRect.Bottom:= Rect.Bottom;
  DesRect.Left  := Rect.Left  + 1 + x*(ckol-1);
  DesRect.Right := Rect.Left  + 1 + x*ckol;
  DesRect.Top   := Rect.Bottom- h1;
  if ckol=kol then DesRect.Right:= Rect.Right; // ostatnia kol równa do prawej krawędzi

  TheCanvas.GradientFill(DesRect, AStart, AStop, gdHorizontal);
end;

begin
  // ustalamy liczbę kolumn
  kol:=0;
  if SumOcen>0 then inc(kol);
  if SumKK>0 then inc(kol);
  if SumPostpenit>0 then inc(kol);
  if SumWPZ>0 then inc(kol);
  if kol=0 then exit; // nie ma co wyswietlac

  //kol:=4; // ustalamy że kolumn ma być 4

  h:= Rect.Height - 12;    // ustalamy max wysokość kolumny
  if h<=0 then h:=1;
  x:= Rect.Width div 4 {kol};  // szerokosc słupka

    Rect.Left:= Rect.Left+ (x*4-x*kol)div 2; // wypośrodkowanie
    kol:=4;

  ckol:=0; // zerujemy licznik kolumny
  DrawKolumn(SumOcen     , clRed    , $00DDDDFF);
  DrawKolumn(SumWPZ      , $00007D1A, $00F0FFF2);
  DrawKolumn(SumKK       , clBlue   , $00FFE6E6);
  DrawKolumn(SumPostpenit, $00D20069, $00FFEAF4);
end;

procedure TTerminyEvent.Clear;
begin
  SumOcen     := 0;
  SumWPZ      := 0;
  SumPostpenit:= 0;
  SumKK       := 0;
end;

procedure TTerminyEvent.IncTermin(rodzaj: string);
begin
  case rodzaj of
     'Ocena'    : inc(fSumOcen);
     'KK'       : inc(fSumKK);
     'Postpenit': inc(fSumPostpenit);
     'WPZ'      :inc(fSumWPZ);
  end;
end;

{ TTerminyEvents }

function TTerminyEvents.GetDaneTerminarza(msc, day: integer): TTerminyEvent;
begin
  Result:= fDaneTerminarza[msc, day];
end;

procedure TTerminyEvents.SetDaneTerminarza(msc, day: integer; AValue: TTerminyEvent);
begin
  fDaneTerminarza[msc, day]:= AValue
end;

constructor TTerminyEvents.Create;
var
  m, d: Integer;
begin
  for m:=1 to 12 do
    for d:=1 to 31 do DaneTerminarza[m, d]:= TTerminyEvent.Create;
  inherited Create;
end;

destructor TTerminyEvents.Destroy;
var
  m, d: Integer;
begin
  for m:=1 to 12 do
    for d:=1 to 31 do DaneTerminarza[m, d].Free;
  inherited Destroy;
end;

procedure TTerminyEvents.Clear;
var
  m, d: Integer;
begin
  for m:=1 to 12 do
    for d:=1 to 31 do DaneTerminarza[m, d].Clear;
end;

end.

