unit UOchEdycja_Widz;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs;

type

  { TOchEdycja_Widz }

  TOchEdycja_Widz = class(TForm)
  private

  public
    procedure SetID_Widzenia(vID: integer);
  end;

var
  OchEdycja_Widz: TOchEdycja_Widz;

implementation

{$R *.frm}

{ TOchEdycja_Widz }

procedure TOchEdycja_Widz.SetID_Widzenia(vID: integer);
begin
  // TODO:
end;

end.

