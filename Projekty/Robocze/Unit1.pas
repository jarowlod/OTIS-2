unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs,
  ComCtrls, Menus, windows, ExtCtrls, StdCtrls, ActnList, Clipbrd, dateutils, LCLType,
  LazUTF8, IdTCPServer, IdComponent, IdCustomTCPServer, IdContext, IdThread,
  IdGlobal, IdTCPClient, IdStack;

type
  TShowAlertStatusEvent = procedure(Status: String) of Object;
{
  ODBIORCY
    IP: adres ip
    Nazwa: nazwa stanowiska, lokalizacja, np: wych Kowalski, oddziałowy oddz.6, Stanowisko Dowodzenia

  NADAWCY
    ID
    Rodzaj [odbiorca, nadawca]
    IP: adres ip
    Nazwa: nazwa stanowiska, lokalizacja, np: wych Kowalski, oddziałowy oddz.6, Stanowisko Dowodzenia
    ID_odbiorcy
}

  { TAlerter }

  TAlerter = class
  private
    IdTCPServer1: TIdTCPServer;
    FOnShowAlerterStatus: TShowAlertStatusEvent;
    FOnShowAlertWindow: TShowAlertStatusEvent;
    FListaOdbiorcow: TStringList; // TODO: zmienić na record[ip, nazwa]
    FUserName: string;      // pełna nazwa użytkownika
    FUserLokalizacja: string;   // z bazy danych
    procedure IdTCPServer1Execute(AContext: TIdContext);
  public
    Destructor Destroy; override;
    procedure SendAlarm;
    procedure StartSerwer;
    property ListaOdbiorcow: TStringList read FListaOdbiorcow write FListaOdbiorcow;
    property OnShowAlerterStatus: TShowAlertStatusEvent read FOnShowAlerterStatus write FOnShowAlerterStatus;
    property OnShowAlertWindow: TShowAlertStatusEvent read FOnShowAlertWindow write FOnShowAlertWindow;
  end;

  { TAlertThread }

  TAlertThread = class(TThread)
    Client: TIdTCPClient;
  private
    fStatusText : string;
    FOnShowAlertStatus: TShowAlertStatusEvent;
    FIp: string;
    FNazwa: string;
    FUser: string;
    FLokalizacja: string;
    procedure ShowStatus;
  protected
    procedure Execute; override;
  public
    Constructor Create(CreateSuspended : boolean);
    Destructor Destroy; override;
    property OnShowAlertStatus: TShowAlertStatusEvent read FOnShowAlertStatus write FOnShowAlertStatus;
    property IP: string read FIp write FIp;
    property Nazwa: string read FNazwa write FNazwa;
    property User: string read FUser write FUser;
    property Lokalizacja: string read FLokalizacja write FLokalizacja;
  end;

  { TShowAlertThread }

  TShowAlertThread = class(TThread)
  private
    fStatusText : string;
    FOnShowAlertStatus: TShowAlertStatusEvent;
    procedure ShowStatus;
  protected
    procedure Execute; override;
  public
    Constructor Create(CreateSuspended : boolean);
    Destructor Destroy; override;
    property OnShowAlertStatus: TShowAlertStatusEvent read FOnShowAlertStatus write FOnShowAlertStatus;
  end;


  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    CheckBox1: TCheckBox;
    Memo1: TMemo;
    Memo2: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
     hotkey_alert: ATOM; // hotkey na cały system
     ALARM: TAlerter;

     procedure wm_HOTKEY(var Msg:TMessage);message WM_HOTKEY; // funkcja skrótu globalnego

     procedure ShowAlert(Status: string);
     procedure ShowStatus(Status: string);
  public

  end;

var
  Form1: TForm1;

implementation
uses Unit2;
{$R *.frm}

{ TShowAlertThread }

procedure TShowAlertThread.ShowStatus;
begin
  if Assigned(FOnShowAlertStatus) then
  begin
    FOnShowAlertStatus(fStatusText);
  end;
end;

procedure TShowAlertThread.Execute;
begin
  Synchronize(@Showstatus);
end;

constructor TShowAlertThread.Create(CreateSuspended: boolean);
begin
  FreeOnTerminate := True;
  inherited Create(CreateSuspended);
end;

destructor TShowAlertThread.Destroy;
begin
  inherited Destroy;
end;

{ TAlertThread }

procedure TAlertThread.ShowStatus;
begin
  if Assigned(FOnShowAlertStatus) then
  begin
    FOnShowAlertStatus(fStatusText);
  end;
end;

