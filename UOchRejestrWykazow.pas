unit UOchRejestrWykazow;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, FileUtil, ZDataset, ZSqlUpdate, rxdbgrid, Forms,
  Controls, Graphics, Dialogs, ExtCtrls, StdCtrls, Buttons, datamodule,
  LR_DBSet, LR_Class;

type
   TWykazOchr = record
                  id: integer;
                  opis: string[100];
                end;

   { TWykazyOchronne }

   TWykazyOchronne = class
   private
     ComboBox: TComboBox;
     fKategorieWykazow: array of TWykazOchr;
     procedure SetKategorieWykazow;             // to ComboBox1
   public
     constructor Create(AComboBox: TComboBox);
     function GetIDKategorieWykazow: integer;   // from Select ComboBox1
   end;

  { TOchRejestrWykazow }

  TOchRejestrWykazow = class(TForm)
    btnDrukuj: TBitBtn;
    btnCopyToClipboard: TBitBtn;
    btnUsun: TBitBtn;
    btnModyfikuj: TBitBtn;
    ComboBox1: TComboBox;
    DSRejWykazow: TDataSource;
    Edit1: TEdit;
    frDBDataSet1: TfrDBDataSet;
    frReport1: TfrReport;
    Image1: TImage;
    Label1: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    RxDBGrid1: TRxDBGrid;
    ZQRejWykazow: TZQuery;
    ZURejWykazow: TZUpdateSQL;
    procedure btnDrukujClick(Sender: TObject);
    procedure btnCopyToClipboardClick(Sender: TObject);
    procedure btnModyfikujClick(Sender: TObject);
    procedure btnUsunClick(Sender: TObject);
    procedure ComboBox1Select(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RxDBGrid1SortChanged(Sender: TObject);
  private
    DisableNewSelect: Boolean;
    fKategorie: TWykazyOchronne;

    //fKategorieWykazow: array of TWykazOchr;
    //procedure SetKategorieWykazow;             // to ComboBox1
    //function GetIDKategorieWykazow: integer;   // from Select ComboBox1
  public
    SQLSelect: string;
    procedure NewSelect;

  end;

var
  OchRejestrWykazow: TOchRejestrWykazow;

implementation
uses UOchAddWykaz;
{$R *.frm}

{ TWykazyOchronne }

procedure TWykazyOchronne.SetKategorieWykazow;
var ZQPom: TZQueryPom;
    i: integer;
begin
  ZQPom:= TZQueryPom.Create(ComboBox);
  ZQPom.SQL.Text:= 'SELECT ID, Opis FORM katalog_wykazow';
  ZQPom.Open;

  SetLength(fKategorieWykazow, ZQPom.RecordCount);
  ComboBox.Clear;
  ComboBox.Items.Add('');  // index 0

  i:=0;
  while not ZQPom.EOF do
  begin
    fKategorieWykazow[i].id  := ZQPom.FieldByName('ID').AsInteger;
    fKategorieWykazow[i].opis:= ZQPom.FieldByName('Opis').AsString;

    // wczytujemy opisy do kontrolki; zaczynając od indexu 1 ... dla tablicy 0
    ComboBox.Items.Add(fKategorieWykazow[i].opis);

    inc(i);
    ZQPom.Next;
  end;

  ComboBox.ItemIndex:= 0;
  FreeAndNil(ZQPom);
end;

constructor TWykazyOchronne.Create(AComboBox: TComboBox);
begin
  ComboBox:= AComboBox;
  SetKategorieWykazow;
end;

function TWykazyOchronne.GetIDKategorieWykazow: integer;
begin
  Result:= -1;
  // index = 0 wskazuje puste pole, czyli wszystkie kategorie
  if ComboBox.ItemIndex>0 then
    Result:= fKategorieWykazow[ ComboBox.ItemIndex - 1 ].id;
end;


//==============================================================
//==============================================================
{ TOchRejestrWykazow }

procedure TOchRejestrWykazow.FormCreate(Sender: TObject);
begin
  SQLSelect           := ZQRejWykazow.SQL.Text;
  btnUsun.Enabled     := DM.uprawnienia[4];
  btnModyfikuj.Enabled:= DM.uprawnienia[4];

  //SetKategorieWykazow;
  DisableNewSelect:= true;
  fKategorie:= TWykazyOchronne.Create(ComboBox1);
  DisableNewSelect:= false;

  ZQRejWykazow.Open;
end;

procedure TOchRejestrWykazow.NewSelect;
var kategoriaID: integer;
begin
  if DisableNewSelect then exit;

  ZQRejWykazow.SQL.Text:= SQLSelect;

  // dla kategoriaID = -1 wyszukuje wszystkich; dla >=0 według kategorii
  kategoriaID:= fKategorie.GetIDKategorieWykazow;
  if kategoriaID>=0 then
    begin
      ZQRejWykazow.SQL.Add('WHERE wyk.Kategoria = :kategoriaID');
      ZQRejWykazow.ParamByName('kategoriaID').AsInteger:= kategoriaID;
    end;

  ZQRejWykazow.Open;
end;

procedure TOchRejestrWykazow.RxDBGrid1SortChanged(Sender: TObject);
begin
  ZQRejWykazow.First;
end;

procedure TOchRejestrWykazow.ComboBox1Select(Sender: TObject);
begin
  NewSelect;
end;

procedure TOchRejestrWykazow.btnCopyToClipboardClick(Sender: TObject);
begin
  RxDBGrid1.CopyToClipboard;
end;

procedure TOchRejestrWykazow.btnModyfikujClick(Sender: TObject);
begin
  if not DM.uprawnienia[4] then exit;

  with TOchAddWykaz.Create(Self) do
  begin
       ZQRejWykazow.Edit;
       ModyfikujWykaz(ZQRejWykazow);
       if ShowModal = mrOK then ZQRejWykazow.Post
                           else ZQRejWykazow.Cancel;
       Free;
  end;
end;

procedure TOchRejestrWykazow.btnUsunClick(Sender: TObject);
begin
  if MessageDlg('Osadzony zostanie usunięty z wybranego wykazu.'+LineEnding+'Czy usunąć ?', mtWarning, [mbYes, mbNo],0) = mrYes then
    ZQRejWykazow.Delete;
end;

procedure TOchRejestrWykazow.btnDrukujClick(Sender: TObject);
begin
  frReport1.LoadFromFile(DM.Path_Raporty + 'och_wykazy.lrf');
  DM.SetMemoReport(frReport1, 'Memo_data', DM.GetDateFormatPismo(Date, 'dd MMMM yyyy')+' r.');
  frReport1.ShowReport;
end;

//procedure TOchRejestrWykazow.SetKategorieWykazow;
//var ZQPom: TZQueryPom;
//    i: integer;
//begin
//  DisableNewSelect:= true;
//
//  ZQPom:= TZQueryPom.Create(Self);
//  ZQPom.SQL.Text:= 'SELECT ID, Opis FORM katalog_wykazow';
//  ZQPom.Open;
//
//  SetLength(fKategorieWykazow, ZQPom.RecordCount);
//  ComboBox1.Clear;
//  ComboBox1.Items.Add('');  // index 0
//
//  i:=0;
//  while not ZQPom.EOF do
//  begin
//    fKategorieWykazow[i].id  := ZQPom.FieldByName('ID').AsInteger;
//    fKategorieWykazow[i].opis:= ZQPom.FieldByName('Opis').AsString;
//
//    // wczytujemy opisy do kontrolki; zaczynając od indexu 1 ... dla tablicy 0
//    ComboBox1.Items.Add(fKategorieWykazow[i].opis);
//
//    inc(i);
//    ZQPom.Next;
//  end;
//
//  ComboBox1.ItemIndex:= 0;
//  DisableNewSelect:= False;
//
//  FreeAndNil(ZQPom);
//end;
//
//function TOchRejestrWykazow.GetIDKategorieWykazow: integer;
//begin
//  Result:= -1;
//  // index = 0 wskazuje puste pole, czyli wszystkie kategorie
//  if ComboBox1.ItemIndex>0 then
//    Result:= fKategorieWykazow[ ComboBox1.ItemIndex - 1 ].id;
//end;

end.

