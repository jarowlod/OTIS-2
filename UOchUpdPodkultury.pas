unit UOchUpdPodkultury;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, memds, db, FileUtil, Forms, Controls, Graphics, Dialogs,
  ExtCtrls, StdCtrls, Buttons, DBGrids, datamodule;

type

  { TOchUpdPodkultury }

  TOchUpdPodkultury = class(TForm)
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
    procedure AktualizacjaWykazuGR;
  public
    procedure AktualizacjaGR;
  end;

//var
//  OchUpdPodkultury: TOchUpdPodkultury;

const ID_WYKAZU_PODKULTURY = 8; // ID from DB katalog_wykazow;

implementation

{$R *.frm}

{ TOchUpdPodkultury }

procedure TOchUpdPodkultury.FormCreate(Sender: TObject);
begin
  Label2.Caption:='0';
  Label4.Caption:='0';
  Label6.Caption:='0';
  Label8.Caption:='0';
end;

procedure TOchUpdPodkultury.AktualizacjaGR;
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
    // Aktualizacja wykazu osadzonych grypsujących
    AktualizacjaWykazuGR;
    MessageDlg('Aktualizacja zakończona poprawnie.', mtInformation, [mbOK],0);
  finally
    FreeAndNil(ZQ);
    Screen.Cursor:= crDefault;
  end;
end;

procedure TOchUpdPodkultury.Memo1Change(Sender: TObject);
begin
  BitBtn1.Enabled:= (Memo1.Lines.Text <> '');
end;

procedure TOchUpdPodkultury.AktualizacjaWykazuGR;
var ZQPom: TZQueryPom;
begin
  try
    ZQPom:= TZQueryPom.Create(Self);
    ZQPom.SQL.Text:= 'DELETE FROM uwagi_wykazy WHERE (Kategoria = :idGR) AND (IDO NOT IN (SELECT IDO FROM os_info WHERE GR=1))';
    ZQPom.ParamByName('idGR').AsInteger:= ID_WYKAZU_PODKULTURY;
    ZQPom.ExecSQL;

    ZQPom.SQL.Text:= 'INSERT INTO uwagi_wykazy (IDO, Kategoria, data_dodania, user_dodania) '+
                       'SELECT IDO, :idGR, Now(), :usr FROM os_info WHERE (GR = 1) AND (IDO NOT IN (SELECT IDO FROM uwagi_wykazy WHERE Kategoria=:idGR))';
    ZQPom.ParamByName('idGR').AsInteger:= ID_WYKAZU_PODKULTURY;
    ZQPom.ParamByName('usr').AsString  := DM.PelnaNazwa;
    ZQPom.ExecSQL;

    DM.KomunikatPopUp(Self, 'Aktualizacja podkultury','Zaktualizowano WYKAZ osadzonych grypsujących.', nots_Info);
  finally
    FreeAndNil(ZQPom);
  end;
end;

procedure TOchUpdPodkultury.BitBtn1Click(Sender: TObject);
begin
  AktualizacjaGR;
end;

end.

