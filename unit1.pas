unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, rxdbgrid, Forms, Controls, Graphics, Dialogs,
  ComCtrls, Menus, windows, ExtCtrls, StdCtrls, DBGrids, ActnList, rxdbutils,
  db, datamodule, spkt_Tab, spkt_Pane, spkt_Buttons, Types, Grids, Clipbrd,
  dateutils, LCLType;

type

  { TForm1 }

  TForm1 = class(TForm)
    ActionDodajOsobeBliska: TAction;
    ActionZwrotyPaczek: TAction;
    ActionNowyKoszyk: TAction;
    ActionDodajDoKoszyka: TAction;
    ActionKoszyk: TAction;
    ActionAktualizacjaPodkultury: TAction;
    ActionAddWidzenie: TAction;
    ActionAddWykaz: TAction;
    ActionRejestrWykazow: TAction;
    ActionDrukujWykazOs: TAction;
    ActionNieZatrudnieni: TAction;
    ActionWydarzenia: TAction;
    ActionStatystyka: TAction;
    ActionKomunikatDo: TAction;
    ActionZatrudnieni: TAction;
    ActionKomunikator: TAction;
    ActionRejestrWidzen: TAction;
    ActionSkype: TAction;
    ActionBezdozorowe: TAction;
    Action_AdresyJednostek: TAction;
    ActionKartaOsadzonego: TAction;
    ActionZatrudnienieOs: TAction;
    ActionStanowiska: TAction;
    ActionTerminarz: TAction;
    ActionProsbyOsadzonych: TAction;
    ActionProsbyOsadzonego: TAction;
    ActionRozmieszczenie: TAction;
    Label2: TLabel;
    MenuItem10: TMenuItem;
    MenuItem23: TMenuItem;
    MenuItem26: TMenuItem;
    MenuItem28: TMenuItem;
    MenuItem29: TMenuItem;
    MenuItem30: TMenuItem;
    MenuItem31: TMenuItem;
    MenuItem32: TMenuItem;
    MenuItem33: TMenuItem;
    MenuItem34: TMenuItem;
    MenuItem35: TMenuItem;
    MenuItem36: TMenuItem;
    MenuItem37: TMenuItem;
    MenuItem38: TMenuItem;
    MenuItem39: TMenuItem;
    MenuItem40: TMenuItem;
    MenuItem41: TMenuItem;
    MenuItem42: TMenuItem;
    MenuItem43: TMenuItem;
    MenuItem44: TMenuItem;
    MenuItem45: TMenuItem;
    MenuItem46: TMenuItem;
    MenuItem47: TMenuItem;
    MenuItem48: TMenuItem;
    MenuItem49: TMenuItem;
    MenuItem50: TMenuItem;
    MenuItem51: TMenuItem;
    MenuItem52: TMenuItem;
    MenuItem53: TMenuItem;
    MenuItem55: TMenuItem;
    MenuItem59: TMenuItem;
    MenuItemKoszykShow: TMenuItem;
    MenuItem54: TMenuItem;
    MenuItemDoKoszyka: TMenuItem;
    MenuItem56: TMenuItem;
    MenuItem57: TMenuItem;
    MenuItem58: TMenuItem;
    MenuItem9: TMenuItem;
    Panel2: TPanel;
    SpkPane1: TSpkPane;
    SpkPane2: TSpkPane;
    SpkSmallButton1: TSpkSmallButton;
    SpkSmallButton2: TSpkSmallButton;
    SpkSmallButton3: TSpkSmallButton;
    SpkTab1: TSpkTab;
    SpkTab2: TSpkTab;
    Timer2Komunikaty: TTimer;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ZatrudnienieAdd: TAction;
    ActionList1: TActionList;
    Edit1: TEdit;
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem16: TMenuItem;
    MenuItem17: TMenuItem;
    MenuItem18: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem20: TMenuItem;
    MenuItem21: TMenuItem;
    MenuItem22: TMenuItem;
    MenuItem24: TMenuItem;
    MenuItem25: TMenuItem;
    MenuItem27: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    Panel1: TPanel;
    PopupMenu1: TPopupMenu;
    RxDBGrid1: TRxDBGrid;
    StatusBar1: TStatusBar;
    Timer1Wyszukaj: TTimer;
    procedure ActionAddWidzenieExecute(Sender: TObject);
    procedure ActionAddWykazExecute(Sender: TObject);
    procedure ActionAktualizacjaPodkulturyExecute(Sender: TObject);
    procedure ActionDodajDoKoszykaExecute(Sender: TObject);
    procedure ActionDodajOsobeBliskaExecute(Sender: TObject);
    procedure ActionDrukujWykazOsExecute(Sender: TObject);
    procedure ActionKartaOsadzonegoExecute(Sender: TObject);
    procedure ActionKomunikatDoExecute(Sender: TObject);
    procedure ActionKomunikatorExecute(Sender: TObject);
    procedure ActionKoszykExecute(Sender: TObject);
    procedure ActionNieZatrudnieniExecute(Sender: TObject);
    procedure ActionNowyKoszykExecute(Sender: TObject);
    procedure ActionProsbyOsadzonegoExecute(Sender: TObject);
    procedure ActionProsbyOsadzonychExecute(Sender: TObject);
    procedure ActionRejestrWidzenExecute(Sender: TObject);
    procedure ActionRejestrWykazowExecute(Sender: TObject);
    procedure ActionRozmieszczenieExecute(Sender: TObject);
    procedure ActionStanowiskaExecute(Sender: TObject);
    procedure ActionStatystykaExecute(Sender: TObject);
    procedure ActionTerminarzExecute(Sender: TObject);
    procedure ActionWydarzeniaExecute(Sender: TObject);
    procedure ActionZatrudnienieOsExecute(Sender: TObject);
    procedure ActionZatrudnieniExecute(Sender: TObject);
    procedure Action_AdresyJednostekExecute(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure Image1DblClick(Sender: TObject);
    procedure MenuItem26Click(Sender: TObject);
    procedure MenuItem37Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure RxDBGrid1DataHintShow(Sender: TObject; CursorPos: TPoint;
      Cell: TGridCoord; Column: TRxColumn; var HintStr: string;
      var Processed: boolean);
    procedure RxDBGrid1DblClick(Sender: TObject);
    procedure Timer2KomunikatyTimer(Sender: TObject);
    procedure ZatrudnienieAddExecute(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: char);
    procedure FormCreate(Sender: TObject);
    procedure MenuItem25Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure RxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Timer1WyszukajTimer(Sender: TObject);
  private
    { private declarations }
    fRecCount: integer;
    ClipbrdSaveText: string;
    procedure StatusBarRefresh(Sender: TObject; Field: TField);
    procedure wm_HOTKEY(var Msg:TMessage);message WM_HOTKEY; // funkcja skrótu globalnego
  public
    { public declarations }
    isExecuteSQL: boolean;
    Procedure WyborDomyslny;
    Procedure RefreshUprawnienia; // odswieża aktywność kontrolek względem uprawnień
    Procedure Zaloguj;
  end;

var
  Form1: TForm1;

const
  SQLAllOsadzeni      = 'SELECT * FROM osadzeni';
  SQLSelectedOsadzeni = 'SELECT * FROM osadzeni WHERE (NAZWISKO LIKE :nazwisko) OR (POC LIKE :poc)';

implementation
uses UStanowiska, UZatrudnieni, UAddZatrudnienie, ULogowanie, UUprawnienia, UUpr_ZmianaHasla, URozmieszczenie,
     UUpdPodkultury, UPenitForm, UPenitTerminarz, UAdresyJednostek, UAktualizacjaOs, UAktualizacjaRejestr,
     URejestrProsbOs, URejestrProsbAll, UOknoKomunikatu, UKomunikator, UKomunikatorNowaWiad, UZatStatystyka,
     UPenitWydarzenia, USaper, UZatNiezatrudnieni, UDrukWykazOsadz, UOchRejestrWykazow, UOchAddWykaz,
     UOchRejestrWidzen, UOchAddWidzenie, UKoszykNowy, UKoszyk;
{$R *.frm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
  fRecCount:=0;
  DM.DSOsadzeni.OnDataChange:= @StatusBarRefresh;
  Timer1WyszukajTimer(Sender); // inicjujemy widok osadzonych.
  isExecuteSQL := true;
  RefreshUprawnienia;

  // -------------------- dodajemy globalny skrót dla NEO :)
  ClipbrdSaveText:='';
  RegisterHotKey(Form1.Handle, $0001, MOD_CONTROL,  VkKeyScan('n')); {F4 - VK_F4}
  if DM.Podpis<>'' then RegisterHotKey(Form1.Handle, $0002, MOD_CONTROL,  VkKeyScan('p'));
end;

procedure TForm1.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  //------------ zwalniam globalny skrót
  UnregisterHotKey(Form1.Handle, $0001);
  if DM.Podpis<>'' then UnregisterHotKey(Form1.Handle, $0002);
end;

procedure TForm1.RefreshUprawnienia;
begin
  StatusBar1.Panels[1].Text:= DM.PelnaNazwa;
  StatusBar1.Panels[2].Text:= 'ver. '+wersja;

  MenuItem4.Enabled            := DM.uprawnienia[1];          // aktualizacja
  ActionAktualizacjaPodkultury.Enabled:= DM.uprawnienia[1];   // aktualizacja podkultury;
  MenuItem5.Enabled            := DM.uprawnienia[8];          // admin, uprawnienia
  ZatrudnienieAdd.Enabled      := DM.uprawnienia[15];         // dodaj zatrudnienie
  ActionTerminarz.Enabled      := (DM.Wychowawca<>'')and(DM.Dzial='Penit'); // tylko wychowawca
  ActionKartaOsadzonego.Enabled:= (DM.Wychowawca<>'')and(DM.Dzial='Penit'); // tylko wychowawca
  ActionWydarzenia.Enabled     := (DM.Wychowawca<>'')and(DM.Dzial='Penit'); // tylko wychowawca
  //ActionKartaOchrony.Enabled:= (DM.Dzial='Ochrona');
  ActionAddWykaz.Enabled       := DM.uprawnienia[4];   // dodawanie do wykazów ochronnych
  ActionAddWidzenie.Enabled    := DM.uprawnienia[6];   // widzenia

  Timer2Komunikaty.Interval:= 1000; // możliwie szybko sprawdz pierwsze komunikaty potem ustaw nowy interwał.
end;

procedure TForm1.Image1DblClick(Sender: TObject);
begin
  if not Assigned(SaperForm) then
  begin
    SaperForm:= TSaperForm.Create(Self);
    SaperForm.Show;
  end else
  begin
    SaperForm.Show;
    if SaperForm.WindowState = wsMinimized then SaperForm.WindowState:= wsNormal;
  end;
end;

// Rejstr Aktualizacji
procedure TForm1.MenuItem26Click(Sender: TObject);
begin
  with TAktualizacjaRejestr.Create(Self) do
  begin
       ShowModal;
       Free;
  end;
end;

procedure TForm1.MenuItem37Click(Sender: TObject);
begin
  with TUpr_ZmianaHasla.Create(Self) do
  begin
       ShowModal;
       Free;
  end;
end;

procedure TForm1.MenuItem4Click(Sender: TObject);
begin
  with TAktualizacjaOs.Create(Self) do
  begin
       ShowModal;
       Free;
  end;
end;

//======================================================================================================================
//-------------------------------- KOSZYK ------------------------------------------------------------------------------
procedure TForm1.PopupMenu1Popup(Sender: TObject);
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
   ActionDodajDoKoszyka.Caption:= 'Dodaj do: '+koszyk_name;
end;

procedure TForm1.ActionDodajDoKoszykaExecute(Sender: TObject);
begin
  if IsDataSetEmpty(DM.ZQOsadzeni) then exit;
  if DM.DodajDoKoszyka(DM.ZQOsadzeni.FieldByName('IDO').AsInteger) then
    DM.KomunikatPopUp(Sender,'Koszyk', 'Dodano osadzonego do koszyka.', nots_Info);
end;

procedure TForm1.ActionDodajOsobeBliskaExecute(Sender: TObject);
begin

end;

procedure TForm1.ActionNowyKoszykExecute(Sender: TObject);
begin
  with TKoszykNowy.Create(Self) do
  begin
       ShowModal;
       Free;
  end;
end;

procedure TForm1.ActionKoszykExecute(Sender: TObject);
begin
  with TKoszyk.Create(Self) do
  begin
       ShowModal;
       Free;
  end;
end;
//======================================================================================================================
//--------------------------------END KOSZYK ---------------------------------------------------------------------------

procedure TForm1.Zaloguj;
begin
  DM.autologin:= false;
  Logowanie:= TLogowanie.Create(Self);  // uruchamiamy dostęp do bazy (login i hasło)
  if Logowanie.ShowModal= mrOK then
        DM.OpenAllTable
     else
        Application.Terminate;

  RefreshUprawnienia;
end;

procedure TForm1.MenuItem3Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.MenuItem5Click(Sender: TObject);
begin
  with TUprawnienia.Create(Self) do
  begin
       ShowModal;
       Free;
  end;
end;


procedure TForm1.RxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Char(Key) =#13 then    // ENTER
  begin
      Key:=0;
      Edit1.SetFocus;
      if not isExecuteSQL then Timer1WyszukajTimer(Sender);  // wymuszam reakcje timera po wcisnieciu Entera
      WyborDomyslny;
  end;
end;

procedure TForm1.Timer1WyszukajTimer(Sender: TObject);
begin
  Timer1Wyszukaj.Enabled:= false;
    try
      with DM.ZQOsadzeni do
      begin
           Close;
           if Edit1.Text<>'' then
              begin
                  SQL.Text:= SQLSelectedOsadzeni;
                  ParamByName('nazwisko').AsString:= Edit1.Text +'%';
                  ParamByName('POC').AsString:= Edit1.Text +'%';
              end
           else
              SQL.Text:= SQLAllOsadzeni;

           Open;
      end;
      isExecuteSQL := true;
    except
      ShowMessage('Połączenie zostało zerwane. Zaloguj się ponownie.');
      Zaloguj;
    end;
end;

procedure TForm1.WyborDomyslny;
begin
  if IsDataSetEmpty(DM.ZQOsadzeni) then exit;
  //wybieramy akcję po wybraniu osadzonego
     // tylko wychowawcy, Penit
  if ActionKartaOsadzonego.Enabled then ActionKartaOsadzonegoExecute(Self);
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
  Timer1Wyszukaj.Interval:= 500;
  Timer1Wyszukaj.Enabled := true;
  isExecuteSQL   := false;
end;

// DODAJ OSADZONEGO DO ZATRUDNIENIA
procedure TForm1.ZatrudnienieAddExecute(Sender: TObject);
begin
  if IsDataSetEmpty(DM.ZQOsadzeni) then exit;
  with TAddZatrudnienie.Create(Self) do
  begin
    NoweZatrudnienie(DM.ZQOsadzeni.FieldByName('ido').AsInteger);
    ShowModal;
    Free;
  end;
end;

procedure TForm1.RxDBGrid1DataHintShow(Sender: TObject; CursorPos: TPoint;
  Cell: TGridCoord; Column: TRxColumn; var HintStr: string;
  var Processed: boolean);
var i: integer;
    ZQPom: TZQueryPom;
begin
  i:=0;
  // co to za status
  if Column.FieldName = 'STATUS' then
  while (i <= DM.fStatusList.Count-1) do
  begin
    if Pos(HintStr, DM.fStatusList.Strings[i])=1 then
       begin
         Processed:= true;
         HintStr:= DM.fStatusList.Strings[i];
         i:=100;
       end;
    inc(i);
  end;
  // jaki wychowawca
  if Column.FieldName = 'POC' then
     begin
       try
         ZQPom:= TZQueryPom.Create(Self);
         ZQPom.SQL.Text:='SELECT poc, Wychowawca FROM typ_cel WHERE poc=:poc;';
         ZQPom.ParamByName('poc').AsString:= HintStr;
         ZQPom.Open;
         if not ZQPom.IsEmpty then
         begin
            Processed:= true;
            HintStr:= HintStr + ' - wych. ' + ZQPom.FieldByName('Wychowawca').AsString;
         end;
         ZQPom.Free;
       except
       end;
     end;
end;

procedure TForm1.RxDBGrid1DblClick(Sender: TObject);
begin
  WyborDomyslny;
end;

procedure TForm1.Timer2KomunikatyTimer(Sender: TObject);
begin
  Timer2Komunikaty.Enabled:=false;
  if Timer2Komunikaty.Interval = 1000 then Timer2Komunikaty.Interval:= DM.TimerInterval;

  OknoKomunikatu:= TOknoKomunikatu.Create(Self);

  if not (OknoKomunikatu.ZQKomunikat.IsEmpty) or
     not (OknoKomunikatu.ZQKomOdebrane.IsEmpty)
  then OknoKomunikatu.ShowModal;

  FreeAndNil(OknoKomunikatu);

  Timer2Komunikaty.Enabled:=true;
end;


// Rozmieszczenie
procedure TForm1.ActionRozmieszczenieExecute(Sender: TObject);
begin
  with TRozmieszczenie.Create(Self) do
  begin
    ShowModal;
    Free;
  end;
end;

procedure TForm1.ActionKartaOsadzonegoExecute(Sender: TObject);
begin
  if IsDataSetEmpty(DM.ZQOsadzeni) then exit;
  with TPenitForm.Create(Self) do
  begin
       SetIDO( DM.ZQOsadzeni.FieldByName('ido').AsInteger );
       ShowModal;
       Free;
  end;
end;

procedure TForm1.ActionDrukujWykazOsExecute(Sender: TObject);
begin
  with TDrukWykazOsadz.Create(Self) do
  begin
       Show;
  end;
end;

procedure TForm1.ActionAddWykazExecute(Sender: TObject);
begin
  if IsDataSetEmpty(DM.ZQOsadzeni) then exit;
  with TOchAddWykaz.Create(Self) do
  begin
       DodajOsadzonego( DM.ZQOsadzeni.FieldByName('ido').AsInteger );
       ShowModal;
       Free;
  end;
end;

procedure TForm1.ActionAktualizacjaPodkulturyExecute(Sender: TObject);
begin
  with TUpdPodkultury.Create(Self) do
  begin
    ShowModal;
    Free;
  end;
end;

procedure TForm1.ActionAddWidzenieExecute(Sender: TObject);
begin
  if IsDataSetEmpty(DM.ZQOsadzeni) then exit;
  with TOchAddWidzenie.Create(Self) do
  begin
       DodajOsadzonegoDoPoczekalni( DM.ZQOsadzeni.FieldByName('ido').AsInteger );
       ShowModal;
       Free;
  end;
end;

procedure TForm1.ActionKomunikatDoExecute(Sender: TObject);
begin
  if IsDataSetEmpty(DM.ZQOsadzeni) then exit;
  with TKomunikatorNowaWiad.Create(Self) do
  begin
       OdpiszDoUserByIDO( DM.ZQOsadzeni.FieldByName('ido').AsInteger );
       ShowModal;
       Free;
  end;
end;

procedure TForm1.ActionKomunikatorExecute(Sender: TObject);
begin
  with TKomunikator.Create(Self) do
  begin
       ShowModal;
       Free;
  end;
end;

procedure TForm1.ActionNieZatrudnieniExecute(Sender: TObject);
begin
  with TZatNieZatrudnieni.Create(Self) do
  begin
       ShowModal;
       Free;
  end;
end;

procedure TForm1.ActionProsbyOsadzonegoExecute(Sender: TObject);
begin
  if IsDataSetEmpty(DM.ZQOsadzeni) then exit;
  with TRejestrProsbOs.Create(Self) do
  begin
       SetIDO( DM.ZQOsadzeni.FieldByName('ido').AsInteger );
       ShowModal;
       Free;
  end;
end;

procedure TForm1.ActionProsbyOsadzonychExecute(Sender: TObject);
begin
  with TRejestrProsbAll.Create(Self) do
  begin
       ShowModal;
       Free;
  end;
end;

procedure TForm1.ActionRejestrWidzenExecute(Sender: TObject);
begin
  with TOchRejestrWidzen.Create(Self) do
  begin
       ShowModal;
       Free;
  end;
end;

procedure TForm1.ActionRejestrWykazowExecute(Sender: TObject);
begin
  with TOchRejestrWykazow.Create(Self) do
  begin
       ShowModal;
       Free;
  end;
end;

// Stanowiska / Grupy...
procedure TForm1.ActionStanowiskaExecute(Sender: TObject);
begin
  with TStanowiska.Create(Self) do
  begin
       ShowModal;
       Free;
  end;
end;

procedure TForm1.ActionStatystykaExecute(Sender: TObject);
begin
  with TZatStatystyka.Create(Self) do
  begin
       GetStat;
       ShowModal;
       Free;
  end;
end;

procedure TForm1.ActionTerminarzExecute(Sender: TObject);
begin
  PenitTerminarz:= TPenitTerminarz.Create(Self);
  PenitTerminarz.ShowModal;
  FreeAndNil(PenitTerminarz);
end;

procedure TForm1.ActionWydarzeniaExecute(Sender: TObject);
begin
  with TPenitWydarzenia.Create(Self) do
  begin
       ShowModal;
       Free;
  end;
end;

procedure TForm1.ActionZatrudnienieOsExecute(Sender: TObject);
begin
  if IsDataSetEmpty(DM.ZQOsadzeni) then exit;
  with TZatrudnieni.Create(Self) do
  begin
       ShowZatrudnienieOsadzonego( DM.ZQOsadzeni.FieldByName('ido').AsInteger, DM.ZQOsadzeni.FieldByName('nazwisko').AsString );
       ShowModal;
       Free;
  end;
end;

procedure TForm1.ActionZatrudnieniExecute(Sender: TObject);
begin
  with TZatrudnieni.Create(Self) do
  begin
       ShowModal;
       Free;
  end;
end;

procedure TForm1.Action_AdresyJednostekExecute(Sender: TObject);
begin
  with TAdresyJednostek.Create(Self) do
  begin
    ShowModal;
    Free;
  end;
end;

procedure TForm1.Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_DOWN then
  begin
    DM.ZQOsadzeni.Next;
    Key:= VK_UNKNOWN;
  end else
  if Key = VK_UP then
  begin
    DM.ZQOsadzeni.Prior;
    Key:= VK_UNKNOWN;
  end;
end;

// obsługa entera i ESC
procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: char);
begin
  if Key=#13 then    // ENTER VK_RETURN;
  begin
      Edit1.SetFocus;
      if not isExecuteSQL then Timer1WyszukajTimer(Sender);  // wymuszam reakcje timera po wcisnieciu Entera
      WyborDomyslny;
  end else
  if Ord(Key) = VK_ESCAPE then    // ESC
  begin
      Edit1.Text:='';
      Edit1.SetFocus;
      if not isExecuteSQL then Timer1WyszukajTimer(Sender);
  end else
  if Ord(Key) = VK_SPACE then Key:=#0;     // zabraniamy wpisywania spacji
end;

procedure TForm1.StatusBarRefresh(Sender: TObject; Field: TField);
begin
  if fRecCount<>DM.ZQOsadzeni.RecordCount then
  begin
    fRecCount:= DM.ZQOsadzeni.RecordCount;
    StatusBar1.Panels[0].Text:= 'Znaleziono: '+ IntToStr(fRecCount);
  end;
end;


//wylogowanie i login od nowa
procedure TForm1.MenuItem25Click(Sender: TObject);
begin
  Zaloguj;
end;


procedure TForm1.wm_HOTKEY(var Msg: TMessage);
var Teraz: TDateTime;

    // procedura symuluje wciśnięcie Ctrl + v
    procedure PressCtrlV;
    begin
         keybd_event(VK_CONTROL, 0, 0,0);
         keybd_event(VkKeyScan('v'), 0, 0,0);
         keybd_event(VkKeyScan('v'),0,KEYEVENTF_KEYUP,0);
         keybd_event(VK_CONTROL,0,KEYEVENTF_KEYUP,0);

         Teraz:= Now;
         repeat
          Application.ProcessMessages; // Pozwalamy aplikacji obsłużyć komunikaty
         until Teraz+1/SecsPerDay < Now;
         Clipboard.AsText:= ClipbrdSaveText;
         ClipbrdSaveText:= '';
    end;

begin
  if Msg.WParam = $0001 then
  begin
     if ClipbrdSaveText='' then ClipbrdSaveText:= Clipboard.AsText;
     { reakcja na skrót klawiszowy Ctrl+n}
     { jeśli jest włączony terminarz to pobierz nazwisko z niego, potem z wyszukiwarki głównej }
    if PenitTerminarz <> nil then Clipboard.AsText := PenitTerminarz.ZQTerminarzNAZWISKO.AsString else
    // if Wolne_cele <> nil then Clipboard.AsText := Wolne_Cele.ZQuery4Nazwisko.AsString else
                               Clipboard.AsText := DM.ZQOsadzeni.FieldByName('NAZWISKO').AsString;
     PressCtrlV;
     WaitMessage;
  end else
  if Msg.WParam = $0002 then
  begin
     if ClipbrdSaveText='' then ClipbrdSaveText:= Clipboard.AsText;
     { reakcja na skrót klawiszowy Ctrl+p}
     Clipboard.AsText := DM.Podpis;
     PressCtrlV;
  end;
  //Application.Restore; // przywrócenie aplikacji
end;

   { TODO : Domyślne lub z pliku ini: Rozmiar i położenie okna podczas onShow }

end.

