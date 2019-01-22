unit UAlerter;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, dateutils, LCLType,
  StdCtrls, ComCtrls, ExtCtrls, LazUTF8, IdTCPServer, IdComponent,
  IdCustomTCPServer, IdContext, IdThread, IdGlobal, IdTCPClient, IdStack,
  MMSystem;

type
  TOdbiorca = record
    RemoteIP: string[15];
    RemoteUserLokalizacja: string[50];
  end;

  TListaOdbiorcow = array of TOdbiorca;

  TMyRecord = record
    Head      : string[10];  // 'ALARM' - nazwa unikatowa
    Kod       : integer;     // 0 - send, 200 - OK recive, 404 - błąd
    statusText: string[255]; // wiadomość
    RemoteIP             : string[15];
    RemoteUserLokalizacja: string[50];
    LocalUserName        : string[60];
    LocalUserLokalizacja : string[50];
    LocalUserTel         : string[10];
    SendTime             : TDateTime;
  end;

  TShowAlertStatusEvent = procedure(Status: TMyRecord) of Object;   //Status: String

  { TAlerter }

  TAlerter = class
  private
    IdTCPServer1: TIdTCPServer;
    FOnShowAlerterStatus: TShowAlertStatusEvent;
    FOnShowAlertWindow: TShowAlertStatusEvent;
//    FListaOdbiorcow: TStringList; // TODO: zmienić na record[ip, nazwa]
    FLocalUserName: string;      // pełna nazwa użytkownika
    FLocalUserLokalizacja: string;   // z bazy danych
    FLocalUserTel: string;       // z bazy danych
    function GetClientActive: Boolean;
    function GetSerwerActive: Boolean;
    procedure IdTCPServer1Execute(AContext: TIdContext);
    procedure SetSerwerActive(AValue: Boolean);
  public
    ListaOdbiorcow: TListaOdbiorcow;
    constructor Create;
    Destructor Destroy; override;
    procedure SendAlarm;
    procedure StartSerwer;
    class Function GetLocalIP: string;
//    property ListaOdbiorcow: TStringList read FListaOdbiorcow write FListaOdbiorcow;
    property OnShowAlerterStatus: TShowAlertStatusEvent read FOnShowAlerterStatus write FOnShowAlerterStatus;
    property OnShowAlertWindow: TShowAlertStatusEvent read FOnShowAlertWindow write FOnShowAlertWindow;
    property LocalUserName: string read FLocalUserName write FLocalUserName;
    property LocalUserLokalizacja: string read FLocalUserLokalizacja write FLocalUserLokalizacja;
    property LocalUserTel: string read FLocalUserTel write FLocalUserTel;
    property isSerwerActive: Boolean read GetSerwerActive write SetSerwerActive;
    property isClientActive: Boolean read GetClientActive;
  end;

  { TAlertThread }

  TAlertThread = class(TThread)
    Client: TIdTCPClient;
  private
    myRecord: TMyRecord;
//    fStatusText : string;
    FOnShowAlertStatus: TShowAlertStatusEvent;
    procedure ShowStatus;
  protected
    procedure Execute; override;
  public
    Constructor Create(CreateSuspended : boolean);
    Destructor Destroy; override;
    property OnShowAlertStatus: TShowAlertStatusEvent read FOnShowAlertStatus write FOnShowAlertStatus;
  end;

  { TShowAlertThread }

  TShowAlertThread = class(TThread)
  private
//    fStatusText : string;
    myRecord: TMyRecord;
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
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    lblLokalizacjaWezwania: TLabel;
    lblUserTel: TLabel;
    lblSendTime: TLabel;
    lblUserWezwania: TLabel;
    ProgressBar1: TProgressBar;
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    valRand: integer;
  public
    myRecord: TMyRecord;
  end;

function ByteArrayToMyRecord(ABuffer: TBytes): TMyRecord;
function MyRecordToByteArray(aRecord: TMyRecord): TBytes;
function ReceiveBuffer(AClient: TIdTCPClient; var ABuffer: TBytes): Boolean; overload;
function SendBuffer(AClient: TIdTCPClient; ABuffer: TBytes): Boolean; overload;
function ReceiveBuffer(AContext: TIdContext; var ABuffer: TBytes): Boolean; overload;
function SendBuffer(AContext: TIdContext; ABuffer: TBytes): Boolean; overload;

var
  AlerterForm: TAlerterForm;

const
  MYHEADKEY = 'ALARM';

implementation
{$R *.frm}

{ TAlerterForm }

