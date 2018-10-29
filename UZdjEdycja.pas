unit UZdjEdycja;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, GR32_Image, LR_Class, LR_Desgn, BCPanel,
  BCButton, BGRALabel, Forms, Controls, Graphics, Dialogs, ExtCtrls, Menus,
  Clipbrd, ExtDlgs, Buttons, StdCtrls, ComCtrls, ShellApi,
  GR32,  GR32_Text_LCL_Win, GR32_Layers, GR32_Blend, GR32_Resamplers, datamodule;
type

  { TZdjEdycja }

  TZdjEdycja = class(TForm)
    btnCopyIDO: TBCButton;
    lblIDO: TBGRALabel;
    btnPasteFoto: TBCButton;
    btnWytnij: TBCButton;
    btnWczytajFoto: TBCButton;
    btnZapiszDoOTIS: TBCButton;
    btnZaznacz: TBCButton;
    BCPanel1: TBCPanel;
    BCPanel2: TBCPanel;
    ImgView: TImgView32;
    lblFileEdit: TLabel;
    OpenPictureDialog1: TOpenPictureDialog;
    Panel1: TPanel;
    SaveDialog1: TSaveDialog;
    procedure btnCopyIDOClick(Sender: TObject);
    procedure btnPasteFotoClick(Sender: TObject);
    procedure btnWytnijClick(Sender: TObject);
    procedure btnZapiszDoOTISClick(Sender: TObject);
    procedure btnZaznaczClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDropFiles(Sender: TObject; const FileNames: array of String);
    procedure ImgViewDblClick(Sender: TObject);
    procedure ImgViewPaintStage(Sender: TObject; Buffer: TBitmap32;
      StageNum: Cardinal);
    procedure Img_1MouseEnter(Sender: TObject);
    procedure Img_1MouseLeave(Sender: TObject);
    procedure Img_1PaintStage(Sender: TObject; Buffer: TBitmap32;
      StageNum: Cardinal);
  private
    SelectIDO: integer;
    isNewFoto: Boolean;
    CropLayer: TRubberbandLayer;
    PathEditFileName: string;
    DropTarget: TObject;

    procedure ResizeFoto(InputPicture: TBitmap32; OutputImage: TBitmap; const DstWidth, DstHeigth: Integer);
    procedure SetHighQualityStretchFilter(B: TBitmap32);
    procedure HighlightCropRect(Bmp32: TBitmap32; CropRect: TRect);
    procedure LayerResizing(Sender: TObject; const OldLocation: TFloatRect;
      var NewLocation: TFloatRect; DragState: TRBDragState; Shift: TShiftState);
    procedure PaintCropHandler(Sender: TObject; Buffer: TBitmap32);

    procedure ZaznaczCrop;
    procedure Wytnij;
    procedure WczytajZdjecie(FileName: string);
    procedure SetisNewFoto(val: Boolean);
  public
    Constructor CreateForm(AOwner: TComponent; ido: integer);
  end;


implementation
uses UZdjEdycjaZapisz;

{$R *.frm}

{ TZdjEdycja }

procedure TZdjEdycja.FormCreate(Sender: TObject);
begin
  DragAcceptFiles(Handle, False);
  DragAcceptFiles(ImgView.Handle, True);

  with ImgView.PaintStages[0]^ do
  begin
    if Stage = PST_CLEAR_BACKGND then Stage := PST_CUSTOM;
  end;
end;

procedure TZdjEdycja.WczytajZdjecie(FileName: string);
begin
  if CropLayer<>nil then ZaznaczCrop; // usuwamy zaznaczenie
  ImgView.Bitmap.LoadFromFile(FileName);
  SetisNewFoto(true);

  btnZaznacz.Enabled        := true;
  btnWytnij.Enabled         := false;
end;

procedure TZdjEdycja.SetisNewFoto(val: Boolean);
begin
  isNewFoto:= val;
  btnZapiszDoOTIS.Enabled:= isNewFoto;
end;

constructor TZdjEdycja.CreateForm(AOwner: TComponent; ido: integer);
begin
  inherited Create(AOwner);
  CropLayer:= nil;
  SelectIDO       := ido;
  lblIDO.Caption  := 'IDO: '+IntToStr( SelectIDO );

  PathEditFileName:= DM.Path_Foto + IntToStr( SelectIDO )+'.jpg';
  if FileExists(PathEditFileName) then
  begin
    WczytajZdjecie(PathEditFileName); // wczytuje zdjęcie istniejące
    lblFileEdit.Caption:= '- obecne zdjęcie -';
  end
  else lblFileEdit.Caption:= '- brak zdjęcia -';

  SetisNewFoto(false);
