unit UOchImportOsobWidzenie;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, FileUtil, rxdbgrid, rxmemds, TplGradientUnit, Forms,
  Controls, Graphics, Dialogs, ExtCtrls, StdCtrls, Buttons, datamodule, Grids, DBGrids;

type

  { TOchImportOsobWidzenie }

  TOchImportOsobWidzenie = class(TForm)
    btnImportOsob: TBitBtn;
    btnPaste: TBitBtn;
    DSImport: TDataSource;
    Label8: TLabel;
    lblDaneOsadzonego: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    plGradient2: TplGradient;
    RxDBGrid4: TRxDBGrid;
    RxMemoryImport: TRxMemoryData;
    RxMemoryImportAdres: TStringField;
    RxMemoryImportID: TLongintField;
    RxMemoryImportImie: TStringField;
    RxMemoryImportNazwisko: TStringField;
    RxMemoryImportPokrew: TStringField;
    RxMemoryImportSkreslona: TLongintField;
    RxMemoryImportStatusOs: TStringField;
    RxMemoryImportUwagi: TStringField;
    procedure btnImportOsobClick(Sender: TObject);
    procedure btnPasteClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RxDBGrid4PrepareCanvas(sender: TObject; DataCol: Integer;
      Column: TColumn; AState: TGridDrawState);
  private
    SelectIDO: integer;
    function ParseXML(Value: string): Boolean;
    procedure SprawdzStatusOsob;
  public
    procedure SetIDO(ido: integer);
  end;

var
  OchImportOsobWidzenie: TOchImportOsobWidzenie;

implementation
uses Clipbrd, Laz2_DOM, laz2_XMLRead, LazUTF8, Variants;
{$R *.frm}

{ TOchImportOsobWidzenie }

procedure TOchImportOsobWidzenie.FormCreate(Sender: TObject);
begin
  SelectIDO:= 0;
  lblDaneOsadzonego.Caption:= 'Nie wybrano osadzonego.';
  btnImportOsob.Enabled:= false;
end;

procedure TOchImportOsobWidzenie.RxDBGrid4PrepareCanvas(sender: TObject;
  DataCol: Integer; Column: TColumn; AState: TGridDrawState);
begin
  if Column.Field.DataSet.IsEmpty then exit;
  if Column.Field.DataSet.FieldByName('Skreslona').AsBoolean = true then
     TRxDBGrid(Sender).Canvas.Brush.Color:= $008080FF;
end;

procedure TOchImportOsobWidzenie.btnPasteClick(Sender: TObject);
begin
  btnImportOsob.Enabled:= ParseXML(Clipboard.AsText);
  SprawdzStatusOsob;
end;

// sprawdzam czy istnieje (Nazwisko Imie)
// jeśli istnieje to weryfikuję Adres i prawo do widzeń
// else dopisuję
procedure TOchImportOsobWidzenie.btnImportOsobClick(Sender: TObject);
var ZQPom: TZQueryPom;
begin
  ZQPom:= TZQueryPom.Create(Self);
  ZQPom.SQL.Text:= 'SELECT * FROM uprawnione WHERE IDO=:ido';
  ZQPom.ParamByName('ido').AsInteger:= SelectIDO;
  ZQPom.Open;

  RxMemoryImport.First;
  while not RxMemoryImport.EOF do
  begin
    if RxMemoryImportStatusOs.AsString = 'Nowa' then
       begin
         ZQPom.Append;
         ZQPom.FieldByName('IDO').AsInteger      := SelectIDO;
         ZQPom.FieldByName('Nazwisko').AsString  := RxMemoryImportNazwisko.AsString;
         ZQPom.FieldByName('Imie').AsString      := RxMemoryImportImie.AsString;
         ZQPom.FieldByName('Adres').AsString     := RxMemoryImportAdres.AsString;
         ZQPom.FieldByName('Pokrew').AsString    := RxMemoryImportPokrew.AsString;
         ZQPom.FieldByName('Skreslona').AsBoolean:= RxMemoryImportSkreslona.AsBoolean;
         ZQPom.FieldByName('Uwagi').AsString     := RxMemoryImportUwagi.AsString;

         ZQPom.FieldByName('WPISAL').AsString    := DM.PelnaNazwa;
         ZQPom.FieldByName('Data_W').AsDateTime  := Now();
         ZQPom.Post;
       end else
    if RxMemoryImportStatusOs.AsString = 'Modyfikuj' then
       if ZQPom.Locate('ID', RxMemoryImportID.AsInteger, []) then
       begin
         ZQPom.Edit;
         ZQPom.FieldByName('Adres').AsString     := RxMemoryImportAdres.AsString;
         ZQPom.FieldByName('Pokrew').AsString    := RxMemoryImportPokrew.AsString;
         ZQPom.FieldByName('Skreslona').AsBoolean:= RxMemoryImportSkreslona.AsBoolean;
         ZQPom.FieldByName('Uwagi').AsString     := RxMemoryImportUwagi.AsString;

         ZQPom.FieldByName('WPISAL').AsString    := DM.PelnaNazwa;
         ZQPom.FieldByName('Data_W').AsDateTime  := Now();
         ZQPom.Post;
       end;

    RxMemoryImport.Next;
  end;

  FreeAndNil(ZQPom);