procedure TAlerterForm.FormShow(Sender: TObject);
begin
  Caption                       := myRecord.LocalUserLokalizacja;
  lblLokalizacjaWezwania.Caption:= myRecord.LocalUserLokalizacja;
  lblUserWezwania.Caption       := myRecord.LocalUserName;
  lblSendTime.Caption           := TimeToStr( myRecord.SendTime);
  lblUserTel.Caption            := myRecord.LocalUserTel;
  //PlaySound(PChar('raporty\Red Alert.wav'), 0, SND_ASYNC or SND_NODEFAULT);
  Randomize;
  valRand:= Random(1000);
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
    FOnShowAlertStatus(myRecord);
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
    FOnShowAlertStatus(myRecord);
  end;
end;

procedure TAlertThread.Execute;
var LBuffer: TBytes;
  //LLine: string;
begin
  Client:= TIdTCPClient.Create;
  Client.Host:= myRecord.RemoteIP;
  Client.Port:= 7777;
  try
    Client.Connect;
    try
      LBuffer := MyRecordToByteArray(myRecord);

      // wysłanie wiadomości
      if (SendBuffer(Client, LBuffer) = False) then
      begin
        myRecord.Kod       := 404;
        myRecord.statusText:= 'Brak połączenia.';
        Synchronize(@Showstatus);
        Exit;
      end;

      // odebranie wiadomości
      if (ReceiveBuffer(Client, LBuffer) = False) then
      begin
        myRecord.Kod       := 404;
        myRecord.statusText:= 'Brak połączenia.';
        Synchronize(@Showstatus);
        Exit;
      end;

      myRecord := ByteArrayToMyRecord(LBuffer);
      if (myRecord.Kod = 200) then  // OK
      begin
        Synchronize(@Showstatus);
      end
      else
      begin
        myRecord.Kod       := 404;
        myRecord.statusText:= 'Brak połączenia.';
        Synchronize(@Showstatus);
        Exit;
      end;

      //Client.IOHandler.WriteLn(Format('%s;%s;%s',['ALERT', LocalUserLokalizacja, LocalUserName]),  IndyTextEncoding_UTF8, IndyTextEncoding_UTF8);
      //
      //LLine := Client.IOHandler.ReadLn( IndyTextEncoding_UTF8, IndyTextEncoding_UTF8);
      //if ( LLine <> '' ) then begin // odpowiedz serwera lokalizacja
      //   fStatusText:= Format('%s;%s',[LocalUserLokalizacja, LLine]); // lline = RemoteUserLokalizacja
      //   Synchronize(@Showstatus);
      //end;

    finally
      Client.Disconnect;
      FreeAndNil(Client);
    end;
  except
    myRecord.Kod       := 404;
    myRecord.statusText:= 'Brak połączenia.';
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
var LBuffer: TBytes;
    LmyRecord: TMyRecord;
    //LLine: string;
    //KodAutoryzacji: string;
begin
  if (ReceiveBuffer(AContext, LBuffer) = False ) then // nieudana próba odczytu bufora
  begin
    Exit;
  end;

  LmyRecord := ByteArrayToMyRecord(LBuffer);
     // sprawdzamy nagłówek wiadomości oraz jej kod
  if (LmyRecord.Head = MYHEADKEY)and(LmyRecord.Kod = 0) then
  begin
    // własna kolejka wątków, dzięki temu nie musimy robić Sekcji Krytycznej na LmyRecord
    with TShowAlertThread.Create(true) do
    begin
      myRecord:= LmyRecord;
      OnShowAlertStatus:= FOnShowAlertWindow;
      Start;
    end;
  end;

  // wysyłamy odpowiedź
  LmyRecord.Kod:= 200;
  LBuffer := MyRecordToByteArray(LmyRecord);
  if ( SendBuffer(AContext, LBuffer) = False ) then
  begin
    Exit;
  end;

  //LLine := AContext.Connection.IOHandler.ReadLn(IndyTextEncoding_UTF8, IndyTextEncoding_UTF8);
  //
  //KodAutoryzacji:= Copy(LLine, 1, 5);
  //if KodAutoryzacji<>'ALERT' then exit;
  //
  ////TThread.Queue(nil, @ShowAlert);
  ////TThread.Synchronize(nil, @ShowAlert);
  //
  //// własna kolejka wątków
  //with TShowAlertThread.Create(true) do
  //begin
  //  fStatusText:= LLine;
  //  OnShowAlertStatus:= FOnShowAlertWindow;
  //  Start;
  //end;
  //
  //AContext.Connection.IOHandler.WriteLn( FLocalUserLokalizacja,  IndyTextEncoding_UTF8, IndyTextEncoding_UTF8 );
end;

function TAlerter.GetSerwerActive: Boolean;
begin
  Result:= IdTCPServer1.Active;
end;

procedure TAlerter.SetSerwerActive(AValue: Boolean);
begin
  if IdTCPServer1.Active <> AValue then
     IdTCPServer1.Active:= AValue;
end;

constructor TAlerter.Create;
begin
  inherited Create;
  IdTCPServer1:= TIdTCPServer.Create;
end;

