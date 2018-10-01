unit UZatAddStanowiskaPokrewne;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  Buttons, DBCtrls, TplGradientUnit, ZDataset;

type

  { TZatAddStanowiskaPokrewne }

  TZatAddStanowiskaPokrewne = class(TForm)
    btnAnuluj: TBitBtn;
    btnOK: TBitBtn;
    DSStPokrewne: TDataSource;
    DBMemo1: TDBMemo;
    lblStanowisko: TLabel;
    Label8: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    plGradient3: TplGradient;
    ZQStPokrewne: TZQuery;
    procedure btnAnulujClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    FStanowiskaPokrewne: string;
  public
    procedure AddStanowiskaPokrewne(stanowisko: string);
    procedure EditStanowiskaPokrewne(stanowisko: string);
  published
    property StanowiskaPokrewne: string read FStanowiskaPokrewne write FStanowiskaPokrewne;
  end;

//var
//  ZatAddStanowiskaPokrewne: TZatAddStanowiskaPokrewne;

implementation

{$R *.frm}

{ TZatAddStanowiskaPokrewne }

procedure TZatAddStanowiskaPokrewne.btnOKClick(Sender: TObject);
begin
  ZQStPokrewne.Post;
  StanowiskaPokrewne:= ZQStPokrewne.FieldByName('pokrewne').AsString;
end;

procedure TZatAddStanowiskaPokrewne.btnAnulujClick(Sender: TObject);
begin
  ZQStPokrewne.Cancel;
end;

procedure TZatAddStanowiskaPokrewne.AddStanowiskaPokrewne(stanowisko: string);
begin
  ZQStPokrewne.ParamByName('stanowisko').AsString:= stanowisko;
  ZQStPokrewne.Open;
  ZQStPokrewne.Append;
  ZQStPokrewne.FieldByName('stanowisko').AsString:= stanowisko;
  lblStanowisko.Caption:= stanowisko;
end;

procedure TZatAddStanowiskaPokrewne.EditStanowiskaPokrewne(stanowisko: string);
begin
  ZQStPokrewne.ParamByName('stanowisko').AsString:= stanowisko;
  ZQStPokrewne.Open;
  if ZQStPokrewne.IsEmpty then
    begin
      ZQStPokrewne.Append;
      ZQStPokrewne.FieldByName('stanowisko').AsString:= stanowisko;
    end
  else
    ZQStPokrewne.Edit;
  lblStanowisko.Caption:= stanowisko;
end;

end.

