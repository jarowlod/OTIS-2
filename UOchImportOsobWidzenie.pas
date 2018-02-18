unit UOchImportOsobWidzenie;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, FileUtil, rxdbgrid, rxmemds, TplGradientUnit, Forms,
  Controls, Graphics, Dialogs, ExtCtrls, StdCtrls, Buttons, datamodule;

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
    RxMemoryImportImie: TStringField;
    RxMemoryImportNazwisko: TStringField;
    RxMemoryImportPokrew: TStringField;
    RxMemoryImportSkreslona: TBooleanField;
    RxMemoryImportUwagi: TStringField;
    procedure btnImportOsobClick(Sender: TObject);
    procedure btnPasteClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    SelectIDO: integer;
    function ParseXML(Value: string): Boolean;
  public
    procedure SetIDO(ido: integer);
  end;

var
  OchImportOsobWidzenie: TOchImportOsobWidzenie;

implementation
uses Clipbrd, Laz2_DOM, laz2_XMLRead, LazUTF8;
{$R *.frm}

{ TOchImportOsobWidzenie }

procedure TOchImportOsobWidzenie.FormCreate(Sender: TObject);
begin
  SelectIDO:= 0;
  btnImportOsob.Enabled:= false;
end;

procedure TOchImportOsobWidzenie.btnPasteClick(Sender: TObject);
begin
  btnImportOsob.Enabled:= ParseXML(Clipboard.AsText);
end;

procedure TOchImportOsobWidzenie.btnImportOsobClick(Sender: TObject);
begin
  // sprawdzam czy istnieje (Nazwisko Imie)
  // jeśli istnieje to weryfikuję Adres i prawo do widzeń
  // else dopisuję
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
begin
  RxMemoryImport.Open;
  Result:= true;
  try
    try
      Strm:= TStringStream.Create(Value);
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
              RxMemoryImportAdres.AsAnsiString   := NodeCOB[i].Attributes.GetNamedItem('MSC_op').NodeValue
                                                   +' ul.'+NodeCOB[i].Attributes.GetNamedItem('ULC').NodeValue
                                                   +' '+NodeCOB[i].Attributes.GetNamedItem('DOM').NodeValue
                                                   +'/'+NodeCOB[i].Attributes.GetNamedItem('LOC').NodeValue;
              RxMemoryImportPokrew.AsAnsiString  := NodeCOB[i].Attributes.GetNamedItem('STS_op').NodeValue;
              RxMemoryImportUwagi.AsString       := 'NoeNET';

              // 0:NIE 1:Jednorazowe 2:TAK
              if NodeCOB[i].Attributes.GetNamedItem('PDWI_op').NodeValue = 'NIE' then
                RxMemoryImportSkreslona.AsBoolean:= true;

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
  end;
  Result:= not RxMemoryImport.IsEmpty;
end;

end.

