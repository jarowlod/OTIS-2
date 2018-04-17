unit UNotifierPopUp;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, StdCtrls, ExtCtrls;

type
  { TNotifierPopUpForm }

  TNotifierPopUpForm = class(TForm)
  private
    lblTitle: TLabel;
    lblText: TLabel;
    imgIcon: TPicture;
    Timer1 : TTimer;
    Timer2 : TTimer;
    Panel1 : TPanel;
    procedure HideForm(Sender: TObject);
    procedure HandleResize(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Show;
    procedure Paint; override;
    procedure SetText(Value: string);
    procedure SetTitle(Value: string);
    procedure SetColorTop(Value: TColor);
    procedure SetColorBG(Value: TColor);
  end;

{***************************************************************************
* Create global: NotifierPopUp - Lists of Notifier window self Hide by Interval
* Send info text to NotifierPopUp.AddNotifer(ATitle, AText: string);
* Set: Color, ColorTop, Icon, Interval ...
***************************************************************************}
  TNotifierPopUp = class(TComponent)
  private
    fLista: TList;   // lista TNofierPopUpForm
    fColorTop: TColor;
    fHeight: integer;
    fInterval: integer;
    fLeft: integer;
    fColor: TColor;
    fIcon: TPicture;
    fOnClose: TCloseEvent;
    fText: string;
    fTitle: string;
    fTop: integer;
    fWidth: integer;
    procedure SetColor(AValue: TColor);
    procedure SetColorTop(AValue: TColor);
    procedure SetHeight(AValue: integer);
    procedure SetIcon(AValue: TPicture);
    procedure SetInterval(AValue: integer);
    procedure SetLeft(AValue: integer);
    procedure SetOnClose(AValue: TCloseEvent);
    procedure SetText(AValue: string);
    procedure SetTitle(AValue: string);
    procedure SetTop(AValue: integer);
    procedure SetWidth(AValue: integer);
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    Procedure AddNotifer(ATitle, AText: string);
  published
    property Top: integer read fTop write SetTop;
    property Left: integer read fLeft write SetLeft;
    property Height: integer read fHeight write SetHeight;
    property Width: integer read fWidth write SetWidth;
    property Color: TColor  read fColor write SetColor;
    property ColorTop: TColor read fColorTop write SetColorTop;
    property Icon: TPicture read fIcon write SetIcon;
    property Text: string read fText write SetText;
    property Title: string read fTitle write SetTitle;
    property Interval: integer read fInterval write SetInterval;
    property OnClose: TCloseEvent read fOnClose write SetOnClose;
  end;

  { TForm2 }

implementation

{*******************************************************************
*  TNotifierPopUpForm
*******************************************************************}
constructor TNotifierPopUpForm.Create(AOwner: TComponent);
begin
  inherited CreateNew(AOwner);

  BorderStyle    := bsNone;
  FormStyle      := fsStayOnTop;
  AlphaBlend     := true;
  AlphaBlendValue:= 255;

  ImgIcon := TPicture.Create;

  Panel1:= TPanel.Create(Self);
  Panel1.Parent:= Self;
  Panel1.Align := alTop;
  Panel1.Color := $00FF4242; // $005C5C5C;
  Panel1.Height:= 5;
  Panel1.BevelOuter:= bvNone;

  lblTitle := TLabel.Create(Self);
  lblTitle.Parent      := Self;
  lblTitle.AutoSize    := False;
  lblTitle.Transparent := True;
  lblTitle.Font.Style  := [FsBold];
  lblTitle.Font.Color  := $005C5C5C;
  lblTitle.Caption     := 'OTIS';
  lblTitle.ParentColor := True;
  lblTitle.OnClick     := @HideForm;

  lblText := TLabel.Create(Self);
  lblText.Parent      := Self;
  lblText.AutoSize    := False;
  lblText.Transparent := True;
  lblText.Caption     := 'Text';
  lblText.Font.Color  := $005C5C5C;
  lblText.WordWrap    := True;
  lblText.ParentColor := True;
  lblText.OnClick     := @HideForm;

  Timer1:= TTimer.Create(Self);
  Timer1.Interval     := 3000;
  Timer1.Enabled      := false;
  Timer1.OnTimer      := @Timer1Timer;

  Timer2:= TTimer.Create(Self);
  Timer2.Interval     := 100;
  Timer2.Enabled      := false;
  Timer2.OnTimer      := @Timer2Timer;

  Color               := $DCFFFF; // Kolor tła

  HandleResize(Self);

  // Connects the methods to events
  OnClick := @HideForm;
  OnShow  := @HandleResize;
end;

destructor TNotifierPopUpForm.Destroy;
begin
  ImgIcon.Free;
  lblTitle.Free;
  lblText.Free;
  Timer1.Free;
  Timer2.Free;
  Panel1.Free;
  inherited Destroy;
end;

procedure TNotifierPopUpForm.Show;
begin
  Timer1.Enabled:= true;
  inherited Show;
end;

procedure TNotifierPopUpForm.Paint;
begin
  Canvas.Brush.Style := bsSolid;
  Canvas.Brush.Color := Color;
  Canvas.FillRect(Rect(0,0,width,height));

  { Paints the icon. We can't use a TImage because it's on ExtCtrls }
  if Assigned(imgIcon.Bitmap) then Canvas.Draw(5, 10, imgIcon.Bitmap);
end;

procedure TNotifierPopUpForm.SetText(Value: string);
begin
  lblText.Caption:= Value;
end;

procedure TNotifierPopUpForm.SetTitle(Value: string);
begin
  lblTitle.Caption:= Value;
end;

procedure TNotifierPopUpForm.SetColorTop(Value: TColor);
begin
  Panel1.Color:= Value;
end;

procedure TNotifierPopUpForm.SetColorBG(Value: TColor);
begin
  Color:= Value;
end;

procedure TNotifierPopUpForm.HideForm(Sender: TObject);
Var NoValue :TCloseAction;
begin
  if Assigned(OnClose) then
     OnClose(Self,NoValue);
  Hide;
end;

procedure TNotifierPopUpForm.HandleResize(Sender: TObject);
var
  IconAdjust: Integer;
  INT_NOTIFIER_SPACING: integer;
begin
  INT_NOTIFIER_SPACING:= 5;

  if (ImgIcon.Bitmap <> nil) then
    IconAdjust := INT_NOTIFIER_SPACING + imgIcon.Bitmap.Width
  else
    IconAdjust := 0;

  if (lblTitle <> nil) then
  begin
    lblTitle.Left  := IconAdjust + INT_NOTIFIER_SPACING;
    lblTitle.Top   := INT_NOTIFIER_SPACING + 5;
    lblTitle.Width := Width - (lblTitle.Left + INT_NOTIFIER_SPACING);
    lblTitle.Height:= 20;
  end;

  if (lblText <> nil) then
  begin
    lblText.Left   := IconAdjust + 20;
    lblText.Top    := LblTitle.Top + LblTitle.Height + INT_NOTIFIER_SPACING;
    lblText.Width  := Width - (lblText.Left + INT_NOTIFIER_SPACING);
    lblText.Height := Height - (lblText.Top + INT_NOTIFIER_SPACING);
  end;
end;

procedure TNotifierPopUpForm.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled:= false;
  Timer2.Enabled:= true;
end;

procedure TNotifierPopUpForm.Timer2Timer(Sender: TObject);
begin
  AlphaBlendValue:= AlphaBlendValue - 20;
  if AlphaBlendValue <= 20 then close;
end;


{*********************************************************************************************************************
*   TNotifierPopUp
**********************************************************************************************************************}
procedure TNotifierPopUp.SetColor(AValue: TColor);
begin
  if fColor=AValue then Exit;
  fColor:=AValue;
end;

procedure TNotifierPopUp.SetColorTop(AValue: TColor);
begin
  if fColorTop=AValue then Exit;
  fColorTop:=AValue;
end;

procedure TNotifierPopUp.SetHeight(AValue: integer);
begin
  if fHeight=AValue then Exit;
  fHeight:=AValue;
end;

procedure TNotifierPopUp.SetIcon(AValue: TPicture);
begin
  if Assigned(AValue) then
    fIcon.Assign(AValue);
end;

procedure TNotifierPopUp.SetInterval(AValue: integer);
begin
  if fInterval=AValue then Exit;
  fInterval:=AValue;
end;

procedure TNotifierPopUp.SetLeft(AValue: integer);
begin
  if fLeft=AValue then Exit;
  fLeft:=AValue;
end;

procedure TNotifierPopUp.SetOnClose(AValue: TCloseEvent);
begin
  if fOnClose=AValue then Exit;
  fOnClose:=AValue;
end;

procedure TNotifierPopUp.SetText(AValue: string);
begin
  if fText=AValue then Exit;
  fText:=AValue;
end;

procedure TNotifierPopUp.SetTitle(AValue: string);
begin
  if fTitle=AValue then Exit;
  fTitle:=AValue;
end;

procedure TNotifierPopUp.SetTop(AValue: integer);
begin
  if fTop=AValue then Exit;
  fTop:=AValue;
end;

procedure TNotifierPopUp.SetWidth(AValue: integer);
begin
  if fWidth=AValue then Exit;
  fWidth:=AValue;
end;

constructor TNotifierPopUp.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  fLista:= TList.Create;

  fLeft    := 0;
  fTop     := 0;
  fWidth   := 350;
  fHeight  := 80;
  fInterval:= 3000;         // czas wygaśnięcia okienka
  fIcon    := TPicture.Create;
  fColorTop:= clBlack;
  fColor   := $DCFFFF;
end;

destructor TNotifierPopUp.Destroy;
var i: integer;
    frm: TNotifierPopUpForm;
begin
  for i:=0 to fLista.Count-1 do
    begin
      frm:= TNotifierPopUpForm(fLista[i]);
      FreeAndNil(frm);
    end;
  fLista.Clear;

  FreeAndNil(fLista);
  FreeAndNil(fIcon);

  inherited Destroy;
end;

procedure TNotifierPopUp.AddNotifer(ATitle, AText: string);
var frm     : TNotifierPopUpForm;
    posindex: integer;
    i       : integer;
    isAnyVisible: Boolean;
begin
  // Sprawdzamy czy są widoczne komunikaty
  isAnyVisible:= false;
  for i:=0 to fLista.Count-1 do
    begin
      frm:= TNotifierPopUpForm(fLista[i]);
      if Assigned(frm)and(frm.Visible) then
      begin
        isAnyVisible:= true;
        Break;
      end;
    end;
  // jeśli nie ma widocznych to czyścimy listę
  if not isAnyVisible then
  begin
    for i:=0 to fLista.Count-1 do
      begin
        frm:= TNotifierPopUpForm(fLista[i]);
        FreeAndNil(frm);
      end;
    fLista.Clear;
  end;

  // CREATE
  frm:= TNotifierPopUpForm.Create(Self);
  posindex:= fLista.Add(frm);
  posindex:= posindex mod 8;    // jednocześnie osiem komunikatów na ekran, jeden pod drugim, następne od nowa
  with frm do
    begin
      Height:= fHeight;
      Width := fWidth;

      Left:= Screen.Width-Width-10;
      Top := 20+posindex * (Height+2);

      if AText=''  then AText := fText;
      if ATitle='' then ATitle:= fTitle;
      SetText(AText);
      SetTitle(ATitle);

      SetColorTop(fColorTop);
      SetColorBG(fColor);

      if Assigned(fIcon) then
        imgIcon.Assign(fIcon);

      Timer1.Interval:= fInterval;

      Show;
    end;
end;

end.

