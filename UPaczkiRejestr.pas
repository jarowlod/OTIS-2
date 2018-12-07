unit UPaczkiRejestr;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, FileUtil, ZDataset, rxdbgrid, DateTimePicker, Forms,
  Controls, Graphics, Dialogs, ExtCtrls, StdCtrls, Buttons, DbCtrls, datamodule,
  LR_Class, LR_DBSet, dateutils, rxdbutils, Grids, DBGrids;

type

  { TPaczkiRejestr }

  TPaczkiRejestr = class(TForm)
    btnDrukuj: TBitBtn;
    btnOdswiez: TBitBtn;
    btnUsun: TBitBtn;
    btnModyfikuj: TBitBtn;
    cbPrzedzialCzasu: TCheckBox;
    cbUprzedniePobyty: TCheckBox;
    cbGrRodzajPaczek: TCheckGroup;
    dtpDataPaczek: TDateTimePicker;
    DSPaczki: TDataSource;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    frDBDataSet1: TfrDBDataSet;
    frReport1: TfrReport;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    rgPawilon: TRadioGroup;
    RxDBGrid1: TRxDBGrid;
    ZQPaczkiWydruk: TZQuery;
    ZQPaczkiArch: TZQuery;
    ZQPaczki: TZQuery;
    procedure btnDrukujClick(Sender: TObject);
    procedure btnModyfikujClick(Sender: TObject);
    procedure btnOdswiezClick(Sender: TObject);
    procedure btnUsunClick(Sender: TObject);
    procedure cbPrzedzialCzasuChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RxDBGrid1PrepareCanvas(sender: TObject; DataCol: Integer; Column: TColumn; AState: TGridDrawState);
  private
    DisableNewSelect: Boolean;
  public
    SQLPaczki: string;
    SQLPaczkiWydruk: string;
    Procedure NewSelect;
  end;

//var
//  PaczkiRejestr: TPaczkiRejestr;

implementation
uses UPaczkiAdd;
{$R *.frm}

{ TPaczkiRejestr }

procedure TPaczkiRejestr.FormCreate(Sender: TObject);
begin
  btnModyfikuj.Enabled:= DM.uprawnienia[2];
  btnUsun.Enabled     := DM.uprawnienia[2];

  DisableNewSelect    := true;
  SQLPaczki           := ZQPaczki.SQL.Text;
  SQLPaczkiWydruk     := ZQPaczkiWydruk.SQL.Text;
  DateTimePicker1.Date:= IncDay(Date(), -7);
  DateTimePicker2.Date:= Date();
  dtpDataPaczek.Date  := Date();
  DisableNewSelect    := false;

  NewSelect;
end;

procedure TPaczkiRejestr.RxDBGrid1PrepareCanvas(sender: TObject; DataCol: Integer; Column: TColumn; AState: TGridDrawState);
begin
  if Column.Field.DataSet.IsEmpty then exit;

  if Column.FieldName = 'WYDANO' then
    if Column.Field.AsDateTime >= StartOfTheMonth(Date()) then
    begin
      TRxDBGrid(Sender).Canvas.Brush.Color:= $008080FF;
    end;
  if Column.FieldName = 'RODZAJ' then
  begin
     case Column.Field.AsString of
       rp_Zywnosciowa : TRxDBGrid(Sender).Canvas.Brush.Color:= $EAFFEA;
       rp_Higieniczna : TRxDBGrid(Sender).Canvas.Brush.Color:= $EAEAFF;
       rp_Odziezowa   : TRxDBGrid(Sender).Canvas.Brush.Color:= $FFEAEA;
       else  TRxDBGrid(Sender).Canvas.Brush.Color:= $F4F4F4;
     end;
    if (gdSelected in AState) then TRxDBGrid(Sender).Canvas.Font.Color:= $BB5E00;
    if (gdSelected in AState) then TRxDBGrid(Sender).Canvas.Brush.Color:= $FED101; // $FFFF00;//DecColor(TRxDBGrid(Sender).Canvas.Brush.Color, 100);
  end;
