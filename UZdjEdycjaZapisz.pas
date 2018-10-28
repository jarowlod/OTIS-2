unit UZdjEdycjaZapisz;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, BCPanel, BCButton, BCLabel, Forms, Controls,
  Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TZdjEdycjaZapisz }

  TZdjEdycjaZapisz = class(TForm)
    BCLabel1: TBCLabel;
    BCLabel2: TBCLabel;
    BCPanel1: TBCPanel;
    BCPanel2: TBCPanel;
    BCPanel3: TBCPanel;
    btnZapiszDoOTIS2: TBCButton;
    btnZapiszDoOTIS3: TBCButton;
    imgSrc: TImage;
    imgDes: TImage;
    Label1: TLabel;
    procedure btnZapiszDoOTIS2Click(Sender: TObject);
    procedure btnZapiszDoOTIS3Click(Sender: TObject);
  private

  public
    procedure ShowFoto(src: TBitmap; desPath: string);
  end;

var
  ZdjEdycjaZapisz: TZdjEdycjaZapisz;

implementation

{$R *.frm}

{ TZdjEdycjaZapisz }

procedure TZdjEdycjaZapisz.btnZapiszDoOTIS3Click(Sender: TObject);
begin
  ModalResult:= mrCancel;
end;

procedure TZdjEdycjaZapisz.btnZapiszDoOTIS2Click(Sender: TObject);
begin
  ModalResult:= mrOK;
end;

procedure TZdjEdycjaZapisz.ShowFoto(src: TBitmap; desPath: string);
begin
  imgSrc.Picture.Bitmap.Assign(src);
  if FileExists(desPath) then imgDes.Picture.LoadFromFile(desPath);
end;

end.

