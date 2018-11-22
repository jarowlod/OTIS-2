unit UPaczkiAdd;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, Buttons,
  StdCtrls, EditBtn, TplGradientUnit, datamodule, DateTimePicker;

type

  { TPaczkiAdd }

  TPaczkiAdd = class(TForm)
    btnAnuluj: TBitBtn;
    btnOK: TBitBtn;
    cbWKantynie: TCheckBox;
    cbDodatkowa: TCheckBox;
    cbNadawca: TComboBox;
    dtpDataPrzyjecia: TDateTimePicker;
    edUwagi: TEdit;
    edAdres: TEdit;
    GroupBox1: TGroupBox;
    Image1: TImage;
    Label1: TLabel;
    Label11: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Panel2: TPanel;
    Panel5: TPanel;
    plGradient2: TplGradient;
    rgRodzajPaczki: TRadioGroup;
    procedure btnOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    SelectIDO: integer;
    procedure WczytajDaneOsadzonego;
    procedure ZapiszPaczke;
    procedure WczytajNadawcow;
  public
    procedure SetIDO(IDO: integer);
  end;

var
  PaczkiAdd: TPaczkiAdd;

implementation

{$R *.frm}

{ TPaczkiAdd }

procedure TPaczkiAdd.FormCreate(Sender: TObject);
begin
  SelectIDO:= 0;
end;

procedure TPaczkiAdd.btnOKClick(Sender: TObject);
begin
  try
    ZapiszPaczke;
  except
    ModalResult:= mrNone;
    raise;
  end;
end;

procedure TPaczkiAdd.WczytajDaneOsadzonego;
begin

end;

procedure TPaczkiAdd.ZapiszPaczke;
var ZQ: TZQueryPom;
begin
    ZQ:= TZQueryPom.Create(Self);

    ZQ.SQL.Text:='INSERT INTO paczki '
     +'(IDO, WYDANO, WYDAL, RODZAJ, WAGA, UWAGI, DODATKOWA, KANTYNA, NADAWCA, ADRES) '
     +'VALUES (:ido, :wydano, :wydal, :rodzaj, :waga, :uwagi, :dodatkowa, :kantyna, :nadawca, :adres)';
    ZQ.ParamByName('ido').AsInteger    := SelectIDO;
    ZQ.ParamByName('wydano').AsDateTime:= dtpDataPrzyjecia.DateTime; // Data wydania paczki
    ZQ.ParamByName('wydal').AsString   := DM.PelnaNazwa;      // Kto wydał
    ZQ.ParamByName('rodzaj').AsString  := 'ZZZZZ';         // Rodzaj paczki
    ZQ.ParamByName('waga').AsInteger   := 6;  // waga
    ZQ.ParamByName('uwagi').AsString   := edUwagi.Text;       // uwagi
    ZQ.ParamByName('nadawca').AsString := cbNadawca.Text; // nadawca
    ZQ.ParamByName('adres').AsString   := edAdres.Text;       // adres

    if cbDodatkowa.Checked then
    ZQ.ParamByName('kantyna').AsString:= 'tak';  // Czy zakupiona w kantynie

    if cbWKantynie.Checked then
    ZQ.ParamByName('dodatkowa').AsString:= 'tak';   // Czy dodatkowa

    ZQ.ExecSQL;
    ZQ.Free;
end;

procedure TPaczkiAdd.WczytajNadawcow;
var ZQ: TZQueryPom;
begin
  // TODO: wczytujemy z osób bliskich + OSADZONY
  ZQ:=TZQueryPom.Create(Owner);
  ZQ.SQL.Text:= 'SELECT DISTINCT '
               +'NADAWCA, Adres FROM paczki '
               +'WHERE IDO=:ido_os '
               +'ORDER BY Adres DESC';
  ZQ.ParamByName('ido_os').AsInteger:= SelectIDO;    // Tylko nadawcy od tego osadzonego
  ZQ.Open;
  ZQ.First;
  while not ZQ.Eof do
  begin
      cbNadawca.Items.Add(ZQ.FieldByName('NADAWCA').AsString);
      ZQ.Next;
  end;
  ZQ.Close;            // konic ComboBox
  ZQ.Free;
end;

procedure TPaczkiAdd.SetIDO(IDO: integer);
begin
  SelectIDO:= IDO;
  WczytajDaneOsadzonego;
end;

end.

