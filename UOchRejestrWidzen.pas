unit UOchRejestrWidzen;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, FileUtil, ZDataset, rxdbgrid, DateTimePicker, Forms,
  Controls, Graphics, Dialogs, ExtCtrls, StdCtrls, Buttons, DbCtrls, datamodule,
  dateutils, rxdbutils;

type

  { TOchRejestrWidzen }

  TOchRejestrWidzen = class(TForm)
    btnDodaj: TBitBtn;
    btnUsun: TBitBtn;
    btnModyfikuj: TBitBtn;
    cbPrzedzialCzasu: TCheckBox;
    DSWidzenia: TDataSource;
    DSOsoby: TDataSource;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    RadioGroup1: TRadioGroup;
    RxDBGrid1: TRxDBGrid;
    RxDBGrid2: TRxDBGrid;
    Splitter1: TSplitter;
    ZQWidzenia: TZQuery;
    ZQOsoby: TZQuery;
    procedure btnDodajClick(Sender: TObject);
    procedure btnModyfikujClick(Sender: TObject);
    procedure btnUsunClick(Sender: TObject);
    procedure cbPrzedzialCzasuChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RadioGroup1SelectionChanged(Sender: TObject);
  private
    DisableNewSelect: Boolean;
  public
    SQLWidzenia: string;
    Procedure NewSelect;
  end;

var
  OchRejestrWidzen: TOchRejestrWidzen;

implementation
uses UOchAddWidzenie;
{$R *.frm}

{ TOchRejestrWidzen }

procedure TOchRejestrWidzen.FormCreate(Sender: TObject);
begin
  btnDodaj.Enabled:=     DM.uprawnienia[6];
  btnModyfikuj.Enabled:= DM.uprawnienia[6];
  btnUsun.Enabled:=      DM.uprawnienia[6];

  DisableNewSelect:= true;
  SQLWidzenia:= ZQWidzenia.SQL.Text;
  DateTimePicker1.Date:= IncDay(Date(), -7);
  DateTimePicker2.Date:= Date();
  DisableNewSelect:= false;

  NewSelect;
end;

procedure TOchRejestrWidzen.NewSelect;
begin
  if DisableNewSelect then exit;
  ZQOsoby.Close;
  ZQWidzenia.Close;

  ZQWidzenia.SQL.Text:= SQLWidzenia;

  // STATUS WIDZENIA
  case RadioGroup1.ItemIndex of
       0: ZQWidzenia.SQL.Add('and (w.Etap = 1)');
       1: ZQWidzenia.SQL.Add('and (w.Etap = 2)');
       2: ZQWidzenia.SQL.Add('and (w.Etap = 3)');
  end;

  // WIDZENIA W PRZEDZIALE CZASU
  if GroupBox1.Enabled then
    if cbPrzedzialCzasu.Checked then
        begin
          ZQWidzenia.SQL.Add('and ( w.Data_Widzenie BETWEEN :data_od AND :data_do)');
          ZQWidzenia.ParamByName('data_od').AsDate:= DateTimePicker1.Date;
          ZQWidzenia.ParamByName('data_do').AsDate:= DateTimePicker2.Date;
        end
    else
        begin
          // tylko zakończone dzisiejsze widzenia
          ZQWidzenia.SQL.Add('and (w.Data_Widzenie >= CURDATE())');
        end;

  //ORDER BY
  if RadioGroup1.ItemIndex = 0 then
        ZQWidzenia.SQL.Add('ORDER BY w.Data_Oczekuje')
      else
        ZQWidzenia.SQL.Add('ORDER BY w.Data_Widzenie');

  ZQWidzenia.Open;
  ZQOsoby.Open;
end;

procedure TOchRejestrWidzen.RadioGroup1SelectionChanged(Sender: TObject);
begin
  DisableNewSelect:= true;
    // 0: poczekalnia
    // 1: sala widzeń
    // 2: zrealizowane + historia widzeń (przedział czasu)
  GroupBox1.Enabled:= (RadioGroup1.ItemIndex = 2);
  DisableNewSelect:= false;

  NewSelect;
end;

procedure TOchRejestrWidzen.cbPrzedzialCzasuChange(Sender: TObject);
begin
  if cbPrzedzialCzasu.Checked then
      begin
        DateTimePicker1.Enabled:= true;
        DateTimePicker2.Enabled:= true;
      end
  else
      begin
        DateTimePicker1.Enabled:= false;
        DateTimePicker2.Enabled:= false;
      end;
  NewSelect;
end;

procedure TOchRejestrWidzen.btnUsunClick(Sender: TObject);
var id_w: integer;
    ZQPom: TZQueryPom;
begin
  if ZQWidzenia.IsEmpty then exit;

  if ZQWidzenia.FieldByName('').AsString <> DM.PelnaNazwa then
    begin
      MessageDlg('Brak uprawnień.'+LineEnding+'Usunąć może tylko użytkownik który nadzorował widzenie.', mtWarning, [mbOK],0);
      exit;
    end;

  if ZQWidzenia.FieldByName('').AsDateTime < IncDay(Date(), -7) then
    begin
      MessageDlg('Brak uprawnień.'+LineEnding+'Usunąć można tylko do 7 dni od daty widzenia.', mtWarning, [mbOK],0);
      exit;
    end;
  //--------------------------------------------------------------------------------------------------------------------
  // usuń widzenie
  id_w:=ZQWidzenia.FieldByName('ID').AsInteger;
  ZQPom:= TZQueryPom.Create(Self);
  ZQPom.SQL.Text:= 'DELETE FROM widzenia WHERE ID = :id';
  ZQPom.ParamByName('id').AsInteger:= id_w;
  ZQPom.ExecSQL;

  // usuń osoby przypisane do widzenia
  ZQPom.SQL.Text:= 'DELETE FROM widzenia_upr WHERE ID_widzenia = :id';
  ZQPom.ParamByName('id').AsInteger:= id_w;
  ZQPom.ExecSQL;

  FreeAndNil(ZQPom);

  NewSelect;
end;

procedure TOchRejestrWidzen.btnDodajClick(Sender: TObject);
begin
  with TOchAddWidzenie.Create(Self) do
  begin
       DodajOsadzonegoDoPoczekalni( -1 );
       ShowModal;
       Free;
  end;
end;

procedure TOchRejestrWidzen.btnModyfikujClick(Sender: TObject);
begin
  if IsDataSetEmpty(ZQWidzenia) then exit;
  if ZQWidzenia.FieldByName('Etap').AsInteger <> 1 then exit;
  if ZQWidzenia.FieldByName('Nadzor').AsString <> DM.PelnaNazwa then exit;

  with TOchAddWidzenie.Create(Self) do
  begin
       Modyfikuj( ZQWidzenia.FieldByName('id').AsInteger, ZQWidzenia.FieldByName('ido').AsInteger );
       ShowModal;
       Free;
  end;
end;

end.

