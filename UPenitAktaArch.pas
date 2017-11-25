unit UPenitAktaArch;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, Buttons, datamodule, LR_Class;

type

  { TPenitAktaArch }

  TPenitAktaArch = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn8: TBitBtn;
    edROKP: TEdit;
    edROKT: TEdit;
    edSygnatura: TEdit;
    edNazwiskoImie: TEdit;
    frReport1: TfrReport;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    moTresc: TMemo;
    moAdresat: TMemo;
    moNaglowek: TMemo;
    Panel1: TPanel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
  private

  public
    Procedure SetIDO(ido: integer);
  end;

var
  PenitAktaArch: TPenitAktaArch;

implementation
uses UAdresyJednostek;
{$R *.frm}

{ TPenitAktaArch }

procedure TPenitAktaArch.SetIDO(ido: integer);
var ZQPom: TZQueryPom;
begin
  ZQPom:= TZQueryPom.Create(Self);
  ZQPom.SQL.Text:='SELECT Nazwisko, Imie, Ojciec, Urodz, Przyj FROM osadzeni WHERE IDO = :ido';
  ZQPom.ParamByName('ido').AsInteger:= ido;
  ZQPom.Open;
  edNazwiskoImie.Text:= ZQPom.FieldByName('Nazwisko').AsString + ' ' + ZQPom.FieldByName('Imie').AsString + ' o.'+ZQPom.FieldByName('Ojciec').AsString
                        + ' ur. '+ ZQPom.FieldByName('Urodz').AsString+' roku,';
  edROKT.Text:= ZQPom.FieldByName('Przyj').AsString;

  ZQPom.Close;
  ZQPom.SQL.Text:='SELECT ZnakPisma FROM uprawnienia WHERE user = :user';
  ZQPom.ParamByName('user').AsString:= DM.login;
  ZQPom.Open;
  edSygnatura.Text:= ZQPom.FieldByName('ZnakPisma').AsString;
  ZQPom.Close;

  FreeAndNil(ZQPom);
end;

procedure TPenitAktaArch.BitBtn8Click(Sender: TObject);
var ZQPom: TZQueryPom;
    str, str_i: string;

    Function GetTresc: string;
    var s: string;
        i: integer;
    begin
      s:= moTresc.Text;
      i:= Pos('[ROKP]',s);
      if i>0 then begin
                    Delete(s, i, 6);
                    Insert(edROKP.Text, s, i);
                  end;
      i:= Pos('[ROKT]',s);
      if i>0 then begin
                       Delete(s, i, 6);
                       Insert(edROKT.Text, s, i);
                     end;
      Result:= s;
    end;

begin
  if edROKP.Text='' then
  begin
    MessageDlg('Istotnym jest podanie daty zakończenia pobytu w jednostce do której wnioskujemy o akta archiwalne.', mtWarning, [mbOK],0);
    exit;
  end;

  ZQPom:= TZQueryPom.Create(Self);
  ZQPom.SQL.Text:='UPDATE uprawnienia SET ZnakPisma = :znak WHERE user = :user';
  ZQPom.ParamByName('user').AsString:= DM.login;
  ZQPom.ParamByName('znak').AsString:= edSygnatura.Text;
  ZQPom.ExecSQL;
  FreeAndNil(ZQPom);

  str:= GetTresc;

  str_i:= DM.GetInicjaly(DM.PelnaNazwa);
  str_i:= str_i+'/'+str_i;

  frReport1.LoadFromFile(DM.Path_Raporty + 'pen_AktaArch.lrf');

  DM.SetMemoReport(frReport1, 'Memo_DataPisma1', 'Kłodzko, dn. ... '+DM.GetDateFormatPismo(Date, 'MMMM yyyy')+' r.' );
  DM.SetMemoReport(frReport1, 'Memo_DataPisma2', 'Kłodzko, dn. ... '+DM.GetDateFormatPismo(Date, 'MMMM yyyy')+' r.' );

  DM.SetMemoReport(frReport1, 'Memo_ZnakPisma1', edSygnatura.Text );
  DM.SetMemoReport(frReport1, 'Memo_ZnakPisma2', edSygnatura.Text );
  DM.SetMemoReport(frReport1, 'Memo_Adresat1', moAdresat.Text );
  DM.SetMemoReport(frReport1, 'Memo_Adresat2', moAdresat.Text );
  DM.SetMemoReport(frReport1, 'Memo_Naglowek1', moNaglowek.Text );
  DM.SetMemoReport(frReport1, 'Memo_Naglowek2', moNaglowek.Text );
  DM.SetMemoReport(frReport1, 'Memo_Nazwisko1', edNazwiskoImie.Text );
  DM.SetMemoReport(frReport1, 'Memo_Nazwisko2', edNazwiskoImie.Text );
  DM.SetMemoReport(frReport1, 'Memo_Tresc1', str );
  DM.SetMemoReport(frReport1, 'Memo_Tresc2', str );
  DM.SetMemoReport(frReport1, 'Memo_Inicjaly1', str_i );
  DM.SetMemoReport(frReport1, 'Memo_Inicjaly2', str_i );

  frReport1.ShowReport;
end;

procedure TPenitAktaArch.BitBtn1Click(Sender: TObject);
begin
  with TAdresyJednostek.Create(Self) do
  begin
       SetActiveTabIndex(tnJednostki);
       if ShowModal = mrOK then
       begin
         if GetAdres<>'' then moAdresat.Text:= 'Pani/Pan Dyrektor' + LineEnding + GetAdres;  // GetAdres jest z TAdresaci
       end;
       Free;
  end;
end;

end.

