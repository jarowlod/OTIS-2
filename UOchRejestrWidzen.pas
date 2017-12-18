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
    ZQWidzeniaCzas_dod: TLargeintField;
    ZQWidzeniaCzas_reg: TLargeintField;
    ZQWidzeniaCzas_Widzenia: TLargeintField;
    ZQWidzeniaData_Dod: TStringField;
    ZQWidzeniaData_Oczekuje: TDateTimeField;
    ZQWidzeniaData_Stolik: TDateTimeField;
    ZQWidzeniaData_Widzenie: TDateTimeField;
    ZQWidzeniaDodatkowe: TStringField;
    ZQWidzeniaEtap: TLargeintField;
    ZQWidzeniaID: TLargeintField;
    ZQWidzeniaIDO: TLargeintField;
    ZQWidzeniaPozostalo: TLongintField;
    ZQWidzeniaImie: TStringField;
    ZQWidzeniaKlasyf: TStringField;
    ZQWidzeniaNadzor: TStringField;
    ZQWidzeniaNazwisko: TStringField;
    ZQWidzeniaOjciec: TStringField;
    ZQWidzeniaPOC: TStringField;
    ZQWidzeniaSposob: TStringField;
    ZQWidzeniaUwagi: TStringField;
    procedure btnDodajClick(Sender: TObject);
    procedure btnModyfikujClick(Sender: TObject);
    procedure btnUsunClick(Sender: TObject);
    procedure cbPrzedzialCzasuChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RadioGroup1SelectionChanged(Sender: TObject);
    procedure ZQWidzeniaPozostaloGetText(Sender: TField; var aText: string;
      DisplayText: Boolean);
  private
    DisableNewSelect: Boolean;
    procedure WidokTabeli(etap_widzenia: Integer);
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
  btnDodaj.Enabled    := DM.uprawnienia[6];
  btnModyfikuj.Enabled:= DM.uprawnienia[6];
  btnUsun.Enabled     := DM.uprawnienia[6];

  DisableNewSelect    := true;
  SQLWidzenia         := ZQWidzenia.SQL.Text;
  DateTimePicker1.Date:= IncDay(Date(), -7);
  DateTimePicker2.Date:= Date();
  DisableNewSelect    := false;

  NewSelect;
end;

procedure TOchRejestrWidzen.NewSelect;
begin
  if DisableNewSelect then exit;
  ZQOsoby.Close;
  ZQWidzenia.Close;

  ZQWidzenia.SQL.Text:= SQLWidzenia;

  // STATUS WIDZENIA
  ZQWidzenia.SQL.Add('and (w.Etap = :etap)');
  case RadioGroup1.ItemIndex of
       0: begin
            ZQWidzenia.ParamByName('etap').AsInteger:= ew_Poczekalnia;
            WidokTabeli(ew_Poczekalnia);
          end;
       1: begin
            ZQWidzenia.ParamByName('etap').AsInteger:= ew_NaSali;
            WidokTabeli(ew_NaSali);
          end;
       2: begin
            ZQWidzenia.ParamByName('etap').AsInteger:= ew_Zrealizowane;
            WidokTabeli(ew_Zrealizowane);
          end;
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

procedure TOchRejestrWidzen.ZQWidzeniaPozostaloGetText(Sender: TField;
  var aText: string; DisplayText: Boolean);
var uplynelo, pozostalo: integer;
begin
  if not DisplayText then exit;
  if ZQWidzenia.IsEmpty then exit;

  if not ZQWidzeniaData_Widzenie.IsNull then
    uplynelo:= MinutesBetween(Now(), ZQWidzeniaData_Widzenie.AsDateTime)
  else
    uplynelo:= 0; // aText:= 'czeka';

  pozostalo:= ZQWidzeniaCzas_Widzenia.AsInteger - uplynelo;
  if pozostalo<0 then pozostalo:= 0; // aText:= 'koniec';

  aText:= IntToStr(pozostalo);
