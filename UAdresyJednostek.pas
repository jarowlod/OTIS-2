unit UAdresyJednostek;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, FileUtil, LR_Class,
  ZDataset, rxdbgrid, rxmemds, Forms, Controls, Graphics,
  Dialogs, ExtCtrls, Buttons, StdCtrls, DbCtrls, ComCtrls, datamodule;

type

  { TAdresyJednostek }
  TAdresTabName = (tnJednostki, tnSady, tnPolicja);

  TAdresyJednostek = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBMemo2: TDBMemo;
    DBMemo4: TDBMemo;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    DBNavigator3: TDBNavigator;
    DSAdrJednostki: TDataSource;
    DBMemo1: TDBMemo;
    DSAdrSady: TDataSource;
    DSAdrPolicja: TDataSource;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    PageControl1: TPageControl;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    RxDBGrid1: TRxDBGrid;
    RxDBGrid2: TRxDBGrid;
    RxDBGrid4: TRxDBGrid;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet4: TTabSheet;
    ZQAdrJednostki: TZQuery;
    ZQAdrSady: TZQuery;
    ZQAdrPolicja: TZQuery;
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
  private
    fAdres: string;
    // procedurea pomocnicza na wypadek importu jednostek z EDoka
    procedure ZamienNaZDuzejLitery; // zamienia w bazie pozycje pisane DUŻYMI znakami na zaczynające się z Dużej Litery
  public
    Function GetAdres: string;
    procedure SetActiveTabIndex(index: TAdresTabName);
  end;

var
  AdresyJednostek: TAdresyJednostek;

implementation
uses LazUTF8;
{$R *.frm}

{ TAdresyJednostek }

procedure TAdresyJednostek.FormCreate(Sender: TObject);
begin
  fAdres:= '';
  Edit1Change(Sender);
end;

procedure TAdresyJednostek.PageControl1Change(Sender: TObject);
begin
  Edit1Change(Sender);
end;

procedure TAdresyJednostek.BitBtn1Click(Sender: TObject);
begin
  fAdres:= '';
  case TAdresTabName(PageControl1.ActivePageIndex) of
       tnJednostki:
         begin
            if not ZQAdrJednostki.isEmpty then
               begin
                 fAdres:= ZQAdrJednostki.FieldByName('Adres').AsString;
                 if fAdres='' then fAdres:= ZQAdrJednostki.FieldByName('Jednostka').AsString;
               end;
          end;
       tnSady:
          begin
            if not ZQAdrSady.isEmpty then
               fAdres:= ZQAdrSady.FieldByName('Adres').AsString;
          end;
       tnPolicja:
          begin
            if not ZQAdrPolicja.isEmpty then
               fAdres:= ZQAdrPolicja.FieldByName('Adres').AsString;
          end;

  end;
end;

procedure TAdresyJednostek.Edit1Change(Sender: TObject);
var s: string;
begin
  s:= Trim(Edit1.Text);
  if s='' then s:= '%' else s:='%'+s+'%';

  case TAdresTabName(PageControl1.ActivePageIndex) of
       tnJednostki: begin
                      with ZQAdrJednostki do
                      begin
                         Close;
                         ParamByName('kod').AsString:= s;
                         Open;
                      end;
                    end;
       tnSady:      begin
                      with ZQAdrSady do
                      begin
                         Close;
                         ParamByName('Nazwa').AsString:= s;
                         Open;
                      end;
                    end;
       tnPolicja:   begin
                      with ZQAdrPolicja do
                      begin
                         Close;
                         ParamByName('Nazwa').AsString:= s;
                         Open;
                      end;
                    end;
  end;
end;

function TAdresyJednostek.GetAdres: string;
begin
  Result:= fAdres;
end;

procedure TAdresyJednostek.SetActiveTabIndex(index: TAdresTabName);
begin
  PageControl1.ActivePageIndex:= Integer(index);
  Edit1Change(Self);
end;


// Procedura pomocnicza zamienia DUŻE LITERY na pisane z Dużej Litery
procedure TAdresyJednostek.ZamienNaZDuzejLitery;
var adres: TStringList;
    s,s1: string;
    ZQPom: TZQueryPom;
    RxMem: TRxMemoryData;

  procedure PoprawAdres;
  var s: string;
  begin
    s:= adres[1];
    adres[1]:= UTF8ProperCase(s,[' ','-']);
  end;

