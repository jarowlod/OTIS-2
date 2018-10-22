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
    procedure YMDBetween(curD, oldD: TDateTime; out y, m, d: integer);
    procedure OnChangeZdjecie(Sender: TObject);
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
var dateFile: TDateTime;
    y,m,d: integer;
    yname, dname: ShortString;
begin
  if Image1.Picture.Width > Image1.Width then Width:= min(Screen.Width-15, ((Width-Image1.Width)+ Image1.Picture.Width));
  if Image1.Picture.Height > Image1.Height then Height:= min(Screen.Height-80, ((Height-Image1.Height)+ Image1.Picture.Height));

  btnEdycja.Enabled:= not FileIsReadOnly(pathFoto);  // prawo do edycji pliku

  dateFile:= FileDateToDateTime( FileAge(pathFoto));  //data zmodyfikowania
  lblDataZdj.Caption:= DateTimeToStr( dateFile );

  YMDBetween(Now, dateFile, y,m,d);
  if y=1 then yname:='rok' else
    if (y>1)and(y<5) then yname:= 'lata' else yname:='lat';
  if d=1 then dname:= 'dzień' else dname:= 'dni';
  lblWiekZdj.Caption:= Format('%d %s %d msc %d %s temu',[y,yname,m,d,dname]); // wiek pliku
  Image1.Invalidate;
end;

procedure TWidokZdjecia.YMDBetween(curD, oldD: TDateTime; out y,m,d: integer);
var y1,y2,m1,m2,d1,d2: integer;
begin
  y1:= YearOf(curD);
  m1:= MonthOf(curD);
  d1:= DayOf(curD);
  y2:= YearOf(oldD);
  m2:= MonthOf(oldD);
  d2:= DayOf(oldD);
  if d1<d2 then begin m1-= 1; d1+= DaysInAMonth(y1,m1); end;
  if m1<m2 then begin y1-= 1; m1+= 12; end;
  d:= d1-d2;
  m:= m1-m2;
  y:= y1-y2;
end;

end.

