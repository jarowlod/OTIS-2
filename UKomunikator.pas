unit UKomunikator;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, FileUtil, ZDataset, ZSqlUpdate, RichMemo, rxdbgrid,
  Forms, Controls, Graphics, Dialogs, ComCtrls, ExtCtrls, Buttons, StdCtrls,
  datamodule, LR_Class, rxdbutils;

type

  { TKomunikator }

  TKomunikator = class(TForm)
    btnNowaWiadomosc: TBitBtn;
    btnOdpisz: TBitBtn;
    btnDrukuj: TBitBtn;
    btnOdswiez: TBitBtn;
    DSKomOdebrane: TDataSource;
    DSKomWyslane: TDataSource;
    DSKomOdbiorcy: TDataSource;
    PageControl1: TPageControl;
    Panel1: TPanel;
    Panel2: TPanel;
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
    procedure btnNowaWiadomoscClick(Sender: TObject);
    procedure btnOdpiszClick(Sender: TObject);
    procedure btnOdswiezClick(Sender: TObject);
    procedure DSKomOdebraneDataChange(Sender: TObject; Field: TField);
    procedure DSKomWyslaneDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
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

end.

