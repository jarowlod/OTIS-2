unit UViewPanelZdj;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, datamodule, DB;

type

  { TViewPanelZdj }

  TViewPanelZdj = class(TForm)
    Image_1: TImage;
    lbOpis: TLabel;
    lbZatrudnienie: TLabel;
    Panel_1: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure Image_1Click(Sender: TObject);
    procedure Image_1DblClick(Sender: TObject);
  private
    SelectIDO: integer;
    FDataSet: TDataSet;
    function isZatrudniony: Boolean;
    procedure SetDataSet(AValue: TDataSet);
  public
    procedure SetIDO(ido: integer);
    procedure SetOpis(str: string);
    property DataSet: TDataSet read FDataSet write SetDataSet;
  end;

//var
//  ViewPanelZdj: TViewPanelZdj;

implementation
uses UPenitForm, UOchForm;
{$R *.frm}

{ TViewPanelZdj }

procedure TViewPanelZdj.FormCreate(Sender: TObject);
begin
  SelectIDO:= 0;
  FDataSet:= nil;
end;

procedure TViewPanelZdj.Image_1Click(Sender: TObject);
begin
  if Assigned(DataSet) then
    DataSet.Locate('IDO', SelectIDO, []);
end;

procedure TViewPanelZdj.SetIDO(ido: integer);
var plik: string;
begin
  if SelectIDO = ido then exit;

  SelectIDO:= ido;

  // jeśli jest 0 to zerujemy widok
  if SelectIDO = 0 then
  begin
    Image_1.Picture.Clear; // czyścimy zdjęcie.
    SetOpis('');
    lbZatrudnienie.Visible:= false;
    Hide;
    exit;
  end;
  //-------------------------------

  plik:= DM.Path_Foto + IntToStr(SelectIDO) + '.jpg';
  Image_1.Picture.Clear; // czyścimy zdjęcie.
  TLoadFotoThread.Create(plik, Image_1 );

  isZatrudniony;
end;

procedure TViewPanelZdj.SetOpis(str: string);
begin
  lbOpis.Caption:= str;
  lbOpis.Hint:= str;
  Image_1.Hint:= str;
end;

procedure TViewPanelZdj.Image_1DblClick(Sender: TObject);
begin
  if (DM.Dzial='Penit')and(DM.Wychowawca<>'') then
    with TPenitForm.Create(Self) do
    begin
         SetIDO( SelectIDO );
         ShowModal;
         Free;
    end
  else
    with TOchForm.Create(Self) do
    begin
         SetIDO( SelectIDO );
         ShowModal;
         Free;
    end;
end;

function TViewPanelZdj.isZatrudniony: Boolean;
var ZQPom: TZQueryPom;
begin
  Result:= false;
  lbZatrudnienie.Visible:= false;
  try
    ZQPom:= TZQueryPom.Create(Self);
    ZQPom.SQL.Text:= 'SELECT sta.nazwa, zat.zat_od '+
                     'FROM zat_zatrudnieni as zat LEFT JOIN zat_stanowiska as sta ON sta.id = zat.id_stanowiska '+
                     'WHERE (IDO = :ido) and (zat.status_zatrudnienia = :status_z)';
    ZQPom.ParamByName('ido').AsInteger:= SelectIDO;
    ZQPom.ParamByName('status_z').AsString:= sz_Zatrudniony;
    ZQPom.Open;
    if ZQPom.IsEmpty then exit;

    lbZatrudnienie.Visible:= true;
    lbZatrudnienie.Caption:= ZQPom.FieldByName('nazwa').AsString+ LineEnding+
                             'od:'+ZQPom.FieldByName('zat_od').AsString;
    lbZatrudnienie.Hint:= lbZatrudnienie.Caption;
  finally
    FreeAndNil(ZQPom);
  end;
end;

procedure TViewPanelZdj.SetDataSet(AValue: TDataSet);
begin
  if FDataSet= AValue then Exit;
  FDataSet:= AValue;
end;



end.