end;

procedure TZdjEdycja.ImgViewDblClick(Sender: TObject);
begin
  OpenPictureDialog1.InitialDir:= GetEnvironmentString(CSIDL_DESKTOPDIRECTORY);
  OpenPictureDialog1.FileName:= '';
  if OpenPictureDialog1.Execute then
  begin
    WczytajZdjecie(OpenPictureDialog1.FileName);
    lblFileEdit.Caption:= '- zdjęcie wczytane z: '+ OpenPictureDialog1.FileName;
  end;
end;

procedure TZdjEdycja.btnPasteFotoClick(Sender: TObject);
begin
  if Clipboard.HasFormat(CF_BITMAP) then
  begin
    if CropLayer<>nil then ZaznaczCrop;
    ImgView.Bitmap.Assign(Clipboard);

    lblFileEdit.Caption      := '- zdjęcie ze_schowka -';
    SetisNewFoto(true);
    btnZaznacz.Enabled:= true;
  end;
end;

procedure TZdjEdycja.btnCopyIDOClick(Sender: TObject);
begin
  Clipboard.AsText:= IntToStr(SelectIDO);
end;

procedure TZdjEdycja.ImgViewPaintStage(Sender: TObject; Buffer: TBitmap32; StageNum: Cardinal);
const            //0..1
  Colors: array [Boolean] of TColor32 = ($FFFFFFFF,$FFDFDFDF);// $FFB0B0B0);
var
  R: TRect;
  I, J: Integer;
  OddY: Integer;
  TilesHorz, TilesVert: Integer;
  TileX, TileY: Integer;
  TileHeight, TileWidth: Integer;
begin
  TileHeight := 15;
  TileWidth := 15;

  TilesHorz := Buffer.Width div TileWidth;
  TilesVert := Buffer.Height div TileHeight;
  TileY := 0;

  for J := 0 to TilesVert do
  begin
    TileX := 0;
    OddY := J and $1;
    for I := 0 to TilesHorz do
    begin
      R.Left := TileX;
      R.Top := TileY;
      R.Right := TileX + TileWidth;
      R.Bottom := TileY + TileHeight;
      Buffer.FillRectS(R, Colors[I and $1 = OddY]);
      Inc(TileX, TileWidth);
    end;
    Inc(TileY, TileHeight);
  end;

  if TImgView32(Sender).Bitmap.Empty then
  with Buffer do
  begin
    Font.Size:= 168;
    Font.Color:= clGray;
    R:= ClipRect;
    R.Top:= (R.Height div 2) - (TextHeight('+') div 2) - 25;
    Buffer.Textout(R, DT_CENTER, '+');
  end;
end;

procedure TZdjEdycja.Wytnij;
var cropRect: TRect;
    img: TBitmap32;
begin
  if CropLayer=nil then exit;
  cropRect:= MakeRect(CropLayer.Location);
  img:= TBitmap32.Create;
  img.SetSize(cropRect.Right - cropRect.Left, cropRect.Bottom - cropRect.Top);

  ImgView.Bitmap.DrawTo(img, 0,0, cropRect);

  with ImgView do
  begin
    CropLayer := nil;
    Layers.Clear;
    Scale := 1;
    Bitmap.SetSize(img.Width, img.Height);
    Bitmap.Clear;
  end;

  img.DrawTo(ImgView.Bitmap);
  btnWytnij.Enabled:= false;
  SetisNewFoto(true);
  lblFileEdit.Caption:= '- wycięte -';
end;

procedure TZdjEdycja.btnWytnijClick(Sender: TObject);
begin
  Wytnij;
end;

procedure TZdjEdycja.btnZapiszDoOTISClick(Sender: TObject);
var jpg: TJPEGImage;
    tmp: TBitmap;
    W,H: integer;
    scale: single;
