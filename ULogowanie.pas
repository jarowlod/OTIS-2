unit ULogowanie;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms,
  Controls, Graphics, Dialogs, Buttons, StdCtrls, ExtCtrls, Windows;

type

  { TLogowanie }

  TLogowanie = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Panel1: TPanel;
    Timer1: TTimer;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
    Function fGetUserName: string;
    Procedure Logowanie;
  end;

var
  Logowanie: TLogowanie;

implementation
uses datamodule;

{$R *.frm}

procedure TLogowanie.FormCreate(Sender: TObject);
begin
  DM.ZConnection1.Disconnect;
  Label3.Caption:= 'Wersja: '+ wersja;

  if DM.autologin then
    begin
      if ParamCount = 2 then // dwa parametry login i hasło
        begin // logowanie automatyczne
          Edit1.Text:= ParamStr(1);
          Edit2.Text:= ParamStr(2);
          Timer1.Enabled:= true; // uruchamiam logowanie z opuznieniem
        end
      else
        begin // normalne logowanie
           if ParamCount = 1 then Edit1.Text:= ParamStr(1) // w jednym parametrze można przemycić login
              else Edit1.Text:= fGetUserName;  // login

           Edit2.Text:='';            // hasło
        end;
    end
  else
    begin    // autologin is false dla Reconnect
       Edit1.Text:= DM.ZConnection1.User;
       Edit2.Text:= DM.ZConnection1.Password;
    end;
end;

procedure TLogowanie.BitBtn2Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TLogowanie.BitBtn1Click(Sender: TObject);
begin
  Logowanie;
end;

procedure TLogowanie.FormShow(Sender: TObject);
begin
  Edit2.SetFocus;
end;

procedure TLogowanie.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled:= False;
  Logowanie;
end;

function TLogowanie.fGetUserName: string;
    var SLogin  : string='';
        buffsize: dword;
begin
    buffsize:=128;
    SetLength(SLogin, buffsize);
    GetUserName(PChar(SLogin), buffsize);
    Result:= SLogin;
end;

Procedure TLogowanie.Logowanie;
begin
    DM.ZConnection1.User     := Edit1.Text;
    DM.ZConnection1.Password := Edit2.Text;
    DM.login                 := Edit1.Text;
    DM.haslo                 := Edit2.Text;

    try
      DM.ZConnection1.Connect;
    except
      ShowMessage('Brak połączenia z serwerem lub Błędny login, hasło.');
      exit;
    end;

    if  DM.Aktualizacja then ModalResult:= mrCancel
                        else ModalResult:= mrOK;
end;

end.

