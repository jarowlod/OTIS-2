unit UKomunikatorNowaWiad;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, memds, FileUtil, ZDataset, rxdbgrid, Forms,
  Controls, Graphics, Dialogs, ExtCtrls, StdCtrls, Buttons, datamodule, Types,
  Grids, Menus, ActnList, ComCtrls, RichMemo;

type

  { TKomunikatorNowaWiad }

  TKomunikatorNowaWiad = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    cbFont: TComboBox;
    cbFontSize: TComboBox;
    btnColor: TColorButton;
    ColorDialog1: TColorDialog;
    DSTresc: TDataSource;
    DSOdbiorcy: TDataSource;
    DSUzytkownicy: TDataSource;
    DSGrupy: TDataSource;
    Edit1: TEdit;
    Edit2: TEdit;
    FontDialog1: TFontDialog;
    Image1: TImage;
    Image2: TImage;
    ImageList1: TImageList;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    memOdbiorcy: TMemDataset;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItemKopiuj: TMenuItem;
    MenuItemWytnij: TMenuItem;
    MenuItemWklej: TMenuItem;
    Panel1: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    PopupMenu1: TPopupMenu;
    PopupMenu2: TPopupMenu;
    RichMemo1: TRichMemo;
    RxDBGrid1: TRxDBGrid;
    RxDBGrid2: TRxDBGrid;
    RxDBGrid4: TRxDBGrid;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    Splitter3: TSplitter;
    ToolBar1: TToolBar;
    btnBold: TToolButton;
    btnItalic: TToolButton;
    btnUnderline: TToolButton;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton4: TToolButton;
    btnLeft: TToolButton;
    btnCenter: TToolButton;
    btnRight: TToolButton;
    ZQTresc: TZQuery;
    ZQOdbiorcy: TZQuery;
    ZQUzytkownicy: TZQuery;
    ZQGrupy: TZQuery;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure btnBoldClick(Sender: TObject);
    procedure btnCenterClick(Sender: TObject);
    procedure btnItalicClick(Sender: TObject);
    procedure btnLeftClick(Sender: TObject);
    procedure btnRightClick(Sender: TObject);
    procedure btnUnderlineClick(Sender: TObject);
    procedure cbFontSelect(Sender: TObject);
    procedure cbFontSizeSelect(Sender: TObject);
    procedure ColorDialog1Close(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItemKopiujClick(Sender: TObject);
    procedure MenuItemWklejClick(Sender: TObject);
    procedure MenuItemWytnijClick(Sender: TObject);
    procedure RichMemo1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState
      );
    procedure RichMemo1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure RichMemo1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure RxDBGrid4DataHintShow(Sender: TObject; CursorPos: TPoint;
      Cell: TGridCoord; Column: TRxColumn; var HintStr: string;
      var Processed: boolean);
    procedure RxDBGrid4DblClick(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
  private
    SelFontFormat: TFontParams;
    SelParaAlignment: TParaAlignment;
    procedure PrepareToolbar();
    procedure FontStyleModify(fs: TFontStyle);
  public
    Procedure OdpiszDo(user: string);
    Procedure OdpiszDoUserByIDO(IDO: integer);
    Procedure AutoKomunikat(user_list: TStringList; temat: string; tresc: string);
  end;

type
 THackGrid = class(TRxDBGrid);

var
  KomunikatorNowaWiad: TKomunikatorNowaWiad;

implementation
uses UAktualizacjaOs;
{$R *.lfm}

{ TKomunikatorNowaWiad }

procedure TKomunikatorNowaWiad.FormCreate(Sender: TObject);
begin
  Edit2Change(Sender); // Open ZQUzytkownicy;

  ZQGrupy.ParamByName('user').AsString:= DM.login;
  ZQGrupy.Open;

  cbFont.Items.Assign( Screen.Fonts);
  cbFont.ItemIndex:= 0; // we select the first font
end;

procedure TKomunikatorNowaWiad.FormShow(Sender: TObject);
begin
  RichMemo1.SetFocus;
  PrepareToolbar();
end;

procedure TKomunikatorNowaWiad.BitBtn3Click(Sender: TObject);
begin
  if ZQUzytkownicy.IsEmpty then exit;

  if memOdbiorcy.Locate('user', ZQUzytkownicy.FieldByName('user').AsString,[]) then
  begin
    MessageDlg('Osadzony jest już dodany do odbiorców.', mtInformation, [mbCancel],0);
    exit;
  end;

  memOdbiorcy.Append;
  memOdbiorcy.FieldByName('user').AsString        := ZQUzytkownicy.FieldByName('user').AsString;
  memOdbiorcy.FieldByName('NazwiskoImie').AsString:= ZQUzytkownicy.FieldByName('Full_name').AsString;
  memOdbiorcy.Post;
end;

// WYSLIJ KOMUNIKAT
procedure TKomunikatorNowaWiad.BitBtn1Click(Sender: TObject);
begin
  if Trim(RichMemo1.Text)='' then
  begin
    MessageDlg('Nie wprowadzono tręści wiadomości.', mtWarning, [mbOK],0);
    ModalResult:= mrNone;
    exit;
  end;
  if Trim(Edit1.Text)='' then
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
  ZQTresc.FieldByName('temat').AsString        := Edit1.Text;
  ZQTresc.FieldByName('komunikat').AsString    := RichMemo1.Rtf;
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
end;

procedure TKomunikatorNowaWiad.BitBtn4Click(Sender: TObject);
begin
  if memOdbiorcy.IsEmpty then exit;
  memOdbiorcy.Delete;
end;

//zapisz grupę
procedure TKomunikatorNowaWiad.BitBtn5Click(Sender: TObject);
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

procedure TKomunikatorNowaWiad.BitBtn6Click(Sender: TObject);
begin
  memOdbiorcy.Clear(false);
end;

procedure TKomunikatorNowaWiad.Edit2Change(Sender: TObject);
begin
  ZQUzytkownicy.Close;
  ZQUzytkownicy.ParamByName('nazwisko').AsString:= Trim(Edit2.Text)+'%';
  ZQUzytkownicy.Open;
end;

procedure TKomunikatorNowaWiad.MenuItem2Click(Sender: TObject);
begin
  if ZQGrupy.IsEmpty then exit;
  ZQGrupy.Delete;
end;

procedure TKomunikatorNowaWiad.RxDBGrid4DataHintShow(Sender: TObject;
  CursorPos: TPoint; Cell: TGridCoord; Column: TRxColumn; var HintStr: string;
  var Processed: boolean);
var
  ActRec: Integer;
begin
  if RxDBGrid4.DataSource.DataSet.Active then
  begin
    ActRec := THackGrid(RxDBGrid4).DataLink.ActiveRecord;
    try
      THackGrid(RxDBGrid4).DataLink.ActiveRecord := Cell.Y-1;  // jeśli jest nagłówek to: -1
      HintStr := RxDBGrid4.DataSource.DataSet.FieldByName('odbiorcy').AsString;
    finally
      THackGrid(RxDBGrid4).DataLink.ActiveRecord := ActRec;
    end;
  end;
  Processed:= true;
end;

procedure TKomunikatorNowaWiad.RxDBGrid4DblClick(Sender: TObject);
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

procedure TKomunikatorNowaWiad.OdpiszDo(user: string);
var ZQPom: TZQueryPom;
begin
  Edit1.Text:='Odp: ';

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
  Edit1.Text:='Dotyczy: '+ DM.ZQOsadzeni.FieldByName('NAZWISKO').AsString+' '+DM.ZQOsadzeni.FieldByName('IMIE').AsString;;

  ZQPom:= TZQueryPom.Create(Self);
  ZQPom.SQL.Text:= 'SELECT os.IDO, os.POC, typ.wychowawca, upr.user, upr.Full_name FROM osadzeni as os '+
                   'LEFT JOIN typ_cel as typ ON (os.POC = typ.POC) '+
                   'LEFT JOIN uprawnienia as upr ON (typ.wychowawca = upr.wychowawca) '+
                   'WHERE (os.IDO = :ido) AND (typ.wychowawca<>"") ';
  ZQPom.ParamByName('ido').AsInteger := IDO;
  ZQPom.Open;
  if ZQPom.IsEmpty then exit;

  memOdbiorcy.Append;
  memOdbiorcy.FieldByName('user').AsString        := ZQPom.FieldByName('user').AsString;
  memOdbiorcy.FieldByName('NazwiskoImie').AsString:= ZQPom.FieldByName('Full_name').AsString;
  memOdbiorcy.Post;

  FreeAndNil(ZQPom);
end;

procedure TKomunikatorNowaWiad.AutoKomunikat(user_list: TStringList;
  temat: string; tresc: string);
var i: integer;
begin
  Edit1.Text:= temat;
  RichMemo1.SelText:= tresc;

  for i:=0 to user_list.Count-1 do
    if user_list[i]<>'' then
    begin
      memOdbiorcy.Append;
      memOdbiorcy.FieldByName('user').AsString := user_list[i];
      memOdbiorcy.Post;
    end;

  BitBtn1Click(Self); // wyślij
end;


// ###############################################################
// ############   EDYTOR    ######################################

procedure TKomunikatorNowaWiad.PrepareToolbar;
begin
  RichMemo1.GetTextAttributes(RichMemo1.SelStart, SelFontFormat);
  RichMemo1.GetParaAlignment(RichMemo1.SelStart, SelParaAlignment);

  cbFont.Caption := SelFontFormat.Name;
  cbFontSize.Caption:= IntToStr(SelFontFormat.Size);
  btnColor.ButtonColor := SelFontFormat.Color;

  btnBold.Down  := (fsBold in SelFontFormat.Style);
  btnItalic.Down:= (fsItalic in SelFontFormat.Style);
  btnUnderline.Down:= (fsUnderline in SelFontFormat.Style);

  btnLeft.Down  := (SelParaAlignment = TParaAlignment.paLeft);
  btnCenter.Down:= (SelParaAlignment = TParaAlignment.paCenter);
  btnRight.Down := (SelParaAlignment = TParaAlignment.paRight);
end;

procedure TKomunikatorNowaWiad.RichMemo1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  PrepareToolbar;
  RichMemo1.Refresh;
end;

procedure TKomunikatorNowaWiad.RichMemo1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  PrepareToolbar;
  RichMemo1.Refresh;
end;

procedure TKomunikatorNowaWiad.RichMemo1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then PopupMenu2.PopUp;
end;

procedure TKomunikatorNowaWiad.btnBoldClick(Sender: TObject);
begin
  FontStyleModify(fsBold);
end;

procedure TKomunikatorNowaWiad.btnItalicClick(Sender: TObject);
begin
  FontStyleModify(fsItalic);
end;

procedure TKomunikatorNowaWiad.btnUnderlineClick(Sender: TObject);
begin
  FontStyleModify(fsUnderline);
end;

procedure TKomunikatorNowaWiad.btnLeftClick(Sender: TObject);
begin
  SelParaAlignment:= TParaAlignment.paLeft;
  RichMemo1.SetParaAlignment( RichMemo1.SelStart, RichMemo1.SelLength, SelParaAlignment);
  PrepareToolbar();
end;

procedure TKomunikatorNowaWiad.btnCenterClick(Sender: TObject);
begin
  SelParaAlignment:= TParaAlignment.paCenter;
  RichMemo1.SetParaAlignment( RichMemo1.SelStart, RichMemo1.SelLength, SelParaAlignment);
  PrepareToolbar();
end;

procedure TKomunikatorNowaWiad.btnRightClick(Sender: TObject);
begin
  SelParaAlignment:= TParaAlignment.paRight;
  RichMemo1.SetParaAlignment( RichMemo1.SelStart, RichMemo1.SelLength, SelParaAlignment);
  PrepareToolbar();
end;

procedure TKomunikatorNowaWiad.cbFontSelect(Sender: TObject);
begin
  SelFontFormat.Name:= cbFont.Text;
  RichMemo1.SetRangeParams(RichMemo1.SelStart, RichMemo1.SelLength, [tmm_Name], SelFontFormat, [],[]);
  RichMemo1.SetFocus; // get focus to the rich memo
end;

procedure TKomunikatorNowaWiad.cbFontSizeSelect(Sender: TObject);
begin
  SelFontFormat.Size:= StrToInt(cbFontSize.Text);
  RichMemo1.SetRangeParams(RichMemo1.SelStart, RichMemo1.SelLength, [tmm_Size], SelFontFormat, [],[]);
  RichMemo1.SetFocus;
end;

procedure TKomunikatorNowaWiad.ColorDialog1Close(Sender: TObject);
begin
  SelFontFormat.Color := TColorDialog(Sender).Color;
  RichMemo1.SetRangeColor(RichMemo1.SelStart, RichMemo1.SelLength, SelFontFormat.Color);
end;

procedure TKomunikatorNowaWiad.ToolButton2Click(Sender: TObject);
begin
  FontDialog1.Font.Name := SelFontFormat.Name;
  FontDialog1.Font.Color:= SelFontFormat.Color;
  FontDialog1.Font.Size := SelFontFormat.Size;
  FontDialog1.Font.Style:= SelFontFormat.Style;

  if FontDialog1.Execute then
  begin
    SelFontFormat.Name := FontDialog1.Font.Name;
    SelFontFormat.Color:= FontDialog1.Font.Color;
    SelFontFormat.Size := FontDialog1.Font.Size;
    SelFontFormat.Style:= FontDialog1.Font.Style;

    RichMemo1.SetRangeParams(RichMemo1.SelStart, RichMemo1.SelLength, [tmm_Color, tmm_Size, tmm_Name], SelFontFormat, [],[]);
  end;
end;

procedure TKomunikatorNowaWiad.MenuItemWytnijClick(Sender: TObject);
begin
  RichMemo1.CutToClipboard;
end;

procedure TKomunikatorNowaWiad.MenuItemKopiujClick(Sender: TObject);
begin
  RichMemo1.CopyToClipboard;
end;

procedure TKomunikatorNowaWiad.MenuItemWklejClick(Sender: TObject);
begin
  RichMemo1.PasteFromClipboard;
end;

procedure TKomunikatorNowaWiad.FontStyleModify(fs: TFontStyle);
var
  f : TFontParams;
  rm  : TFontStyles;
  add : TFontStyles;
begin
  RichMemo1.GetTextAttributes(RichMemo1.SelStart, f);
  if fs in f.Style then begin
    rm:=[fs]; add:=[];
  end else begin
    rm:=[]; add:=[fs];
  end;
  RichMemo1.SetRangeParams(RichMemo1.SelStart, RichMemo1.SelLength
    , [tmm_Styles] , '', 0, 0, add, rm);
end;

end.

