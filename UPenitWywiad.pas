unit UPenitWywiad;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, LR_Class, Forms, Controls, Graphics, Dialogs,
  ExtCtrls, StdCtrls, Buttons, datamodule;

type

  { TPenitWywiad }

  TPenitWywiad = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn8: TBitBtn;
    edNazwiskoImie: TEdit;
    edSygnatura: TEdit;
    frReport1: TfrReport;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    moAdresat: TMemo;
    moNaglowek: TMemo;
    moTresc: TMemo;
    Panel1: TPanel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
  private

  public
    Procedure SetIDO(ido: integer);
  end;

var
  PenitWywiad: TPenitWywiad;

implementation
uses UAdresyJednostek;
{$R *.frm}

{ TPenitWywiad }

procedure TPenitWywiad.BitBtn1Click(Sender: TObject);
begin
  with TAdresyJednostek.Create(Self) do
  begin
       SetActiveTabIndex(tnSady);
       if ShowModal = mrOK then
       begin
         if GetAdres<>'' then
         begin
           moAdresat.Text:= GetAdres;
           if Pos('Sąd', GetAdres)=1 then  // jeśli adres jest do sądu to dodaj o kuratorach
              moAdresat.Text:= GetAdres + LineEnding + 'Kurator Zawodowy dla Dorosłych';  // GetAdres jest z TAdresaci
         end;
       end;
       Free;
  end;
end;

procedure TPenitWywiad.BitBtn8Click(Sender: TObject);
var ZQPom: TZQueryPom;
    str_i: string;

begin
  ZQPom:= TZQueryPom.Create(Self);
  ZQPom.SQL.Text:='UPDATE uprawnienia SET ZnakPisma = :znak WHERE user = :user';
  ZQPom.ParamByName('user').AsString:= DM.login;
  ZQPom.ParamByName('znak').AsString:= edSygnatura.Text;
  ZQPom.ExecSQL;
  FreeAndNil(ZQPom);

  str_i:= DM.GetInicjaly(DM.PelnaNazwa);
  str_i:= str_i+'/'+str_i;

  frReport1.LoadFromFile(DM.Path_Raporty + 'pen_Wywiad.lrf');

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
  DM.SetMemoReport(frReport1, 'Memo_Tresc1', moTresc.Text );
  DM.SetMemoReport(frReport1, 'Memo_Tresc2', moTresc.Text );
  DM.SetMemoReport(frReport1, 'Memo_Inicjaly1', str_i );
  DM.SetMemoReport(frReport1, 'Memo_Inicjaly2', str_i );

  frReport1.ShowReport;
end;

procedure TPenitWywiad.SetIDO(ido: integer);
var ZQPom: TZQueryPom;
begin
  ZQPom:= TZQueryPom.Create(Self);
  ZQPom.SQL.Text:='SELECT Nazwisko, Imie, Ojciec, Urodz, Przyj FROM osadzeni WHERE IDO = :ido';
  ZQPom.ParamByName('ido').AsInteger:= ido;
  ZQPom.Open;
  edNazwiskoImie.Text:= ZQPom.FieldByName('Nazwisko').AsString + ' ' + ZQPom.FieldByName('Imie').AsString + ' o.'+ZQPom.FieldByName('Ojciec').AsString
                        + ' ur. '+ ZQPom.FieldByName('Urodz').AsString+' roku,';

  ZQPom.Close;
  ZQPom.SQL.Text:='SELECT ZnakPisma FROM uprawnienia WHERE user = :user';
  ZQPom.ParamByName('user').AsString:= DM.login;
  ZQPom.Open;
  edSygnatura.Text:= ZQPom.FieldByName('ZnakPisma').AsString;
  ZQPom.Close;

  FreeAndNil(ZQPom);
end;

end.

