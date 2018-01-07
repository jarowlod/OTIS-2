unit UViewStolik;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, Menus, datamodule, BGRACustomDrawn,
  BGRAFlashProgressBar, windows;

type

  { TViewStolik }

  TViewStolik = class(TForm)
    ProgressBar1: TBGRAFlashProgressBar;
    Image1: TImage;
    lblCzas: TLabel;
    lblUwagi: TLabel;
    lblPodkultura: TLabel;
    lblPozostalo: TLabel;
    lblNazwiskoImie: TLabel;
    lblIDO: TLabel;
    miModyfikujWidzenie: TMenuItem;
    miOsadzony: TMenuItem;
    miKartaOchronna: TMenuItem;
    miCofnijDoPoczekalni: TMenuItem;
    miZatrzymajWidzenie: TMenuItem;
    miRozpocznijWidzenie: TMenuItem;
    miZakonczWidzenie: TMenuItem;
    Panel1: TPanel;
    PopupMenu1: TPopupMenu;
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure Image1DblClick(Sender: TObject);
    procedure miCofnijDoPoczekalniClick(Sender: TObject);
    procedure miKartaOchronnaClick(Sender: TObject);
    procedure miModyfikujWidzenieClick(Sender: TObject);
    procedure miOsadzonyClick(Sender: TObject);
    procedure miRozpocznijWidzenieClick(Sender: TObject);
    procedure miZakonczWidzenieClick(Sender: TObject);
    procedure miZatrzymajWidzenieClick(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    SelectIDO : integer;
    FNrStolika: integer;
    fID       : integer;
    fStart    : Boolean;
    fPozostalo: integer;
    fPostep   : integer;
    fCzas     : integer;
    fData_Widzenie: TDateTime;
    fData_Stolik  : TDateTime;

    procedure SetNrStolika(AValue: integer);
    procedure IncProgress;
    procedure UpdateProgress;
  public
    procedure SetIDO(ido: integer);   // TODO: do usunięcia
    // wczytuje dane z bazy po nr stolika i Etapie widzenia
    procedure WczytajDane;
    property NrStolika: integer read FNrStolika write SetNrStolika;
  end;

var
  ViewStolik: TViewStolik;

implementation
uses UOchSalaWidzen, UOchForm, UOchEdycja_Widz, dateutils;
{$R *.frm}

{ TViewStolik }

procedure TViewStolik.FormCreate(Sender: TObject);
begin
  SelectIDO:= -1;
end;

procedure TViewStolik.Image1DblClick(Sender: TObject);
var Obrazek: TForm;
    Img: TImage;
begin
    Obrazek:= TForm.Create(Self);
    Obrazek.BorderStyle:= bsSizeable;
    Obrazek.Caption:= lblNazwiskoImie.Caption;
      Img:= TImage.Create(Obrazek);
      img.AutoSize    := false;
      img.Parent      := Obrazek;
      img.Stretch     := true;
      img.Proportional:= true;
      img.Align       := alClient;
      img.Visible     := true;
      Img.Picture.Assign(Image1.Picture);
    Obrazek.Height:= Screen.WorkAreaHeight;

    if img.Picture.Width > (Screen.WorkAreaWidth div 2) then
      Obrazek.Width:= (Screen.WorkAreaWidth div 2)
    else
      Obrazek.Width:= img.Picture.Width;

    Obrazek.ShowModal;

    FreeAndNil(img);
    FreeAndNil(Obrazek);
end;

procedure TViewStolik.miCofnijDoPoczekalniClick(Sender: TObject);
var ZQPom: TZQueryPom;
begin
  if SelectIDO = 0 then exit;

  ZQPom:= TZQueryPom.Create(Self);
  ZQPom.SQL.Text:= 'UPDATE widzenia SET Etap=1, Data_Widzenie=NULL, Data_Stolik=NULL, Stolik=NULL WHERE ID=:id';
  ZQPom.ParamByName('id').AsInteger:= fID;
  ZQPom.ExecSQL;

  WczytajDane;
end;

procedure TViewStolik.miKartaOchronnaClick(Sender: TObject);
begin
  if SelectIDO = 0 then exit;
  with TOchForm.Create(Self) do
  begin
       SetIDO( SelectIDO );
       ShowModal;
       Free;
  end;
end;

procedure TViewStolik.miModyfikujWidzenieClick(Sender: TObject);
begin
  if SelectIDO = 0 then exit;

  with TOchEdycja_Widz.Create(Self) do
  begin
    SetID_Widzenia(fID);
    ShowModal;
    Free;
  end;

  OchSalaWidzen.PrzeladujWidzenia;
  //WczytajDane;
end;

procedure TViewStolik.miOsadzonyClick(Sender: TObject);
var ZQPom: TZQueryPom;
begin
  if SelectIDO <> 0 then exit;

  ZQPom:= TZQueryPom.Create(Self);
  ZQPom.SQL.Text:= 'UPDATE widzenia SET Etap=2, Data_Stolik=Now(), Nadzor=:nadzor, Stolik=:st WHERE ID=:id';
  ZQPom.ParamByName('id').AsInteger   := OchSalaWidzen.ZQWidzenia.FieldByName('ID').AsInteger;
  ZQPom.ParamByName('nadzor').AsString:= DM.PelnaNazwa;
  ZQPom.ParamByName('st').AsInteger   := NrStolika;
  ZQPom.ExecSQL;
  miOsadzony.Visible:= false;

  OchSalaWidzen.ZQWidzenia.Close;
  OchSalaWidzen.ZQWidzenia.Open;

  WczytajDane;
end;

procedure TViewStolik.miRozpocznijWidzenieClick(Sender: TObject);
var ZQPom: TZQueryPom;
begin
  if SelectIDO = 0 then exit;
  if fStart then exit;

  ZQPom:= TZQueryPom.Create(Self);
  ZQPom.SQL.Text:= 'UPDATE widzenia SET Data_Widzenie=:Now WHERE ID=:id';
  ZQPom.ParamByName('id').AsInteger:= fID;
  ZQPom.ParamByName('Now').AsDateTime:= Now();
  ZQPom.ExecSQL;

  WczytajDane;
end;

procedure TViewStolik.miZakonczWidzenieClick(Sender: TObject);
var ZQPom: TZQueryPom;
begin
  if SelectIDO = 0 then exit;
  if not fStart then exit;

  ZQPom:= TZQueryPom.Create(Self);
  ZQPom.SQL.Text:= 'UPDATE widzenia SET Etap=3 WHERE ID=:id';
  ZQPom.ParamByName('id').AsInteger:= fID;
  ZQPom.ExecSQL;

  WczytajDane;
end;

procedure TViewStolik.miZatrzymajWidzenieClick(Sender: TObject);
var ZQPom: TZQueryPom;
begin
  if SelectIDO = 0 then exit;
  if not fStart then exit;

  ZQPom:= TZQueryPom.Create(Self);
  ZQPom.SQL.Text:= 'UPDATE widzenia SET Data_Widzenie=NULL WHERE ID=:id';
  ZQPom.ParamByName('id').AsInteger:= fID;
  ZQPom.ExecSQL;

  WczytajDane;
end;

procedure TViewStolik.PopupMenu1Popup(Sender: TObject);
begin
  miZakonczWidzenie.Enabled    := (SelectIDO <> 0);    // enabled jeśli IDO > 0 czyli rozpoczete widzenie
  miRozpocznijWidzenie.Enabled := ( (SelectIDO <> 0) AND not(fStart) );      // enabled jeśli Start = false czyli widzenie nie rozpoczete
  miModyfikujWidzenie.Enabled  := (SelectIDO <> 0);
  miKartaOchronna.Enabled      := (SelectIDO <> 0);    // widzenie rozpoczęte
  miZatrzymajWidzenie.Enabled  := (fStart);
  miCofnijDoPoczekalni.Enabled := (SelectIDO <> 0);

  miOsadzony.Enabled           := (SelectIDO = 0)and(not OchSalaWidzen.ZQWidzenia.IsEmpty);
  miOsadzony.Visible           := miOsadzony.Enabled;
  if miOsadzony.Enabled then miOsadzony.Caption:= OchSalaWidzen.ZQWidzenia.FieldByName('Nazwisko').AsString+' '+OchSalaWidzen.ZQWidzenia.FieldByName('Imie').AsString;
end;

procedure TViewStolik.Timer1Timer(Sender: TObject);
begin
  IncProgress;
end;

procedure TViewStolik.SetNrStolika(AValue: integer);
begin
  if FNrStolika= AValue then Exit;
  FNrStolika:= AValue;
end;

procedure TViewStolik.IncProgress;
begin
  if fStart then
  begin
    fPozostalo:= fCzas - MinutesBetween(Now(), fData_Widzenie);
    fPostep   := SecondsBetween(Now(), fData_Widzenie);

    UpdateProgress;
  end;
end;

procedure TViewStolik.UpdateProgress;
begin
  lblPozostalo.Caption:= 'Pozostało: ' + IntToStr(fPozostalo)+' min';

  ProgressBar1.Color:= clLime;
  if fPostep >= ProgressBar1.MaxValue-600 then  // (10min*60sek) przed koncem zmiana koloru
  begin
    ProgressBar1.Color:= clRed;
  end;

  if fPostep > ProgressBar1.MaxValue then
  begin
    fPostep:= ProgressBar1.MaxValue;
    ProgressBar1.Color:= clFuchsia; // jesli koniec to zmiana koloru
  end;

  ProgressBar1.Value:= fPostep;

  // SYGNAL DZWIEKOWY
  if (fPostep >= (ProgressBar1.MaxValue - 20)) and (fPostep < ProgressBar1.MaxValue) then
  begin
    MessageBeep(1);
  end;
end;

procedure TViewStolik.SetIDO(ido: integer);
begin
  if SelectIDO = ido then exit;
  SelectIDO:= ido;

  if SelectIDO = 0 then
  begin
    lblIDO.Caption:= 'Nr stolika: '+IntToStr(NrStolika);
    Image1.Picture.Clear;
    TLoadFotoThread.Create(DM.Path_NrStolikow+IntToStr(NrStolika)+'.jpg', Image1 );
    exit;
  end;

  TLoadFotoThread.Create(DM.Path_Foto+IntToStr(SelectIDO)+'.jpg', Image1 );
  //WczytajDane;
end;

procedure TViewStolik.WczytajDane;
var ZQPom: TZQueryPom;
begin
  ZQPom:= TZQueryPom.Create(Self);
  ZQPom.SQL.Text:='SELECT w.*, o.Nazwisko, o.Imie, o.POC, o.Klasyf, t.Grypsuje, t.Ochronka, u.IDO IDO_u, uk.IDO IDO_uk '+
                  'FROM widzenia w, osadzeni o LEFT JOIN typ_cel t ON (o.POC=t.POC) '+
                  'LEFT JOIN uwagi u ON ((u.Uwagi<>"") AND (u.IDO=o.IDO)) '+
                  'LEFT JOIN uwagi_kierownika uk ON ((uk.Uwagi<>"") AND (uk.IDO=o.IDO)) '+
                  'WHERE (w.Stolik=:stolik)AND(w.Etap=2)AND(w.IDO=o.IDO) LIMIT 1';
  ZQPom.ParamByName('stolik').AsInteger:= NrStolika;
  ZQPom.Open;

  if ZQPom.IsEmpty then
    begin
      SelectIDO:= 0;
      fStart   := false;
      Image1.Picture.Clear;
      TLoadFotoThread.Create(DM.Path_NrStolikow+IntToStr(NrStolika)+'.jpg', Image1 );
      // czyścimy lbl'e
      lblIDO.Caption          := '';
      lblNazwiskoImie.Caption := '';
      lblPozostalo.Caption    := '';
      lblCzas.Caption         := '';
      lblPodkultura.Caption   := '';
      lblUwagi.Caption        := '';
      ProgressBar1.Visible    := false;
    end
  else
    begin
      // TODO: wczytujemy dane do stolika
         // zmieniamy zdjęcie tylko jeśli zmieni się IDO
      if SelectIDO <> ZQPom.FieldByName('IDO').AsInteger then
        begin
          SelectIDO:= ZQPom.FieldByName('IDO').AsInteger;
          TLoadFotoThread.Create(DM.Path_Foto+IntToStr(SelectIDO)+'.jpg', Image1 );
        end;

      fID         := ZQPom.FieldByName('ID').AsInteger;
      fCzas       := ZQPom.FieldByName('Czas_widzenia').AsInteger;
      fData_Stolik:= ZQPom.FieldByName('Data_Stolik').AsDateTime;

      lblIDO.Caption:= IntToStr(SelectIDO);
      lblNazwiskoImie.Caption:= ZQPom.FieldByName('Nazwisko').AsString+' '+ZQPom.FieldByName('Imie').AsString;
      if ZQPom.FieldByName('Ochronka').AsInteger=1 then lblPodkultura.Caption:= 'Ochronka';
      if (not ZQPom.FieldByName('IDO_u').IsNull) or (not ZQPom.FieldByName('IDO_uk').IsNull) then lblUwagi.Caption:= 'Uwagi !';

      // czeka przy stoliku
      if ZQPom.FieldByName('Data_Widzenie').IsNull then
        begin
          fPozostalo:= fCzas;
          fPostep   := 0;
          fStart    := false;

          lblPozostalo.Caption:= '';
          ProgressBar1.Visible:= false;
        end
      else
        begin
          fData_Widzenie:= ZQPom.FieldByName('Data_Widzenie').AsDateTime;
          fPozostalo    := fCzas - MinutesBetween(Now(), fData_Widzenie);
          fPostep       := SecondsBetween(Now(), fData_Widzenie);
          fStart        := true;

          lblPozostalo.Caption:= 'Pozostało: '+IntToStr(fPozostalo)+' min';
          ProgressBar1.Visible:= true;
          // podajemy w sekundach
          ProgressBar1.MaxValue:= fCzas*60;
          UpdateProgress;
        end;

      lblCzas.Caption:= 'Czas: '+IntToStr(fCzas)+' min';
    end;

  // zaczynamy odliczanie jeśli fStart jest True
  Timer1.Enabled := fStart;

  FreeAndNil(ZQPom);
end;


end.
