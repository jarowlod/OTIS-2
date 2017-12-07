unit URejestrProsbOs;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, FileUtil, rxdbgrid, ZDataset, ZSqlUpdate, Forms,
  Controls, Graphics, Dialogs, ExtCtrls, StdCtrls, DbCtrls, Buttons, rxdbutils,
  datamodule, LR_Class, LR_DBSet;

type

  { TRejestrProsbOs }

  TRejestrProsbOs = class(TForm)
    btnDodaj: TBitBtn;
    btnModyfikuj: TBitBtn;
    btnDrukujPoz: TBitBtn;
    btnDrukujAll: TBitBtn;
    btnZrealizuj: TBitBtn;
    DBMemo1: TDBMemo;
    DSRejestr: TDataSource;
    frDBDataSet1: TfrDBDataSet;
    frReport1: TfrReport;
    Image1: TImage;
    ImageList1: TImageList;
    Label1: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    RxDBGrid1: TRxDBGrid;
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
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure RxDBGrid1GetCellProps(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor);
    procedure ZQRejestrstatusGetText(Sender: TField; var aText: string;
      DisplayText: Boolean);
  private
    SelectIDO: integer;
    SQLRejestr: string;       // ładujemy podczas Create z kontrolki ZQRejestr.SQL
  public
    Procedure SetIDO(ido: integer);
    Procedure NewSelect;
  end;

var
  RejestrProsbOs: TRejestrProsbOs;

implementation
uses URejestrProsbDodaj, LR_DSet;
{$R *.frm}

{ TRejestrProsbOs }

procedure TRejestrProsbOs.FormCreate(Sender: TObject);
begin
  SQLRejestr:= ZQRejestr.SQL.Text; // podstawa zapytania

  btnDodaj.Enabled     := DM.uprawnienia[14]; //uprawnienia do dodania
  btnModyfikuj.Enabled := DM.uprawnienia[14]; //uprawnienia do edycji
  btnZrealizuj.Enabled := DM.uprawnienia[12]; // realizacja próśb
end;

procedure TRejestrProsbOs.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Char(Key) =#27 then    // ESC
  begin
    close;
  end;
end;

procedure TRejestrProsbOs.btnDodajClick(Sender: TObject);
begin
  with TRejestrProsbDodaj.Create(Self) do
  begin
       SetAdd( SelectIDO );
       if ShowModal=mrOK then RefreshQuery(ZQRejestr);
       Free;
  end;
end;

procedure TRejestrProsbOs.btnModyfikujClick(Sender: TObject);
begin
  if ZQRejestr.IsEmpty then exit;
  if DM.PelnaNazwa <> ZQRejestr.FieldByName('User').AsString then
     if not(MessageDlg('Chcesz dokonać modyfikacji pisma, które zostało zarejestrowane przez innego użytkownika.'+LineEnding+'Czy napewno chcesz modyfikować ? ', mtConfirmation, [mbOK, mbCancel], 0) = mrOK) then exit;

  with TRejestrProsbDodaj.Create(Self) do
  begin
       SetEdit( ZQRejestr.FieldByName('ID').AsInteger, SelectIDO );
       if ShowModal=mrOK then RefreshQuery(ZQRejestr);
       Free;
  end;
end;

procedure TRejestrProsbOs.btnZrealizujClick(Sender: TObject);
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

procedure TRejestrProsbOs.RxDBGrid1GetCellProps(Sender: TObject; Field: TField;
  AFont: TFont; var Background: TColor);
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
end;

procedure TRejestrProsbOs.ZQRejestrstatusGetText(Sender: TField;
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

procedure TRejestrProsbOs.SetIDO(ido: integer);
begin
  SelectIDO:= ido;
  NewSelect;
  Caption:= 'Rejestr Próśb Osadzonego: '+ DM.GetNazwiskoImieByIDO(SelectIDO);
end;

procedure TRejestrProsbOs.NewSelect;
begin
  ZQRejestr.SQL.Text:= SQLRejestr;
  ZQRejestr.ParamByName('ido').AsInteger:= SelectIDO;
  ZQRejestr.Open;
end;

procedure TRejestrProsbOs.btnDrukujPozClick(Sender: TObject);
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

procedure TRejestrProsbOs.btnDrukujAllClick(Sender: TObject);
begin
  // drukowanie wszystkich jeszcze nie wydrukowanych.
  // filtr
  ZQRejestr.Filtered:= false;
  ZQRejestr.Filter:= '(Wydruk = 0) AND (Status < 2)'; //nie drukowane [1] oraz (pozytywne, negatywne) [< 2]
  ZQRejestr.Filtered:= true;

  if ZQRejestr.IsEmpty then exit;

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

        ZQRejestr.Next;
      end;
  end;

  ZQRejestr.Filtered:= false;
  ZQRejestr.Filter  := '';
end;

end.

