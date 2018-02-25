unit UViewRichEdit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, RichMemo, Forms, Controls, Graphics, Dialogs,
  ExtCtrls, ComCtrls, StdCtrls, Menus;

type

  { TViewRichEdit }

  TViewRichEdit = class(TForm)
    btnBold: TToolButton;
    btnCenter: TToolButton;
    btnColor: TColorButton;
    btnItalic: TToolButton;
    btnLeft: TToolButton;
    btnRight: TToolButton;
    btnUnderline: TToolButton;
    cbFont: TComboBox;
    cbFontSize: TComboBox;
    ColorDialog1: TColorDialog;
    FontDialog1: TFontDialog;
    ImageList1: TImageList;
    Label3: TLabel;
    Label4: TLabel;
    MenuItemKopiuj: TMenuItem;
    MenuItemWklej: TMenuItem;
    MenuItemWytnij: TMenuItem;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    PopupMenu2: TPopupMenu;
    RichMemo1: TRichMemo;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton4: TToolButton;
    procedure btnBoldClick(Sender: TObject);
    procedure btnCenterClick(Sender: TObject);
    procedure btnItalicClick(Sender: TObject);
    procedure btnLeftClick(Sender: TObject);
    procedure btnRightClick(Sender: TObject);
    procedure btnUnderlineClick(Sender: TObject);
    procedure cbFontSelect(Sender: TObject);
    procedure cbFontSizeSelect(Sender: TObject);
    procedure ColorDialog1Close(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MenuItemKopiujClick(Sender: TObject);
    procedure MenuItemWklejClick(Sender: TObject);
    procedure MenuItemWytnijClick(Sender: TObject);
    procedure RichMemo1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState
      );
    procedure RichMemo1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure RichMemo1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ToolButton2Click(Sender: TObject);
  private
    SelFontFormat: TFontParams;
    SelParaAlignment: TParaAlignment;
    function GetRtf: string;
    function GetSelText: string;
    function GetText: string;
    procedure SetRtf(AValue: string);
    procedure SetSelText(AValue: string);
    procedure SetText(AValue: string);
    procedure PrepareToolbar();
    procedure FontStyleModify(fs: TFontStyle);
  public
    property Text: string read GetText write SetText;
    property Rtf: string read GetRtf write SetRtf;
    property SelText: string read GetSelText write SetSelText;
  end;

//var
//  ViewRichEdit: TViewRichEdit;

implementation

{$R *.frm}

{ TViewRichEdit }

procedure TViewRichEdit.FormCreate(Sender: TObject);
begin
  cbFont.Items.Assign( Screen.Fonts);
  cbFont.ItemIndex:= 0; // we select the first font
end;

procedure TViewRichEdit.btnBoldClick(Sender: TObject);
begin
  FontStyleModify(fsBold);
end;

procedure TViewRichEdit.btnCenterClick(Sender: TObject);
begin
  SelParaAlignment:= TParaAlignment.paCenter;
  RichMemo1.SetParaAlignment( RichMemo1.SelStart, RichMemo1.SelLength, SelParaAlignment);
  PrepareToolbar();
end;

procedure TViewRichEdit.btnItalicClick(Sender: TObject);
begin
  FontStyleModify(fsItalic);
end;

procedure TViewRichEdit.btnLeftClick(Sender: TObject);
begin
  SelParaAlignment:= TParaAlignment.paLeft;
  RichMemo1.SetParaAlignment( RichMemo1.SelStart, RichMemo1.SelLength, SelParaAlignment);
  PrepareToolbar();
end;

procedure TViewRichEdit.btnRightClick(Sender: TObject);
begin
  SelParaAlignment:= TParaAlignment.paRight;
  RichMemo1.SetParaAlignment( RichMemo1.SelStart, RichMemo1.SelLength, SelParaAlignment);
  PrepareToolbar();
end;

procedure TViewRichEdit.btnUnderlineClick(Sender: TObject);
begin
  FontStyleModify(fsUnderline);
end;

procedure TViewRichEdit.cbFontSelect(Sender: TObject);
begin
  SelFontFormat.Name:= cbFont.Text;
  RichMemo1.SetRangeParams(RichMemo1.SelStart, RichMemo1.SelLength, [tmm_Name], SelFontFormat, [],[]);
  RichMemo1.SetFocus; // get focus to the rich memo
end;

