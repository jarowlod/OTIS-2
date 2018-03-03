unit UViewStolik;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, Menus, BGRACustomDrawn, BGRAFlashProgressBar, BCPanel, windows, Buttons,
  datamodule;

type

  { TViewStolik }

  TViewStolik = class(TForm)
    BCPrzyslona: TBCPanel;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    ProgressBar1: TBGRAFlashProgressBar;
    Image1: TImage;
    lblCzas: TLabel;
    lblPodkultura: TLabel;
    lblPozostalo: TLabel;
    lblNazwiskoImie: TLabel;
    lblPOC: TLabel;
    miModyfikujWidzenie: TMenuItem;
    miOsadzony: TMenuItem;
    miKartaOchronna: TMenuItem;
    miCofnijDoPoczekalni: TMenuItem;
    miZatrzymajWidzenie: TMenuItem;
    miRozpocznijWidzenie: TMenuItem;
    miZakonczWidzenie: TMenuItem;
    Panel1: TPanel;
    PopupMenu1: TPopupMenu;
    sbnWykazy: TSpeedButton;
    sbnUwagi: TSpeedButton;
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure FormMouseEnter(Sender: TObject);
    procedure FormMouseLeave(Sender: TObject);
    procedure Image1DblClick(Sender: TObject);
    procedure miCofnijDoPoczekalniClick(Sender: TObject);
    procedure miKartaOchronnaClick(Sender: TObject);
    procedure miModyfikujWidzenieClick(Sender: TObject);
    procedure miOsadzonyClick(Sender: TObject);
    procedure miRozpocznijWidzenieClick(Sender: TObject);
    procedure miZakonczWidzenieClick(Sender: TObject);
    procedure miZatrzymajWidzenieClick(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure sbnWykazyClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure CMMouseEnter(var Msg: TMessage); message CM_MOUSEENTER;
    procedure CMMouseLeave(var Msg: TMessage); message CM_MOUSELEAVE;
  private
    FPopupMenuVisible: Boolean;
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
    procedure SetPopupMenuVisible(AValue: Boolean);
    procedure UpdateProgress;
    procedure JednorazoweOdbierzPrawo(ID_widzenia: integer);
  public
    // wczytuje dane z bazy po nr stolika i Etapie widzenia
    procedure WczytajDane;
    property NrStolika: integer read FNrStolika write SetNrStolika;
    property PopupMenuVisible: Boolean read FPopupMenuVisible write SetPopupMenuVisible;
  end;

var
  ViewStolik: TViewStolik;

implementation
uses UOchSalaWidzen, UOchForm, dateutils, rxdbutils, UOchAddWidzenie;
{$R *.frm}

{ TViewStolik }

procedure TViewStolik.FormCreate(Sender: TObject);
begin
  SelectIDO:= 0;
  FPopupMenuVisible:= True;
  // czyścimy lbl'e
  lblPOC.Caption          := '';
  lblNazwiskoImie.Caption := '';
  lblPozostalo.Caption    := '';
  lblCzas.Caption         := '';
  lblPodkultura.Caption   := '';
  sbnUwagi.Visible        := false;
  sbnWykazy.Visible       := false;
  ProgressBar1.Visible    := false;
  BCPrzyslona.BoundsRect:= Bounds(0,0, Width, Height);
end;

procedure TViewStolik.FormMouseEnter(Sender: TObject);
begin
  OchSalaWidzen.CienStolika(true, NrStolika);
end;

procedure TViewStolik.FormMouseLeave(Sender: TObject);
begin
  OchSalaWidzen.CienStolika(false, NrStolika);
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

  RefreshQuery(OchSalaWidzen.ZQWidzenia);
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

  with TOchAddWidzenie.Create(Self) do
  begin
       Modyfikuj( fID, SelectIDO );
       if ShowModal = mrOK then
         begin
           OchSalaWidzen.PrzeladujWidzenia;
         end;
       Free;
  end;
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

  JednorazoweOdbierzPrawo(fID);

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
  if miOsadzony.Enabled then
    begin
      miOsadzony.Caption:= OchSalaWidzen.ZQWidzenia.FieldByName('Nazwisko').AsString+' '+OchSalaWidzen.ZQWidzenia.FieldByName('Imie').AsString;
    end;
end;

procedure TViewStolik.sbnWykazyClick(Sender: TObject);
begin
  miKartaOchronnaClick(Sender);
end;

procedure TViewStolik.Timer1Timer(Sender: TObject);
begin
  IncProgress;
end;

procedure TViewStolik.CMMouseEnter(var Msg: TMessage);
begin
  Msg.Result := WM_CANCELMODE;
  FormMouseEnter(Self);
end;

procedure TViewStolik.CMMouseLeave(var Msg: TMessage);
begin
  Msg.Result := WM_CANCELMODE;
  FormMouseLeave(Self);
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

procedure TViewStolik.SetPopupMenuVisible(AValue: Boolean);
begin
  if FPopupMenuVisible= AValue then Exit;
  FPopupMenuVisible:= AValue;
  PopupMenu1.AutoPopup:= FPopupMenuVisible;
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

procedure TViewStolik.JednorazoweOdbierzPrawo(ID_widzenia: integer);
var ZQPom, ZQPom_Upr: TZQueryPom;
begin
  ZQPom_Upr:= TZQueryPom.Create(Self);
  ZQPom_Upr.SQL.Text:='UPDATE uprawnione SET Skreslona=:skreslona, Skreslil=:skreslil, Data_Skreslenia=:data_skreslenia WHERE ID=:id';

  ZQPom:= TZQueryPom.Create(Self);
  ZQPom.SQL.Text:= 'SELECT w.ID_widzenia, w.ID_uprawnione, u.ID, u.Uwagi, u.Nazwisko, u.Imie FROM widzenia_upr w'+
                   ' LEFT JOIN uprawnione u ON (w.ID_uprawnione=u.ID)'+
                   'WHERE ID_widzenia=:id_w';
  ZQPom.ParamByName('id_w').AsInteger:= ID_widzenia;
  ZQPom.Open;
  while not ZQPom.EOF do
  begin
    if ZQPom.FieldByName('Uwagi').AsString.IndexOf('Jednorazowo')>0 then
    begin
      //odbieramy prawo do widzeń
      try
        ZQPom_Upr.ParamByName('ID').AsInteger              := ZQPom.FieldByName('ID').AsInteger;
        ZQPom_Upr.ParamByName('Skreslona').AsBoolean       := true;
        ZQPom_Upr.ParamByName('Skreslil').AsString         := DM.PelnaNazwa;
        ZQPom_Upr.ParamByName('Data_Skreslenia').AsDateTime:= Now();
        ZQPom_Upr.ExecSQL;
      finally
        DM.KomunikatPopUp(Self, 'Widzenie','Odebrano prawo do widzeń osobie z prawem do jednorazowego widzenia.'+LineEnding+
                                ZQPom.FieldByName('Nazwisko').AsString+' '+ZQPom.FieldByName('Imie').AsString, nots_Info);
      end;
    end;
    ZQPom.Next;
  end;

  FreeAndNil( ZQPom);
  FreeAndNil( ZQPom_Upr);
end;

procedure TViewStolik.WczytajDane;
var ZQPom, ZQWykazy: TZQueryPom;
    wykazyHint: string;
begin
  if not Visible then exit;
  BCPrzyslona.Visible:= true;
  Application.ProcessMessages;

  ZQPom:= TZQueryPom.Create(Self);
  ZQPom.SQL.Text:='SELECT w.*, o.Nazwisko, o.Imie, o.POC, o.Klasyf, t.Ochronka, u.IDO IDO_u, uk.IDO IDO_uk, inf.GR '+
                  'FROM widzenia w, osadzeni o LEFT JOIN typ_cel t ON (o.POC=t.POC) '+
                  'LEFT JOIN os_info inf ON (inf.IDO=o.IDO) '+
                  'LEFT JOIN uwagi u ON ((u.Uwagi<>"") AND (u.IDO=o.IDO)) '+
                  'LEFT JOIN uwagi_kierownika uk ON ((uk.Uwagi<>"") AND (uk.IDO=o.IDO)) '+
                  'WHERE (w.Stolik=:stolik)AND(w.Etap=2)AND(w.IDO=o.IDO) LIMIT 1';
  ZQPom.ParamByName('stolik').AsInteger:= NrStolika;
  ZQPom.Open;

  if ZQPom.IsEmpty then
    begin
      SelectIDO:= 0;
      fStart   := false;
      //Image1.Picture.Clear;
      TLoadFotoThread.Create(DM.Path_NrStolikow+IntToStr(NrStolika)+'.jpg', Image1 );
      // czyścimy lbl'e
      lblPOC.Caption          := '';
      lblNazwiskoImie.Caption := '';
      lblPozostalo.Caption    := '';
      lblCzas.Caption         := '';
      lblPodkultura.Caption   := '';
      sbnUwagi.Visible        := false;
      sbnWykazy.Visible       := false;
      ProgressBar1.Visible    := false;
    end
  else
    begin // wczytujemy dane do stolika
      // zmieniamy zdjęcie tylko jeśli zmieni się IDO
      if SelectIDO <> ZQPom.FieldByName('IDO').AsInteger then
        begin
          SelectIDO:= ZQPom.FieldByName('IDO').AsInteger;
          TLoadFotoThread.Create(DM.Path_Foto+IntToStr(SelectIDO)+'.jpg', Image1 );
        end;

      fID         := ZQPom.FieldByName('ID').AsInteger;
      fCzas       := ZQPom.FieldByName('Czas_widzenia').AsInteger;
      fData_Stolik:= ZQPom.FieldByName('Data_Stolik').AsDateTime;

      lblPOC.Caption:= ZQPom.FieldByName('POC').AsString;
      lblNazwiskoImie.Caption:= ZQPom.FieldByName('Nazwisko').AsString+' '+ZQPom.FieldByName('Imie').AsString;
      lblPodkultura.Caption  := '';
      if ZQPom.FieldByName('Ochronka').AsInteger=1 then lblPodkultura.Caption:= 'Ochronka';
      if ZQPom.FieldByName('GR').AsInteger=1       then lblPodkultura.Caption:= 'GR';
      // sprawdzamy czy istnieją uwagi na osadzonego
      sbnUwagi.Visible:= (not ZQPom.FieldByName('IDO_u').IsNull) or (not ZQPom.FieldByName('IDO_uk').IsNull);

      //Sprawdzamy czy istnieją wykazy na osadzonego ----------------------
      ZQWykazy:= TZQueryPom.Create(Self);
      ZQWykazy.SQL.Text:= 'SELECT w.IDO, w.Kategoria, k.Opis FROM uwagi_wykazy w, katalog_wykazow k WHERE (w.IDO=:ido)AND(w.Kategoria=k.ID)';
      ZQWykazy.ParamByName('ido').AsInteger:= SelectIDO;
      ZQWykazy.Open;

      wykazyHint:= '';
      sbnWykazy.Visible:= (not ZQWykazy.IsEmpty);
      while not ZQWykazy.EOF do
      begin
        if wykazyHint<>'' then wykazyHint+= LineEnding;
        wykazyHint+= ZQWykazy.FieldByName('Opis').AsString;
        ZQWykazy.Next;
      end;
      sbnWykazy.Hint:= 'Osadzony widnieje na wykazach:' + LineEnding + wykazyHint;
      FreeAndNil(ZQWykazy);
      // ------------------------------------------------------------------

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
  BCPrzyslona.Visible:= false;
end;


end.

