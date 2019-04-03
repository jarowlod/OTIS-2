unit UKwatSprzetRTV;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  ComCtrls, TplGradientUnit, datamodule, ZDataset, DB, rxdbgrid;

type

  { TKwatSprzetRTV }

  TKwatSprzetRTV = class(TForm)
    DSpocCela: TDataSource;
    DSOsMagazyn: TDataSource;
    DSOsCela: TDataSource;
    DSpocMagazyn: TDataSource;
    DSOsWydane: TDataSource;
    DSpocWydane: TDataSource;
    GroupBox1: TGroupBox;
    Image1: TImage;
    lblWCeli: TLabel;
    lblKlasyf: TLabel;
    lblNaglowek: TLabel;
    lblNazwisko: TLabel;
    lblPoc: TLabel;
    PageControl1: TPageControl;
    PageControl2: TPageControl;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel5: TPanel;
    plGradient2: TplGradient;
    RxDBGrid1: TRxDBGrid;
    RxDBGrid2: TRxDBGrid;
    RxDBGrid3: TRxDBGrid;
    RxDBGrid4: TRxDBGrid;
    RxDBGrid5: TRxDBGrid;
    RxDBGrid6: TRxDBGrid;
    Splitter1: TSplitter;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    ZQpocCela: TZReadOnlyQuery;
    ZQOsMagazyn: TZReadOnlyQuery;
    ZQOsCela: TZReadOnlyQuery;
    ZQpocMagazyn: TZReadOnlyQuery;
    ZQOsWydane: TZReadOnlyQuery;
    ZQpocWydane: TZReadOnlyQuery;
  private
    SelectIDO: integer;
    SelectPOC: string;
    procedure WczytajDaneOsadzonego;
  public
    constructor Create(TheOwner: TComponent; IDO: integer); overload;
  end;

implementation

{$R *.frm}

{ TKwatSprzetRTV }

constructor TKwatSprzetRTV.Create(TheOwner: TComponent; IDO: integer);
begin
  Inherited Create(TheOwner);
  SelectIDO:= IDO;

  ShowSQLWait;
  try
    WczytajDaneOsadzonego;

    ZQOsMagazyn.Close;
    ZQOsMagazyn.ParamByName('ido').AsInteger:= SelectIDO;
    ZQOsMagazyn.Open;

    ZQOsCela.Close;
    ZQOsCela.ParamByName('ido').AsInteger   := SelectIDO;
    ZQOsCela.Open;

    ZQOsWydane.Close;
    ZQOsWydane.ParamByName('ido').AsInteger := SelectIDO;
    ZQOsWydane.Open;
    TabSheet2.Show;

    // ==================== cała cela =====================
    ZQpocMagazyn.Close;
    ZQpocMagazyn.ParamByName('poc').AsString:= SelectPOC;
    ZQpocMagazyn.Open;

    ZQpocCela.Close;
    ZQpocCela.ParamByName('poc').AsString   := SelectPOC;
    ZQpocCela.Open;

    ZQpocWydane.Close;
    ZQpocWydane.ParamByName('poc').AsString := SelectPOC;
    ZQpocWydane.Open;
    TabSheet5.Show;
  finally
    HideSQLWait;
  end;
end;

procedure TKwatSprzetRTV.WczytajDaneOsadzonego;
var ZQPom: TZQueryPom;
begin
  ZQPom:= TZQueryPom.Create(Self);
  try
    ZQPom.SQL.Text:= 'SELECT IDO, Nazwisko, Imie, Ojciec, POC, Klasyf FROM osadzeni WHERE IDO = :ido';
    ZQPom.ParamByName('ido').AsInteger:= SelectIDO;
    ZQPom.Open;
    if not ZQPom.IsEmpty then
      begin
        lblNazwisko.Caption:= ZQPom.FieldByName('Nazwisko').AsString+ ' ' + ZQPom.FieldByName('Imie').AsString + ' s.'+ ZQPom.FieldByName('Ojciec').AsString;
        lblKlasyf.Caption  := ZQPom.FieldByName('Klasyf').AsString;
        SelectPOC          := ZQPom.FieldByName('POC').AsString;
        lblPoc.Caption     := SelectPOC;
        lblWCeli.Caption   := lblWCeli.Caption + ' : ' + SelectPOC;
      end
    else
      lblNazwisko.Caption:= 'Brak danych osadzonego';

  finally
    FreeAndNil(ZQPom);
  end;
end;

end.

