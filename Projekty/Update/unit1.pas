unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, BCLabel,
  BGRAFlashProgressBar, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  Buttons, Windows, JwaTlHelp32, LazFileUtils;

type

  { TForm1 }

  TForm1 = class(TForm)
    BCLabel1: TBCLabel;
    BGRAFlashProgressBar1: TBGRAFlashProgressBar;
    BitBtn2: TBitBtn;
    Memo1: TMemo;
    Panel1: TPanel;
    Panel2: TPanel;
    Timer1: TTimer;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: boolean);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private

  public
    AppName: string;     // nazwa programu
    AppPath: string;     // sciezka do programu
    UpdateTo: string;    // katalog aktualizowanego programu
    UpdatePath: string;  // katalog aktualizacji
    FileList: TStringList;  // lista plikow do aktualizacji
    Procedure Aktualizacja;
    Procedure RunApp;
    Procedure FileToUpdate;
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure KillWindowsApp(const ExeName: string);
var
  ContinueLoop: Boolean;
  FSnapshotHandle: THandle;
  FProcessEntry32: TProcessEntry32;
  AHandle: THandle;
  ID: dword;
begin
  FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FProcessEntry32.dwSize := SizeOf(FProcessEntry32);
  ContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32);
  while integer(ContinueLoop) <> 0 do
  begin
    if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile)) =
      UpperCase(ExeName)) or (UpperCase(FProcessEntry32.szExeFile) =
      UpperCase(ExeName))) then
    begin
      ID := FProcessEntry32.th32ProcessID;
      AHandle := OpenProcess(PROCESS_ALL_ACCESS, False, ID); //uses windows
      TerminateProcess(AHandle, 255);
    end;
    ContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32);
  end;
  CloseHandle(FSnapshotHandle);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  BGRAFlashProgressBar1.Value:=0;

  if ParamCount<1 then Application.Terminate;
  //   Memo1.Lines.Add(ParamStr(0));
  //   Memo1.Lines.Add(ParamStr(1));
  AppPath:= ParamStr(1);
  AppName:= ExtractFileName(AppPath);
  UpdateTo:= ExtractFilePath(AppPath);

  UpdatePath:= ExtractFilePath(ParamStr(0)) + 'update\';

  KillWindowsApp(AppName);
  Timer1.Enabled:=true;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled:=false;
  Aktualizacja;
end;

procedure TForm1.Aktualizacja;
var i: integer;
    FileName: string;
    LengthUpdatePath: integer;
    succes: integer;
begin
  FileList:= TStringList.Create;
  FileToUpdate;

  LengthUpdatePath:= Length(UpdatePath); // ile znaków odcinamy aby uzyskac adres bezwzgledny sciezki

  BGRAFlashProgressBar1.MaxValue:= FileList.Count;

  if FileList.Count=0 then Memo1.Lines.Add('Brak plików do zaktualizowania.');

  succes:=0;
  for i:=0 to FileList.Count-1 do
  begin
    BGRAFlashProgressBar1.Value:= i+1;
    Application.ProcessMessages;

    Memo1.Lines.Add('Z: '+ FileList[i] );
    FileName:= FileList[i];
    delete(FileName, 1, LengthUpdatePath);
    FileName:= UpdateTo + FileName;

    if Fileutil.CopyFile(FileList[i], FileName, [cffOverWriteFile, cffCreateDestDirectory, cffPreserveTime], false) then
       begin
         inc(succes);
         Memo1.Lines.Add('Do: '+ FileName +' - OK');
       end
    else
       Memo1.Lines.Add('Do: '+ FileName +' - FALSE');

  end;


  if succes = FileList.Count then
      Memo1.Lines.Add('Aktualizacja zakończona.' )
  else
      Memo1.Lines.Add('Wystąpiły błędy podczas kopiowania plików.' );


  FileList.Free;

  if ParamCount=4 then // jeśli podano login i hasło to automatycznie uruchom nową wersję
  begin
   RunApp;
   Application.Terminate;
  end;

  if MessageDlg('Aktualizator zakończył pracę, czy uruchomić nową wersję programu ?', mtWarning, [mbYes, mbNo],0) = mrYes then
  begin
    RunApp;
    Application.Terminate;
  end;
end;

procedure TForm1.RunApp;
var p1,p2: string;
begin
  p1:='';
  p2:='';
  if ParamCount=3 then // jesli było przekazane hasło to je wykorzystaj
  begin
    p1:= ParamStr(2);
    p2:= ParamStr(3);
  end;

  ShellExecute(0, nil, PChar(AppPath),  PChar(Format('"%s" "%s"',[p1, p2])), '', SW_SHOWNORMAL);
end;

procedure TForm1.FileToUpdate;
begin
  if DirectoryExistsUTF8(UpdatePath) then
  begin
    FileList := FindAllFiles(UpdatePath, '*.*', True);
  end;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: boolean);
begin
  CanClose:= ( MessageDlg('Czy zakończyć pracę aktualizatora?', mtInformation, [mbYes, mbNo],0) = mrYes );
end;

end.