destructor TAlerter.Destroy;
begin
  FreeAndNil(IdTCPServer1);
  inherited Destroy;
end;

procedure TAlerter.StartSerwer;
begin
  IdTCPServer1.OnExecute:= @IdTCPServer1Execute;

  IdTCPServer1.Bindings.Clear;
  with IdTCPServer1.Bindings.Add do
  begin
    IP  := GStack.LocalAddress;
    Port:= 7777;
  end;
  IdTCPServer1.Active:= true;
end;

function TAlerter.GetClientActive: Boolean;
begin
//  Result:= (Assigned(ListaOdbiorcow))and(ListaOdbiorcow.Count>0);
  Result:= (Length(ListaOdbiorcow)>0);
end;

procedure TAlerter.SendAlarm;
var i: integer;
begin
  if not GetClientActive then exit;

  for i:=0 to Length(ListaOdbiorcow)-1 do
  begin
    With TAlertThread.Create(true) do
    begin
      myRecord.Head                 := MYHEADKEY;
      myRecord.Kod                  := 0; // send
      myRecord.RemoteIP             := ListaOdbiorcow[i].RemoteIP;
      myRecord.RemoteUserLokalizacja:= ListaOdbiorcow[i].RemoteUserLokalizacja;

      myRecord.LocalUserName        := Self.LocalUserName;
      myRecord.LocalUserLokalizacja := Self.LocalUserLokalizacja;
      myRecord.LocalUserTel         := Self.LocalUserTel;

      myRecord.SendTime:= Now();
      OnShowAlertStatus:= FOnShowAlerterStatus;
      Start;
    end;
  end;

  //for i:=0 to FListaOdbiorcow.Count-1 do
  //begin
  //  With TAlertThread.Create(true) do
  //  begin
  //    RemoteIP             := FListaOdbiorcow[i].Split([';'])[0];
  //    RemoteUserLokalizacja:= FListaOdbiorcow[i].Split([';'])[1];
  //
  //    LocalUserName := Self.LocalUserName;
  //    LocalUserLokalizacja:= Self.LocalUserLokalizacja;
  //
  //    OnShowAlertStatus:= FOnShowAlerterStatus;
  //    Start;
  //  end;
  //end;
end;

class function TAlerter.GetLocalIP: string;
begin
  TIdStack.IncUsage;
  Result:= GStack.LocalAddress;
end;

// funkcje pomocnicze dla MyRecord, jego wysyłanie i odbieranie

function MyRecordToByteArray(aRecord: TMyRecord): TBytes;
var LSource: PAnsiChar;
begin
  LSource := PAnsiChar(@aRecord);
  Result:= [];
  SetLength(Result, SizeOf(TMyRecord));
  Move(LSource[0], Result[0], SizeOf(TMyRecord));
end;

function ByteArrayToMyRecord(ABuffer: TBytes): TMyRecord;
var LDest: PAnsiChar;
begin
  LDest := PAnsiChar(@Result);
  Move(ABuffer[0], LDest[0], SizeOf(TMyRecord));
end;

function ReceiveBuffer(AClient: TIdTCPClient; var ABuffer: TBytes): Boolean;
var LSize: LongInt;
begin
  Result := True;
  try
    LSize := AClient.IOHandler.ReadInt32();
    AClient.IOHandler.ReadBytes(ABuffer, LSize, False);
  except
    Result := False;
  end;
end;

function SendBuffer(AClient: TIdTCPClient; ABuffer: TBytes): Boolean;
begin
  try
    Result := True;
    try
      AClient.IOHandler.Write(LongInt(Length(ABuffer)));
      AClient.IOHandler.WriteBufferOpen;
      AClient.IOHandler.Write(ABuffer, Length(ABuffer));
      AClient.IOHandler.WriteBufferFlush;
    finally
      AClient.IOHandler.WriteBufferClose;
    end;
  except
    Result := False;
  end;

end;

function SendBuffer(AContext: TIdContext; ABuffer: TBytes): Boolean;
begin
  try
    Result := True;
    try
      AContext.Connection.IOHandler.Write(LongInt(Length(ABuffer)));
      AContext.Connection.IOHandler.WriteBufferOpen;
      AContext.Connection.IOHandler.Write(ABuffer, Length(ABuffer));
      AContext.Connection.IOHandler.WriteBufferFlush;
    finally
      AContext.Connection.IOHandler.WriteBufferClose;
    end;
  except
    Result := False;
  end;
end;

function ReceiveBuffer(AContext: TIdContext; var ABuffer: TBytes): Boolean;
var LSize: LongInt;
begin
  Result := True;
  try
    LSize := AContext.Connection.IOHandler.ReadInt32();
    AContext.Connection.IOHandler.ReadBytes(ABuffer, LSize, False);
  except
    Result := False;
  end;
end;

end.

