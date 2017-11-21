unit UPenitWydarzenia;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, Calendar, datamodule, dateutils;

type

  { TPenitWydarzenia }

  TPenitWydarzenia = class(TForm)
    btnPrzemieszczenia: TButton;
    Calendar1: TCalendar;
    Image1: TImage;
    Label1: TLabel;
    Memo1: TMemo;
    Panel5: TPanel;
    procedure btnPrzemieszczeniaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

  public

  end;

var
  PenitWydarzenia: TPenitWydarzenia;

implementation

{$R *.lfm}

{ TPenitWydarzenia }

procedure TPenitWydarzenia.FormShow(Sender: TObject);
begin
  if DateOf(DM.LastLogin) = DateOf(Date) then Calendar1.DateTime:= IncDay( DM.LastLogin, -3)
                                         else Calendar1.DateTime:= DM.LastLogin;
end;

procedure TPenitWydarzenia.btnPrzemieszczeniaClick(Sender: TObject);
var ZQ: TZQueryPom;   // odczyt wydarzeń
    ZQC: TZQueryPom;  // odczyt numerów cel danego wychowawcy
    cele: array[1..100] of string[10]; // ograniczenie do 100 cel !!!!
    i_cel: integer;   // ilość cel wychowawcy
    i,m    : integer;
    memo : TStringList;
begin
   memo:=TStringList.Create;
   memo.Clear;

   ZQC:=TZQueryPom.Create(Self);
   if (DM.Wychowawca='paw.A')or(DM.Wychowawca='paw.B') then
   begin
      ZQC.SQL.Text:='SELECT POC, Wychowawca FROM typ_cel WHERE POC LIKE :poc';
      if DM.Wychowawca='paw.A' then ZQC.ParamByName('POC').AsString:='A%'
                               else ZQC.ParamByName('POC').AsString:='B%';
   end else
   begin
      ZQC.SQL.Text:='SELECT POC, Wychowawca FROM typ_cel WHERE Wychowawca = :wych';
      ZQC.ParamByName('wych').AsString:= DM.Wychowawca;
   end;

   ZQC.Open;
   i_cel:=0;
   while (not ZQC.Eof)and(i_cel<100) do  // uwaga na ograniczenie do 100 cel !!!!
   begin
       inc(i_cel);
       cele[i_cel]:=ZQC.FieldByName('POC').AsString+' ';
       // dodaje spacje aby zróżnicować cele jednocyfrowe
       // nazwę celi zamyka spacja
       ZQC.Next;
   end;
   ZQC.Close;
   ZQC.Free;
   if i_cel=0 then exit; // jeśli nie ma cel to przerywamy

   Memo1.Lines.Add('------ ZMIANY W CELACH ------');
   ZQ:=TZQueryPom.Create(Self);
   ZQ.SQL.Text:= 'SELECT ID, Dodano, Opis '+
                 'FROM synchro '+
                 'WHERE Dodano >= :data_od';
   ZQ.ParamByName('data_od').AsDate:= Calendar1.DateTime;
   ZQ.Open;

   while not ZQ.Eof do
   begin
       memo.Clear;
       if not ZQ.FieldByName('Opis').IsNull then
          memo.Text:= ZQ.FieldByName('Opis').AsString;

       if memo.Text<>'' then
          for m:=0 to memo.Count-1 do
            for i:=1 to i_cel do
            begin
                // szuka nazwy celi w ciągu znaków (zakończonych spacją)
                if Pos(cele[i],memo[m]+' ')<>0 then
                begin
                   Memo1.Lines.Add(ZQ.FieldByName('Dodano').AsString+' '+memo[m]);
                   Break;
                   // jeśli znajdzie w danym wierszu, naszego osadzonego to można pominąć
                   // dalsze szukanie kolejnych cel, unikamy ponownego dodania celi do wyników.
                end;
            end;
       ZQ.Next;
   end;


   memo.Free;
   ZQ.Close;
   ZQ.Free;
end;

end.