procedure TAlertThread.Execute;
var LLine: string;
begin
  Client:= TIdTCPClient.Create;
  Client.Host:= IP;
  Client.Port:= 7777;
  try
    Client.Connect;
    try
      Client.IOHandler.WriteLn(Format('%s;%s;%s',['ALERT', Lokalizacja, Nazwa]),  IndyTextEncoding_UTF8, IndyTextEncoding_UTF8);

      LLine := Client.IOHandler.ReadLn( IndyTextEncoding_UTF8, IndyTextEncoding_UTF8);
      if ( LLine <> '' ) then begin
         fStatusText:= Format('Potwierdzenie wyświetlenia alertu: %s.',[LLine]);
         Synchronize(@Showstatus);
      end;

    finally
      Client.Disconnect;
      FreeAndNil(Client);
    end;
  except
    fStatusText:= 'Brak połączenia.';
    Synchronize(@Showstatus);
  end;
end;

constructor TAlertThread.Create(CreateSuspended: boolean);
begin
  FreeOnTerminate := True;
  inherited Create(CreateSuspended);
end;

destructor TAlertThread.Destroy;
begin
  inherited Destroy;
end;

{ TAlerter }

procedure TAlerter.IdTCPServer1Execute(AContext: TIdContext);
var LLine: string;
begin
  LLine := AContext.Connection.IOHandler.ReadLn(IndyTextEncoding_UTF8, IndyTextEncoding_UTF8);

  //TThread.Queue(nil, @ShowAlert);
  //TThread.Synchronize(nil, @ShowAlert);

  // własna kolejka wątków
  with TShowAlertThread.Create(true) do
  begin
    fStatusText:= LLine;
    OnShowAlertStatus:= FOnShowAlertWindow;
    Start;
  end;

  AContext.Connection.IOHandler.WriteLn( FUserLokalizacja,  IndyTextEncoding_UTF8, IndyTextEncoding_UTF8 );
end;

destructor TAlerter.Destroy;
begin
  FreeAndNil(IdTCPServer1);
  inherited Destroy;
end;

procedure TAlerter.SendAlarm;
var i: integer;
begin
  if not (Assigned(FListaOdbiorcow)and(FListaOdbiorcow.Count>0)) then exit;
  for i:=0 to FListaOdbiorcow.Count-1 do
  begin
    With TAlertThread.Create(true) do
    begin
      IP   := FListaOdbiorcow[i].Split([';'])[0];
      Nazwa:= FListaOdbiorcow[i].Split([';'])[1];
      User := FUserName;
      Lokalizacja:= FUserLokalizacja;

      OnShowAlertStatus:= FOnShowAlerterStatus;
      Start;
    end;
  end;
end;

procedure TAlerter.StartSerwer;
begin
  IdTCPServer1:= TIdTCPServer.Create;
  IdTCPServer1.OnExecute:= @IdTCPServer1Execute;

  IdTCPServer1.Bindings.Clear;
  with IdTCPServer1.Bindings.Add do
  begin
    IP  := GStack.LocalAddress;
    Port:= 7777;
  end;
  IdTCPServer1.Active:= true;
end;


{ TForm1 }

procedure TForm1.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  //------------ zwalniam globalny skrót
  if GlobalFindAtom('OTIS_alert') <> 0 then
  begin
    UnregisterHotKey(Handle, hotkey_alert);
    GlobalDeleteAtom(hotkey_alert);
  end;

  FreeAndNil(ALARM);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  // -------------------- dodajemy globalny skrót dla NOE :)
  if GlobalFindAtom('OTIS_alert') = 0 then
  begin
    hotkey_alert:= GlobalAddAtom('OTIS_alert');
    RegisterHotKey(Handle, hotkey_alert, 0, VK_PAUSE);  // wstawia nazwisko
  end;

  ALARM:= TAlerter.Create;
  ALARM.ListaOdbiorcow:= TStringList.Create;
  ALARM.ListaOdbiorcow.Append('192.168.1.100;Stanowisko Dowodzenia 1');
  ALARM.ListaOdbiorcow.Append('192.168.1.100;Stanowisko Dowodzenia 2');
  ALARM.ListaOdbiorcow.Append('192.168.1.100;Stanowisko Dowodzenia 3');

  ALARM.FUserName:= 'Jarosław Włodarczyk';
  ALARM.FUserLokalizacja:= 'Gabinet wych poz.V';
  ALARM.OnShowAlerterStatus:= @ShowStatus;
  ALARM.OnShowAlertWindow:= @ShowAlert;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  ALARM.SendAlarm;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  CheckBox1.Checked:= true;
  Button2.Enabled  := false;
  try
    ALARM.StartSerwer;
  except
    CheckBox1.Checked:= false;
    Button2.Enabled  := true;
  end;
end;

procedure TForm1.wm_HOTKEY(var Msg: TMessage);
begin
  if Msg.WParam = hotkey_alert then
    begin
       ALARM.SendAlarm;
    end;
end;

procedure TForm1.ShowAlert(Status: string);
begin
  Memo1.Append(Status);
  // otwieramy niemodalne okno wiadomości
  with TForm2.Create(Self) do
  begin
    Caption:= Status;
    Show;
  end;
end;

procedure TForm1.ShowStatus(Status: string);
begin
  Memo2.Append(Status);
end;

end.

