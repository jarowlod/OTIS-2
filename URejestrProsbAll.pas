unit URejestrProsbAll;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, FileUtil, LR_Class, LR_DBSet, ZDataset, ZSqlUpdate,
  rxdbgrid, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls, Buttons,
  DbCtrls, datamodule, rxdbutils;

type

  { TRejestrProsbAll }

  TRejestrProsbAll = class(TForm)
    btnDodaj: TBitBtn;
    btnDrukujAll: TBitBtn;
    btnDrukujPoz: TBitBtn;
    btnModyfikuj: TBitBtn;
    btnZrealizuj: TBitBtn;
    cbMoje: TCheckBox;
    cbDoDruku: TCheckBox;
    DBMemo1: TDBMemo;
    DSRejestr: TDataSource;
    Edit1: TEdit;
    frDBDataSet1: TfrDBDataSet;
    frReport1: TfrReport;
    Image1: TImage;
    Image2: TImage;
    ImageList1: TImageList;
    Label1: TLabel;
    Label2: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    RxDBGrid1: TRxDBGrid;
    SpeedButton1: TSpeedButton;
    ZQRejestr: TZQuery;
    ZQRejestrData_Decyzji: TDateField;
    ZQRejestrData_Realizacji: TDateTimeField;
    ZQRejestrData_Wplywu: TDateField;
    ZQRejestrID: TLargeintField;
    ZQRejestrIDO: TLargeintField;
    ZQRejestrImie: TStringField;
    ZQRejestrKategoria: TStringField;
    ZQRejestrNazwisko: TStringField;
    ZQRejestrOjciec: TStringField;
    ZQRejestrOpis: TStringField;
    ZQRejestrOznaczenie: TStringField;
    ZQRejestrPOC: TStringField;
    ZQRejestrstatus: TLargeintField;
    ZQRejestrUser: TStringField;
    ZQRejestrUser_Realizacji: TStringField;
    ZQRejestrUwagi: TMemoField;
    ZQRejestrWydruk: TSmallintField;
    ZQRejestrWydruk_user: TStringField;
    ZURejestr: TZUpdateSQL;
    procedure btnDodajClick(Sender: TObject);
    procedure btnDrukujAllClick(Sender: TObject);
    procedure btnDrukujPozClick(Sender: TObject);
    procedure btnModyfikujClick(Sender: TObject);
    procedure btnZrealizujClick(Sender: TObject);
    procedure cbKryteriaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RxDBGrid1GetCellProps(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor);
    procedure ZQRejestrstatusGetText(Sender: TField; var aText: string;
      DisplayText: Boolean);
  private
    SelectSQL: string;
    WhereSQL: string;
    OrderSQL: string;
  public
    procedure NewSelect;
  end;

var
  RejestrProsbAll: TRejestrProsbAll;

implementation
uses URejestrProsbDodaj, LR_DSet;
{$R *.frm}

{ TRejestrProsbAll }

procedure TRejestrProsbAll.ZQRejestrstatusGetText(Sender: TField;
  var aText: string; DisplayText: Boolean);
begin
  if Sender.IsNull then exit;
  if not DisplayText then exit;
  case Sender.AsInteger of
      0: aText:='Negatywnie';
      1: aText:='Pozytywnie';
      2: aText:='Oczekuje';
      3: aText:='Wpis omyłkowy';
      4: aText:='Zrealizowana';
  end;
end;

procedure TRejestrProsbAll.NewSelect;
var HavingSQL: string;
  procedure AddWHERE(s: string);
  begin
    if s='' then exit;
    if WhereSQL<>'' then WhereSQL:= WhereSQL+' and '+ s
                    else WhereSQL:= s;
  end;
