unit UOchAddWykaz;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, FileUtil, ZDataset, Forms, Controls, Graphics, Dialogs,
  ExtCtrls, Buttons, DbCtrls, StdCtrls, datamodule, UOchRejestrWykazow;

type

  { TOchAddWykaz }

  TOchAddWykaz = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    cbKategoriaWykazu: TComboBox;
    dbeUwagi: TDBEdit;
    DSWykaz: TDataSource;
    GroupBox1: TGroupBox;
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
    ZQWykaz: TZQuery;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    fIDO: integer;
    fKategorie: TWykazyOchronne;
    isDodawanie: Boolean;
    procedure SprawdzIZapisz;
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

procedure TOchAddWykaz.SprawdzIZapisz;
begin
  // sprawdz kategorie >=0;
  if not fKategorie.GetIDKategorieWykazow>=0 then
    begin
      //komunikat i powrót
      ModalResult:= mrNone;
      exit;
    end;

  // sprawdz osadzonego
  if fIDO<0 then
    begin
      // komunikat
      ModalResult:= mrNone;
      exit;
    end;

  // zapisz do bazy
  ZQWykaz.FieldByName('Kategoria').AsInteger:= fKategorie.GetIDKategorieWykazow;
  ZQWykaz.FieldByName('IDO').AsInteger      := fIDO;
  //ZQWykaz.FieldByName('user').AsString      := DM.PelnaNazwa;
  //ZQWykaz.FieldByName('data_dodania').AsDateTime:= Now();
  ZQWykaz.Post;
end;

procedure TOchAddWykaz.BitBtn1Click(Sender: TObject);
begin
  if isDodawanie then
    SprawdzIZapisz;
end;

procedure TOchAddWykaz.ModyfikujWykaz(ZQW: TZQuery);
begin
  isDodawanie:= false;
  DSWykaz.DataSet:= ZQW;
  cbKategoriaWykazu.Text:= ZQW.FieldByName('Opis').AsString;
  cbKategoriaWykazu.Enabled:= false;
end;

procedure TOchAddWykaz.DodajOsadzonego(vIDO: integer);
var ZQPom: TZQueryPom;
begin
  fIDO:= vIDO;
  isDodawanie:= true;
  ZQWykaz.Append;

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
end;

end.