begin
  ZQPom:= TZQueryPom.Create(self);
  ZQPom.SQL.Text:= 'SELECT * FROM sl_jednostki';
  ZQPom.Open;

  RxMem:= TRxMemoryData.Create(Self);
  RxMem.FieldDefs.Create(ZQPom);
  RxMem.Open;

  adres:= TStringList.Create;
  while not ZQPom.EOF do
  begin
    RxMem.Append;
    RxMem.FieldByName('Kod').AsString      := ZQPom.FieldByName('Kod').AsString;
    RxMem.FieldByName('Jednostka').AsString:= ZQPom.FieldByName('Jednostka').AsString;
    RxMem.FieldByName('Telefon').AsString  := ZQPom.FieldByName('Telefon').AsString;
    RxMem.FieldByName('Fax').AsString      := ZQPom.FieldByName('Fax').AsString;

    adres.Text                             := ZQPom.FieldByName('Adres').AsString;
    if adres.Count>=3 then
    begin
      s:= UTF8Copy(adres[0],1,2);
      if (s='ZK')or(s='AŚ')or(s='OI')or(s='OD') then
      begin
        s1:= UTF8Copy(adres[0], 3, UTF8Length(adres[0])-2);
        s1:= UTF8ProperCase(s1, [' ','-']);
        adres[0]:= s + s1;
      end;
      adres[1]:= UTF8ProperCase(adres[1],[' ','-']);
      adres[2]:= UTF8ProperCase(adres[2],[' ','-']);
      adres.Text:= UTF8StringReplace(adres.Text,'Ul.','ul.',[]);
      adres.Text:= UTF8StringReplace(adres.Text,' W ',' w ',[rfReplaceAll]);
      if (UTF8Pos('ul.', adres[1])=0)and(UTF8Pos('Ul.', adres[1])=0) then adres[1]:= 'ul. '+adres[1];
    end;
    RxMem.FieldByName('Adres').AsString    := adres.Text;

    RxMem.Post;

    ZQPom.Next;
  end;
  FreeAndNil(adres);

  ZQPom.SQL.Text:= 'UPDATE sl_jednostki SET Adres = :Adres, Telefon = :Telefon, Fax = :Fax WHERE Kod = :kod';
  RxMem.First;

  while not RxMem.EOF do
  begin
    ZQPom.ParamByName('kod').AsString    := RxMem.FieldByName('Kod').AsString;
    ZQPom.ParamByName('Adres').AsString  := RxMem.FieldByName('Adres').AsString;
    ZQPom.ParamByName('Telefon').AsString:= RxMem.FieldByName('Telefon').AsString;
    ZQPom.ParamByName('Fax').AsString    := RxMem.FieldByName('Fax').AsString;
    ZQPom.ExecSQL;
    RxMem.Next;
  end;

  FreeAndNil(ZQPom);
  FreeAndNil(RxMem);
end;


end.

// IMPORT ADRESÓW z pliku
{
procedure TAdresyJednostek.Button1Click(Sender: TObject);
var i: integer;
    p1,p2: integer;
    n, s, s1, s2: string;
begin
    i:=0;

    while Memo1.Lines.Count>i do
    begin
      Application.ProcessMessages;

      p1 := Pos('Sąd ',Memo1.Lines.Strings[i]);
      if p1=1 then
      begin
        MemDataset1.Append;

        n:= Memo1.Lines.Strings[i];
        MemDataset1.FieldByName('Nazwa').AsString:= n;
        Memo1.Lines.Delete(i);

        p1 := Pos('Adres:',Memo1.Lines.Strings[i]);
        if p1=1 then
        begin
          s:= Memo1.Lines.Strings[i];
          Delete(s, 1, 6); // kasuje Adres:
          p2:= Pos(';', s);
          s1:= Copy(s, 1, p2-1); // ulica
          Delete(s, 1, p2);     // del ulica
          s2:= Trim(s);
          s:= n + LineEnding + s1 + LineEnding + s2;
          Memo1.Lines.Delete(i);
          MemDataset1.FieldByName('Adres').AsString:= s;
        end;

        p1 := Pos('Telefon:',Memo1.Lines.Strings[i]);
        if p1=1 then
        begin
          s:= Memo1.Lines.Strings[i];
          Delete(s, 1, 8); // kasuje Telefon:
          Memo1.Lines.Delete(i);
          MemDataset1.FieldByName('Telefon').AsString:= s;
        end;

        p1 := Pos('Fax:',Memo1.Lines.Strings[i]);
        if p1=1 then
        begin
          s:= Memo1.Lines.Strings[i];
          Delete(s, 1, 4); // kasuje Fax:
          Memo1.Lines.Delete(i);
          MemDataset1.FieldByName('Fax').AsString:= s;
        end;

        MemDataset1.Post;
      end
      else inc(i);

    end;

  MemDataset1.First;
  ZQAdrSady.Open;
  while not MemDataset1.EOF do
  begin
    ZQAdrSady.Append;
    ZQAdrSady.FieldByName('Nazwa').AsString := MemDataset1.FieldByName('Nazwa').AsString;
    ZQAdrSady.FieldByName('Adres').AsString := MemDataset1.FieldByName('Adres').AsString;
    ZQAdrSady.FieldByName('Telefon').AsString := MemDataset1.FieldByName('Telefon').AsString;
    ZQAdrSady.FieldByName('Fax').AsString := MemDataset1.FieldByName('Fax').AsString;
    ZQAdrSady.Post;
    MemDataset1.Next;
  end;
end;
}

