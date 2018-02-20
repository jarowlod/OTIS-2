unit UOknoKomunikatu;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, rxdbgrid, RichMemo, Forms, Controls, Graphics,
  Dialogs, ExtCtrls, Buttons, StdCtrls, datamodule, BCLabel, db, ZDataset, ZSqlUpdate, rxdbutils;

type

  { TOknoKomunikatu }

  TOknoKomunikatu = class(TForm)
    BCLabel1: TBCLabel;
    BitBtn1: TBitBtn;
    btnDrukuj: TBitBtn;
    DSKomOdebrane: TDataSource;
    DSKomunikat: TDataSource;
    Image1: TImage;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    RichMemo1: TRichMemo;
    RxDBGrid1: TRxDBGrid;
    RxDBGrid2: TRxDBGrid;
    ZQKomOdebrane: TZQuery;
    ZQKomunikat: TZQuery;
    ZUKomOdebrane: TZUpdateSQL;
    ZUKomunikat: TZUpdateSQL;
    procedure btnDrukujClick(Sender: TObject);
    procedure DSKomOdebraneDataChange(Sender: TObject; Field: TField);
    procedure DSKomunikatDataChange(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  OknoKomunikatu: TOknoKomunikatu;

implementation
uses UMasterForm;
{$R *.frm}

{ TOknoKomunikatu }

procedure TOknoKomunikatu.DSKomunikatDataChange(Sender: TObject; Field: TField);
var str: string;
begin
  if IsDataSetEmpty(ZQKomunikat) then exit;
  if ZQKomunikat.FieldByName('dataOdebrania').IsNull then
  begin
    ZQKomunikat.DisableControls;
    ZQKomunikat.Edit;
    ZQKomunikat.FieldByName('dataOdebrania').AsDateTime:= Now();
    ZQKomunikat.Post;
    ZQKomunikat.EnableControls;
  end;

  str:= ZQKomunikat.FieldByName('komunikat').AsString;
  if Pos('{\rtf', str)>0 then
          RichMemo1.Rtf:= str
       else
          RichMemo1.Text:= str;
end;

procedure TOknoKomunikatu.DSKomOdebraneDataChange(Sender: TObject; Field: TField);
var str: string;
begin
  if IsDataSetEmpty(ZQKomOdebrane) then exit;
  if ZQKomOdebrane.FieldByName('dataOdebrania').IsNull then
  begin
    ZQKomOdebrane.DisableControls;
    ZQKomOdebrane.Edit;
    ZQKomOdebrane.FieldByName('dataOdebrania').AsDateTime:= Now();
    ZQKomOdebrane.Post;
    ZQKomOdebrane.EnableControls;
  end;

  str:= ZQKomOdebrane.FieldByName('komunikat').AsString;
  if Copy(str,0,5) = '{\rtf' then
          RichMemo1.Rtf:= str
       else
          RichMemo1.Text:= str;
end;

procedure TOknoKomunikatu.btnDrukujClick(Sender: TObject);
var print_parameters: TPrintParams;
begin
  print_parameters.JobTitle := 'OTIS';
  print_parameters.Margins.Top    := 10;
  print_parameters.Margins.Bottom := 10;
  print_parameters.Margins.Left   := 10;
  print_parameters.Margins.Right  := 10;
  print_parameters.SelStart  := 0;
  print_parameters.SelLength := 0;

  RichMemo1.Print( print_parameters )
end;

procedure TOknoKomunikatu.FormClose(Sender: TObject;
  var CloseAction: TCloseAction);
begin
// STARE
  if ZQKomunikat.Active then
    if not ZQKomunikat.Eof and ZQKomunikat.Modified then
    begin
       ZQKomunikat.Post;
    end;
  ZQKomunikat.Close;
// END STARE

  if ZQKomOdebrane.Active then
    if not ZQKomOdebrane.Eof and ZQKomOdebrane.Modified then
    begin
       ZQKomOdebrane.Post;
    end;
  ZQKomOdebrane.Close;
end;

procedure TOknoKomunikatu.FormCreate(Sender: TObject);
begin
// STARE
  try
    ZQKomunikat.ParamByName('odbiorca').AsString := DM.login;
    ZQKomunikat.Open;
  except
    ShowMessage('Połączenie zostało zerwane. Zaloguj się ponownie. K001.');
    MasterForm.Zaloguj;
    ZQKomunikat.Open;
  end;
// END STARE

  try
    ZQKomOdebrane.ParamByName('odbiorca').AsString := DM.login;
    ZQKomOdebrane.Open;
  except
    ShowMessage('Połączenie zostało zerwane. Zaloguj się ponownie. K002');
    MasterForm.Zaloguj;
    ZQKomOdebrane.Open;
  end;

  //if ZQKomOdebrane.IsEmpty then exit;
end;

end.

