unit UOchAddWidzenie;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, rxdbgrid, Forms, Controls, Graphics, Dialogs,
  ExtCtrls, Buttons, StdCtrls, Spin, EditBtn, ComCtrls, DbCtrls, datamodule,
  ZDataset, db;

type

  { TOchAddWidzenie }

  TOchAddWidzenie = class(TForm)
    btnAnuluj: TBitBtn;
    btnOK: TBitBtn;
    btnRejestrProsb: TBitBtn;
    cbSposob: TComboBox;
    DBMemoUwagiKier: TDBMemo;
    DBMemoUwagiOch: TDBMemo;
    DSRejWyk: TDataSource;
    DSUwagi: TDataSource;
    edUwagi: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lblNazwisko: TLabel;
    lblKlasyf: TLabel;
    lblPoc: TLabel;
    PageControl1: TPageControl;
    Panel1: TPanel;
    Panel2: TPanel;
    RxDBGrid1: TRxDBGrid;
    RxDBGrid2: TRxDBGrid;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    ZQRejWyk: TZQuery;
    ZQUwagi: TZQuery;
    procedure btnRejestrProsbClick(Sender: TObject);
  private
    SelectIDO: integer;
    isModyfikacja: Boolean;
    procedure WstawDaneOsadzonego;
  public
    procedure DodajOsadzonego(vIDO: integer);
    procedure Modyfikuj(vIDO: integer);
  end;

var
  OchAddWidzenie: TOchAddWidzenie;

implementation
uses URejestrProsbOs, UOsadzeni;
{$R *.frm}

{ TOchAddWidzenie }

procedure TOchAddWidzenie.btnRejestrProsbClick(Sender: TObject);
begin
  with TRejestrProsbOs.Create(Parent) do
  begin
       SetIDO( SelectIDO );
       ShowModal;
       Free;
  end;
end;

procedure TOchAddWidzenie.WstawDaneOsadzonego;
var ZQPom: TZQueryPom;
begin
  ZQPom:= TZQueryPom.Create(Self);
  ZQPom.SQL.Text:= 'SELECT IDO, Nazwisko, Imie, Ojciec, POC, Klasyf FROM osadzeni WHERE IDO = :ido';
  ZQPom.ParamByName('ido').AsInteger:= SelectIDO;
  if not ZQPom.IsEmpty then
    begin
      lblNazwisko.Caption:= ZQPom.FieldByName('Nazwisko').AsString+ ' ' + ZQPom.FieldByName('Imie').AsString + ' s.'+ ZQPom.FieldByName('Ojciec').AsString;
      lblKlasyf.Caption  := ZQPom.FieldByName('Klasyf').AsString;
      lblPoc.Caption     := ZQPom.FieldByName('POC').AsString;
    end
  else
    lblNazwisko.Caption:= 'Brak danych osadzonego';

  FreeAndNil(ZQPom);
end;

procedure TOchAddWidzenie.DodajOsadzonego(vIDO: integer);
begin
  isModyfikacja:= false;
  // jeśli ido -1 to znajdź osadzonego
  SelectIDO:= vIDO;
  if vIDO = -1 then
  begin
    with TOsadzeni.Create(Application) do
    begin
      if ShowModal = mrOK then
      begin
        SelectIDO:= FIdo; // FIdo jest z TOsadzeni
      end;
      Free;
    end;
  end;
  if SelectIDO<=0 then Close;
  // --------------------------------------------------------

  WstawDaneOsadzonego;
end;

procedure TOchAddWidzenie.Modyfikuj(vIDO: integer);
begin
  isModyfikacja:= true;
  WstawDaneOsadzonego;
end;

end.