begin
  WhereSQL:='';
  HavingSQL:='';

  if cbMoje.Checked    then AddWhere('(User = :uzytkownik)');
  if cbDoDruku.Checked then
  begin
    AddWhere('(Wydruk = 0)');
    AddWhere('(rej.`status` < 2)');
    AddWhere('(not ISNULL(Imie))');
  end;

  if WhereSQL<>'' then WhereSQL:=' WHERE '+WhereSQL;

  if Edit1.Text<>'' then HavingSQL:=' HAVING (Nazwisko LIKE :nazwisko)';

  ZQRejestr.Close;
  ZQRejestr.SQL.Text:= SelectSQL;
  ZQRejestr.SQL.Add( WhereSQL );
  ZQRejestr.SQL.Add( HavingSQL );
  ZQRejestr.SQL.Add( OrderSQL );

  if cbMoje.Checked then ZQRejestr.ParamByName('uzytkownik').AsString:= DM.PelnaNazwa;
  if Edit1.Text<>'' then ZQRejestr.ParamByName('nazwisko').AsString  := Edit1.Text+'%';

  Screen.Cursor:= crSQLWait;
  ZQRejestr.Open;
  Screen.Cursor:= crDefault;
end;

procedure TRejestrProsbAll.cbKryteriaClick(Sender: TObject);
begin
  btnDrukujAll.Enabled:= cbMoje.Checked;  // dostęp do wydruków (niedrukowane) tylko dla (Tylko moje)
  NewSelect;
end;

procedure TRejestrProsbAll.btnModyfikujClick(Sender: TObject);
begin
  if ZQRejestr.IsEmpty then exit;
  if DM.PelnaNazwa <> ZQRejestr.FieldByName('User').AsString then
     if not(MessageDlg('Chcesz dokonać modyfikacji pisma, które zostało zarejestrowane przez innego użytkownika.'+LineEnding+'Czy napewno chcesz modyfikować ? ', mtConfirmation, [mbOK, mbCancel], 0) = mrOK) then exit;

  with TRejestrProsbDodaj.Create(Self) do
  begin
       SetEdit( ZQRejestr.FieldByName('ID').AsInteger, ZQRejestr.FieldByName('IDO').AsInteger );
       if ShowModal=mrOK then RefreshQuery(ZQRejestr);
       Free;
  end;
end;

procedure TRejestrProsbAll.btnDodajClick(Sender: TObject);
begin
  if ZQRejestr.IsEmpty then exit;
  if ZQRejestr.FieldByName('IMIE').IsNull then
  begin
    MessageDlg('Prośbę można dodać jedynie dla osadzonego w obecnym pobycie.', mtWarning, [mbOK],0);
    exit;
  end;

  with TRejestrProsbDodaj.Create(Self) do
  begin
       SetAdd( ZQRejestr.FieldByName('IDO').AsInteger );
       if ShowModal=mrOK then RefreshQuery(ZQRejestr);
       Free;
  end;
end;

procedure TRejestrProsbAll.btnDrukujAllClick(Sender: TObject);
begin
  // drukowanie wszystkich jeszcze nie wydrukowanych.
  // filtr
  ZQRejestr.Filtered:= false;
  ZQRejestr.Filter:= '(Wydruk = 0) AND (Status < 2) and (Imie is not NULL)'; //nie drukowane [1] oraz (pozytywne, negatywne) [< 2] oraz obecny pobyt
  ZQRejestr.Filtered:= true;

  if ZQRejestr.IsEmpty then
  begin
    ZQRejestr.Filtered:= false;
    ZQRejestr.Filter  := '';
    exit;
  end;

  frDBDataSet1.RangeBegin:= rbFirst;
  frDBDataSet1.RangeEnd  := reLast;
  frReport1.LoadFromFile(DM.Path_Raporty + 'pen_potwierdzenie.lrf');
  frReport1.ShowReport;

  // zmieniamy wartość krotki Wydruk na 1 - czyli wydrukowano
  if (MessageDlg('Czy zmienić status pism do druku na status wydrukowane ?', mtWarning, [mbOK, mbCancel], 0) = mrOk) then
  begin
      ZQRejestr.First;
      while not ZQRejestr.Eof do
      begin
        ZQRejestr.Edit;
        ZQRejestr.FieldByName('Wydruk').AsInteger    := 1;
        ZQRejestr.FieldByName('Wydruk_user').AsString:= DM.PelnaNazwa;
        ZQRejestr.Post;

        //ZQRejestr.Next; nie jest potrzebne z uwagi na to iż pozycja ubywa i się przes
      end;
  end;

  ZQRejestr.Filtered:= false;
  ZQRejestr.Filter  := '';