end;

procedure TPaczkiRejestr.NewSelect;
begin
  if DisableNewSelect then exit;
  ShowSQLWait;
  try
    ZQPaczki.Close;
    ZQPaczkiArch.Close;

    ZQPaczki.SQL.Text:= SQLPaczki;

    // WIDZENIA W PRZEDZIALE CZASU
      if cbPrzedzialCzasu.Checked then
          begin
            ZQPaczki.SQL.Add('and (p.WYDANO BETWEEN :data_od AND :data_do)');
            ZQPaczki.SQL.Add(' ORDER BY WYDANO DESC');
            ZQPaczki.ParamByName('data_od').AsDateTime:= DateTimePicker1.DateTime;
            ZQPaczki.ParamByName('data_do').AsDateTime:= DateTimePicker2.DateTime;
          end
      else
          begin
            // tylko zakończone dzisiejsze widzenia
            ZQPaczki.SQL.Add('AND (Date(p.WYDANO) = CURDATE())');
            ZQPaczki.SQL.Add(' ORDER BY WYDANO DESC');
          end;

    // Podmiana ZQPaczki -> ZQPaczkiArch dla uprzednich pobytów
    if cbUprzedniePobyty.Enabled and cbUprzedniePobyty.Checked then
      begin
        ZQPaczkiArch.ParamByName('data_od').AsDateTime:= DateTimePicker1.DateTime;
        ZQPaczkiArch.ParamByName('data_do').AsDateTime:= DateTimePicker2.DateTime;
        ZQPaczkiArch.Open;
        DSPaczki.DataSet:= ZQPaczkiArch;
      end
    else
      begin
        ZQPaczki.Open;
        DSPaczki.DataSet:= ZQPaczki;
      end;

  finally
    HideSQLWait;
  end;
end;

procedure TPaczkiRejestr.cbPrzedzialCzasuChange(Sender: TObject);
begin
  if cbPrzedzialCzasu.Checked then
      begin
        DateTimePicker1.Enabled:= true;
        DateTimePicker2.Enabled:= true;
        cbUprzedniePobyty.Enabled:= true;
      end
  else
      begin
        DateTimePicker1.Enabled:= false;
        DateTimePicker2.Enabled:= false;
        cbUprzedniePobyty.Enabled:= false;
        cbUprzedniePobyty.Checked:= false;
      end;
  NewSelect;
end;

procedure TPaczkiRejestr.btnUsunClick(Sender: TObject);
var ZQPom: TZQueryPom;
begin
  if DSPaczki.DataSet <> ZQPaczki then
      begin
        MessageDlg('Brak uprawnień.'+LineEnding+'Usunąć można tylko bieżące paczki.', mtWarning, [mbOK],0);
        exit;
      end;

  if ZQPaczki.IsEmpty then exit;

  if ZQPaczki.FieldByName('WYDAL').AsString <> DM.PelnaNazwa then
    begin
      MessageDlg('Brak uprawnień.'+LineEnding+'Usunąć może tylko użytkownik który wprowadził paczkę.', mtWarning, [mbOK],0);
      exit;
    end;
  if (DateOf(ZQPaczki.FieldByName('WYDANO').AsDateTime) < IncDay(Date(), -7)) then
    begin
      MessageDlg('Brak uprawnień.'+LineEnding+'Usunąć można tylko do 7 dni od daty wprowadzenia paczki.', mtWarning, [mbOK],0);
      exit;
    end;

  if MessageDlg('Czy napewno usunąć wprowadzoną paczkę?', mtWarning, [mbOK, mbCancel],0) = mrCancel then exit;
  //--------------------------------------------------------------------------------------------------------------------

  // usuń paczkę
  ZQPom:= TZQueryPom.Create(Self);
  ZQPom.SQL.Text:= 'DELETE FROM paczki WHERE ID = :id';
  ZQPom.ParamByName('id').AsInteger:= ZQPaczki.FieldByName('ID').AsInteger;
  ZQPom.ExecSQL;

  FreeAndNil(ZQPom);

  RefreshQuery(ZQPaczki);
  DM.KomunikatPopUp(Self, 'Rejestr Paczek','Usunięto wybraną paczkę.', nots_Info);
