unit UKomunikator;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, FileUtil, ZDataset, ZSqlUpdate, RichMemo, rxdbgrid,
  Forms, Controls, Graphics, Dialogs, ComCtrls, ExtCtrls, Buttons, StdCtrls,
  Menus, datamodule, LR_Class, rxdbutils;

type

  { TKomunikator }

  TKomunikator = class(TForm)
    btnDrukujZaznaczone: TBitBtn;
    btnNowaWiadomosc: TBitBtn;
    btnOdpisz: TBitBtn;
    btnDrukuj: TBitBtn;
    btnOdswiez: TBitBtn;
    DSKomOdebrane: TDataSource;
    DSKomWyslane: TDataSource;
    DSKomOdbiorcy: TDataSource;
    MenuItemKopiuj: TMenuItem;
    PageControl1: TPageControl;
    Panel1: TPanel;
    Panel2: TPanel;
    PopupMenu1: TPopupMenu;
    RichMemo1: TRichMemo;
    RichMemo2: TRichMemo;
    RxDBGrid1: TRxDBGrid;
    RxDBGrid2: TRxDBGrid;
    RxDBGrid3: TRxDBGrid;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    ZQKomOdebrane: TZQuery;
    ZQKomWyslane: TZQuery;
    ZQKomOdbiorcy: TZQuery;
    ZUKomOdebrane: TZUpdateSQL;
    procedure btnDrukujClick(Sender: TObject);
    procedure btnDrukujZaznaczoneClick(Sender: TObject);
    procedure btnNowaWiadomoscClick(Sender: TObject);
    procedure btnOdpiszClick(Sender: TObject);
    procedure btnOdswiezClick(Sender: TObject);
    procedure DSKomOdebraneDataChange(Sender: TObject; Field: TField);
    procedure DSKomWyslaneDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure MenuItemKopiujClick(Sender: TObject);
    procedure RxDBGrid1DblClick(Sender: TObject);
  private

  public

  end;

//var
//  Komunikator: TKomunikator;

implementation
uses UKomunikatorNowaWiad;
{$R *.frm}

{ TKomunikator }

procedure TKomunikator.DSKomOdebraneDataChange(Sender: TObject; Field: TField);
var str: string;
begin
  if IsDataSetEmpty(ZQKomOdebrane) then
  begin
    RichMemo1.Text:= '';
    exit;
  end;

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
  //if Pos('{\rtf', str)>0 then
          RichMemo1.Rtf:= str
       else
          RichMemo1.Text:= str;
end;

procedure TKomunikator.btnOdswiezClick(Sender: TObject);
begin
  ZQKomOdebrane.Close;
  ZQKomOdebrane.Open;

  ZQKomWyslane.Close;
  ZQKomWyslane.Open;
end;

procedure TKomunikator.btnNowaWiadomoscClick(Sender: TObject);
begin
  with TKomunikatorNowaWiad.Create(Self) do
  begin
       ShowModal;
       Free;

       ZQKomOdbiorcy.Close;
       ZQKomWyslane.Close;
       ZQKomWyslane.Open;
       ZQKomOdbiorcy.Open;
  end;
end;

procedure TKomunikator.btnDrukujClick(Sender: TObject);
var print_parameters: TPrintParams;
begin
  print_parameters.JobTitle := 'OTIS';
  print_parameters.Margins.Top    := 10;
  print_parameters.Margins.Bottom := 10;
  print_parameters.Margins.Left   := 10;
  print_parameters.Margins.Right  := 10;
  print_parameters.SelStart  := 0;
  print_parameters.SelLength := 0;

  if PageControl1.ActivePageIndex = 0 then
       RichMemo1.Print( print_parameters )
  else
       RichMemo2.Print( print_parameters );

//  frReport1.LoadFromFile(DM.Path_Raporty + 'pen_komunikat.lrf');
//  DM.SetMemoReport(frReport1, 'Memo2', RichMemo1.Text );
//  frReport1.ShowReport;
end;

procedure TKomunikator.btnDrukujZaznaczoneClick(Sender: TObject);
var print_parameters: TPrintParams;
begin
  print_parameters.JobTitle := 'OTIS';
  print_parameters.Margins.Top    := 10;
  print_parameters.Margins.Bottom := 10;
  print_parameters.Margins.Left   := 10;
  print_parameters.Margins.Right  := 10;
  print_parameters.SelStart  := RichMemo1.SelStart;
  print_parameters.SelLength := RichMemo1.SelLength;

  RichMemo1.Print( print_parameters );
end;

procedure TKomunikator.btnOdpiszClick(Sender: TObject);
begin
  with TKomunikatorNowaWiad.Create(Self) do
  begin
       if PageControl1.ActivePageIndex = 0 then
          OdpiszDo( ZQKomOdebrane.FieldByName('nadawca').AsString)
       else
          OdpiszDo( ZQKomOdbiorcy.FieldByName('odbiorca').AsString);

       ShowModal;
       Free;

       ZQKomOdbiorcy.Close;
       ZQKomWyslane.Close;
       ZQKomWyslane.Open;
       ZQKomOdbiorcy.Open;
  end;
end;

procedure TKomunikator.DSKomWyslaneDataChange(Sender: TObject; Field: TField);
var str: string;
begin
  if IsDataSetEmpty(ZQKomWyslane) then
  begin
    RichMemo2.Text:='';
    exit;
  end;

  str:= ZQKomWyslane.FieldByName('komunikat').AsString;

  if Copy(str,0,5) = '{\rtf' then
//  if Pos('{\rtf', str)>0 then
          RichMemo2.Rtf:= str
       else
          RichMemo2.Text:= str;
end;

procedure TKomunikator.FormCreate(Sender: TObject);
begin
  ZQKomOdebrane.ParamByName('odbiorca').AsString := DM.login;
  ZQKomOdebrane.Open;

  ZQKomWyslane.ParamByName('nadawca').AsString := DM.login;
  ZQKomWyslane.Open;
  ZQKomOdbiorcy.Open;
end;

procedure TKomunikator.MenuItemKopiujClick(Sender: TObject);
begin
  RichMemo1.CopyToClipboard;
end;

procedure TKomunikator.RxDBGrid1DblClick(Sender: TObject);
var id_tresc: integer;
    ZQPom: TZQueryPom;
    odbiorcy: string;
begin
  if ZQKomOdebrane.IsEmpty then exit;
  try
    id_tresc:= ZQKomOdebrane.FieldByName('ID_tresc').AsInteger;
    ZQPom:= TZQueryPom.Create(Self);
    ZQPom.SQL.Text:= 'SELECT odb.ID_tresc, upr.Full_name FROM kom_odbiorcy odb'+
                     ' LEFT OUTER JOIN uprawnienia upr ON (upr.user = odb.odbiorca)'+
                     ' WHERE (odb.ID_tresc=:id_tresc)';
    ZQPom.ParamByName('id_tresc').AsInteger:= id_tresc;
    ZQPom.Open;
    if ZQPom.IsEmpty then exit;

    odbiorcy:= '';
    while not ZQPom.EOF do
    begin
      if odbiorcy<>'' then odbiorcy+= '; ';
      odbiorcy+= ZQPom.FieldByName('Full_name').AsString;
      ZQPom.Next;
    end;
  finally
    FreeAndNil(ZQPom);
  end;

  MessageDlg('Odbiorcy wiadomości:'+ LineEnding+ odbiorcy, mtInformation, [mbOK],0);
end;

end.