end;

procedure TRejestrProsbAll.btnDrukujPozClick(Sender: TObject);
begin
  //print selected, if not print then zmień zmienną wydruk
  if ZQRejestr.Eof then exit;
  if ZQRejestr.FieldByName('Wydruk').AsInteger = 1 then
     if MessageDlg('Potwierdzenie pisma było już drukowane.'+LineEnding+'Czy chcesz wydrukować jeszcze raz ?', mtConfirmation, [mbOK, mbCancel], 0) = mrCancel then exit;
  if ZQRejestr.FieldByName('Status').AsInteger > 1 then
     if (MessageDlg('Pismo które chcesz wydrukować musi być rozpatrzone.', mtWarning, [mbOK], 0) in [mrOk, mrNone]) then exit;

  // drukowanie.
  frDBDataSet1.RangeBegin:= rbCurrent;
  frDBDataSet1.RangeEnd  := reCurrent;
  frReport1.LoadFromFile(DM.Path_Raporty + 'pen_potwierdzenie.lrf');
  frReport1.ShowReport;

  // zmieniamy wartość krotki Wydruk na 1 - czyli wydrukowano
  if ZQRejestr.FieldByName('Wydruk').AsInteger = 0 then
  if (MessageDlg('Czy zmienić status pisma do druku na status wydrukowane ?', mtWarning, [mbOK, mbCancel], 0) = mrOk) then
     begin
       ZQRejestr.Edit;
       ZQRejestr.FieldByName('Wydruk').AsInteger    := 1;
       ZQRejestr.FieldByName('Wydruk_user').AsString:= DM.PelnaNazwa;
       ZQRejestr.Post;
     end;
end;

procedure TRejestrProsbAll.btnZrealizujClick(Sender: TObject);
begin
  if ZQRejestr.IsEmpty then exit;
  if ZQRejestr.FieldByName('Status').AsInteger = 4 then // jesli jest zrealizowana
  begin
    MessageDlg('Prośba jest już zrealizowana.', mtWarning, [mbOK],0);
    exit;
  end;
  if not(ZQRejestr.FieldByName('Status').AsInteger = 1) then // jesli nie jest pozytywna
  begin
    MessageDlg('Można zrealizować tylko prośby rozpatrzone pozytywnie.', mtWarning, [mbOK],0);
    exit;
  end;

  with TRejestrProsbDodaj.Create(Self) do
  begin
       if ZrealizujProsbe( ZQRejestr.FieldByName('ID').AsInteger ) then RefreshQuery(ZQRejestr);
       Free;
  end;
end;

procedure TRejestrProsbAll.FormCreate(Sender: TObject);
begin
  SelectSQL:= ZQRejestr.SQL.Text;
  OrderSQL:= ' ORDER BY ID desc';
  NewSelect;
end;

procedure TRejestrProsbAll.RxDBGrid1GetCellProps(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor);
begin
  if Assigned(Field) and (Field.FieldName = 'status') and (not Field.IsNull) then
      begin
        if Field.AsInteger = 2 then  // oczekuje
        begin
          Background := clYellow;
          AFont.Color:= clBlack;
        end else
        if (Field.AsInteger = 0) then // rozpatrzone negatywnie
        begin
            Background := clRed;
            AFont.Color:= clWhite;
        end else                     // rozpatrzone pozytywnie
        if (Field.AsInteger = 1) then
        begin
            Background := clGreen;
            AFont.Color:= clWhite;
        end else
        if (Field.AsInteger = 4) then // zrealizowana
        begin
            Background := clLime;
            AFont.Color:= clBlack;
        end else       // inne : Wpis omyłkowy
        begin
            Background := clGray;
            AFont.Color:= clWhite;
        end;
      end;
  if (ZQRejestrImie.IsNull) and Assigned(Field) and (Field.FieldName = 'Nazwisko') then
  begin
    Background:= $CCCCFF;
  end;
end;

end.

