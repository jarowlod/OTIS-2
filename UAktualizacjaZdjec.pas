unit UAktualizacjaZdjec;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, Buttons, ComCtrls, datamodule;

type

  { TAktualizacjaZdjec }

  TAktualizacjaZdjec = class(TForm)
    btnZnajdz: TBitBtn;
    Image1: TImage;
    Memo1: TMemo;
    Memo2: TMemo;
    PageControl1: TPageControl;
    Panel1: TPanel;
    Panel2: TPanel;
    ProgressBar1: TProgressBar;
    StaticText1: TStaticText;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    procedure btnZnajdzClick(Sender: TObject);
  private
    procedure ZnajdzBraki;
  public

  end;

//var
//  AktualizacjaZdjec: TAktualizacjaZdjec;

implementation
uses dateutils;
{$R *.frm}

{ TAktualizacjaZdjec }

procedure TAktualizacjaZdjec.btnZnajdzClick(Sender: TObject);
begin
  ProgressBar1.Visible:= true;
  ZnajdzBraki;
  ProgressBar1.Visible:= false;
end;

procedure TAktualizacjaZdjec.ZnajdzBraki;
var i, j: integer;
    fileDate: TDateTime;
    fileMSC : integer;
    fileName: string;
    ZQPom: TZQueryPom;
begin
  ZQPom:= TZQueryPom.Create(Self);
  ZQPom.SQL.Text:= 'SELECT * FROM osadzeni';
  ZQPom.Open;
  ProgressBar1.Max:= ZQPom.RecordCount;

  i:=1;
  j:=1;
  Memo1.Clear;
  Memo1.Lines.Add('Start');

  Memo2.Clear;
  Memo2.Lines.Add('Start');

  while not ZQPom.EOF do
  begin
    fileName := DM.Path_Foto + ZQPom.FieldByName('IDO').AsString+'.jpg';
    if not FileExists( fileName ) then
    begin
       Memo1.Lines.Add(IntToStr(i)+': '+ZQPom.FieldByName('Nazwisko').AsString+' '+ZQPom.FieldByName('Imie').AsString+'   IDO: '+ ZQPom.FieldByName('IDO').AsString);
       inc(i);
    end

        else

    begin
      // sprawdzamy wiek zdjęcia po dacie
      fileDate := FileDateToDateTime( FileAge( fileName ));
      fileMSC := MonthsBetween( fileDate, ZQPom.FieldByName('PRZYJ').AsDateTime );
      //if fileMSC > 36 then
      if fileDate < ZQPom.FieldByName('PRZYJ').AsDateTime then
      begin
         Memo2.Lines.Add(IntToStr(j)+': ['+ IntToStr(fileMSC) +' msc] '+ ZQPom.FieldByName('Nazwisko').AsString+' '+ZQPom.FieldByName('Imie').AsString+'   IDO: '+ZQPom.FieldByName('IDO').AsString);
         inc(j);
      end;

    end;
    ZQPom.Next;
    ProgressBar1.Position:= ZQPom.RecNo;
    Application.ProcessMessages;
  end;
  ZQPom.Close;
  Memo1.Lines.Add('Koniec');
  Memo2.Lines.Add('Koniec');

  FreeAndNil(ZQPom);
end;

end.