begin
  if CropLayer<>nil then ZaznaczCrop;
  try
    tmp:= TBitmap.Create;
    if ImgView.Bitmap.Height> 800 then
    begin
      scale:= 800 / ImgView.Bitmap.Height;
      H:= 800;
      W:= Round( ImgView.Bitmap.Width * scale );
      ResizeFoto(ImgView.Bitmap, tmp, W, H);
    end else
    begin
      tmp.Assign(ImgView.Bitmap);
    end;

    jpg:= TJPEGImage.Create;
    jpg.SetSize(tmp.Width, tmp.Height);
    jpg.Canvas.CopyRect(tmp.Canvas.ClipRect, tmp.Canvas, tmp.Canvas.ClipRect);
    jpg.CompressionQuality := 96;

    // wyświetla okno z porównaniem zdjęć starego z nowym, umożliwia dokonanie wyboru
    with TZdjEdycjaZapisz.Create(Self) do
    begin
      ShowFoto(tmp, PathEditFileName);
      if ShowModal = mrOK then
      begin
        jpg.SaveToFile(PathEditFileName);
        SetisNewFoto(false);
      end;
    end;
  finally
    FreeAndNil(jpg);
    FreeAndNil(tmp);
  end;
end;

// ----------------------------------------------------------------------------------------
//                         Drop Files
// ----------------------------------------------------------------------------------------

procedure TZdjEdycja.FormDropFiles(Sender: TObject; const FileNames: array of String);
begin
  if not Assigned(DropTarget) then exit;
  if DropTarget is TImgView32 then WczytajZdjecie(FileNames[0]);
end;

procedure TZdjEdycja.Img_1MouseEnter(Sender: TObject);
begin
  DropTarget:= Sender;
end;

procedure TZdjEdycja.Img_1MouseLeave(Sender: TObject);
begin
  DropTarget:= nil;
end;
// ---------------------END Drop Files---------------------------------------------------

procedure TZdjEdycja.Img_1PaintStage(Sender: TObject; Buffer: TBitmap32; StageNum: Cardinal);
const            //0..1
  Colors: array [Boolean] of TColor32 = ($FFFFFFFF, $FFDFDFDF);
var
  R: TRect;
  I, J: Integer;
  OddY: Integer;
  TilesHorz, TilesVert: Integer;
  TileX, TileY: Integer;
  TileHeight, TileWidth: Integer;
begin
  TileHeight := 2;
  TileWidth := 2;

  TilesHorz := Buffer.Width div TileWidth;
  TilesVert := Buffer.Height div TileHeight;
  TileY := 0;

  for J := 0 to TilesVert do
  begin
    TileX := 0;
    OddY := J and $1;
    for I := 0 to TilesHorz do
    begin
      R.Left := TileX;
      R.Top := TileY;
      R.Right := TileX + TileWidth;
      R.Bottom := TileY + TileHeight;
      Buffer.FillRectS(R, Colors[I and $1 = OddY]);
      Inc(TileX, TileWidth);
    end;
    Inc(TileY, TileHeight);
  end;


  if TImage32(Sender).Bitmap.Empty then
  with Buffer do
  begin
    R:= ClipRect;
    R.Top:= R.Top-18;
    Font.Size:= 62;
    Font.Color:= clGray;
    Buffer.Textout(R, DT_CENTER, '+');
  end;
end;

procedure TZdjEdycja.ZaznaczCrop;
var
  L: TRubberbandLayer;// PositionedLayer;
  P: TPoint;
  W,H: Single;
begin
  if CropLayer<>nil then
  begin
    FreeAndNil(CropLayer);
    ImgView.Layers.Clear;
    btnWytnij.Enabled:= false;
    exit;
  end;
  btnWytnij.Enabled:= true;
  // get coordinates of the center of viewport
  with ImgView.GetViewportRect do
    P := ImgView.ControlToBitmap(GR32.Point((Right + Left) div 2, (Top + Bottom) div 2));

  H:= ImgView.Bitmap.Height / 4;
  W:= H * 35/45;

  L:= TRubberbandLayer.Create(ImgView.Layers);
  L.ChildLayer  := nil;
  L.LayerOptions:= LOB_VISIBLE or LOB_MOUSE_EVENTS or LOB_NO_UPDATE;
  L.MinHeight   := 45;
  L.MinWidth    := 35;
  L.MaxHeight   := ImgView.Bitmap.Height;
  L.MaxWidth    := ImgView.Bitmap.Width;
  L.Options     := [roProportional];
  L.Location    := FloatRect(P.X - W, P.Y - H, P.X + W, P.Y + H);
  L.Scaled      := true;
  L.MouseEvents := true;
  //L.OnMouseDown := @LayerMouseDown;
  L.OnResizing  := @LayerResizing;
  L.OnPaint     := @PaintCropHandler;
  CropLayer     := L;
