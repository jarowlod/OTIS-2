program project1;

{$mode objfpc}{$H+}

uses
  Interfaces, Forms, pl_rx, SysUtils, controls, Unit1, datamodule, ULogowanie;


{$R *.res}

begin
  Application.Title:='OTIS 2';
  RequireDerivedFormResource := True;
  Application.Initialize;
  Application.CreateForm(TDM, DM);

  Logowanie:= TLogowanie.Create(Application);  // uruchamiamy dostęp do bazy (login i hasło)
  if Logowanie.ShowModal= mrOK then
      begin
        DM.OpenAllTable;                          // sprawdzamy akutualizacje i otwieramy tabele
        Application.CreateForm(TForm1, Form1);
      end
  else
      Application.Terminate;

  FreeAndNil(Logowanie);

  Application.Run;
end.

