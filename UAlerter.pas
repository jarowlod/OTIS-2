unit UAlerter;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, dateutils, LCLType,
  StdCtrls, LazUTF8, IdTCPServer, IdComponent, IdCustomTCPServer, IdContext,
  IdThread, IdGlobal, IdTCPClient, IdStack, MMSystem;

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
    FLocalUserName: string;      // pełna nazwa użytkownika
    FLocalUserLokalizacja: string;   // z bazy danych
    procedure IdTCPServer1Execute(AContext: TIdContext);
  public
    Destructor Destroy; override;
    procedure SendAlarm;
    procedure StartSerwer;
    class Function GetLocalIP: string;
    property ListaOdbiorcow: TStringList read FListaOdbiorcow write FListaOdbiorcow;
    property OnShowAlerterStatus: TShowAlertStatusEvent read FOnShowAlerterStatus write FOnShowAlerterStatus;
    property OnShowAlertWindow: TShowAlertStatusEvent read FOnShowAlertWindow write FOnShowAlertWindow;
    property LocalUserName: string read FLocalUserName write FLocalUserName;
    property LocalUserLokalizacja: string read FLocalUserLokalizacja write FLocalUserLokalizacja;
  end;

  { TAlertThread }

  TAlertThread = class(TThread)
    Client: TIdTCPClient;
  private
    fStatusText : string;
    FOnShowAlertStatus: TShowAlertStatusEvent;
    FRemoteIP: string;
    FRemoteUserName: string;
    FLocalUserName: string;
    FLocalUserLokalizacja: string;
    procedure ShowStatus;
  protected
    procedure Execute; override;
  public
    Constructor Create(CreateSuspended : boolean);
    Destructor Destroy; override;
    property OnShowAlertStatus: TShowAlertStatusEvent read FOnShowAlertStatus write FOnShowAlertStatus;
    property RemoteIP: string read FRemoteIP write FRemoteIP;
    property RemoteUserName: string read FRemoteUserName write FRemoteUserName;
    property LocalUserName: string read FLocalUserName write FLocalUserName;
    property LocalUserLokalizacja: string read FLocalUserLokalizacja write FLocalUserLokalizacja;
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

  { TAlerterForm }

  TAlerterForm = class(TForm)
    Label1: TLabel;
    lblLokalizacjaWezwania: TLabel;
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    valRand: integer;
  public

  end;

var
  AlerterForm: TAlerterForm;

implementation

{$R *.frm}

{ TAlerterForm }

procedure TAlerterForm.FormShow(Sender: TObject);
begin
  //PlaySound(PChar('raporty\Red Alert.wav'), 0, SND_ASYNC or SND_NODEFAULT);
  Randomize;
  valRand:= Random(100);
  mciSendString(PChar('close sound'+valRand.ToString),nil,0,0);
  mciSendString(PChar('open "' + 'raporty\Red Alert.wav' + '" type waveaudio alias sound'+valRand.ToString), nil, 0,0);
  mciSendString(PChar('play sound'+valRand.ToString), nil, 0, 0);
end;

procedure TAlerterForm.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  mciSendString(PChar('close sound1'+valRand.ToString),nil,0,0);
end;

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
  Client.Host:= RemoteIP;
  Client.Port:= 7777;
  try
    Client.Connect;
    try
      Client.IOHandler.WriteLn(Format('%s;%s;%s',['ALERT', LocalUserLokalizacja, LocalUserName]),  IndyTextEncoding_UTF8, IndyTextEncoding_UTF8);

      LLine := Client.IOHandler.ReadLn( IndyTextEncoding_UTF8, IndyTextEncoding_UTF8);
      if ( LLine <> '' ) then begin // odpowiedz serwera lokalizacja
         fStatusText:= Format('%s;%s',[LocalUserLokalizacja, LLine]); // lline = RemoteUserLokalizacja
         Synchronize(@Showstatus);
      end;

    finally
      Client.Disconnect;
      FreeAndNil(Client);
    end;
  except
    fStatusText:= Format('%s;%s',[LocalUserLokalizacja, 'Brak połączenia.']);
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
    KodAutoryzacji: string;
begin
  LLine := AContext.Connection.IOHandler.ReadLn(IndyTextEncoding_UTF8, IndyTextEncoding_UTF8);

  KodAutoryzacji:= Copy(LLine, 1, 5);
  if KodAutoryzacji<>'ALERT' then exit;

  //TThread.Queue(nil, @ShowAlert);
  //TThread.Synchronize(nil, @ShowAlert);

  // własna kolejka wątków
  with TShowAlertThread.Create(true) do
  begin
    fStatusText:= LLine;
    OnShowAlertStatus:= FOnShowAlertWindow;
    Start;
  end;

  AContext.Connection.IOHandler.WriteLn( FLocalUserLokalizacja,  IndyTextEncoding_UTF8, IndyTextEncoding_UTF8 );
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
      RemoteIP      := FListaOdbiorcow[i].Split([';'])[0];
      RemoteUserName:= FListaOdbiorcow[i].Split([';'])[1];

      LocalUserName := Self.LocalUserName;
      LocalUserLokalizacja:= Self.LocalUserLokalizacja;

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

class function TAlerter.GetLocalIP: string;
begin
  TIdStack.IncUsage;
  Result:= GStack.LocalAddress;
end;


end.