end;

procedure TOchImportOsobWidzenie.SetIDO(ido: integer);
var ZQPom: TZQueryPom;
begin
  SelectIDO:= ido;

  ZQPom:= TZQueryPom.Create(Self);
  ZQPom.SQL.Text:= 'SELECT IDO, NAZWISKO, IMIE, POC, KLASYF FROM osadzeni WHERE IDO=:ido';
  ZQPom.ParamByName('ido').AsInteger:= SelectIDO;
  ZQPom.Open;
  if not ZQPom.IsEmpty then
      lblDaneOsadzonego.Caption:= ZQPom.FieldByName('NAZWISKO').AsString+' '+ZQPom.FieldByName('IMIE').AsString+LineEnding+
                                  ZQPom.FieldByName('POC').AsString+'    '+ZQPom.FieldByName('KLASYF').AsString
  else
      lblDaneOsadzonego.Caption:= '';
  FreeAndNil(ZQPom);
end;

function TOchImportOsobWidzenie.ParseXML(Value: string): Boolean;
var FDoc: TXMLDocument;
    Strm: TStringStream;
    i: integer;
    NodeCOB: TDOMNodeList;
    s: string;
begin
  RxMemoryImport.Open;
  Result:= true;
  try
    try
      Strm:= TStringStream.Create(Value, CP_UTF8);
      ReadXMLFile(FDoc, Strm);

      NodeCOB:= FDoc.GetElementsByTagName('COB');
      if Assigned(NodeCOB) then
      begin
        if (NodeCOB.Count>=1)and(StrToIntDef(NodeCOB[0].Attributes.GetNamedItem('IDO').NodeValue,0)=SelectIDO) then
          for i:=0 to NodeCOB.Count-1 do
            begin
              RxMemoryImport.Append;
              RxMemoryImportNazwisko.AsAnsiString:= NodeCOB[i].Attributes.GetNamedItem('NAZ').NodeValue;
              RxMemoryImportImie.AsAnsiString    := NodeCOB[i].Attributes.GetNamedItem('IME').NodeValue;
              s:= NodeCOB[i].Attributes.GetNamedItem('MSC_op').NodeValue
                  +' ul.'+NodeCOB[i].Attributes.GetNamedItem('ULC').NodeValue
                  +' '+NodeCOB[i].Attributes.GetNamedItem('DOM').NodeValue;
                if Assigned(NodeCOB[i].Attributes.GetNamedItem('LOK')) then
                   s+= '/'+NodeCOB[i].Attributes.GetNamedItem('LOK').NodeValue;
              RxMemoryImportAdres.AsString:= s;
              RxMemoryImportPokrew.AsAnsiString  := NodeCOB[i].Attributes.GetNamedItem('STS_op').NodeValue;
              RxMemoryImportUwagi.AsString       := 'NoeNET';  // NodeCOB[i].Attributes.GetNamedItem('KOM').NodeValue;

              // 0:NIE 1:Jednorazowe 2:TAK
              if NodeCOB[i].Attributes.GetNamedItem('PDWI_op').NodeValue = 'NIE' then
                  RxMemoryImportSkreslona.AsBoolean:= true
                else
                  RxMemoryImportSkreslona.AsBoolean:= False;

              RxMemoryImport.Post;
            end
        else
          MessageDlg('Wklejono błędne dane '+LineEnding+'lub dane innego osadzonego.', mtWarning, [mbOK],0);
      end;

    finally
      FDoc.Free;
      Strm.Free;
    end;
  except
    Result:= false;
    MessageDlg('Wystąpił błąd podczas analizy danych.', mtWarning, [mbOK],0);
  end;
  Result:= not RxMemoryImport.IsEmpty;
