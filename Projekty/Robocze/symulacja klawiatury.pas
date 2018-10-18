unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs,
  ComCtrls, Menus, windows, ExtCtrls, StdCtrls, ActnList,
  Clipbrd, dateutils, LCLType, Messages, LazUTF8;

type

  { TForm1 }

  TForm1 = class(TForm)
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    ClipbrdSaveText: string;
    hotkey_n, hotkey_p: ATOM;
    procedure PressCtrlV(PclickInfo: PtrInt);
  public
    procedure wm_HOTKEY(var Msg:TMessage);message WM_HOTKEY; // funkcja skrótu globalnego
  end;
var
  Form1: TForm1;

implementation

{$R *.frm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
  ClipbrdSaveText:= clipboard.asText;
  hotkey_n:= GlobalAddAtom('moje_n');
  hotkey_p:= GlobalAddAtom('moje_p');;
  RegisterHotKey(Handle, hotkey_n, MOD_CONTROL, VK_N);
  RegisterHotKey(Handle, hotkey_p, MOD_CONTROL, VK_P);
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  UnRegisterHotKey(Handle, hotkey_n);
  UnRegisterHotKey(Handle, hotkey_p);
  GlobalDeleteAtom(hotkey_n);
  GlobalDeleteAtom(hotkey_p);
end;

procedure TForm1.PressCtrlV(PclickInfo: PtrInt);
var i: Integer;
    str: string;
    s: char;
    pl: Boolean;

    Function isCharPL(ch: string; var out_ch: char): Boolean;
    var i : Integer;
        s_pl : string = 'ąĄćĆęĘłŁńŃóÓśŚźŹżŻ';
        s_asc: string = 'aAcCeElLnNoOsSzZzZ';
    begin
      result:= false;
      out_ch:= ch[1];
      i:= UTF8Pos(ch,s_pl);
      if i>0 then begin
         out_ch:= s_asc[i];
         result:=true;
      end;
    end;

begin
   // zwalniamy CTRL
   keybd_event(VK_CONTROL, MapVirtualKey(VK_CONTROL, 0), KEYEVENTF_KEYUP, 0);
   str:= 'Jarek ZCVX ąĄćĆźŹńŃłŁóÓęĘśŚ.';

   for i:=1 to Utf8Length(str) do
     begin
          // jeśli polska litera to wciskamy ALT i zmieniamy literę na ascii
          pl:= false;
          if isCharPL(UTF8Copy(str,i,1), s) then
          begin
          //   keybd_event(VK_CONTROL, MapVirtualKey(VK_CONTROL, 0), 0, 0);
             pl:= true;
             keybd_event(VK_RMENU, 0, 0, 0);
          end;
          // jeśli duża litera to wciskamy SHIFT
          if (s in ['A'..'Z']) then keybd_event(VK_SHIFT, MapVirtualKey(VK_SHIFT, 0), 0, 0);

          // wciskamy literę
          keybd_event(VkKeyScan(s), 0, 0, 0);
          keybd_event(VkKeyScan(s), 0, KEYEVENTF_KEYUP, 0);

          // zwalniamy SHIFT jeśli duża litera
          if (s in ['A'..'Z']) then keybd_event(VK_SHIFT, MapVirtualKey(VK_SHIFT, 0), KEYEVENTF_KEYUP, 0);
          // zwalniamy ALT jeśli PL
          if pl then
          begin
             keybd_event(VK_RMENU, 0, KEYEVENTF_KEYUP, 0);
           //  keybd_event(VK_CONTROL, MapVirtualKey(VK_CONTROL, 0), KEYEVENTF_KEYUP, 0);
          end;
     end;
   // wciskamy CTRL tak jak było na początku
   keybd_event(VK_CONTROL, MapVirtualKey(VK_CONTROL, 0), 0, 0);
end;

procedure TForm1.wm_HOTKEY(var Msg: TMessage);
begin
  if Msg.WParam = hotkey_n then
  begin
    //Application.QueueAsyncCall(@PressCtrlV, 1);
     PressCtrlV(1);
  //   WaitMessage;
  end else
  if Msg.WParam = hotkey_p then
  begin
     if ClipbrdSaveText='' then ClipbrdSaveText:= Clipboard.AsText;
     Clipboard.AsText := 'Podpis';
     //PressCtrlV;
  end;
end;

end.

