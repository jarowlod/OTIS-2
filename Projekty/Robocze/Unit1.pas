unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ComCtrls,
  Menus, ExtCtrls, StdCtrls, ActnList, Clipbrd, dateutils, LCLType, LazUTF8,
  BCPanel, BCLabel, BCButton, BGRABitmap, BGRABitmapTypes, Math ;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnEdycja: TBCButton;
    btnDrukuj: TBCButton;
    BCLabel1: TBCLabel;
    BCLabel2: TBCLabel;
    lblDataZdj: TBCLabel;
    BCPanel2: TBCPanel;
    BCPanel3: TBCPanel;
    Image1: TImage;
    lblWiekZdj: TBCLabel;
    procedure FormCreate(Sender: TObject);
  private
    procedure YMDBetween(curD, oldD: TDateTime; out y, m, d: integer);
  public
    procedure WczytajZdj(pathFoto: string);
  end;
var
  Form1: TForm1;

implementation

{$R *.frm}


{ TForm1 }

procedure TForm1.YMDBetween(curD, oldD: TDateTime; out y,m,d: integer);
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

procedure TForm1.FormCreate(Sender: TObject);
begin
  WczytajZdj('E:\Projekty Lazarusa\Foto otis2\3088.jpg');
  left:=0;
  top:=0;
end;

procedure TForm1.WczytajZdj(pathFoto: string);
var dateFile: TDateTime;
    y,m,d: integer;
    yname, dname: ShortString;
begin
  Image1.Picture.LoadFromFile(pathFoto);

  if Image1.Picture.Width > Image1.Width then Width:= min(Screen.Width-15, ((Width-Image1.Width)+ Image1.Picture.Width));
  if Image1.Picture.Height > Image1.Height then Height:= min(Screen.Height-80, ((Height-Image1.Height)+ Image1.Picture.Height));

  btnEdycja.Enabled:= not FileIsReadOnly(pathFoto);  // prawo do edycji pliku

  dateFile:= FileDateToDateTime( FileAge(pathFoto));  //data zmodyfikowania
  lblDataZdj.Caption:= DateTimeToStr( dateFile );

  YMDBetween(Now, dateFile, y,m,d);
  if y=1 then yname:='rok' else
    if (y>1)and(y<5) then yname:= 'lata' else yname:='lat';
  if d=1 then dname:= 'dzień' else dname:= 'dni';
  lblWiekZdj.Caption:= Format('%d %s %d msc %d %s',[y,yname,m,d,dname]); // wiek pliku
end;

end.