end;

procedure TPaczkiRejestr.btnModyfikujClick(Sender: TObject);
begin
  // walidacja
  if DSPaczki.DataSet <> ZQPaczki then
      begin
        MessageDlg('Brak uprawnień.'+LineEnding+'Modyfikować można tylko bieżące paczki.', mtWarning, [mbOK],0);
        exit;
      end;
  if IsDataSetEmpty(ZQPaczki) then exit;

  if not DM.uprawnienia[8] then
  begin
    if ZQPaczki.FieldByName('WYDAL').AsString <> DM.PelnaNazwa then
      begin
        MessageDlg('Brak uprawnień.'+LineEnding+'Modyfikować może tylko użytkownik który wprowadził paczkę.', mtWarning, [mbOK],0);
        exit;
      end;
    if (DateOf(ZQPaczki.FieldByName('WYDANO').AsDateTime) < IncDay(Date(), -7)) then
      begin
        MessageDlg('Brak uprawnień.'+LineEnding+'Modyfikować można tylko do 7 dni od daty wprowadzenia paczki.', mtWarning, [mbOK],0);
        exit;
      end;
  end;
  // koniec walidacji


  with TPaczkiAdd.Create(Self) do
  begin
       Modyfikuj( ZQPaczki.FieldByName('id').AsInteger, ZQPaczki.FieldByName('ido').AsInteger );
       if ShowModal = mrOK then
         begin
           RefreshQuery(ZQPaczki);
         end;
       Free;
  end;
end;

procedure TPaczkiRejestr.btnDrukujClick(Sender: TObject);
var rodzajPaczek: string;
  Procedure AddRodzaj(value: string);
  begin
    if rodzajPaczek<>'' then rodzajPaczek+='OR';
    rodzajPaczek+= '(RODZAJ="'+ value +'")';
  end;

begin
  ZQPaczkiWydruk.SQL.Text:= SQLPaczkiWydruk;

  ZQPaczkiWydruk.ParamByName('dataPaczki').AsDate:= dtpDataPaczek.Date;

  rodzajPaczek:= '';
  if cbGrRodzajPaczek.Checked[0] then AddRodzaj('żywnościowa');
  if cbGrRodzajPaczek.Checked[1] then AddRodzaj('higieniczna');
  if cbGrRodzajPaczek.Checked[2] then AddRodzaj('odzieżowa');
  if cbGrRodzajPaczek.Checked[3] then AddRodzaj('hig/odzieżowa');
  if cbGrRodzajPaczek.Checked[4] then AddRodzaj('inna');
  if rodzajPaczek<>'' then
  begin
    rodzajPaczek:= 'AND('+ rodzajPaczek +')';
    ZQPaczkiWydruk.SQL.Add(rodzajPaczek);
  end
  else Exit;

  ZQPaczkiWydruk.SQL.Add('and (POC REGEXP :pawilon)');
  case rgPawilon.ItemIndex of
    0: ZQPaczkiWydruk.ParamByName('pawilon').AsString:= '[ABC]';
    1: ZQPaczkiWydruk.ParamByName('pawilon').AsString:= '[D]';
  end;

  ZQPaczkiWydruk.SQL.Add('ORDER BY POC');
  ZQPaczkiWydruk.Open;

  frReport1.LoadFromFile(DM.Path_Raporty + 'och_paczki_rejestr.lrf');
  frReport1.ShowReport;
end;

procedure TPaczkiRejestr.btnOdswiezClick(Sender: TObject);
begin
  NewSelect;
end;

end.

