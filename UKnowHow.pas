unit UKnowHow;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, FileUtil, LSControls, BGRACustomDrawn, DBRichMemo,
  ZDataset, rxdbgrid, rxmemds, TplGradientUnit, Forms, Controls, Graphics,
  Dialogs, ExtCtrls, StdCtrls, DbCtrls, Buttons, LCLIntf, ShellApi, datamodule;

type

  { TKnowHow }

  TKnowHow = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    CheckBox1: TCheckBox;
    ComboBox1: TComboBox;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    DBRichMemo1: TDBRichMemo;
    DSKnowHow: TDataSource;
    DSKnowHowFiles: TDataSource;
    DBText1: TDBText;
    Edit1: TEdit;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lblTags: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    plGradient2: TplGradient;
    RxDBGrid1: TRxDBGrid;
    RxDBGrid2: TRxDBGrid;
    Splitter1: TSplitter;
    ZQKnowHow: TZQuery;
    ZQKnowHowFiles: TZQuery;
    procedure DSKnowHowDataChange(Sender: TObject; Field: TField);
    procedure Edit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDropFiles(Sender: TObject; const FileNames: array of String);
    procedure RxDBGrid2DblClick(Sender: TObject);
  private
    procedure WstawPlik(fileName: String);
  public

  end;

//var
//  KnowHow: TKnowHow;

implementation

{$R *.frm}

{ TKnowHow }

procedure TKnowHow.Edit1Change(Sender: TObject);
begin
  ZQKnowHow.Close;
  ZQKnowHow.ParamByName('szukaj').AsString:= Edit1.Text+'%';
  ZQKnowHow.Open;
end;

procedure TKnowHow.FormCreate(Sender: TObject);
begin
  Edit1Change(Sender);
  DragAcceptFiles(Handle, False);
  DragAcceptFiles(RxDBGrid2.Handle, True);
end;

procedure TKnowHow.FormDropFiles(Sender: TObject; const FileNames: array of String);
var i: integer;
begin
  for i:= Low(FileNames) to High(FileNames) do
  WstawPlik(FileNames[i]);
end;

procedure TKnowHow.RxDBGrid2DblClick(Sender: TObject);
var fileDest, fileSrc: string;
begin
  if ZQKnowHowFiles.IsEmpty then exit;
  fileDest:= DM.Path_Temp + ZQKnowHowFiles.FieldByName('FileName').AsString;
  fileSrc := DM.Path_KnowHow + ZQKnowHowFiles.FieldByName('ID').AsString + ExtractFileExt(ZQKnowHowFiles.FieldByName('FileName').AsString);
  if CopyFile(fileSrc, fileDest, [cffOverwriteFile, cffCreateDestDirectory, cffPreserveTime]) then
    OpenDocument(fileDest);
end;

procedure TKnowHow.WstawPlik(fileName: String);
var fileDest: string;
begin
  ZQKnowHowFiles.Append;
  ZQKnowHowFiles.FieldByName('ID_Know_How').AsInteger := ZQKnowHow.FieldByName('ID').AsInteger;
  ZQKnowHowFiles.FieldByName('FileName').AsString     := ExtractFileName(fileName);
  ZQKnowHowFiles.FieldByName('FilePathSrc').AsString  := fileName;
  ZQKnowHowFiles.FieldByName('DataDodania').AsDateTime:= Now;
  ZQKnowHowFiles.FieldByName('User').AsString         := DM.PelnaNazwa;
  ZQKnowHowFiles.Post;
  fileDest:= DM.Path_KnowHow + ZQKnowHowFiles.FieldByName('ID').AsString + ExtractFileExt(fileName);
  if not CopyFile(fileName, fileDest, [cffOverwriteFile, cffCreateDestDirectory,cffPreserveTime]) then ZQKnowHowFiles.Delete;
end;

procedure TKnowHow.DSKnowHowDataChange(Sender: TObject; Field: TField);
var ZQPom: TZQueryPom; //pom
    s: string;
begin
  lblTags.Caption:= '';
  ZQKnowHowFiles.Close;
  if ZQKnowHow.IsEmpty then exit;
  ZQKnowHowFiles.ParamByName('id_know_how').AsInteger:= ZQKnowHow.FieldByName('ID').AsInteger;
  ZQKnowHowFiles.Open;

  ZQPom:= TZQueryPom.Create(Self);
  ZQPom.SQL.Text:= 'SELECT Tag FROM know_how_tags WHERE ID_Know_How=:id';
  ZQPom.ParamByName('id').AsInteger:= ZQKnowHow.FieldByName('ID').AsInteger;
  ZQPom.Open;
  s:='';
  while not ZQPom.EOF do
  begin
    if s<>'' then s:=s+', ';
    s:= s+ ZQPom.FieldByName('Tag').AsString;
    ZQPom.Next;
  end;
  lblTags.Caption:= 'Tags: '+s;
  FreeAndNil(ZQPom);
end;

end.

