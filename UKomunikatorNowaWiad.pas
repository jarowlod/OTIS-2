unit UKomunikatorNowaWiad;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, memds, FileUtil, ZDataset, rxdbgrid, Forms,
  Controls, Graphics, Dialogs, ExtCtrls, StdCtrls, Buttons, datamodule, Types,
  Grids, Menus, ActnList, ComCtrls, UViewRichEdit;

type

  { TKomunikatorNowaWiad }

  TKomunikatorNowaWiad = class(TForm)
    btnOK: TBitBtn;
    btnCancel: TBitBtn;
    btnDodaj: TBitBtn;
    btnUsun: TBitBtn;
    btnZapiszGrupe: TBitBtn;
    btnKosz: TBitBtn;
    DSTresc: TDataSource;
    DSOdbiorcy: TDataSource;
    DSUzytkownicy: TDataSource;
    DSGrupy: TDataSource;
    edTemat: TEdit;
    edZnajdz: TEdit;
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    Label2: TLabel;
    memOdbiorcy: TMemDataset;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    Panel1: TPanel;
    PanelRichMemoEdytor: TPanel;
    Panel11: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    PopupMenu1: TPopupMenu;
    RxDBGridUsers: TRxDBGrid;
    RxDBGridOdbiorcy: TRxDBGrid;
    RxDBGridGrupy: TRxDBGrid;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    Splitter3: TSplitter;
    ZQTresc: TZQuery;
    ZQOdbiorcy: TZQuery;
    ZQUzytkownicy: TZQuery;
    ZQGrupy: TZQuery;
    procedure btnOKClick(Sender: TObject);
    procedure btnDodajClick(Sender: TObject);
    procedure btnUsunClick(Sender: TObject);
    procedure btnZapiszGrupeClick(Sender: TObject);
    procedure btnKoszClick(Sender: TObject);
    procedure edZnajdzChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure RxDBGridGrupyDataHintShow(Sender: TObject; CursorPos: TPoint;
      Cell: TGridCoord; Column: TRxColumn; var HintStr: string;
      var Processed: boolean);
    procedure RxDBGridGrupyDblClick(Sender: TObject);
  private
    fViewRichEdit: TViewRichEdit;
    Function GetFullName(user_login: string): string;
  public
    Procedure OdpiszDo(user: string);
    Procedure OdpiszDoUserByIDO(IDO: integer);
    Procedure AutoKomunikat(user_list: TStringList; temat: string; tresc: string; autoSend: Boolean = true);
  end;

type
 THackGrid = class(TRxDBGrid);

//var
//  KomunikatorNowaWiad: TKomunikatorNowaWiad;

implementation
uses UAktualizacjaOs;
{$R *.frm}

{ TKomunikatorNowaWiad }

procedure TKomunikatorNowaWiad.FormCreate(Sender: TObject);
begin
  edZnajdzChange(Sender); // Open ZQUzytkownicy;

  ZQGrupy.ParamByName('user').AsString:= DM.login;
  ZQGrupy.Open;

  // tworzymy Rich edytor w PanelRichMemoEdytor
  fViewRichEdit:= TViewRichEdit.Create(Self);
  fViewRichEdit.Parent:= PanelRichMemoEdytor;
  fViewRichEdit.Show;
end;

procedure TKomunikatorNowaWiad.FormClose(Sender: TObject;
  var CloseAction: TCloseAction);
begin
  FreeAndNil(fViewRichEdit);
end;

procedure TKomunikatorNowaWiad.FormShow(Sender: TObject);
begin
  //RichMemo1.SetFocus;
  //PrepareToolbar();
end;

procedure TKomunikatorNowaWiad.btnDodajClick(Sender: TObject);
begin
  if ZQUzytkownicy.IsEmpty then exit;

  if memOdbiorcy.Locate('user', ZQUzytkownicy.FieldByName('user').AsString,[]) then
  begin
    MessageDlg('Użytkownik jest już dodany do odbiorców.', mtInformation, [mbCancel],0);
    exit;
  end;

  memOdbiorcy.Append;
  memOdbiorcy.FieldByName('user').AsString        := ZQUzytkownicy.FieldByName('user').AsString;
  memOdbiorcy.FieldByName('NazwiskoImie').AsString:= ZQUzytkownicy.FieldByName('Full_name').AsString;
  memOdbiorcy.Post;
end;

