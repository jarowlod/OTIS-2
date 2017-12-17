unit UOchAddOsobeWidzenie;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, FileUtil, ZDataset, Forms, Controls, Graphics, Dialogs,
  ExtCtrls, Buttons, DbCtrls, StdCtrls, datamodule, DBDateTimePicker;

type

  { TOchAddOsobeWidzenie }

  TOchAddOsobeWidzenie = class(TForm)
    btnAnuluj: TBitBtn;
    btnOK: TBitBtn;
    DBCheckBox1: TDBCheckBox;
    DBDateTimePicker1: TDBDateTimePicker;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DSUprawnione: TDataSource;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label10: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Panel1: TPanel;
    ZQUprawnione: TZQuery;
    procedure btnAnulujClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    isDodawanie: Boolean;
  public
    procedure DodajOsobe(aIDO: integer);
    procedure ModyfikujOsobe(aID: integer);
  end;

var
  OchAddOsobeWidzenie: TOchAddOsobeWidzenie;

implementation

{$R *.frm}

{ TOchAddOsobeWidzenie }

procedure TOchAddOsobeWidzenie.btnOKClick(Sender: TObject);
var ZQPom: TZQueryPom;
    ListaNazwisk: string;
    isIstnieje: Boolean;
begin
  //--------------------------------------------------------------------------------------------------------------------
  // walidacja, Nazwisko i Imię wymagane, sprwawdzamy czy wprowadzona osoba jest już wpisana i u kogo
  //--------------------------------------------------------------------------------------------------------------------
  if (ZQUprawnione.FieldByName('Nazwisko').Text='')or(ZQUprawnione.FieldByName('Imie').Text='') then
    begin
      ModalResult:= mrNone;
      DM.KomunikatPopUp(Sender, 'Osoby uprawnione','Nazwisko i Imię muszą być wprowadzone.', nots_Warning);
      exit;
    end;

  // sprawdzamy Nazwisko i imię czy istnieje w bazie i u kogo
  // jesli jest dodawanie lub zmieniono dane Nazwiska lub imię
  if isDodawanie or
     (ZQUprawnione.FieldByName('Nazwisko').OldValue<>ZQUprawnione.FieldByName('Nazwisko').Value) or
     (ZQUprawnione.FieldByName('Imie').OldValue<>ZQUprawnione.FieldByName('Imie').Value) then
    begin
      ZQPom:= TZQueryPom.Create(Self);
      ZQPom.SQL.Text:='SELECT os.IDO, os.Nazwisko, os.Imie FROM uprawnione upr LEFT JOIN osadzeni os ON os.IDO=upr.IDO WHERE upr.Nazwisko=:nazwisko and upr.Imie=:imie';
      ZQPom.ParamByName('nazwisko').AsString:= ZQUprawnione.FieldByName('Nazwisko').AsString;
      ZQPom.ParamByName('imie').AsString    := ZQUprawnione.FieldByName('Imie').AsString;
      ZQPom.Open;

      ListaNazwisk := '';
      isIstnieje   := false;

      while not ZQPom.EOF do
      begin
        if ZQPom.FieldByName('IDO').AsInteger = ZQUprawnione.FieldByName('IDO').AsInteger then
          isIstnieje:= True
        else
          begin
            if ListaNazwisk<>'' then ListaNazwisk:= ListaNazwisk+', ';
            ListaNazwisk+= ZQPom.FieldByName('Nazwisko').AsString+' '+ZQPom.FieldByName('Imie').AsString;
          end;
        ZQPom.Next;
      end;
      FreeAndNil(ZQPom);

      if isIstnieje then
        if MessageDlg('Wpisywana osoba jest już wpisana u osadzonego.'+LineEnding+'Czy zapisać ?', mtInformation, [mbOK, mbCancel],0) = mrCancel then
        begin
          ModalResult:= mrNone;
          exit;
        end;

      if ListaNazwisk<>'' then
        if MessageDlg('Wpisywana osoba jest już wpisana u osadzonych:'+LineEnding+ListaNazwisk+LineEnding+'Czy zapisać ?', mtInformation, [mbOK, mbCancel],0) = mrCancel then
        begin
          ModalResult:= mrNone;
          exit;
        end;
    end;
  // koniec walidacji --------------------------------------------------------------------------------------------------
  //--------------------------------------------------------------------------------------------------------------------

  // przy dodawaniu i Edycji nadpisujemy kto wpisał i kiedy
  ZQUprawnione.FieldByName('WPISAL').AsString  := DM.PelnaNazwa;
  ZQUprawnione.FieldByName('Data_W').AsDateTime:= Now();

  if ZQUprawnione.FieldByName('Skreslona').AsBoolean then
    begin
      ZQUprawnione.FieldByName('Skreslil').AsString         := DM.PelnaNazwa;
      ZQUprawnione.FieldByName('Data_Skreslenia').AsDateTime:= Now();
    end
  else
    begin
      ZQUprawnione.FieldByName('Skreslil').Value        := Null;
      ZQUprawnione.FieldByName('Data_Skreslenia').Value := Null;
    end;

  ZQUprawnione.Post;
end;

procedure TOchAddOsobeWidzenie.btnAnulujClick(Sender: TObject);
begin
  ZQUprawnione.Cancel;
end;

procedure TOchAddOsobeWidzenie.DodajOsobe(aIDO: integer);
begin
  isDodawanie:= true;
  Caption:= Caption + ' - DODAJ';
  ZQUprawnione.SQL.Add('WHERE IDO=:ido');
  ZQUprawnione.ParamByName('ido').AsInteger:= aIDO;
  ZQUprawnione.Open;
  ZQUprawnione.Append;
  ZQUprawnione.FieldByName('IDO').AsInteger:= aIDO;
  ZQUprawnione.FieldByName('Skreslona').AsBoolean:= False;
end;

procedure TOchAddOsobeWidzenie.ModyfikujOsobe(aID: integer);
begin
  isDodawanie:= false;
  Caption:= Caption + ' - MODYFIKUJ';
  ZQUprawnione.SQL.Add('WHERE ID=:id');
  ZQUprawnione.ParamByName('id').AsInteger:= aID;
  ZQUprawnione.Open;
  ZQUprawnione.Edit;
end;

end.