end;

// STATUS OSOBY: [OK, Modyfikuj, Nowa, OTIS].  Modyfikuj(Adres, Pokrewieństwo, Prawo do widzeń)
procedure TOchImportOsobWidzenie.SprawdzStatusOsob;
var ZQPom: TZQueryPom;
begin
  ZQPom:= TZQueryPom.Create(Self);
  ZQPom.SQL.Text:= 'SELECT * FROM uprawnione WHERE IDO=:ido';
  ZQPom.ParamByName('ido').AsInteger:= SelectIDO;
  ZQPom.Open;

  // usuwamy zdublowaną pozycje (Skresloną)
  // TODO
  // --------------------------------------

  while not ZQPom.EOF do
  begin
    // sprawdzam czy już istnieje Nazwisko i Imię
    if RxMemoryImport.Locate('Nazwisko;Imie', VarArrayOf([ZQPom.FieldByName('Nazwisko').AsString, ZQPom.FieldByName('Imie').AsString]), [loCaseInsensitive]) then
      begin
        RxMemoryImport.Edit;
        RxMemoryImportID.AsInteger:= ZQPom.FieldByName('ID').AsInteger;

        // sprawdzam czy zgadza się Adres, Pokrewieństwo, prawo do widzeń
        if (RxMemoryImportAdres.AsString      <> ZQPom.FieldByName('Adres').AsString)or
           (RxMemoryImportPokrew.AsString     <> ZQPom.FieldByName('Pokrew').AsString)or
           (RxMemoryImportSkreslona.AsBoolean <> ZQPom.FieldByName('Skreslona').AsBoolean)
           then RxMemoryImportStatusOs.AsString:= 'Modyfikuj'
        else
          RxMemoryImportStatusOs.AsString:= 'OK';
        RxMemoryImport.Post;
      end
    else // jeśli pozycja z OTIS nie istnieje w Noe
      begin
        // dopisz z OTIS'a
        RxMemoryImport.Append;
        RxMemoryImportStatusOs.AsString  := 'OTIS';
        RxMemoryImportID.AsInteger       := ZQPom.FieldByName('ID').AsInteger;
        RxMemoryImportNazwisko.AsString  := ZQPom.FieldByName('Nazwisko').AsString;
        RxMemoryImportImie.AsString      := ZQPom.FieldByName('Imie').AsString;
        RxMemoryImportAdres.AsString     := ZQPom.FieldByName('Adres').AsString;
        RxMemoryImportPokrew.AsString    := ZQPom.FieldByName('Pokrew').AsString;
        RxMemoryImportSkreslona.AsBoolean:= ZQPom.FieldByName('Skreslona').AsBoolean;
        RxMemoryImport.Post;
      end;
    ZQPom.Next;
  end;

  // te pozycje co pozostały bez nadanego ID zmieniają status na Nowa
  RxMemoryImport.First;
  while not RxMemoryImport.EOF do
  begin
    if RxMemoryImportID.IsNull then
      begin
        RxMemoryImport.Edit;
        RxMemoryImportStatusOs.AsString:= 'Nowa';
        RxMemoryImport.Post;
      end;
    RxMemoryImport.Next;
  end;

  RxMemoryImport.First;
  FreeAndNil(ZQPom);
end;

end.

