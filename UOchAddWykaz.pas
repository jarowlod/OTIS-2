unit UOchAddWykaz;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, FileUtil, ZDataset, Forms, Controls, Graphics, Dialogs,
  ExtCtrls, Buttons, DbCtrls, StdCtrls, UOchRejestrWykazow, rxdbgrid, datamodule;

type

  { TOchAddWykaz }

  TOchAddWykaz = class(TForm)
    btnOK: TBitBtn;
    btnAnuluj: TBitBtn;
    cbKategoriaWykazu: TComboBox;
    dbeUwagi: TDBEdit;
    DSRejWyk: TDataSource;
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
    ZQRejWyk: TZQuery;
    ZQWykaz: TZQuery;
    procedure btnOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    fIDO: integer;
    fKategorie: TWykazyOchronne;
    isDodawanie: Boolean;
             // sprawdza osadzonego i wybrana kategorie czy istnieje, Out: 0 lub >0...
    function GetKategoryCount: integer;
    procedure SprawdzIZapisz;
    procedure WczytajDaneOsadzonego;
  public
    procedure ModyfikujWykaz(ZQW: TZQuery);
    procedure DodajOsadzonego(vIDO: integer);
  end;

//var
//  OchAddWykaz: TOchAddWykaz;

implementation

{$R *.frm}

{ TOchAddWykaz }

procedure TOchAddWykaz.FormCreate(Sender: TObject);
begin
  // wczytanie kategori wykazów
  fKategorie:= TWykazyOchronne.Create(cbKategoriaWykazu);
end;

function TOchAddWykaz.GetKategoryCount: integer;
var ZQPom: TZQueryPom;
begin
  ZQPom:= TZQueryPom.Create(Self);
  ZQPom.SQL.Text:= 'SELECT ID, IDO, Kategoria FROM uwagi_wykazy WHERE (IDO = :ido) and (Kategoria = :kategoria)';
  ZQPom.ParamByName('ido').AsInteger:= fIDO;
  ZQPom.ParamByName('kategoria').AsInteger:= fKategorie.GetIDKategorieWykazow;
  ZQPom.Open;
  Result:= ZQPom.RecordCount;

  FreeAndNil(ZQPom);

end;

procedure TOchAddWykaz.SprawdzIZapisz;
var KategoryCount: integer;
begin
  // sprawdz kategorie >=0;
  if not fKategorie.GetIDKategorieWykazow>=0 then
    begin
      MessageDlg('Wybierz kategorie wykazu.', mtWarning, [mbOK],0);
      ModalResult:= mrNone;
      exit;
    end;

  // sprawdz kategorie czy nie będzie się dublowała
  KategoryCount:= GetKategoryCount;
  if ((KategoryCount>0)and(isDodawanie)) or
     ((KategoryCount>1)and(not isDodawanie)) then
    begin
      MessageDlg('Osadzony jest już wpisany do wybranego wykazu.', mtWarning, [mbOK],0);
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

  if isDodawanie then
    begin
      // zapisz do bazy
      ZQWykaz.FieldByName('Kategoria').AsInteger    := fKategorie.GetIDKategorieWykazow;
      ZQWykaz.FieldByName('IDO').AsInteger          := fIDO;
      ZQWykaz.FieldByName('user_dodania').AsString  := DM.PelnaNazwa;
      ZQWykaz.FieldByName('data_dodania').AsDateTime:= Now();
      ZQWykaz.Post;
    end
  else // modyfikacja
    begin
      DSWykaz.DataSet.FieldByName('Kategoria').AsInteger     := fKategorie.GetIDKategorieWykazow;

      // jeśli nic nie zmodyfikowano
      if (DSWykaz.DataSet.FieldByName('Kategoria').OldValue = DSWykaz.DataSet.FieldByName('Kategoria').Value) and
         (DSWykaz.DataSet.FieldByName('Uwagi').OldValue = DSWykaz.DataSet.FieldByName('Uwagi').Value) then
         begin
           DSWykaz.DataSet.Cancel;
           exit;
         end;

      DSWykaz.DataSet.FieldByName('data_dodania').AsDateTime := Now();
      DSWykaz.DataSet.FieldByName('user_dodania').AsString   := DM.PelnaNazwa;
      DSWykaz.DataSet.Post
    end;
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
  ZQRejWyk.ParamByName('IDO').AsInteger:= fIDO;
  ZQRejWyk.Open;
end;

procedure TOchAddWykaz.btnOKClick(Sender: TObject);
begin
  SprawdzIZapisz;
end;

procedure TOchAddWykaz.ModyfikujWykaz(ZQW: TZQuery);
begin
  isDodawanie:= false;
  DSWykaz.DataSet:= ZQW;
  cbKategoriaWykazu.Text:= ZQW.FieldByName('Opis').AsString;
  fIDO:= ZQW.FieldByName('IDO').AsInteger;
  WczytajDaneOsadzonego;
  Caption:= Caption+ ZQW.FieldByName('Opis').AsString;
  ZQW.Edit;
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

