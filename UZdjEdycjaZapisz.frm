object ZdjEdycjaZapisz: TZdjEdycjaZapisz
  Left = 328
  Height = 522
  Top = 230
  Width = 743
  BorderStyle = bsDialog
  Caption = 'Zapisz zdjęcie.'
  ClientHeight = 522
  ClientWidth = 743
  Position = poScreenCenter
  LCLVersion = '6.6'
  object BCPanel2: TBCPanel
    Left = 0
    Height = 472
    Top = 0
    Width = 743
    Align = alClient
    Background.Color = clBtnFace
    Background.ColorOpacity = 255
    Background.Gradient1.StartColor = clWhite
    Background.Gradient1.StartColorOpacity = 255
    Background.Gradient1.DrawMode = dmSet
    Background.Gradient1.EndColor = 15646319
    Background.Gradient1.EndColorOpacity = 255
    Background.Gradient1.ColorCorrection = True
    Background.Gradient1.GradientType = gtLinear
    Background.Gradient1.Point2YPercent = 100
    Background.Gradient1.Sinus = False
    Background.Gradient2.StartColor = clWhite
    Background.Gradient2.StartColorOpacity = 255
    Background.Gradient2.DrawMode = dmSet
    Background.Gradient2.EndColor = clBlack
    Background.Gradient2.EndColorOpacity = 255
    Background.Gradient2.ColorCorrection = True
    Background.Gradient2.GradientType = gtLinear
    Background.Gradient2.Point2YPercent = 100
    Background.Gradient2.Sinus = False
    Background.Gradient1EndPercent = 100
    Background.Style = bbsGradient
    BevelInner = bvNone
    BevelOuter = bvNone
    BevelWidth = 1
    Border.Color = clBlack
    Border.ColorOpacity = 255
    Border.LightColor = clWhite
    Border.LightOpacity = 255
    Border.LightWidth = 0
    Border.Style = bboSolid
    Border.Width = 1
    FontEx.Color = clDefault
    FontEx.EndEllipsis = False
    FontEx.FontQuality = fqSystemClearType
    FontEx.Height = 0
    FontEx.SingleLine = True
    FontEx.Shadow = False
    FontEx.ShadowColor = clBlack
    FontEx.ShadowColorOpacity = 255
    FontEx.ShadowRadius = 5
    FontEx.ShadowOffsetX = 5
    FontEx.ShadowOffsetY = 5
    FontEx.Style = []
    FontEx.TextAlignment = bcaCenter
    FontEx.WordBreak = False
    Rounding.RoundX = 1
    Rounding.RoundY = 1
    Rounding.RoundOptions = []
    TabOrder = 0
    object Label1: TLabel
      Left = 488
      Height = 41
      Top = 232
      Width = 141
      Caption = '< BRAK >'
      Font.CharSet = EASTEUROPE_CHARSET
      Font.Height = -35
      Font.Name = 'Cambria'
      Font.Pitch = fpVariable
      Font.Quality = fqDraft
      ParentColor = False
      ParentFont = False
    end
    object imgSrc: TImage
      Left = 24
      Height = 400
      Top = 56
      Width = 311
      Center = True
      Proportional = True
      Stretch = True
    end
    object imgDes: TImage
      Left = 401
      Height = 400
      Top = 56
      Width = 311
      Center = True
      Proportional = True
      Stretch = True
    end
    object BCLabel1: TBCLabel
      AnchorSideLeft.Control = imgSrc
      AnchorSideLeft.Side = asrCenter
      AnchorSideBottom.Control = imgSrc
      Left = 93
      Height = 55
      Top = 1
      Width = 173
      Anchors = [akLeft, akBottom]
      Background.Color = clBlack
      Background.ColorOpacity = 255
      Background.Gradient1.StartColor = clWhite
      Background.Gradient1.StartColorOpacity = 255
      Background.Gradient1.DrawMode = dmSet
      Background.Gradient1.EndColor = clBlack
      Background.Gradient1.EndColorOpacity = 255
      Background.Gradient1.ColorCorrection = True
      Background.Gradient1.GradientType = gtLinear
      Background.Gradient1.Point2YPercent = 100
      Background.Gradient1.Sinus = False
      Background.Gradient2.StartColor = clWhite
      Background.Gradient2.StartColorOpacity = 255
      Background.Gradient2.DrawMode = dmSet
      Background.Gradient2.EndColor = clBlack
      Background.Gradient2.EndColorOpacity = 255
      Background.Gradient2.ColorCorrection = True
      Background.Gradient2.GradientType = gtLinear
      Background.Gradient2.Point2YPercent = 100
      Background.Gradient2.Sinus = False
      Background.Gradient1EndPercent = 35
      Background.Style = bbsClear
      Border.Color = clBlack
      Border.ColorOpacity = 255
      Border.LightColor = clWhite
      Border.LightOpacity = 255
      Border.LightWidth = 0
      Border.Style = bboNone
      Border.Width = 1
      Caption = 'Nowe zdjęcie'
      FontEx.Color = clDefault
      FontEx.EndEllipsis = False
      FontEx.FontQuality = fqFineAntialiasing
      FontEx.Height = 26
      FontEx.SingleLine = True
      FontEx.Shadow = True
      FontEx.ShadowColor = clBlack
      FontEx.ShadowColorOpacity = 255
      FontEx.ShadowRadius = 5
      FontEx.ShadowOffsetX = 5
      FontEx.ShadowOffsetY = 5
      FontEx.Style = []
      FontEx.TextAlignment = bcaCenter
      FontEx.WordBreak = False
      Rounding.RoundX = 1
      Rounding.RoundY = 1
      Rounding.RoundOptions = []
    end
    object BCLabel2: TBCLabel
      AnchorSideLeft.Control = imgDes
      AnchorSideLeft.Side = asrCenter
      AnchorSideBottom.Control = imgDes
      Left = 474
      Height = 55
      Top = 1
      Width = 164
      Anchors = [akLeft, akBottom]
      Background.Color = clBlack
      Background.ColorOpacity = 255
      Background.Gradient1.StartColor = clWhite
      Background.Gradient1.StartColorOpacity = 255
      Background.Gradient1.DrawMode = dmSet
      Background.Gradient1.EndColor = clBlack
      Background.Gradient1.EndColorOpacity = 255
      Background.Gradient1.ColorCorrection = True
      Background.Gradient1.GradientType = gtLinear
      Background.Gradient1.Point2YPercent = 100
      Background.Gradient1.Sinus = False
      Background.Gradient2.StartColor = clWhite
      Background.Gradient2.StartColorOpacity = 255
      Background.Gradient2.DrawMode = dmSet
      Background.Gradient2.EndColor = clBlack
      Background.Gradient2.EndColorOpacity = 255
      Background.Gradient2.ColorCorrection = True
      Background.Gradient2.GradientType = gtLinear
      Background.Gradient2.Point2YPercent = 100
      Background.Gradient2.Sinus = False
      Background.Gradient1EndPercent = 35
      Background.Style = bbsClear
      Border.Color = clBlack
      Border.ColorOpacity = 255
      Border.LightColor = clWhite
      Border.LightOpacity = 255
      Border.LightWidth = 0
      Border.Style = bboNone
      Border.Width = 1
      Caption = 'Stare zdjęcie'
      FontEx.Color = clDefault
      FontEx.EndEllipsis = False
      FontEx.FontQuality = fqFineAntialiasing
      FontEx.Height = 26
      FontEx.SingleLine = True
      FontEx.Shadow = True
      FontEx.ShadowColor = clBlack
      FontEx.ShadowColorOpacity = 255
      FontEx.ShadowRadius = 5
      FontEx.ShadowOffsetX = 5
      FontEx.ShadowOffsetY = 5
      FontEx.Style = []
      FontEx.TextAlignment = bcaCenter
      FontEx.WordBreak = False
      Rounding.RoundX = 1
      Rounding.RoundY = 1
      Rounding.RoundOptions = []
    end
    object BCPanel1: TBCPanel
      Left = 363
      Height = 473
      Top = 1
      Width = 5
      Background.Color = clBtnFace
      Background.ColorOpacity = 255
      Background.Gradient1.StartColor = 15646319
      Background.Gradient1.StartColorOpacity = 255
      Background.Gradient1.DrawMode = dmSet
      Background.Gradient1.EndColor = clWhite
      Background.Gradient1.EndColorOpacity = 255
      Background.Gradient1.ColorCorrection = True
      Background.Gradient1.GradientType = gtLinear
      Background.Gradient1.Point2YPercent = 100
      Background.Gradient1.Sinus = False
      Background.Gradient2.StartColor = clWhite
      Background.Gradient2.StartColorOpacity = 255
      Background.Gradient2.DrawMode = dmSet
      Background.Gradient2.EndColor = clBlack
      Background.Gradient2.EndColorOpacity = 255
      Background.Gradient2.ColorCorrection = True
      Background.Gradient2.GradientType = gtLinear
      Background.Gradient2.Point2YPercent = 100
      Background.Gradient2.Sinus = False
      Background.Gradient1EndPercent = 100
      Background.Style = bbsGradient
      BevelInner = bvNone
      BevelOuter = bvNone
      BevelWidth = 1
      Border.Color = clBlack
      Border.ColorOpacity = 255
      Border.LightColor = clWhite
      Border.LightOpacity = 255
      Border.LightWidth = 0
      Border.Style = bboNone
      Border.Width = 1
      BorderBCStyle = bpsBorder
      FontEx.Color = clDefault
      FontEx.EndEllipsis = False
      FontEx.FontQuality = fqSystemClearType
      FontEx.Height = 0
      FontEx.SingleLine = True
      FontEx.Shadow = False
      FontEx.ShadowColor = clBlack
      FontEx.ShadowColorOpacity = 255
      FontEx.ShadowRadius = 5
      FontEx.ShadowOffsetX = 5
      FontEx.ShadowOffsetY = 5
      FontEx.Style = []
      FontEx.TextAlignment = bcaCenter
      FontEx.WordBreak = False
      Rounding.RoundX = 1
      Rounding.RoundY = 1
      Rounding.RoundOptions = []
      TabOrder = 0
    end
  end
  object BCPanel3: TBCPanel
    Left = 0
    Height = 50
    Top = 472
    Width = 743
    Align = alBottom
    Background.Color = clBtnFace
    Background.ColorOpacity = 255
    Background.Gradient1.StartColor = clWhite
    Background.Gradient1.StartColorOpacity = 255
    Background.Gradient1.DrawMode = dmSet
    Background.Gradient1.EndColor = 15646319
    Background.Gradient1.EndColorOpacity = 255
    Background.Gradient1.ColorCorrection = True
    Background.Gradient1.GradientType = gtLinear
    Background.Gradient1.Point2YPercent = 100
    Background.Gradient1.Sinus = False
    Background.Gradient2.StartColor = clWhite
    Background.Gradient2.StartColorOpacity = 255
    Background.Gradient2.DrawMode = dmSet
    Background.Gradient2.EndColor = clBlack
    Background.Gradient2.EndColorOpacity = 255
    Background.Gradient2.ColorCorrection = True
    Background.Gradient2.GradientType = gtLinear
    Background.Gradient2.Point2YPercent = 100
    Background.Gradient2.Sinus = False
    Background.Gradient1EndPercent = 100
    Background.Style = bbsGradient
    BevelInner = bvNone
    BevelOuter = bvNone
    BevelWidth = 1
    Border.Color = clBlack
    Border.ColorOpacity = 255
    Border.LightColor = clWhite
    Border.LightOpacity = 255
    Border.LightWidth = 0
    Border.Style = bboSolid
    Border.Width = 1
    FontEx.Color = clDefault
    FontEx.EndEllipsis = False
    FontEx.FontQuality = fqSystemClearType
    FontEx.Height = 0
    FontEx.SingleLine = True
    FontEx.Shadow = False
    FontEx.ShadowColor = clBlack
    FontEx.ShadowColorOpacity = 255
    FontEx.ShadowRadius = 5
    FontEx.ShadowOffsetX = 5
    FontEx.ShadowOffsetY = 5
    FontEx.Style = []
    FontEx.TextAlignment = bcaCenter
    FontEx.WordBreak = False
    Rounding.RoundX = 1
    Rounding.RoundY = 1
    Rounding.RoundOptions = []
    TabOrder = 1
    object btnZapiszDoOTIS2: TBCButton
      Left = 32
      Height = 33
      Hint = 'Zapisuje zdjęcie do bazy zdjęć OTIS. !!!'
      Top = 8
      Width = 192
      StateClicked.Background.Color = clBlack
      StateClicked.Background.ColorOpacity = 255
      StateClicked.Background.Gradient1.StartColor = 8404992
      StateClicked.Background.Gradient1.StartColorOpacity = 255
      StateClicked.Background.Gradient1.DrawMode = dmSet
      StateClicked.Background.Gradient1.EndColor = 4194304
      StateClicked.Background.Gradient1.EndColorOpacity = 255
      StateClicked.Background.Gradient1.ColorCorrection = True
      StateClicked.Background.Gradient1.GradientType = gtRadial
      StateClicked.Background.Gradient1.Point1XPercent = 50
      StateClicked.Background.Gradient1.Point1YPercent = 100
      StateClicked.Background.Gradient1.Sinus = False
      StateClicked.Background.Gradient2.StartColor = clWhite
      StateClicked.Background.Gradient2.StartColorOpacity = 255
      StateClicked.Background.Gradient2.DrawMode = dmSet
      StateClicked.Background.Gradient2.EndColor = clBlack
      StateClicked.Background.Gradient2.EndColorOpacity = 255
      StateClicked.Background.Gradient2.ColorCorrection = True
      StateClicked.Background.Gradient2.GradientType = gtLinear
      StateClicked.Background.Gradient2.Point2YPercent = 100
      StateClicked.Background.Gradient2.Sinus = False
      StateClicked.Background.Gradient1EndPercent = 100
      StateClicked.Background.Style = bbsGradient
      StateClicked.Border.Color = clBlack
      StateClicked.Border.ColorOpacity = 255
      StateClicked.Border.LightColor = clWhite
      StateClicked.Border.LightOpacity = 255
      StateClicked.Border.LightWidth = 0
      StateClicked.Border.Style = bboNone
      StateClicked.Border.Width = 1
      StateClicked.FontEx.Color = 16770790
      StateClicked.FontEx.EndEllipsis = False
      StateClicked.FontEx.FontQuality = fqSystemClearType
      StateClicked.FontEx.Height = 0
      StateClicked.FontEx.SingleLine = True
      StateClicked.FontEx.Shadow = True
      StateClicked.FontEx.ShadowColor = clBlack
      StateClicked.FontEx.ShadowColorOpacity = 255
      StateClicked.FontEx.ShadowRadius = 2
      StateClicked.FontEx.ShadowOffsetX = 1
      StateClicked.FontEx.ShadowOffsetY = 1
      StateClicked.FontEx.Style = [fsBold]
      StateClicked.FontEx.TextAlignment = bcaCenter
      StateClicked.FontEx.WordBreak = False
      StateHover.Background.Color = clBlack
      StateHover.Background.ColorOpacity = 255
      StateHover.Background.Gradient1.StartColor = 16744448
      StateHover.Background.Gradient1.StartColorOpacity = 255
      StateHover.Background.Gradient1.DrawMode = dmSet
      StateHover.Background.Gradient1.EndColor = 8404992
      StateHover.Background.Gradient1.EndColorOpacity = 255
      StateHover.Background.Gradient1.ColorCorrection = True
      StateHover.Background.Gradient1.GradientType = gtRadial
      StateHover.Background.Gradient1.Point1XPercent = 50
      StateHover.Background.Gradient1.Point1YPercent = 100
      StateHover.Background.Gradient1.Sinus = False
      StateHover.Background.Gradient2.StartColor = clWhite
      StateHover.Background.Gradient2.StartColorOpacity = 255
      StateHover.Background.Gradient2.DrawMode = dmSet
      StateHover.Background.Gradient2.EndColor = clBlack
      StateHover.Background.Gradient2.EndColorOpacity = 255
      StateHover.Background.Gradient2.ColorCorrection = True
      StateHover.Background.Gradient2.GradientType = gtLinear
      StateHover.Background.Gradient2.Point2YPercent = 100
      StateHover.Background.Gradient2.Sinus = False
      StateHover.Background.Gradient1EndPercent = 100
      StateHover.Background.Style = bbsGradient
      StateHover.Border.Color = clBlack
      StateHover.Border.ColorOpacity = 255
      StateHover.Border.LightColor = clWhite
      StateHover.Border.LightOpacity = 255
      StateHover.Border.LightWidth = 0
      StateHover.Border.Style = bboNone
      StateHover.Border.Width = 1
      StateHover.FontEx.Color = clWhite
      StateHover.FontEx.EndEllipsis = False
      StateHover.FontEx.FontQuality = fqSystemClearType
      StateHover.FontEx.Height = 0
      StateHover.FontEx.SingleLine = True
      StateHover.FontEx.Shadow = True
      StateHover.FontEx.ShadowColor = clBlack
      StateHover.FontEx.ShadowColorOpacity = 255
      StateHover.FontEx.ShadowRadius = 2
      StateHover.FontEx.ShadowOffsetX = 1
      StateHover.FontEx.ShadowOffsetY = 1
      StateHover.FontEx.Style = [fsBold]
      StateHover.FontEx.TextAlignment = bcaCenter
      StateHover.FontEx.WordBreak = False
      StateNormal.Background.Color = clBlack
      StateNormal.Background.ColorOpacity = 255
      StateNormal.Background.Gradient1.StartColor = 4194304
      StateNormal.Background.Gradient1.StartColorOpacity = 255
      StateNormal.Background.Gradient1.DrawMode = dmSet
      StateNormal.Background.Gradient1.EndColor = 8405056
      StateNormal.Background.Gradient1.EndColorOpacity = 255
      StateNormal.Background.Gradient1.ColorCorrection = True
      StateNormal.Background.Gradient1.GradientType = gtLinear
      StateNormal.Background.Gradient1.Point2YPercent = 100
      StateNormal.Background.Gradient1.Sinus = False
      StateNormal.Background.Gradient2.StartColor = 8405056
      StateNormal.Background.Gradient2.StartColorOpacity = 255
      StateNormal.Background.Gradient2.DrawMode = dmSet
      StateNormal.Background.Gradient2.EndColor = 4194304
      StateNormal.Background.Gradient2.EndColorOpacity = 255
      StateNormal.Background.Gradient2.ColorCorrection = True
      StateNormal.Background.Gradient2.GradientType = gtRadial
      StateNormal.Background.Gradient2.Point1XPercent = 50
      StateNormal.Background.Gradient2.Point1YPercent = 100
      StateNormal.Background.Gradient2.Sinus = False
      StateNormal.Background.Gradient1EndPercent = 60
      StateNormal.Background.Style = bbsGradient
      StateNormal.Border.Color = clBlack
      StateNormal.Border.ColorOpacity = 255
      StateNormal.Border.LightColor = clWhite
      StateNormal.Border.LightOpacity = 255
      StateNormal.Border.LightWidth = 0
      StateNormal.Border.Style = bboNone
      StateNormal.Border.Width = 1
      StateNormal.FontEx.Color = 16770790
      StateNormal.FontEx.EndEllipsis = False
      StateNormal.FontEx.FontQuality = fqSystemClearType
      StateNormal.FontEx.Height = 0
      StateNormal.FontEx.SingleLine = True
      StateNormal.FontEx.Shadow = True
      StateNormal.FontEx.ShadowColor = clBlack
      StateNormal.FontEx.ShadowColorOpacity = 255
      StateNormal.FontEx.ShadowRadius = 2
      StateNormal.FontEx.ShadowOffsetX = 1
      StateNormal.FontEx.ShadowOffsetY = 1
      StateNormal.FontEx.Style = [fsBold]
      StateNormal.FontEx.TextAlignment = bcaCenter
      StateNormal.FontEx.WordBreak = False
      Caption = 'Zapisz i zastęp zdjęcie'
      Color = clNone
      DropDownWidth = 16
      DropDownArrowSize = 8
      GlobalOpacity = 255
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000064000000640000000000000000000000C1761BFFC275
        19FFBD6B13FFB96504FFB96504FFB96504FFBA6504FFBA6504FFBA6504FFBA65
        04FFBA6504FFBA6504FFBA6504FFBC690AFFB96A15FFC3791FFFD5933DFFEFB7
        36FFCDC6C0FFE9F8FFFFDBE5F6FFDBE8F8FFDBE8F8FFDBE8F9FFDBE8F8FFDAE7
        F8FFDBE7F8FFD8E4F5FFE9F6FFFFCDC6C0FFEAA714FFC0761DFFCD9551FFE8AE
        3CFFDCD7D4FFECE8E9FFADA0A2FFA79B9EFF9E9395FF94898CFF8A8185FF8379
        7CFF7B7276FF685F64FFECE8E9FFDCD7D4FFE59E20FFC77B25FFD09653FFEAB4
        47FFDCD7D4FFEFF0EFFFDFDEDCFFE1E0DFFFE0DFDEFFDFE0DDFFE0DFDDFFDFDE
        DDFFDFE0DEFFDBD9D9FFEDEDEDFFDCD7D4FFE7A62BFFC9802BFFD49B58FFEBB9
        50FFDCD7D4FFECE8E9FFA99D9FFFA4999EFF9A9194FF92888BFF897F85FF8279
        7CFF7A7177FF655C62FFECE8E9FFDCD7D4FFE8AC37FFCC8531FFD69E5BFFEDBD
        5AFFDCD7D4FFFFFFFFFFFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFDCD7D4FFEAB340FFD08B34FFD9A45EFFF0C2
        63FFDCD7D4FFECE8E9FFA99D9FFFA4999EFF9A9194FF92888BFF897F85FF8279
        7CFF7A7177FF655C62FFECE8E9FFDCD7D4FFEDB749FFD2903AFFD8A35CFFF0C6
        6DFFDCD7D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFDCD7D4FFEEBD54FFD7963EFFDEAC69FFF9D2
        81FFC1975CFF9A7B60FF95775EFF97795DFF97795DFF97795DFF97795DFF9779
        5CFF97795CFF95775EFF9A7A5EFFC19A64FFF7CA6BFFD99B44FFDDAB67FFF6D5
        8BFFFFD056FFC0A887FFC8C5C9FFCEC6BFFFCDC6C0FFCDC6C0FFCDC6BFFFD6D0
        CAFFD6D3D0FFCFCED4FFC0A888FFFFD25DFFF3CC75FFDCA148FFDCA966FFF6D9
        93FFFBC85DFFC2B4A2FFD7DEEBFFDDDDDDFFDCDDDEFFDCDBDDFFE7E8EAFFC8BA
        A7FFA29692FFC2B4A2FFC6BCA9FFFBCB63FFF3D07EFFE0A74CFFE5B973FFF6DA
        97FFFBCC62FFC8BAA7FFDDE0E9FFE1DFDDFFE0DFDEFFDFDDDCFFEFF3F9FF9F88
        6FFFE5AF47FF9E9189FFC7BDB2FFFDCF6AFFF5D484FFE3AC51FFE9BC75FFF8DD
        9EFFFDCF69FFCEC0AFFFE3E7EFFFE7E5E3FFE6E5E4FFE5E4E2FFF1F6FFFFBAA3
        86FFFFE873FFB5AB9EFFCAC0B8FFFFD26EFFF9DA8EFFE7B25BFFEAC079FFF8E0
        9BFFFBD165FFD3C4AFFFEAEEF6FFECEBE8FFECEBE9FFEBE9E6FFFBFFFFFFA28E
        78FFDEAF4FFFA89C95FFD1C7B9FFFFDA78FFF5D889FFE2A442FFECC47EFFFEF4
        D5FFFFE290FFDCD7D4FFF5FFFFFFF6FEFFFFF6FEFFFFF6FDFFFFFFFFFFFFDFDD
        DCFFC8BAA7FFDFDDDCFFE5E4E2FFFFDE88FFE4AA45FFDD973419ECC681FFF0CA
        82FFF4CA7DFFE8C788FFEFCF94FFEED192F1EDCF92FFEED092FFEED093FFF2D3
        96FFF7D79BFFF6D69BFFE6C48AFFEBB552FFE19E351100000000
      }
      OnClick = btnZapiszDoOTIS2Click
      ParentColor = False
      Rounding.RoundX = 12
      Rounding.RoundY = 12
      Rounding.RoundOptions = []
      RoundingDropDown.RoundX = 1
      RoundingDropDown.RoundY = 1
      RoundingDropDown.RoundOptions = []
      ShowHint = True
      TextApplyGlobalOpacity = False
      MemoryUsage = bmuHigh
    end
    object btnZapiszDoOTIS3: TBCButton
      Left = 520
      Height = 33
      Hint = 'Zapisuje zdjęcie do bazy zdjęć OTIS. !!!'
      Top = 8
      Width = 192
      Anchors = [akTop, akRight]
      StateClicked.Background.Color = clBlack
      StateClicked.Background.ColorOpacity = 255
      StateClicked.Background.Gradient1.StartColor = 8404992
      StateClicked.Background.Gradient1.StartColorOpacity = 255
      StateClicked.Background.Gradient1.DrawMode = dmSet
      StateClicked.Background.Gradient1.EndColor = 4194304
      StateClicked.Background.Gradient1.EndColorOpacity = 255
      StateClicked.Background.Gradient1.ColorCorrection = True
      StateClicked.Background.Gradient1.GradientType = gtRadial
      StateClicked.Background.Gradient1.Point1XPercent = 50
      StateClicked.Background.Gradient1.Point1YPercent = 100
      StateClicked.Background.Gradient1.Sinus = False
      StateClicked.Background.Gradient2.StartColor = clWhite
      StateClicked.Background.Gradient2.StartColorOpacity = 255
      StateClicked.Background.Gradient2.DrawMode = dmSet
      StateClicked.Background.Gradient2.EndColor = clBlack
      StateClicked.Background.Gradient2.EndColorOpacity = 255
      StateClicked.Background.Gradient2.ColorCorrection = True
      StateClicked.Background.Gradient2.GradientType = gtLinear
      StateClicked.Background.Gradient2.Point2YPercent = 100
      StateClicked.Background.Gradient2.Sinus = False
      StateClicked.Background.Gradient1EndPercent = 100
      StateClicked.Background.Style = bbsGradient
      StateClicked.Border.Color = clBlack
      StateClicked.Border.ColorOpacity = 255
      StateClicked.Border.LightColor = clWhite
      StateClicked.Border.LightOpacity = 255
      StateClicked.Border.LightWidth = 0
      StateClicked.Border.Style = bboNone
      StateClicked.Border.Width = 1
      StateClicked.FontEx.Color = 16770790
      StateClicked.FontEx.EndEllipsis = False
      StateClicked.FontEx.FontQuality = fqSystemClearType
      StateClicked.FontEx.Height = 0
      StateClicked.FontEx.SingleLine = True
      StateClicked.FontEx.Shadow = True
      StateClicked.FontEx.ShadowColor = clBlack
      StateClicked.FontEx.ShadowColorOpacity = 255
      StateClicked.FontEx.ShadowRadius = 2
      StateClicked.FontEx.ShadowOffsetX = 1
      StateClicked.FontEx.ShadowOffsetY = 1
      StateClicked.FontEx.Style = [fsBold]
      StateClicked.FontEx.TextAlignment = bcaCenter
      StateClicked.FontEx.WordBreak = False
      StateHover.Background.Color = clBlack
      StateHover.Background.ColorOpacity = 255
      StateHover.Background.Gradient1.StartColor = 16744448
      StateHover.Background.Gradient1.StartColorOpacity = 255
      StateHover.Background.Gradient1.DrawMode = dmSet
      StateHover.Background.Gradient1.EndColor = 8404992
      StateHover.Background.Gradient1.EndColorOpacity = 255
      StateHover.Background.Gradient1.ColorCorrection = True
      StateHover.Background.Gradient1.GradientType = gtRadial
      StateHover.Background.Gradient1.Point1XPercent = 50
      StateHover.Background.Gradient1.Point1YPercent = 100
      StateHover.Background.Gradient1.Sinus = False
      StateHover.Background.Gradient2.StartColor = clWhite
      StateHover.Background.Gradient2.StartColorOpacity = 255
      StateHover.Background.Gradient2.DrawMode = dmSet
      StateHover.Background.Gradient2.EndColor = clBlack
      StateHover.Background.Gradient2.EndColorOpacity = 255
      StateHover.Background.Gradient2.ColorCorrection = True
      StateHover.Background.Gradient2.GradientType = gtLinear
      StateHover.Background.Gradient2.Point2YPercent = 100
      StateHover.Background.Gradient2.Sinus = False
      StateHover.Background.Gradient1EndPercent = 100
      StateHover.Background.Style = bbsGradient
      StateHover.Border.Color = clBlack
      StateHover.Border.ColorOpacity = 255
      StateHover.Border.LightColor = clWhite
      StateHover.Border.LightOpacity = 255
      StateHover.Border.LightWidth = 0
      StateHover.Border.Style = bboNone
      StateHover.Border.Width = 1
      StateHover.FontEx.Color = clWhite
      StateHover.FontEx.EndEllipsis = False
      StateHover.FontEx.FontQuality = fqSystemClearType
      StateHover.FontEx.Height = 0
      StateHover.FontEx.SingleLine = True
      StateHover.FontEx.Shadow = True
      StateHover.FontEx.ShadowColor = clBlack
      StateHover.FontEx.ShadowColorOpacity = 255
      StateHover.FontEx.ShadowRadius = 2
      StateHover.FontEx.ShadowOffsetX = 1
      StateHover.FontEx.ShadowOffsetY = 1
      StateHover.FontEx.Style = [fsBold]
      StateHover.FontEx.TextAlignment = bcaCenter
      StateHover.FontEx.WordBreak = False
      StateNormal.Background.Color = clBlack
      StateNormal.Background.ColorOpacity = 255
      StateNormal.Background.Gradient1.StartColor = 4194304
      StateNormal.Background.Gradient1.StartColorOpacity = 255
      StateNormal.Background.Gradient1.DrawMode = dmSet
      StateNormal.Background.Gradient1.EndColor = 8405056
      StateNormal.Background.Gradient1.EndColorOpacity = 255
      StateNormal.Background.Gradient1.ColorCorrection = True
      StateNormal.Background.Gradient1.GradientType = gtLinear
      StateNormal.Background.Gradient1.Point2YPercent = 100
      StateNormal.Background.Gradient1.Sinus = False
      StateNormal.Background.Gradient2.StartColor = 8405056
      StateNormal.Background.Gradient2.StartColorOpacity = 255
      StateNormal.Background.Gradient2.DrawMode = dmSet
      StateNormal.Background.Gradient2.EndColor = 4194304
      StateNormal.Background.Gradient2.EndColorOpacity = 255
      StateNormal.Background.Gradient2.ColorCorrection = True
      StateNormal.Background.Gradient2.GradientType = gtRadial
      StateNormal.Background.Gradient2.Point1XPercent = 50
      StateNormal.Background.Gradient2.Point1YPercent = 100
      StateNormal.Background.Gradient2.Sinus = False
      StateNormal.Background.Gradient1EndPercent = 60
      StateNormal.Background.Style = bbsGradient
      StateNormal.Border.Color = clBlack
      StateNormal.Border.ColorOpacity = 255
      StateNormal.Border.LightColor = clWhite
      StateNormal.Border.LightOpacity = 255
      StateNormal.Border.LightWidth = 0
      StateNormal.Border.Style = bboNone
      StateNormal.Border.Width = 1
      StateNormal.FontEx.Color = 16770790
      StateNormal.FontEx.EndEllipsis = False
      StateNormal.FontEx.FontQuality = fqSystemClearType
      StateNormal.FontEx.Height = 0
      StateNormal.FontEx.SingleLine = True
      StateNormal.FontEx.Shadow = True
      StateNormal.FontEx.ShadowColor = clBlack
      StateNormal.FontEx.ShadowColorOpacity = 255
      StateNormal.FontEx.ShadowRadius = 2
      StateNormal.FontEx.ShadowOffsetX = 1
      StateNormal.FontEx.ShadowOffsetY = 1
      StateNormal.FontEx.Style = [fsBold]
      StateNormal.FontEx.TextAlignment = bcaCenter
      StateNormal.FontEx.WordBreak = False
      Caption = 'Pozostaw istniejące.'
      Color = clNone
      DropDownWidth = 16
      DropDownArrowSize = 8
      GlobalOpacity = 255
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000064000000640000000000000000000000000000000506
        8B210504856D0404753A00000000000000000000000000000000000000000000
        0000000000000000000003035C010B09B6E6040377830000000004046B140B07
        BEF6110EFFFF0B09DDFF0303575C000000000000000000000000000000000000
        000000000000000000000504809D110CFCFF04036585000000000F0D864D110F
        DFFF0E0CFCFF100EFFFF0A08B3F802024C0C0000000000000000000000000000
        00000000000003035D2E0D0CDCFF0D0BD6FF0303622A00000000040372392524
        D7FF0F0EFBFF0E0EEFFF0F0FFAFF060587910000000000000000000000000000
        000004037A090B09BAEF1313FFFF09079DE80000000000000000000000001615
        A4D62627FFFF090AEEFF1214FAFF0F10DBFF0403832300000000000000000000
        00000A09AEB81416FFFF1112E5FF05047F620000000000000000000000000000
        811F272BC6FF252CFEFF0D0EEEFF161CFEFF0D0EC3D900000000000000000E0D
        BD9F181DF9FF191EFEFF0B0BB9E9000000000000000000000000000000000000
        00000401A456393FE0FF2531FAFF121CF6FF1B25F6FF0D07BB710F0EC57E1D26
        F7FF1E2BFFFF151BE2FF0804A23E000000000000000000000000000000000000
        0000000000000C08BB954C57F6FF2839F8FF1B2DF7FF1F29EEFF2131F6FF2236
        F9FF1F2FF2FF0D07C79C00000000000000000000000000000000000000000000
        000000000000000000001210CAAB5261F5FF293CF6FF253AF8FF263AF7FF2638
        F6FF1310D6D30000000000000000000000000000000000000000000000000000
        000000000000000000000C0BD67A2939F1FF2F45F8FF2338F6FF253EF8FF1F28
        EAFF0B00D91E0000000000000000000000000000000000000000000000000000
        00001611E944202AEEE7314CF9FF2B46F8FF253FF6FF4E69F9FF536EF9FF2341
        F6FF1D24ECCD0D02EB0D000000000000000000000000000000000E03ED071C20
        EFB6314CF6FF3656F8FF2F4AF6FF304FF6FF516EF9FF3A3CF1FC555CF4FF6B8A
        FAFF385EF8FF1B27F2F10B00EB2C0000000000000000000000001A20F1B83B61
        F8FF3A5AF7FF3150F7FF3D5FF7FF637DFAFF3234F5EE0200E8170700EB373536
        F4F3778EFAFF6389FAFF2D45F5FF1416F27300000000000000004755F8FF4F76
        F8FF3E61F8FF5679F8FF6279F9FF1F19F4BD0400EE0900000000000000000700
        F110120AF198525AF8FF7F9CFAFF6B89FAFF3643F5D71611F2302623F2B7697B
        F9FF6C82F9FF5055F6FF1006F17E000000000000000000000000000000000000
        0000000000000300EF25110AF1A53839F5DC6B7EF8FF464BF6FA0F0AEF4B3132
        F4D6393CF5D21C15F1AB0D03F10B000000000000000000000000000000000000
        000000000000000000000600F01C1109F0682728F1B61F1EF2A7
      }
      OnClick = btnZapiszDoOTIS3Click
      ParentColor = False
      Rounding.RoundX = 12
      Rounding.RoundY = 12
      Rounding.RoundOptions = []
      RoundingDropDown.RoundX = 1
      RoundingDropDown.RoundY = 1
      RoundingDropDown.RoundOptions = []
      ShowHint = True
      TextApplyGlobalOpacity = False
      MemoryUsage = bmuHigh
    end
  end
end
