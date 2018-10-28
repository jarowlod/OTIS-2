unit UZdjEdycja;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, GR32_Image, LR_Class, LR_Desgn, BCPanel,
  BCButton, BGRALabel, Forms, Controls, Graphics, Dialogs, ExtCtrls, Menus,
  Clipbrd, ExtDlgs, Buttons, StdCtrls, ComCtrls, ShellApi, IniFiles,
  GR32,  GR32_Text_LCL_Win, GR32_Layers, GR32_Blend, GR32_Resamplers;
type

  { TZdjEdycja }

  TZdjEdycja = class(TForm)
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
    procedure btnDodajDoSzablonuClick(Sender: TObject);
    procedure btnDrukujClick(Sender: TObject);
    procedure btnFloodFill_ZatwierdzClick(Sender: TObject);
    procedure btnFloodFill_AnulujClick(Sender: TObject);
    procedure btnFloodFillClick(Sender: TObject);
    procedure btnPasteFotoClick(Sender: TObject);
    procedure btnWytnijClick(Sender: TObject);
    procedure btnZapiszJakoClick(Sender: TObject);
    procedure btnZapiszDoOTISClick(Sender: TObject);
    procedure btnZaznaczClick(Sender: TObject);
    procedure btnEdycjaSzablonuClick(Sender: TObject);
    procedure edIDOChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormDropFiles(Sender: TObject; const FileNames: array of String);
    procedure ImgViewDblClick(Sender: TObject);
    procedure ImgViewMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer; Layer: TCustomLayer);
    procedure ImgViewPaintStage(Sender: TObject; Buffer: TBitmap32;
      StageNum: Cardinal);
    procedure Img_1DblClick(Sender: TObject);
    procedure Img_1MouseEnter(Sender: TObject);
    procedure Img_1MouseLeave(Sender: TObject);
    procedure Img_1PaintStage(Sender: TObject; Buffer: TBitmap32;
      StageNum: Cardinal);
    procedure miClearAllClick(Sender: TObject);
    procedure miClearClick(Sender: TObject);
    procedure miLoadSzablonClick(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
  private
    CropLayer: TRubberbandLayer;
    PathEditFileName: string;
    PathFotoOTIS    : string;
    tab: array[1..8] of record
                          img: TImage32;
                          FileName: string;
                        end;
    undo: TBitmap32;
    isFloodFill: Boolean;
    savePoint: TPoint;

    DropTarget: TObject;
    procedure ResizeFoto(InputPicture: TBitmap32; OutputImage: TBitmap; const DstWidth, DstHeigth: Integer);
    procedure SetHighQualityStretchFilter(B: TBitmap32);
    procedure TabDodaj(vIndex: integer; vFile: string);
    procedure HighlightCropRect(Bmp32: TBitmap32; CropRect: TRect);
    procedure LayerResizing(Sender: TObject; const OldLocation: TFloatRect;
      var NewLocation: TFloatRect; DragState: TRBDragState; Shift: TShiftState);
    procedure PaintCropHandler(Sender: TObject; Buffer: TBitmap32);

    procedure ZaznaczCrop;
    procedure Wytnij;
    procedure Drukuj;
    procedure WczytajZdjecie(FileName: string);
    procedure FloodFill(imgPoint: TPoint);
  public

  end;

var
  ZdjEdycja: TZdjEdycja;

implementation
uses UZdjEdycjaZapisz;

{$R *.frm}

{ TZdjEdycja }

procedure TZdjEdycja.FormCreate(Sender: TObject);
var i: integer;
    ini: TIniFile;
begin
  DragAcceptFiles(Handle, False);

  tab[1].img:= Img_1;
  tab[2].img:= Img_2;
  tab[3].img:= Img_3;
  tab[4].img:= Img_4;
  tab[5].img:= Img_5;
  tab[6].img:= Img_6;
  tab[7].img:= Img_7;
  tab[8].img:= Img_8;
  for i:=1 to 8 do
  begin
    tab[i].img.PaintStages[0]^.Stage:= PST_CUSTOM;
    tab[i].FileName:= '';
    tab[i].img.Hint:= 'Brak';
    DragAcceptFiles(tab[i].img.Handle, True);
  end;
  DragAcceptFiles(ImgView.Handle, True);

  with ImgView.PaintStages[0]^ do
  begin
    if Stage = PST_CLEAR_BACKGND then Stage := PST_CUSTOM;
  end;

  // wczytujemy ustawienia zapisanej sesji
  ini:= TIniFile.Create(ExtractFilePath(Application.ExeName)+'config.ini');
  try
    for i:=1 to 8 do
    begin
      TabDodaj(i, ini.ReadString('Szablon', 'img'+IntToStr(i),'') );
    end;
    Left  := ini.ReadInteger('Form', 'Left'  , Left);
    Top   := ini.ReadInteger('Form', 'Top'   , Top);
    Width := ini.ReadInteger('Form', 'Width' , Width);
    Height:= ini.ReadInteger('Form', 'Height', Height);

    PathFotoOTIS:= ini.ReadString('Config','PathFotoOTIS', 'W:\Paczkownia\ZK Foto');
  finally
    FreeAndNil(ini);
  end;
end;

procedure TZdjEdycja.FormDestroy(Sender: TObject);
var ini: TIniFile;
    i: integer;
begin
  CropLayer:= nil;

  // zapisujemy ustawienia zapisanej sesji
  ini:= TIniFile.Create(ExtractFilePath(Application.ExeName)+'config.ini');
  try
    for i:=1 to 8 do
    begin
      ini.WriteString('Szablon', 'img'+IntToStr(i), tab[i].FileName);
    end;
    ini.WriteInteger('Form', 'Left'  , Left);
    ini.WriteInteger('Form', 'Top'   , Top);
    ini.WriteInteger('Form', 'Width' , Width);
    ini.WriteInteger('Form', 'Height', Height);

    ini.WriteString('Config','PathFOTOOTIS', PathFotoOTIS);
  finally
    FreeAndNil(ini);
  end;
end;

procedure TZdjEdycja.WczytajZdjecie(FileName: string);
begin
  ImgView.Bitmap.LoadFromFile(FileName);
  lblFileEdit.Caption      := FileName;
  PathEditFileName         := FileName;

  edIDO.Text:= '';
  btnDodajDoSzablonu.Enabled:= false;
  btnZapiszJako.Enabled     := true;
  btnZaznacz.Enabled        := true;
  btnWytnij.Enabled         := true;
end;

procedure TZdjEdycja.ImgViewDblClick(Sender: TObject);
begin
  if PathEditFileName<>'' then OpenPictureDialog1.InitialDir:= ExtractFilePath(PathEditFileName);
  OpenPictureDialog1.FileName:= '';
  if OpenPictureDialog1.Execute then
  begin
    Panel_FloodFill.Visible:= false;
    isFloodFill            := false;
    btnFloodFill.Enabled   := true;
    FreeAndNil(undo);

    WczytajZdjecie(OpenPictureDialog1.FileName);
  end;
end;

procedure TZdjEdycja.btnPasteFotoClick(Sender: TObject);
begin
  if Clipboard.HasFormat(CF_BITMAP) then
  begin
    ImgView.Bitmap.Assign(Clipboard);

    Panel_FloodFill.Visible:= false;
    isFloodFill            := false;
    btnFloodFill.Enabled   := true;
    FreeAndNil(undo);

    PathEditFileName         := 'ze_schowka.jpg';
    lblFileEdit.Caption      := PathEditFileName;

    edIDO.Text:= '';
    btnDodajDoSzablonu.Enabled:= false;
    btnZapiszJako.Enabled     := true;
    btnZaznacz.Enabled        := true;
    btnWytnij.Enabled         := true;
  end;
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
end;

procedure TZdjEdycja.btnWytnijClick(Sender: TObject);
begin
  Wytnij;
end;

procedure TZdjEdycja.Drukuj;
var i: integer;
begin
  frReport1.LoadFromFile('szablon.lrf');
  for i:= 1 to 8 do
  begin
    if tab[i].FileName<>'' then
      (frReport1.FindObject('Picture'+IntToStr(i)) as TfrPictureView).Picture.LoadFromFile(tab[i].FileName)
    else
      (frReport1.FindObject('Picture'+IntToStr(i)) as TfrPictureView).Picture.Clear;
  end;
  frReport1.ShowReport;
end;

procedure TZdjEdycja.btnDrukujClick(Sender: TObject);
begin
  Drukuj;
end;

procedure TZdjEdycja.btnDodajDoSzablonuClick(Sender: TObject);
var i: integer;
begin
  for i:=1 to 8 do
  begin
    if tab[i].FileName='' then
    begin
      TabDodaj(i, PathEditFileName);
      Break;
    end;
  end;
end;

procedure TZdjEdycja.btnZapiszJakoClick(Sender: TObject);
var jpg: TJPEGImage;
begin
  SaveDialog1.InitialDir:= ExtractFilePath(PathEditFileName);
  SaveDialog1.FileName  := ExtractFileName(PathEditFileName);
  if SaveDialog1.Execute then
  begin
    jpg:= TJPEGImage.Create;
    jpg.SetSize(ImgView.Bitmap.Width, ImgView.Bitmap.Height);
    jpg.Canvas.CopyRect(Rect(0,0,ImgView.Bitmap.Width,ImgView.Bitmap.Height), ImgView.Bitmap.Canvas, Rect(0,0,ImgView.Bitmap.Width,ImgView.Bitmap.Height));
    jpg.CompressionQuality := 96;
    jpg.SaveToFile(SaveDialog1.FileName);
    FreeAndNil(jpg);

    PathEditFileName:= SaveDialog1.FileName;
    lblFileEdit.Caption:= PathEditFileName;
    btnDodajDoSzablonu.Enabled:= true;
  end;
end;

procedure TZdjEdycja.btnZapiszDoOTISClick(Sender: TObject);
var jpg: TJPEGImage;
    tmp: TBitmap;
    W,H: integer;
    scale: single;
begin
  if edIDO.Text='' then exit;
  SaveDialog1.InitialDir:= PathFotoOTIS;
  SaveDialog1.FileName:= edIDO.Text+'.jpg';
  if SaveDialog1.Execute then
  begin
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
    with TForm2.Create(Self) do
    begin
      ShowFoto(tmp, SaveDialog1.FileName);
      if ShowModal = mrOK then jpg.SaveToFile(SaveDialog1.FileName);
    end;

    FreeAndNil(jpg);
    FreeAndNil(tmp);
  end;
end;

procedure TZdjEdycja.btnEdycjaSzablonuClick(Sender: TObject);
var i: integer;
begin
  frReport1.LoadFromFile('szablon.lrf');
  for i:= 1 to 8 do
  begin
    if tab[i].FileName<>'' then
      (frReport1.FindObject('Picture'+IntToStr(i)) as TfrPictureView).Picture.LoadFromFile(tab[i].FileName)
    else
      (frReport1.FindObject('Picture'+IntToStr(i)) as TfrPictureView).Picture.Clear;
  end;
  frReport1.DesignReport;
end;

procedure TZdjEdycja.edIDOChange(Sender: TObject);
begin
  btnZapiszDoOTIS.Enabled:= (edIDO.Text<>'')and(PathEditFileName<>'');
end;

// ----------------------------------------------------------------------------------------
//                         Drop Files
// ----------------------------------------------------------------------------------------

procedure TZdjEdycja.FormDropFiles(Sender: TObject; const FileNames: array of String);
begin
  if not Assigned(DropTarget) then exit;
  if DropTarget is TImage32 then TabDodaj(TImage32(DropTarget).Tag, FileNames[0]);
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

procedure TZdjEdycja.Img_1DblClick(Sender: TObject);
begin
  if PathEditFileName<>'' then OpenPictureDialog1.InitialDir:= ExtractFilePath(PathEditFileName);
  OpenPictureDialog1.FileName:= '';

  if OpenPictureDialog1.Execute then
  begin
    TabDodaj(TImage32(Sender).Tag, OpenPictureDialog1.FileName);
  end;
end;

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

procedure TZdjEdycja.miClearAllClick(Sender: TObject);
var i: integer;
begin
  for i:=1 to 8 do
  begin
    TabDodaj(i, '');
  end;
end;

procedure TZdjEdycja.miClearClick(Sender: TObject);
var img: TImage32;
begin
  img:= TImage32(((Sender as TMenuItem).GetParentMenu as TPopupMenu).PopupComponent);
  TabDodaj(img.Tag, '');
end;

procedure TZdjEdycja.miLoadSzablonClick(Sender: TObject);
begin
  Img_1DblClick(TImage32(((Sender as TMenuItem).GetParentMenu as TPopupMenu).PopupComponent));
end;

procedure TZdjEdycja.TabDodaj(vIndex: integer; vFile: string);
begin
  if vFile<>'' then
    begin
      tab[vIndex].img.Bitmap.LoadFromFile(vFile);
      tab[vIndex].FileName:= vFile;
      tab[vIndex].img.Hint:= vFile;
    end
  else
    if tab[vIndex].FileName<>'' then
    begin
      tab[vIndex].img.Bitmap.SetSize(0,0);
      tab[vIndex].img.Bitmap.Clear;
      tab[vIndex].FileName:= '';
      tab[vIndex].img.Hint:= 'Brak';
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
    exit;
  end;
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

// =====================================================================================================================
//                    FLOOD FILL
// =====================================================================================================================

procedure TZdjEdycja.FloodFill(imgPoint: TPoint);
var img: TBitmap32;
begin
  img:= TBitmap32.Create;
  img.Assign(ImgView.Bitmap);

  //Bmp32_AutoContrastRBG(ImgView.Bitmap);
  //Bmp32_Saturation(Img, TrackBar2.Position);
  //if TrackBar2.Position<>0 then Bmp32_IncDecHSL(img, 0,0, TrackBar2.Position);
  //Bmp32_StretchIntensity(img, 10, TrackBar2.Position);

  //if TrackBar2.Position<>0 then Bmp32_Contrast(img, TrackBar2.Position/100);
  with TFloodFill.Create do
  try
    Tolerance := TrackBar1.Position;
    Execute(Img, imgPoint, Color32(ColorButton1.ButtonColor));

    ImgView.Bitmap.Assign(img);
  finally
    Free;
    img.Free;
  end;
end;

procedure TZdjEdycja.ImgViewMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer; Layer: TCustomLayer);
begin
  if isFloodFill then
  begin
    savePoint := ImgView.ControlToBitmap(Point(X,Y));
    FloodFill(savePoint);
  end;
end;

procedure TZdjEdycja.TrackBar1Change(Sender: TObject);  // TrackBar and Color Change
begin
  ImgView.Bitmap.Assign(undo);
  FloodFill(savePoint);
end;

procedure TZdjEdycja.btnFloodFillClick(Sender: TObject);
begin
  if undo<>nil then FreeAndNil(undo);
  undo:= TBitmap32.Create;
  undo.Assign(ImgView.Bitmap);

  isFloodFill            := true;
  Panel_FloodFill.Visible:= true;
  btnFloodFill.Enabled   := false;
end;

procedure TZdjEdycja.btnFloodFill_ZatwierdzClick(Sender: TObject);
begin
  FreeAndNil(undo);

  isFloodFill            := false;
  Panel_FloodFill.Visible:= false;
  btnFloodFill.Enabled   := true;
end;

procedure TZdjEdycja.btnFloodFill_AnulujClick(Sender: TObject);
begin
  if undo<>nil then ImgView.Bitmap.Assign(undo);
  ImgView.Refresh;

  isFloodFill            := false;
  Panel_FloodFill.Visible:= false;
  btnFloodFill.Enabled   := true;
end;

end.

