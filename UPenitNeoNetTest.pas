unit UPenitNeoNetTest;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  ComCtrls, Buttons, DBCtrls, TplGradientUnit, rxdbgrid, datamodule, DB,
  ZDataset, rxdbutils;

type

  { TPenitNeoNetTest }

  TPenitNeoNetTest = class(TForm)
    BitBtn1: TBitBtn;
    btnUstawIDSesji: TBitBtn;
    btnAnaliza: TBitBtn;
    cbIDO_2Kolumna: TCheckBox;
    cmbOpis: TComboBox;
    DBNavigator1: TDBNavigator;
    DSBledy: TDataSource;
    DSSesje: TDataSource;
    Label1: TLabel;
    Label8: TLabel;
    Memo1: TMemo;
    PageControl1: TPageControl;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    plGradient3: TplGradient;
    ProgressBar1: TProgressBar;
    RxDBGrid1: TRxDBGrid;
    RxDBGrid2: TRxDBGrid;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    ZQSesje: TZQuery;
    ZQBledy: TZQuery;
    procedure btnAnalizaClick(Sender: TObject);
    procedure btnUstawIDSesjiClick(Sender: TObject);
    procedure DSSesjeDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
  private
    FID_Sesji: integer;
  public

  end;

var
  PenitNeoNetTest: TPenitNeoNetTest;

implementation

{$R *.frm}

{ TPenitNeoNetTest }

procedure TPenitNeoNetTest.DSSesjeDataChange(Sender: TObject; Field: TField);
begin
  ZQBledy.Close;
  ZQBledy.ParamByName('ID_Sesji').AsInteger:= ZQSesje.FieldByName('ID_Sesji').AsInteger;
  ZQBledy.Open;
end;

procedure TPenitNeoNetTest.FormCreate(Sender: TObject);
begin
  ZQSesje.Open;
  if ZQSesje.IsEmpty then FID_Sesji:= 0
  else
    FID_Sesji:= ZQSesje.FieldByName('ID_Sesji').AsInteger+1; // ustalamy nowy numer sesji o jeden większy niż ostatnia sesja (pierwsza jest ostatnią, sort DESC)
end;

procedure TPenitNeoNetTest.btnAnalizaClick(Sender: TObject);
var i,p1,ido: integer;
    s,n: string;
    ZQPom: TZQueryPom;
begin
  ZQPom:= TZQueryPom.Create(Self);
  ZQPom.SQL.Text:= 'INSERT INTO wykaz_bledow (data_wpisu, user, ID_Sesji, IDO, Opis) VALUES (CURDATE(), :user, :ID_Sesji, :IDO, :Opis)';

  i:= 1;
  ProgressBar1.Max     := Memo1.Lines.Count;
  ProgressBar1.Position:= 0;
  ProgressBar1.Visible := true;
  while i<Memo1.Lines.Count do
   begin
     ProgressBar1.Position:= ProgressBar1.Max - Memo1.Lines.Count;
     Application.ProcessMessages;  // nie zawieszamy programu
     if Memo1.Lines.Strings[i]<>'' then
     begin
      try
       s:= Memo1.Lines.Strings[i];
       p1:= Pos(' ',s);
       n:= copy(s,1,p1-1);
       if cbIDO_2Kolumna.Checked then //IDO w drugiej kolumnie
       begin
         delete(s,1,p1);
         p1:= Pos(' ',s);
         n:= copy(s,1,p1-1);
       end;
       if TryStrToInt(n, ido) then //zapisz jeśli poprawne IDO
       begin
         ZQPom.ParamByName('user').AsString     := DM.PelnaNazwa;
         ZQPom.ParamByName('ID_Sesji').AsInteger:= FID_Sesji;
         ZQPom.ParamByName('IDO').AsInteger     := ido;
         ZQPom.ParamByName('Opis').AsString     := cmbOpis.Text;
         ZQPom.ExecSQL;
       end;
      except
        ShowMessage('Niewłaściwy format danych wejścionych (wiersz '+IntToStr(i+1)+'). Wklej dane z NoeNet.');
        exit;
      end;
      Memo1.Lines.Delete(i);
     end;
   end;
  ProgressBar1.Position:= ProgressBar1.Max;
  Application.ProcessMessages;
  Memo1.Lines.Clear;

  // UPDATE wykaz_bledow w celu uzupełnienia o kolejne dane
  ZQPom.SQL.Text:= 'UPDATE wykaz_bledow w' +
                   ' inner join osadzeni os ON os.IDO=w.IDO' +
                   ' inner join typ_cel c ON c.POC=os.POC and c.Wychowawca<>``'+
                   ' inner join uprawnienia u ON u.Wychowawca=c.Wychowawca'+
                   ' SET'+
                   ' w.POC = os.POC, w.NAZWISKO=os.NAZWISKO, w.IMIE=os.IMIE, w.OJCIEC=os.OJCIEC, w.KLASYF=os.KLASYF, w.Wychowawca=c.Wychowawca, w.wych_login=u.user'+
                   ' WHERE ID_Sesji=:ID_Sesji';
  ZQPom.ParamByName('ID_Sesji').AsInteger:= FID_Sesji;
  ZQPom.ExecSQL;

  ShowMessage('OK');
  ProgressBar1.Visible:= false;

  RefreshQuery(ZQSesje);
end;

procedure TPenitNeoNetTest.btnUstawIDSesjiClick(Sender: TObject);
begin
  if MessageDlg('Czy napewno dodawać wyniki analizy do obecnie wybranej sesji?', mtWarning, [mbOK, mbCancel], 0)= mrOK then FID_Sesji:= ZQSesje.FieldByName('ID_Sesji').AsInteger;
end;

end.

