unit UOchAddWykaz;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, FileUtil, ZDataset, Forms, Controls, Graphics, Dialogs,
  ExtCtrls, Buttons, DbCtrls, StdCtrls, datamodule, UOchRejestrWykazow,
  rxdbgrid;

type

  { TOchAddWykaz }

  TOchAddWykaz = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    cbKategoriaWykazu: TComboBox;
    dbeUwagi: TDBEdit;
    DSRejWykazow: TDataSource;
    DSWykaz: TDataSource;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    lbl_IDO: TLabel;
    lbl_POC: TLabel;
    lbl_Klasyf: TLabel;
    lbl_Nazwisko: TLabel;
    lbl_Imie: TLabel;
    lbl_Ojciec: TLabel;
    Panel1: TPanel;
    RxDBGrid1: TRxDBGrid;
    ZQRejWykazow: TZQuery;
    ZQWykaz: TZQuery;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    fIDO: integer;
    fKategorie: TWykazyOchronne;
    isDodawanie: Boolean;
    fOldKategoria: integer;
    procedure SprawdzPodwojneWpisy; // przed dodaniem sprawdz czy nie będzie zdublowania kategorii
    procedure SprawdzIZapisz;
    procedure WczytajDaneOsadzonego;
  public
    procedure ModyfikujWykaz(ZQW: TZQuery);
    procedure DodajOsadzonego(vIDO: integer);
  end;

var
  OchAddWykaz: TOchAddWykaz;

implementation

{$R *.frm}

{ TOchAddWykaz }

procedure TOchAddWykaz.FormCreate(Sender: TObject);
begin
  // wczytanie kategori wykazów
  fKategorie:= TWykazyOchronne.Create(cbKategoriaWykazu);
end;

procedure TOchAddWykaz.SprawdzPodwojneWpisy;
var ZQPom: TZQueryPom;
begin
  ZQPom:= TZQueryPom.Create(Self);
  ZQPom.SQL.Text:= 'SELECT ID, IDO, Kategoria FROM uwagi_wykazy WHERE IDO = :ido';
  ZQPom.ParamByName('ido').AsInteger:= fIDO;
  ZQPom.Open;
end;

procedure TOchAddWykaz.SprawdzIZapisz;
begin
  // sprawdz kategorie >=0;
  if not fKategorie.GetIDKategorieWykazow>=0 then
    begin
      MessageDlg('Wybierz kategorie wykazu.', mtWarning, [mbOK],0);
      ModalResult:= mrNone;
      exit;
    end;

  // sprawdz osadzonego
  if fIDO<0 then
    begin
      MessageDlg('Nie wybrano osadzonego.', mtWarning, [mbOK],0);
      ModalResult:= mrNone;
      exit;
    end;

  // zapisz do bazy
  ZQWykaz.FieldByName('Kategoria').AsInteger    := fKategorie.GetIDKategorieWykazow;
  ZQWykaz.FieldByName('IDO').AsInteger          := fIDO;
  ZQWykaz.FieldByName('user_dodania').AsString  := DM.PelnaNazwa;
  ZQWykaz.FieldByName('data_dodania').AsDateTime:= Now();
  ZQWykaz.Post;
end;

procedure TOchAddWykaz.WczytajDaneOsadzonego;
var ZQPom: TZQueryPom;
begin
  ZQPom:= TZQueryPom.Create(Self);
  ZQPom.SQL.Text:= 'SELECT IDO, Nazwisko, Imie, Ojciec, Klasyf, POC FROM osadzeni WHERE IDO = :ido';
  ZQPom.ParamByName('ido').AsInteger:= fIDO;
  ZQPom.Open;
  if not ZQPom.IsEmpty then
    begin
      lbl_IDO.Caption     := ZQPom.FieldByName('IDO').AsString;
      lbl_POC.Caption     := ZQPom.FieldByName('POC').AsString;
      lbl_Klasyf.Caption  := ZQPom.FieldByName('Klasyf').AsString;
      lbl_Nazwisko.Caption:= ZQPom.FieldByName('Nazwisko').AsString;
      lbl_Imie.Caption    := ZQPom.FieldByName('Imie').AsString;
      lbl_Ojciec.Caption  := ZQPom.FieldByName('Ojciec').AsString;
    end
  else
    begin
      lbl_IDO.Caption     := 'brak';
      lbl_POC.Caption     := 'brak';
      lbl_Klasyf.Caption  := 'brak';
      lbl_Nazwisko.Caption:= 'brak';
      lbl_Imie.Caption    := 'brak';
      lbl_Ojciec.Caption  := 'brak';
      fIDO:= -1;
    end;
    FreeAndNil(ZQPom);

  //wczytaj informacje o innych wykazach
  ZQRejWykazow.ParamByName('IDO').AsInteger:= fIDO;
  ZQRejWykazow.Open;
end;

procedure TOchAddWykaz.BitBtn1Click(Sender: TObject);
begin
  if isDodawanie then
      begin
        SprawdzIZapisz
      end
    else
      begin
        //modyfikacja, zapisujemy id kategori
        if not fKategorie.GetIDKategorieWykazow>=0 then
          begin
            MessageDlg('Wybierz kategorie wykazu.', mtWarning, [mbOK],0);
            ModalResult:= mrNone;
            exit;
          end;
        DSWykaz.DataSet.FieldByName('Kategoria').AsInteger:= fKategorie.GetIDKategorieWykazow;
      end;
end;

procedure TOchAddWykaz.ModyfikujWykaz(ZQW: TZQuery);
begin
  isDodawanie:= false;
  DSWykaz.DataSet:= ZQW;
  cbKategoriaWykazu.Text:= ZQW.FieldByName('Opis').AsString;
  fIDO:= ZQW.FieldByName('IDO').AsInteger;
  WczytajDaneOsadzonego;
  Caption:= Caption+ ZQW.FieldByName('Opis').AsString;
end;

procedure TOchAddWykaz.DodajOsadzonego(vIDO: integer);
begin
  fIDO:= vIDO;
  isDodawanie:= true;
  WczytajDaneOsadzonego;
  Caption:= 'Dodaj do wykazu';

  ZQWykaz.Open;
  ZQWykaz.Append;
end;

end.