// WYSLIJ KOMUNIKAT
procedure TKomunikatorNowaWiad.btnOKClick(Sender: TObject);
begin
  if Trim(fViewRichEdit.Text)='' then
  begin
    MessageDlg('Nie wprowadzono tręści wiadomości.', mtWarning, [mbOK],0);
    ModalResult:= mrNone;
    exit;
  end;
  if Trim(edTemat.Text)='' then
  begin
    MessageDlg('Nie wprowadzono tematu wiadomości.', mtWarning, [mbOK],0);
    ModalResult:= mrNone;
    exit;
  end;
  if memOdbiorcy.IsEmpty then
  begin
    MessageDlg('Nie wprowadzono adresata wiadomości.', mtWarning, [mbOK],0);
    ModalResult:= mrNone;
    exit;
  end;

  ZQTresc.Open;
  ZQTresc.Append;
  ZQTresc.FieldByName('nadawca').AsString      := DM.login;
  ZQTresc.FieldByName('dataNadania').AsDateTime:= Now();
  ZQTresc.FieldByName('temat').AsString        := edTemat.Text;
  ZQTresc.FieldByName('komunikat').AsString    := fViewRichEdit.Rtf; //RichMemo1.Rtf;
  ZQTresc.Post;

  memOdbiorcy.First;
  ZQOdbiorcy.Open;
  while not memOdbiorcy.EOF do
  begin
    ZQOdbiorcy.Append;
    ZQOdbiorcy.FieldByName('odbiorca').AsString:= memOdbiorcy.FieldByName('user').AsString;
    ZQOdbiorcy.Post;

    memOdbiorcy.Next;
  end;

  ZQTresc.Close;
  ZQOdbiorcy.Close;

  DM.KomunikatPopUp(Sender, 'Nowa wiadomość', 'Wiadomość wysłana.', nots_Info);
end;

procedure TKomunikatorNowaWiad.btnUsunClick(Sender: TObject);
begin
  if memOdbiorcy.IsEmpty then exit;
  memOdbiorcy.Delete;
end;

//zapisz grupę
procedure TKomunikatorNowaWiad.btnZapiszGrupeClick(Sender: TObject);
var ValueEdit: string;
    odbiorcy : string;
    Edycja: Boolean;
begin
  ValueEdit:= '';
  odbiorcy := '';
  if memOdbiorcy.IsEmpty then exit;

  if InputQuery('Grupa', 'Podaj nazwę grupy:', ValueEdit) then
  begin
    if ValueEdit = '' then exit;
    Edycja:= false;
    if ZQGrupy.Locate('Nazwa', ValueEdit, []) then
    begin
      if MessageDlg('Podana nazwa grupy już istnieje.'+LineEnding+'Czy nadpisać ?', mtWarning, [mbOK, mbCancel],0) = mrCancel then exit
         else Edycja:= true;
    end;

    memOdbiorcy.First;
    while not memOdbiorcy.EOF do
    begin
      if odbiorcy<>'' then odbiorcy:= odbiorcy + LineEnding;
      odbiorcy:=odbiorcy + memOdbiorcy.FieldByName('NazwiskoImie').AsString +';'+ memOdbiorcy.FieldByName('user').AsString;
      memOdbiorcy.Next;
    end;

    if Edycja then ZQGrupy.Edit
              else ZQGrupy.Append;
    ZQGrupy.FieldByName('user').AsString:= DM.login;
    ZQGrupy.FieldByName('Nazwa').AsString:= ValueEdit;
    ZQGrupy.FieldByName('odbiorcy').AsString:= odbiorcy;
    ZQGrupy.Post;
  end;
end;

procedure TKomunikatorNowaWiad.btnKoszClick(Sender: TObject);
begin
  memOdbiorcy.Clear(false);
end;

procedure TKomunikatorNowaWiad.edZnajdzChange(Sender: TObject);
begin
  ZQUzytkownicy.Close;
  ZQUzytkownicy.ParamByName('nazwisko').AsString:= Trim(edZnajdz.Text)+'%';
  ZQUzytkownicy.Open;
end;

procedure TKomunikatorNowaWiad.MenuItem2Click(Sender: TObject);
begin
  if ZQGrupy.IsEmpty then exit;
  ZQGrupy.Delete;
end;

procedure TKomunikatorNowaWiad.RxDBGridGrupyDataHintShow(Sender: TObject;
  CursorPos: TPoint; Cell: TGridCoord; Column: TRxColumn; var HintStr: string;
  var Processed: boolean);
var
  ActRec: Integer;
