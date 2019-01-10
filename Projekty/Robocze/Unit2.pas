unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, mmsystem;

type

  { TForm2 }

  TForm2 = class(TForm)
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    val: integer;
  public

  end;

implementation

{$R *.frm}

{ TForm2 }

procedure TForm2.FormShow(Sender: TObject);
begin
  // sndPlaySound(PChar('Red Alert.wav'), snd_Async or snd_NoDefault);
  Randomize;
  val:= Random(100);
  mciSendString(PChar('close sound1'+val.ToString),nil,0,0);
  mciSendString(PChar('open "' + 'Red Alert.wav' + '" type waveaudio alias sound1'+val.ToString), nil, 0,0);
  mciSendString(PChar('play sound1'+val.ToString), nil, 0, 0);
end;

procedure TForm2.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  mciSendString(PChar('close sound1'+val.ToString),nil,0,0);
end;

end.