end;

procedure TZdjEdycja.btnZaznaczClick(Sender: TObject);
begin
  ZaznaczCrop;
end;

procedure TZdjEdycja.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  FreeAndNil(CropLayer);
end;

procedure TZdjEdycja.HighlightCropRect(Bmp32: TBitmap32; CropRect: TRect);
var
  Ptr: PColor32;
  LastPtr: PColor32;
  X,Y: Integer;
begin
  // Get pointers of first and last pixel
  Ptr := Bmp32.PixelPtr[0,0];
  LastPtr := Bmp32.PixelPtr[Bmp32.Width-1, Bmp32.Height-1];
  // Init Pixel coordinates
  X := 0;
  Y := 0;

  // Iterate over all pixels
  // (We need to do a typecast here because we can't compare pointers in Delphi)
  while Ptr < LastPtr do
  begin
    // Check if pixel is outside of crop rect
    if (X < CropRect.Left) or (X > CropRect.Right) or
       (Y < CropRect.Top) or (Y > CropRect.Bottom) then
    begin
      // Darken pixel by 50%
      Ptr^ := Lighten(Ptr^, -50);
    end;

    // Move to next pixel
    inc(Ptr);
    inc(X);
    // Reached end of scanline?
    if X >= Bmp32.Width then
    begin
      X := 0;
      inc(Y);
    end;
  end;
end;

procedure TZdjEdycja.LayerResizing(Sender: TObject;
  const OldLocation: TFloatRect; var NewLocation: TFloatRect;
  DragState: TRBDragState; Shift: TShiftState);
begin
  with NewLocation do
  begin
    if (Left < 0) then begin
      Right:= Right-Left;
      Left:= 0;
    end;
    if (Right > ImgView.Bitmap.Width) then begin
      Left := ImgView.Bitmap.Width - (Right-Left);
      Right:= ImgView.Bitmap.Width;
      if Left<0 then begin Bottom:= Bottom + (Left*45/35); Left:=0; end;
    end;

    if (Top < 0) then begin
      Bottom:= Bottom-Top;
      Top:= 0;
    end;
    if (Bottom > ImgView.Bitmap.Height) then begin
      Top:= ImgView.Bitmap.Height - (Bottom-Top);
      Bottom:= ImgView.Bitmap.Height;
    end;
  end;
end;

procedure TZdjEdycja.PaintCropHandler(Sender: TObject; Buffer: TBitmap32);
var
  DstRect: TFloatRect;
  R: TRect;
begin
  if Sender is TPositionedLayer then
    with TPositionedLayer(Sender) do
    begin
      DstRect := GetAdjustedLocation;
      R := MakeRect(DstRect);
      HighlightCropRect(Buffer, R);
      Buffer.Changed;
    end;
end;

procedure TZdjEdycja.SetHighQualityStretchFilter(B: TBitmap32);
var
  KR: TKernelResampler;
begin
  if not (B.Resampler is TKernelResampler) then
  begin
    KR := TKernelResampler.Create(B);
    KR.Kernel := TLanczosKernel.Create;
  end
  else
  begin
    KR := B.Resampler as TKernelResampler;
    if not (KR.Kernel is TLanczosKernel) then
    begin
      KR.Kernel.Free;
      KR.Kernel := TLanczosKernel.Create;
    end;
  end;
end;

procedure TZdjEdycja.ResizeFoto(InputPicture: TBitmap32; OutputImage: TBitmap;
  const DstWidth, DstHeigth: Integer);
var
  Src, Dst: TBitmap32;
begin
  Dst := nil;
  try
    Src := TBitmap32.Create;
    try
      Src.Assign(InputPicture);
      SetHighQualityStretchFilter(Src);
      Dst := TBitmap32.Create;
      Dst.SetSize(DstWidth, DstHeigth);
      Src.DrawTo(Dst, Rect(0, 0, DstWidth, DstHeigth), Rect(0, 0, Src.Width, Src.Height));
    finally
      FreeAndNil(Src);
    end;
    OutputImage.Assign(Dst);
  finally
    FreeAndNil(Dst);
  end;
end;

end.

