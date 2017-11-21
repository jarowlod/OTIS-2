unit UUpdPodkultury;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, memds, db, FileUtil, Forms, Controls, Graphics, Dialogs,
  ExtCtrls, StdCtrls, Buttons, DBGrids, datamodule;

type

  { TUpdPodkultury }

  TUpdPodkultury = class(TForm)
    BitBtn1: TBitBtn;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    MemPodkultura: TMemDataset;
    Memo1: TMemo;
    Panel1: TPanel;
    Panel2: TPanel;
    StaticText1: TStaticText;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
  private

  public
    procedure AktualizacjaGR;
  end;

var
  UpdPodkultury: TUpdPodkultury;

implementation

{$R *.lfm}

{ TUpdPodkultury }

procedure TUpdPodkultury.FormCreate(Sender: TObject);
begin
  Label2.Caption:='0';
  Label4.Caption:='0';
  Label6.Caption:='0';
  Label8.Caption:='0';
end;

procedure TUpdPodkultury.AktualizacjaGR;
var i : integer;
  ido : string;
  p1  : integer;
  ZQ  : TZQueryPom;
  iupd: integer;
begin
  Screen.Cursor:= crHourGlass;
  try
    // zaczynamy od wiersza 1 bo 0 jest nagłówek
    for i:=1 to Memo1.Lines.Count-1 do
    begin
      Application.ProcessMessages;

      p1 := Pos(' ',Memo1.Lines.Strings[i]);
      ido:= Copy(Memo1.Lines.Strings[i] , 1, p1-1);

      MemPodkultura.Append;
      MemPodkultura.FieldByName('IDO').AsInteger:= StrToIntDef(ido, 0);
      MemPodkultura.FieldByName('GR').AsInteger:= 1;
      MemPodkultura.Post;

      Label2.Caption:= IntToStr(i);
    end;
  finally
    Screen.Cursor:= crDefault;
  end;
  Memo1.Clear;

  // SPRAWDZAMY co mamy w bazie
  Screen.Cursor:= crHourGlass;
  try
    ZQ:= TZQueryPom.Create(Self);
    ZQ.SQL.Text:= 'SELECT IDO, GR FROM os_info WHERE IDO in (SELECT IDO FROM osadzeni)';
    ZQ.Open;
    iupd:= 0; // zmodyfikowano pozycji
    if not ZQ.IsEmpty then
      while not ZQ.EOF do
      begin
        Application.ProcessMessages;
        Label4.Caption:= IntToStr( ZQ.RecNo );
        ZQ.FieldByName('IDO').AsInteger;
        if MemPodkultura.Locate('IDO', ZQ.FieldByName('IDO').AsInteger, []) then
          begin
            if (ZQ.FieldByName('GR').IsNull) or (ZQ.FieldByName('GR').AsInteger = 0) then
              begin
                ZQ.Edit;
                ZQ.FieldByName('GR').AsInteger:= 1; // Grypsuje
                ZQ.Post;
                inc(iupd);
              end;
            MemPodkultura.Delete; // jak już dopisane to można usunąć
          end
        else
          begin
            if (ZQ.FieldByName('GR').IsNull) or (ZQ.FieldByName('GR').AsInteger = 1) then
              begin
                ZQ.Edit;
                ZQ.FieldByName('GR').AsInteger:= 0; // NIE Grypsuje
                ZQ.Post;
                inc(iupd);
              end;
          end;
        Label8.Caption:= IntToStr( iupd );
        ZQ.Next;
      end;

    // Dopisujemy do os_info to co zostało w MemPodkultura
    while not MemPodkultura.IsEmpty do
    begin
      Application.ProcessMessages;
      Label6.Caption:= IntToStr( MemPodkultura.RecNo );
      ZQ.Append;
      ZQ.FieldByName('IDO').AsInteger:= MemPodkultura.FieldByName('IDO').AsInteger;
      ZQ.FieldByName('GR').AsInteger:= 1; // jeśli dodajemy to tylko GR, jak nie był nigdy GR to może pozostać Null, jak był a się zmieniło to zmodyfikowano powyżej
      ZQ.Post;
      MemPodkultura.Delete;
    end;

    // dodajemy os_info dla osadzonych niegrypsujących
    ZQ.SQL.Text:= 'INSERT INTO os_info (IDO, GR) SELECT IDO, 0 FROM osadzeni WHERE IDO not in (SELECT IDO FROM os_info)';
    ZQ.ExecSQL;
    //---
  finally
    ZQ.Free;
    Screen.Cursor:= crDefault;
    MessageDlg('Aktualizacja zakończona poprawnie.', mtInformation, [mbOK],0);
  end;
end;

procedure TUpdPodkultury.Memo1Change(Sender: TObject);
begin
  BitBtn1.Enabled:= (Memo1.Lines.Text <> '');
end;

procedure TUpdPodkultury.BitBtn1Click(Sender: TObject);
begin
  AktualizacjaGR;
end;

end.