begin
  if RxDBGridGrupy.DataSource.DataSet.Active then
  begin
    ActRec := THackGrid(RxDBGridGrupy).DataLink.ActiveRecord;
    try
      THackGrid(RxDBGridGrupy).DataLink.ActiveRecord := Cell.Y-1;  // jeśli jest nagłówek to: -1
      HintStr := RxDBGridGrupy.DataSource.DataSet.FieldByName('odbiorcy').AsString;
    finally
      THackGrid(RxDBGridGrupy).DataLink.ActiveRecord := ActRec;
    end;
  end;
  Processed:= true;
end;

procedure TKomunikatorNowaWiad.RxDBGridGrupyDblClick(Sender: TObject);
var lista   : TStringList;
    wiersz  : TStringList;
    i       : integer;
begin
 // dodaje całą grupę
  if ZQGrupy.IsEmpty then exit;
  //memOdbiorcy.Clear(false);

  lista:= TStringList.Create;
  lista.Text:= ZQGrupy.FieldByName('odbiorcy').AsString;
  wiersz:= TStringList.Create;

  for i:=0 to lista.Count-1 do
  begin
    wiersz.Clear;
    SplitString(';', lista[i], wiersz, 0);

    if not memOdbiorcy.Locate('user', wiersz[1] ,[]) then
    begin
      memOdbiorcy.Append;
      memOdbiorcy.FieldByName('user').AsString        := wiersz[1];
      memOdbiorcy.FieldByName('NazwiskoImie').AsString:= wiersz[0];
      memOdbiorcy.Post;
    end;
  end;

  FreeAndNil(lista);
  FreeAndNil(wiersz);
end;

function TKomunikatorNowaWiad.GetFullName(user_login: string): string;
begin
  if ZQUzytkownicy.Locate('user', user_login,[]) then
     Result:= ZQUzytkownicy.FieldByName('Full_name').AsString
     else
     Result:= '';
end;

procedure TKomunikatorNowaWiad.OdpiszDo(user: string);
var ZQPom: TZQueryPom;
begin
  edTemat.Text:='Odp: ';

  ZQPom:= TZQueryPom.Create(Self);
  ZQPom.SQL.Text:= 'SELECT user, Full_name FROM uprawnienia WHERE user = :user';
  ZQPom.ParamByName('user').AsString:= user;
  ZQPom.Open;
  if ZQPom.IsEmpty then exit;

  memOdbiorcy.Append;
  memOdbiorcy.FieldByName('user').AsString        := user;
  memOdbiorcy.FieldByName('NazwiskoImie').AsString:= ZQPom.FieldByName('Full_name').AsString;
  memOdbiorcy.Post;

  FreeAndNil(ZQPom);
end;

procedure TKomunikatorNowaWiad.OdpiszDoUserByIDO(IDO: integer);
var ZQPom: TZQueryPom;
begin
  ZQPom:= TZQueryPom.Create(Self);
  ZQPom.SQL.Text:= 'SELECT os.IDO, os.POC, os.NAZWISKO, os.IMIE, typ.wychowawca, upr.user, upr.Full_name FROM osadzeni as os '+
                   'LEFT JOIN typ_cel as typ ON (os.POC = typ.POC) '+
                   'LEFT JOIN uprawnienia as upr ON (typ.wychowawca = upr.wychowawca) '+
                   'WHERE (os.IDO = :ido) AND (typ.wychowawca<>"") ';
  ZQPom.ParamByName('ido').AsInteger := IDO;
  ZQPom.Open;
  if ZQPom.IsEmpty then exit;

  edTemat.Text:='Dotyczy: '+ ZQPom.FieldByName('NAZWISKO').AsString+' '+ZQPom.FieldByName('IMIE').AsString;;

  memOdbiorcy.Append;
  memOdbiorcy.FieldByName('user').AsString        := ZQPom.FieldByName('user').AsString;
  memOdbiorcy.FieldByName('NazwiskoImie').AsString:= ZQPom.FieldByName('Full_name').AsString;
  memOdbiorcy.Post;

  FreeAndNil(ZQPom);
end;

procedure TKomunikatorNowaWiad.AutoKomunikat(user_list: TStringList; temat: string; tresc: string; autoSend: Boolean);
var i: integer;
begin
  edTemat.Text:= temat;
  fViewRichEdit.SelText:= tresc; //RichMemo1.SelText:= tresc;

  for i:=0 to user_list.Count-1 do
    if user_list[i]<>'' then
    begin
      memOdbiorcy.Append;
      memOdbiorcy.FieldByName('user').AsString := user_list[i];
      memOdbiorcy.FieldByName('NazwiskoImie').AsString:= GetFullName(user_list[i]);
      memOdbiorcy.Post;
    end;

  if autoSend then btnOKClick(Self); // wyślij
end;

end.

