unit UKoszykDostep;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, FileUtil, ZDataset, rxdbgrid, Forms, Controls,
  Graphics, Dialogs, ExtCtrls, StdCtrls, DbCtrls, Buttons, datamodule;

type

  { TKoszykDostep }

  TKoszykDostep = class(TForm)
    btnUdostepnij: TBitBtn;
    DBNazwaKoszyka: TDBText;
    DSUzytkownicy: TDataSource;
    DSKoszykDostep: TDataSource;
    edWyszukaj: TEdit;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Label1: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel9: TPanel;
    RxDBGrid1: TRxDBGrid;
    RxDBGrid2: TRxDBGrid;
    Splitter1: TSplitter;
    ZQUzytkownicy: TZQuery;
    ZQKoszykDostep: TZQuery;
    procedure btnUdostepnijClick(Sender: TObject);
    procedure edWyszukajChange(Sender: TObject);
  private
    SelectID: integer;
    procedure WyslijKomunikat;
  public
    procedure SetID(aID: integer);
  end;

//var
//  KoszykDostep: TKoszykDostep;

implementation
uses UKomunikatorNowaWiad;

{$R *.frm}

{ TKoszykDostep }

procedure TKoszykDostep.edWyszukajChange(Sender: TObject);
begin
  ZQUzytkownicy.Close;
  ZQUzytkownicy.ParamByName('nazwisko').AsString:= Trim(edWyszukaj.Text)+'%';
  ZQUzytkownicy.Open;
end;

procedure TKoszykDostep.WyslijKomunikat;
var user: TStringList;
    tresc: string;
begin
  user := TStringList.Create;
  user.Add(ZQUzytkownicy.FieldByName('user').AsString);
  tresc:= 'Użytkownik ('+DM.PelnaNazwa+') udostępnił Ci koszyk ('+DBNazwaKoszyka.Caption+');';

  with TKomunikatorNowaWiad.Create(Self) do
  begin
       AutoKomunikat(user, 'Udostępniono koszyk', tresc);
       Free;
  end;
end;

procedure TKoszykDostep.btnUdostepnijClick(Sender: TObject);
begin
  if ZQUzytkownicy.IsEmpty then exit;
  if MessageDlg('Czy napewno chcesz udostępnić koszyk wybranemu użytkownikowi?', mtWarning, [mbOK, mbCancel], 0) = mrCancel then exit;

  if ZQKoszykDostep.Locate('user', ZQUzytkownicy.FieldByName('user').AsString, []) then
  begin
     MessageDlg('Wybrany użytkownik ma już dostęp do tego koszyka.', mtInformation, [mbOK], 0);
     exit;
  end;

  ZQKoszykDostep.Insert;
  ZQKoszykDostep.FieldByName('user').AsString          := ZQUzytkownicy.FieldByName('user').AsString;
  ZQKoszykDostep.FieldByName('ID_koszyka').AsInteger    := SelectID;
  ZQKoszykDostep.FieldByName('data_dodania').AsDateTime:= Now();
  ZQKoszykDostep.Post;

  DM.KomunikatPopUp(Sender,'Koszyk','Udostępniono koszyk ('+DBNazwaKoszyka.Caption+') użytkownikowi ('+
                            ZQUzytkownicy.FieldByName('Full_name').AsString+')', nots_Info);
  //wyślij komunikat do użytkownika o udostępnieniu mu koszyka
  WyslijKomunikat;
end;

procedure TKoszykDostep.SetID(aID: integer);
begin
  SelectID:= aID;
  edWyszukajChange(Self);
  ZQKoszykDostep.Close;
  ZQKoszykDostep.ParamByName('id_koszyka').AsInteger:= SelectID;
  ZQKoszykDostep.Open;
end;

end.

