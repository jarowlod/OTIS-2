unit UZatNiezatrudnieni;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, FileUtil, ZDataset, LR_Class, LR_DBSet, LR_ChBox,
  rxdbgrid, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls, Menus,
  Buttons, datamodule, Clipbrd;

type

  { TNieZatrudnieni }

  TNieZatrudnieni = class(TForm)
    BitBtn17: TBitBtn;
    BitBtn18: TBitBtn;
    DSBezrobotni: TDataSource;
    DSZatrudnieni: TDataSource;
    frDBDataSet1: TfrDBDataSet;
    frReport1: TfrReport;
    Image1: TImage;
    Label1: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel5: TPanel;
    RxDBGrid1: TRxDBGrid;
    RxDBGrid2: TRxDBGrid;
    Splitter1: TSplitter;
    ZQBezrobotni: TZQuery;
    ZQZatrudnieni: TZQuery;
    procedure BitBtn17Click(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RxDBGrid1DblClick(Sender: TObject);
    procedure RxDBGrid1GetCellProps(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor);
  private
    Function ZatrudnieniFieldsToString(ZQPom: TZQuery): string;
  public

  end;

var
  NieZatrudnieni: TNieZatrudnieni;

implementation
uses UPenitForm, rxdbutils;
{$R *.frm}

{ TNieZatrudnieni }

procedure TNieZatrudnieni.BitBtn17Click(Sender: TObject);
begin
  frReport1.LoadFromFile(DM.Path_Raporty + 'zat_bezrobotni.lrf');
  DM.SetMemoReport(frReport1, 'Memo_data', DM.GetDateFormatPismo(Date, 'dd MMMM yyyy')+' r.');
  frReport1.ShowReport;
end;

procedure TNieZatrudnieni.BitBtn18Click(Sender: TObject);
var bookmark: TBookMark;
    schowek: string;
begin
  // do schowka wszyscy zatrudnieni
  if ZQBezrobotni.IsEmpty then exit;
  bookmark:= ZQBezrobotni.GetBookmark;
  ZQBezrobotni.DisableControls;
  ZQBezrobotni.First;
  schowek:= '';
  while not ZQBezrobotni.EOF do
  begin
    if schowek<>'' then schowek:= schowek + LineEnding;
    schowek:= schowek + ZatrudnieniFieldsToString(ZQBezrobotni);
    ZQBezrobotni.Next;
  end;

  Clipboard.AsText:= schowek;

  ZQBezrobotni.GotoBookmark(bookmark);
  ZQBezrobotni.EnableControls;
end;

procedure TNieZatrudnieni.FormCreate(Sender: TObject);
begin
  ZQBezrobotni.Open;
  ZQZatrudnieni.Open;
end;

procedure TNieZatrudnieni.RxDBGrid1DblClick(Sender: TObject);
begin
  if ZQBezrobotni.IsEmpty then exit;

  with TPenitForm.Create(Self) do
  begin
       SetIDO( ZQBezrobotni.FieldByName('ido').AsInteger );
       ShowModal;
       Free;
       RefreshQuery(ZQBezrobotni);
  end;
end;

procedure TNieZatrudnieni.RxDBGrid1GetCellProps(Sender: TObject; Field: TField;
  AFont: TFont; var Background: TColor);
begin
  if not Assigned(Field) then exit;

  if Field.FieldName = 'data_autoryzacji' then
    begin
      if (Field.AsDateTime < ZQBezrobotni.FieldByName('PRZYJ').AsDateTime) then
      begin
        Background := clRed;
      end;
    end;

  if Field.FieldName = 'Autoryzacja' then
    begin
      if (Field.AsString <> ZQBezrobotni.FieldByName('Wychowawca').AsString) then
      begin
        Background := clRed;
      end;
    end;

end;

function TNieZatrudnieni.ZatrudnieniFieldsToString(ZQPom: TZQuery): string;
var s: string;
begin
  s:='';
  // jeśli to pierwszy wiersz to uzupełniamy o nagłówek
  if ZQPom.RecNo = 1 then
    s:= 'Nr'+#09+'IDO'+#09+'POC'+#09+'Nazwisko'+#09+'Imię'+#09+'Ojciec'+#09+'Klasyfikacja'+#09+'Uwagi'+#09+'GR'+#09+
        'Przyjęty'+#09+'Koniec Kary'+#09+'Archiwalne'+#09+'Wywiad'+#09+'WPZ'+#09+'ułamek'+#09+
        'Wychowawca'+#09+'Autoryzacja'+#09+'Data autoryzacji'+#09;
  // --------------------------------------------------

  s:= s+ ZQPom.RecNo.ToString;   // nr w arkuszu
  s:= s+ #09 +ZQPom.FieldByName('IDO').AsString;
  s:= s+ #09 +ZQPom.FieldByName('POC').AsString;
  s:= s+ #09 +ZQPom.FieldByName('Nazwisko').AsString;
  s:= s+ #09 +ZQPom.FieldByName('Imie').AsString;
  s:= s+ #09 +ZQPom.FieldByName('Ojciec').AsString;
  s:= s+ #09 +ZQPom.FieldByName('Klasyf').AsString;
  s:= s+ #09 +ZQPom.FieldByName('Zatrudnienie').AsString;
  s:= s+ #09 +ZQPom.FieldByName('GR').AsString;
  s:= s+ #09 +ZQPom.FieldByName('Przyj').AsString;
  s:= s+ #09 +ZQPom.FieldByName('KoniecKary').AsString;
  s:= s+ #09 +ZQPom.FieldByName('Arch').AsString;
  s:= s+ #09 +ZQPom.FieldByName('Wywiad').AsString;
  s:= s+ #09 +ZQPom.FieldByName('twpz').AsString;
  s:= s+ #09 +ZQPom.FieldByName('ulamek_wpz').AsString;
  s:= s+ #09 +ZQPom.FieldByName('Wychowawca').AsString;
  s:= s+ #09 +ZQPom.FieldByName('Autoryzacja').AsString;
  s:= s+ #09 +ZQPom.FieldByName('Data_autoryzacji').AsString;
  Result:= s;
end;

end.