end;

procedure TOchRejestrWidzen.WidokTabeli(etap_widzenia: Integer);
begin
  case etap_widzenia of
    ew_Poczekalnia:
          begin
            RxDBGrid1.ColumnByFieldName('Data_Widzenie').Visible:= False;
            RxDBGrid1.ColumnByFieldName('Data_Stolik').Visible  := False;
            RxDBGrid1.ColumnByFieldName('Data_Oczekuje').Visible:= True;
            RxDBGrid1.ColumnByFieldName('Pozostalo').Visible    := False;
          end;
    ew_NaSali:
          begin
            RxDBGrid1.ColumnByFieldName('Data_Widzenie').Visible:= False;
            RxDBGrid1.ColumnByFieldName('Data_Stolik').Visible  := True;
            RxDBGrid1.ColumnByFieldName('Data_Oczekuje').Visible:= False;
            RxDBGrid1.ColumnByFieldName('Pozostalo').Visible    := True;  // liczy od Data_Widzenie
          end;
    ew_Zrealizowane:
          begin
            RxDBGrid1.ColumnByFieldName('Data_Widzenie').Visible:= True;
            RxDBGrid1.ColumnByFieldName('Data_Stolik').Visible  := False;
            RxDBGrid1.ColumnByFieldName('Data_Oczekuje').Visible:= False;
            RxDBGrid1.ColumnByFieldName('Pozostalo').Visible    := False;
          end;
  end;
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

  if ZQWidzenia.FieldByName('Nadzor').AsString <> DM.PelnaNazwa then
    begin
      MessageDlg('Brak uprawnień.'+LineEnding+'Usunąć może tylko użytkownik który nadzorował widzenie.', mtWarning, [mbOK],0);
      exit;
    end;
  if (ZQWidzenia.FieldByName('Etap').AsInteger = ew_Zrealizowane) and
     (ZQWidzenia.FieldByName('Data_Widzenie').AsDateTime < IncDay(Date(), -7)) then
    begin
      MessageDlg('Brak uprawnień.'+LineEnding+'Usunąć można tylko do 7 dni od daty widzenia.', mtWarning, [mbOK],0);
      exit;
    end;

  if MessageDlg('Czy napewno usunąć widzenie?', mtWarning, [mbOK, mbCancel],0) = mrCancel then exit;
  //--------------------------------------------------------------------------------------------------------------------

  // usuń widzenie
  id_w :=ZQWidzenia.FieldByName('ID').AsInteger;

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
       if ShowModal = mrOK then
         begin
           RefreshQuery(ZQOsoby);
           RefreshQuery(ZQWidzenia);
         end;
       Free;
  end;
end;

procedure TOchRejestrWidzen.btnModyfikujClick(Sender: TObject);
begin
  // walidacja
  if IsDataSetEmpty(ZQWidzenia) then exit;
  if ZQWidzenia.FieldByName('Etap').AsInteger = ew_Zrealizowane then
    begin
      DM.KomunikatPopUp(Sender, 'Widzenia','Można edytować widzenia tylko na etapie poczekalni i sali widzeń.', nots_Warning);
      exit;
    end;
  if ZQWidzenia.FieldByName('Nadzor').AsString <> DM.PelnaNazwa then
    begin
      DM.KomunikatPopUp(Sender, 'Widzenia','Prawo do edycji ma tylko użytkownik który nadzorował widzenie.', nots_Warning);
      exit;
    end;
  // koniec walidacji

  with TOchAddWidzenie.Create(Self) do
  begin
       Modyfikuj( ZQWidzenia.FieldByName('id').AsInteger, ZQWidzenia.FieldByName('ido').AsInteger );
       if ShowModal = mrOK then
         begin
           RefreshQuery(ZQOsoby);
           RefreshQuery(ZQWidzenia);
         end;
       Free;
  end;
end;

end.

