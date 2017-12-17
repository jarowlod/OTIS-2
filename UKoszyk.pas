unit UKoszyk;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, db, rxdbgrid, Forms, Controls, Graphics, Dialogs,
  ExtCtrls, StdCtrls, Buttons, DbCtrls, datamodule, rxdbutils;

type

  { TKoszyk }

  TKoszyk = class(TForm)
    Bevel1: TBevel;
    Bevel2: TBevel;
    btnUsunOsadzonego: TBitBtn;
    btnPustyKoszyk: TBitBtn;
    btnWydruk: TBitBtn;
    btnDoSchowka: TBitBtn;
    btnNowyKoszyk: TBitBtn;
    btnZmienNazwe: TBitBtn;
    btnUsunKoszyk: TBitBtn;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    RxDBGrid1: TRxDBGrid;
    RxDBGrid2: TRxDBGrid;
    Splitter1: TSplitter;
    procedure btnDoSchowkaClick(Sender: TObject);
    procedure btnNowyKoszykClick(Sender: TObject);
    procedure btnPustyKoszykClick(Sender: TObject);
    procedure btnUsunKoszykClick(Sender: TObject);
    procedure btnUsunOsadzonegoClick(Sender: TObject);
    procedure btnWydrukClick(Sender: TObject);
    procedure btnZmienNazweClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Koszyk: TKoszyk;

implementation
uses UKoszykNowy, UDrukWykazOsadz;
{$R *.frm}

{ TKoszyk }

procedure TKoszyk.FormCreate(Sender: TObject);
begin
  RefreshQuery(DM.ZQKoszyk_sl);
  RefreshQuery(DM.ZQKoszyk);
end;

procedure TKoszyk.btnNowyKoszykClick(Sender: TObject);
begin
  with TKoszykNowy.Create(Self) do
  begin
    ShowModal;
    Free;
  end;
end;

procedure TKoszyk.btnUsunOsadzonegoClick(Sender: TObject);
var ZQPom: TZQueryPom;
begin
  if DM.ZQKoszyk.IsEmpty then exit;
  if not (MessageDlg('Czy jesteś pewien ?', mtConfirmation, [mbOK, mbCancel], 0) = mrOk) then exit;

  // usuwamy osadzonych przypisanych do koszyka
  ZQPom:= TZQueryPom.Create(Self);
  ZQPom.SQL.Text := 'DELETE FROM koszyk WHERE ID = :id;';
  ZQPom.ParamByName('id').AsInteger := DM.ZQKoszyk.FieldByName('ID').AsInteger;
  ZQPom.ExecSQL;
  FreeAndNil(ZQPom);

  RefreshQuery(DM.ZQKoszyk);
  DM.KomunikatPopUp(Sender, 'Koszyk', 'Usunięto osadzonego z koszyka.', nots_Info);
end;

procedure TKoszyk.btnPustyKoszykClick(Sender: TObject);
var ZQPom: TZQueryPom;
begin
  if DM.ZQKoszyk_sl.IsEmpty then exit;
  if not (MessageDlg('Czy jesteś pewien ?', mtConfirmation, [mbOK, mbCancel], 0) = mrOk) then exit;

  // usuwamy osadzonych przypisanych do koszyka
  ZQPom:= TZQueryPom.Create(Self);
  ZQPom.SQL.Text := 'DELETE FROM koszyk WHERE ID_koszyka = :ID_koszyka;';
  ZQPom.ParamByName('ID_koszyka').AsInteger := DM.ZQKoszyk_sl.FieldByName('ID_koszyka').AsInteger;
  ZQPom.ExecSQL;
  FreeAndNil(ZQPom);

  RefreshQuery(DM.ZQKoszyk);
  DM.KomunikatPopUp(Sender, 'Koszyk', 'Usunięto osadzonych przypisanych do koszyka.', nots_Info);
end;

procedure TKoszyk.btnDoSchowkaClick(Sender: TObject);
begin
  RxDBGrid2.CopyToClipboard;
  DM.KomunikatPopUp(Sender, 'Koszyk', 'Dodano osadzonych do schowka.', nots_Info);
end;

