unit UKwatKartaRzeczy;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  TplGradientUnit, rxdbgrid, ZDataset;

type

  { TKwatKartaRzeczy }

  TKwatKartaRzeczy = class(TForm)
    DSKartaRzeczy: TDataSource;
    Image1: TImage;
    Label1: TLabel;
    Panel5: TPanel;
    plGradient2: TplGradient;
    RxDBGrid1: TRxDBGrid;
    ZQKartaRzeczy: TZQuery;
  private

  public

  end;

var
  KwatKartaRzeczy: TKwatKartaRzeczy;

implementation

{$R *.frm}

end.