// Adresy Jednostek oraz Policji
{
procedure TAdresyJednostek.Button1Click(Sender: TObject);
var i: integer;
    p1: integer;
    s, s1, s2: string;
    adres, ulica: string;
    st: TStringList;
    ZQPom: TZQueryPom;
begin
  i:=1;  // pomijamy nagłówek
  st:= TStringList.Create;

  while Memo1.Lines.Count>i do
  begin
    Application.ProcessMessages;

    s:= Memo1.Lines.Strings[i];
    st.Clear;
    ExtractStrings([';'], [], PChar(s), st, true);

//    p1 := Pos('"AŚ', st[2]);
//    if p1=0 then p1 := Pos('"ZK', st[2]);
//    if p1=0 then p1 := Pos('"OI', st[2]);
//    if p1=0 then p1 := Pos('"OD', st[2]);
//    if p1=0 then p1 := Pos('"OS', st[2]);
    p1 := Pos('"KMP', st[2]);
    if p1=0 then p1 := Pos('"KGP', st[2]);
    if p1=0 then p1 := Pos('"KP', st[2]);
    if p1=0 then p1 := Pos('"KPP', st[2]);
    if p1=0 then p1 := Pos('"KWP', st[2]);
    if p1>0 then
    begin
      Memo1.Lines.Delete(i);
      MemDataset1.Append;

      s1:= StringReplace(st[2],'"','',[rfReplaceAll]);
      s1:= StringReplace(s1,'-',' ',[]);
      MemDataset1.FieldByName('jednostka').AsString:= s1;
      //
      adres:=s1; // nazwa jednostki

      ulica:=StringReplace(st[6],'"','',[rfReplaceAll]);
      s1:= StringReplace(st[7],'"','',[rfReplaceAll]);  // numer domu
      s2:= StringReplace(st[8],'"','',[rfReplaceAll]);  // numer lokalu
      ulica:= ulica+ ' '+ s1;
      if (s1<>'')and(s2<>'') then ulica:=ulica+'/';
      ulica:= ulica + s2;
      adres:=adres + LineEnding + ulica + LineEnding
                   + StringReplace(st[5],'"','',[rfReplaceAll])+ ' '+ StringReplace(st[9],'"','',[rfReplaceAll]); // kod miejscowość

      MemDataset1.FieldByName('adres').AsString:= adres;
      MemDataset1.FieldByName('telefon').AsString:= StringReplace(st[11],'"','',[rfReplaceAll]);
      MemDataset1.FieldByName('fax').AsString:= StringReplace(st[12],'"','',[rfReplaceAll]);
      MemDataset1.Post;
    end
    else inc(i);
  end;

  ZQPom:= TZQueryPom.Create(self);
//  ZQPom.SQL.Text:='UPDATE sl_jednostki SET Adres = :Adres, Telefon = :Telefon, Fax = :Fax WHERE Jednostka = :Jednostka';
  ZQPom.SQL.Text:='INSERT INTO sl_adresy_policja (Nazwa, Adres, Telefon, Fax) VALUES (:Nazwa, :Adres, :Telefon, :Fax)';
  MemDataset1.First;
  while not MemDataset1.EOF do
  begin
    ZQPom.ParamByName('Nazwa').AsString:= MemDataset1.FieldByName('jednostka').AsString;
    ZQPom.ParamByName('Adres').AsString:= MemDataset1.FieldByName('adres').AsString;
    ZQPom.ParamByName('Telefon').AsString:= MemDataset1.FieldByName('telefon').AsString;
    ZQPom.ParamByName('Fax').AsString:= MemDataset1.FieldByName('fax').AsString;
    ZQPom.ExecSQL;
    MemDataset1.Next;
  end;

  FreeAndNil(ZQPom);
  FreeAndNil(st);
end;
}