procedure TKoszyk.btnUsunKoszykClick(Sender: TObject);
var ID_koszyka: integer;
    ZQPom: TZQueryPom;
    czy_wszystko: boolean;
begin
  if DM.ZQKoszyk_sl.IsEmpty then
  begin
     MessageDlg('Koszyk jest pusty.', mtWarning, [mbOK], 0);
     exit;
  end;

  if not MessageDlg('Czy napewno usunąć koszyk ?', mtWarning, [mbOK, mbCancel], 0) = mrOK then exit;

  czy_wszystko:= true;
  ID_koszyka  := DM.ZQKoszyk_sl.FieldByName('ID_koszyka').AsInteger;

  //sprawdzamy czy jeszcze ktos ma dostęp do koszyka
  ZQPom:= TZQueryPom.Create(Self);
  ZQPom.SQL.Text := 'SELECT ID_koszyka FROM koszyk_usr WHERE ID_koszyka = :ID_koszyka;';
  ZQPom.ParamByName('ID_koszyka').AsInteger:= ID_koszyka;
  ZQPom.Open;
  if ZQPom.RecordCount > 1 then
  begin
    MessageDlg('Są inni użytkownicy korzystający z tego koszyka. Usunę tylko twój dostęp.', mtInformation, [mbOK], 0);
    czy_wszystko:= false;
  end;
  ZQPom.Close;

  ZQPom.SQL.Text := 'DELETE FROM koszyk_usr WHERE ID_koszyka = :ID_koszyka;';
  ZQPom.ParamByName('ID_koszyka').AsInteger := ID_koszyka;
  ZQPom.ExecSQL;

  if czy_wszystko then
  begin
    // usuwamy nazwę koszyka
    ZQPom.SQL.Text := 'DELETE FROM koszyk_sl WHERE ID_koszyka = :ID_koszyka;';
    ZQPom.ParamByName('ID_koszyka').AsInteger := ID_koszyka;
    ZQPom.ExecSQL;

    // usuwamy osadzonych przypisanych do koszyka
    ZQPom.SQL.Text := 'DELETE FROM koszyk WHERE ID_koszyka = :ID_koszyka;';
    ZQPom.ParamByName('ID_koszyka').AsInteger := ID_koszyka;
    ZQPom.ExecSQL;
  end;

  FreeAndNil(ZQPom);

  RefreshQuery(DM.ZQKoszyk_sl);
  DM.KomunikatPopUp(Sender, 'Koszyk', 'Usunięto koszyk.', nots_Info);
end;

procedure TKoszyk.btnWydrukClick(Sender: TObject);
var bookmark: TBookMark;
begin
  if DM.ZQKoszyk.IsEmpty then exit;
  bookmark:= DM.ZQKoszyk.GetBookmark;
  DM.ZQKoszyk.DisableControls;
  DM.ZQKoszyk.First;

  with TDrukWykazOsadz.Create(Self) do
  begin
    while not DM.ZQKoszyk.EOF do
    begin
      DodajDoWykazu( DM.ZQKoszyk.FieldByName('IDO').AsInteger,
                     DM.ZQKoszyk.FieldByName('Nazwisko').AsString,
                     DM.ZQKoszyk.FieldByName('Imie').AsString,
                     DM.ZQKoszyk.FieldByName('Ojciec').AsString,
                     DM.ZQKoszyk.FieldByName('POC').AsString,
                     True
                   );
      DM.ZQKoszyk.Next;
    end;

    ShowModal;
    Free;
  end;

  SetToBookmark(DM.ZQKoszyk, bookmark);
  DM.ZQKoszyk.EnableControls;
end;

procedure TKoszyk.btnZmienNazweClick(Sender: TObject);
begin
  if DM.ZQKoszyk_sl.IsEmpty then exit;

  with TKoszykNowy.Create(self) do
  begin
    ZmienNazwe( DM.ZQKoszyk_sl.FieldByName('nazwa').AsString,
                DM.ZQKoszyk_sl.FieldByName('uwagi').AsString,
                DM.ZQKoszyk_sl.FieldByName('ID_koszyka').AsInteger);
    ShowModal;
    Free;
  end;
  RefreshQuery(DM.ZQKoszyk_sl);
end;

end.

