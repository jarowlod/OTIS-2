unit UWidokZdjecia;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ComCtrls,
  Menus, ExtCtrls, StdCtrls, ActnList, Clipbrd, dateutils, LCLType, LazUTF8,
  BCPanel, BCLabel, BCButton, BGRABitmap, BGRABitmapTypes, Math, datamodule;

type

  { TWidokZdjecia }

  TWidokZdjecia = class(TForm)
    btnEdycja: TBCButton;
    btnDrukuj: TBCButton;
    BCLabel1: TBCLabel;
    lblDataZdj: TBCLabel;
    BCPanel2: TBCPanel;
    BCPanel3: TBCPanel;
    Image1: TImage;
    lblWiekZdj: TBCLabel;
  private
    SelectIDO: integer;
    pathFoto: string;
    procedure OnChangeZdjecie(Sender: TObject);
    procedure WiekZdjecia;
  public
    Constructor CreateForm(AOwner: TComponent; ido: integer);
  end;


implementation

{$R *.frm}


{ TWidokZdjecia }

constructor TWidokZdjecia.CreateForm(AOwner: TComponent; ido: integer);
begin
  inherited Create(AOwner);
  SelectIDO:= ido;
  pathFoto:= DM.Path_Foto + IntToStr( SelectIDO )+'.jpg';

  left:=0;
  top:=0;
  btnEdycja.Enabled:= false;
  btnDrukuj.Enabled:= false;
  lblDataZdj.Caption:= '';
  lblWiekZdj.Caption:= '';

  Image1.Picture.OnChange:= @OnChangeZdjecie;
  TLoadFotoThread.Create( pathFoto, Image1);
end;

procedure TWidokZdjecia.OnChangeZdjecie(Sender: TObject);
begin
  if Image1.Picture.Width > Image1.Width then Width:= min(Screen.Width-15, ((Width-Image1.Width)+ Image1.Picture.Width));
  if Image1.Picture.Height > Image1.Height then Height:= min(Screen.Height-80, ((Height-Image1.Height)+ Image1.Picture.Height));

  if not FileExists(pathFoto) then
    begin
      lblDataZdj.Caption:= 'Brak zdjęcia osadzonego.';
      if FileExists(DM.Path_Foto + 'kotek.jpg') then // plik testowy do sprawdzenia możliwości edycji
         btnEdycja.Enabled:= not FileIsReadOnly(DM.Path_Foto + 'kotek.jpg');  // prawo do edycji pliku [plik testowy kotek.jpg] jest wymagany do sprawdzenia możliwości edycji w katalogu zdjęć
      exit;
    end;

  btnEdycja.Enabled:= not FileIsReadOnly(pathFoto);  // prawo do edycji pliku

  WiekZdjecia;
  Image1.Invalidate;
end;

procedure TWidokZdjecia.WiekZdjecia;
var dateFile: TDateTime;
    y, m, d : Word;
    yname, dname: String;
    slownie: string;
begin
  dateFile:= FileDateToDateTime( FileAge(pathFoto));  //data zmodyfikowania
  lblDataZdj.Caption:= DateTimeToStr( dateFile );

  PeriodBetween(Date, dateFile, y,m,d);

  slownie:= '';
  if (d=0)and(m=0) then
    slownie:= Format('Nowe', [y])
  else
    begin
      if y>0 then
      begin
        if y<20 then
        case y of
          1:     yname:='rok';
          2,3,4: yname:='lata';
          else   yname:='lat';
        end else
        case (y mod 10) of
          0,1,5,6,7,8,9: yname:='lat';
          2,3,4        : yname:='lata';
        end;
        slownie:= Format('%d %s',[y,yname]);
      end;

      if m>0 then slownie+= Format(' %d msc',[m]);

      if d>0 then
       begin
         if d=1 then dname:= 'dzień' else dname:= 'dni';
         slownie+= Format(' %d %s',[d,dname]);
       end;
     end;
  lblWiekZdj.Caption:= slownie;
end;

end.

