unit UStawkiPlac;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, FileUtil, rxdbgrid, ZDataset, LR_Class, Forms,
  Controls, Graphics, Dialogs, ExtCtrls, Buttons, DbCtrls, StdCtrls, DateUtils, datamodule;

type

  { TStawkiPlac }

  TStawkiPlac = class(TForm)
    BitBtn1: TBitBtn;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    DBMemo3: TDBMemo;
    DBMemo4: TDBMemo;
    DBMemo5: TDBMemo;
    DBNavigator1: TDBNavigator;
    DSStawkiPlac: TDataSource;
    DSZatOs: TDataSource;
    frReport1: TfrReport;
    Label1: TLabel;
    Label2: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    RxDBGrid2: TRxDBGrid;
    ZQStawkiPlac: TZQuery;
    ZQStawkiPlacID: TLongintField;
    ZQStawkiPlacnazwa_1: TStringField;
    ZQStawkiPlacnazwa_2: TStringField;
    ZQStawkiPlacnazwa_3: TStringField;
    ZQStawkiPlacnazwa_4: TStringField;
    ZQStawkiPlacnazwa_5: TStringField;
    ZQStawkiPlacrok: TLongintField;
    ZQStawkiPlacstawka_1: TFloatField;
    ZQStawkiPlacstawka_2: TFloatField;
    ZQStawkiPlacstawka_3: TFloatField;
    ZQStawkiPlacstawka_4: TFloatField;
    ZQStawkiPlacstawka_5: TFloatField;
    ZQZatOs: TZQuery;
    procedure BitBtn1Click(Sender: TObject);
    procedure ZQStawkiPlacNewRecord(DataSet: TDataSet);
  private
     fIDO: integer; // IDO osadzonego
     fID : integer; // ID zat_zatrudnieni
  public
     procedure SetIDO(sIDO, sID: integer);
  end;

var
  StawkiPlac: TStawkiPlac;

implementation

{$R *.lfm}

{ TStawkiPlac }

procedure TStawkiPlac.SetIDO(sIDO, sID: integer);
begin
  fIDO:= sIDO;
  fID := sID;

  //wczytujemy potrzebne dane do kontrolek formy
  ZQZatOs.ParamByName('id').AsInteger:= fID;
  ZQZatOs.Open;

  ZQStawkiPlac.ReadOnly:= not DM.uprawnienia[15]; // zatrudnienie
  DBNavigator1.Visible := DM.uprawnienia[15];
  ZQStawkiPlac.Open;
end;

procedure TStawkiPlac.ZQStawkiPlacNewRecord(DataSet: TDataSet);
begin
  ZQStawkiPlac.FieldByName('rok').AsInteger:= YearOf( Date() );
  ZQStawkiPlac.FieldByName('nazwa_1').AsString:= '(184 godz.)'+LineEnding+'marzec';
  ZQStawkiPlac.FieldByName('nazwa_2').AsString:= '(152 godz.)'+LineEnding+'kwiecień, grudzień';
  ZQStawkiPlac.FieldByName('nazwa_3').AsString:= '(168 godz.)'+LineEnding+'styczeń, czerwiec, lipiec, wrzesień';
  ZQStawkiPlac.FieldByName('nazwa_4').AsString:= '(176 godz.)'+LineEnding+'sierpień, październik';
  ZQStawkiPlac.FieldByName('nazwa_5').AsString:= '(160 godz.)'+LineEnding+'luty, maj, listopad';
end;

procedure TStawkiPlac.BitBtn1Click(Sender: TObject);
begin
  frReport1.LoadFromFile(DM.Path_Raporty + 'zat_StawkaZaszeregowania.lrf');
  DM.SetMemoReport(frReport1,'memo_DataPisma1', 'Kłodzko, dn. '+DM.GetDateFormatPismo(Date, 'dd MMMM yyyy')+' r.' );
  frReport1.ShowReport;
end;

end.