procedure TViewRichEdit.cbFontSizeSelect(Sender: TObject);
begin
  SelFontFormat.Size:= StrToInt(cbFontSize.Text);
  RichMemo1.SetRangeParams(RichMemo1.SelStart, RichMemo1.SelLength, [tmm_Size], SelFontFormat, [],[]);
  RichMemo1.SetFocus;
end;

procedure TViewRichEdit.ColorDialog1Close(Sender: TObject);
begin
  SelFontFormat.Color := TColorDialog(Sender).Color;
  RichMemo1.SetRangeColor(RichMemo1.SelStart, RichMemo1.SelLength, SelFontFormat.Color);
end;

procedure TViewRichEdit.FormShow(Sender: TObject);
begin
  RichMemo1.SetFocus;
  PrepareToolbar();
end;

procedure TViewRichEdit.MenuItemKopiujClick(Sender: TObject);
begin
  RichMemo1.CopyToClipboard;
end;

procedure TViewRichEdit.MenuItemWklejClick(Sender: TObject);
begin
  RichMemo1.PasteFromClipboard;
end;

procedure TViewRichEdit.MenuItemWytnijClick(Sender: TObject);
begin
  RichMemo1.CutToClipboard;
end;

procedure TViewRichEdit.RichMemo1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  PrepareToolbar;
  RichMemo1.Refresh;
end;

procedure TViewRichEdit.RichMemo1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then PopupMenu2.PopUp;
end;

procedure TViewRichEdit.RichMemo1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  PrepareToolbar;
  RichMemo1.Refresh;
end;

procedure TViewRichEdit.ToolButton2Click(Sender: TObject);
begin
  FontDialog1.Font.Name := SelFontFormat.Name;
  FontDialog1.Font.Color:= SelFontFormat.Color;
  FontDialog1.Font.Size := SelFontFormat.Size;
  FontDialog1.Font.Style:= SelFontFormat.Style;

  if FontDialog1.Execute then
  begin
    SelFontFormat.Name := FontDialog1.Font.Name;
    SelFontFormat.Color:= FontDialog1.Font.Color;
    SelFontFormat.Size := FontDialog1.Font.Size;
    SelFontFormat.Style:= FontDialog1.Font.Style;

    RichMemo1.SetRangeParams(RichMemo1.SelStart, RichMemo1.SelLength, [tmm_Color, tmm_Size, tmm_Name], SelFontFormat, [],[]);
  end;
end;

procedure TViewRichEdit.PrepareToolbar();
begin
  RichMemo1.GetTextAttributes(RichMemo1.SelStart, SelFontFormat);
  RichMemo1.GetParaAlignment(RichMemo1.SelStart, SelParaAlignment);

  cbFont.Caption := SelFontFormat.Name;
  cbFontSize.Caption:= IntToStr(SelFontFormat.Size);
  btnColor.ButtonColor := SelFontFormat.Color;

  btnBold.Down  := (fsBold in SelFontFormat.Style);
  btnItalic.Down:= (fsItalic in SelFontFormat.Style);
  btnUnderline.Down:= (fsUnderline in SelFontFormat.Style);

  btnLeft.Down  := (SelParaAlignment = TParaAlignment.paLeft);
  btnCenter.Down:= (SelParaAlignment = TParaAlignment.paCenter);
  btnRight.Down := (SelParaAlignment = TParaAlignment.paRight);
end;

function TViewRichEdit.GetRtf: string;
begin
  Result:= RichMemo1.Rtf;
end;

function TViewRichEdit.GetSelText: string;
begin
  Result:= RichMemo1.SelText;
end;

function TViewRichEdit.GetText: string;
begin
  Result:= RichMemo1.Text;
end;

procedure TViewRichEdit.FontStyleModify(fs: TFontStyle);
var
  f : TFontParams;
  rm  : TFontStyles;
  add : TFontStyles;
begin
  RichMemo1.GetTextAttributes(RichMemo1.SelStart, f);
  if fs in f.Style then begin
    rm:=[fs]; add:=[];
  end else begin
    rm:=[]; add:=[fs];
  end;
  RichMemo1.SetRangeParams(RichMemo1.SelStart, RichMemo1.SelLength, [tmm_Styles] , '', 0, 0, add, rm);
end;

procedure TViewRichEdit.SetRtf(AValue: string);
begin
  RichMemo1.Rtf:= AValue;
end;

procedure TViewRichEdit.SetSelText(AValue: string);
begin
  RichMemo1.SelText:= AValue;
end;

procedure TViewRichEdit.SetText(AValue: string);
begin
  RichMemo1.Text:= AValue;
end;

end.

