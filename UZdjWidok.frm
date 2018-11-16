object ZdjWidok: TZdjWidok
  Left = 342
  Height = 500
  Top = 242
  Width = 400
  Caption = 'Zdjęcie'
  ClientHeight = 500
  ClientWidth = 400
  Constraints.MinHeight = 500
  Constraints.MinWidth = 400
  LCLVersion = '6.6'
  object BCPanel3: TBCPanel
    Left = 0
    Height = 50
    Top = 450
    Width = 400
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
    TabOrder = 0
    object BCLabel1: TBCLabel
      AnchorSideLeft.Side = asrCenter
      Left = 0
      Height = 31
      Top = 0
      Width = 116
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
      Caption = 'Data utworzenia:'
      FontEx.Color = 15990784
      FontEx.EndEllipsis = False
      FontEx.FontQuality = fqFineAntialiasing
      FontEx.Height = 14
      FontEx.SingleLine = True
      FontEx.Shadow = True
      FontEx.ShadowColor = clBlack
      FontEx.ShadowColorOpacity = 255
      FontEx.ShadowRadius = 5
      FontEx.ShadowOffsetX = 1
      FontEx.ShadowOffsetY = 1
      FontEx.Style = []
      FontEx.TextAlignment = bcaCenter
      FontEx.WordBreak = False
      Rounding.RoundX = 1
      Rounding.RoundY = 1
      Rounding.RoundOptions = []
    end
    object lblDataZdj: TBCLabel
      AnchorSideLeft.Side = asrCenter
      Left = 112
      Height = 31
      Top = 0
      Width = 40
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
      Caption = 'data'
      FontEx.Color = clBlack
      FontEx.EndEllipsis = False
      FontEx.FontQuality = fqFineAntialiasing
      FontEx.Height = 14
      FontEx.SingleLine = True
      FontEx.Shadow = True
      FontEx.ShadowColor = clBlack
      FontEx.ShadowColorOpacity = 255
      FontEx.ShadowRadius = 5
      FontEx.ShadowOffsetX = 1
      FontEx.ShadowOffsetY = 1
      FontEx.Style = []
      FontEx.TextAlignment = bcaCenter
      FontEx.WordBreak = False
      Rounding.RoundX = 1
      Rounding.RoundY = 1
      Rounding.RoundOptions = []
    end
    object lblWiekZdj: TBCLabel
      AnchorSideLeft.Side = asrCenter
      Left = 112
      Height = 31
      Top = 19
      Width = 40
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
      Caption = 'data'
      FontEx.Color = clBlack
      FontEx.EndEllipsis = False
      FontEx.FontQuality = fqFineAntialiasing
      FontEx.Height = 14
      FontEx.SingleLine = True
      FontEx.Shadow = True
      FontEx.ShadowColor = clBlack
      FontEx.ShadowColorOpacity = 255
      FontEx.ShadowRadius = 5
      FontEx.ShadowOffsetX = 1
      FontEx.ShadowOffsetY = 1
      FontEx.Style = []
      FontEx.TextAlignment = bcaCenter
      FontEx.WordBreak = False
      Rounding.RoundX = 1
      Rounding.RoundY = 1
      Rounding.RoundOptions = []
    end
    object btnDrukuj: TBCButton
      Left = 352
      Height = 33
      Top = 8
      Width = 35
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
      Color = clNone
      DropDownWidth = 16
      DropDownArrowSize = 8
      GlobalOpacity = 255
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000064000000640000000000000000000000000000000000
        00000000000000000000D7C39BFFECE3D6FFECE3D6FFECE3D6FFECE3D6FFECE3
        D6FFECE3D6FFD7C39BFF00000000000000000000000000000000958F8FBF9C96
        96CB9C9696E469636AF1C4AB7FFFEDE1D5FFEDE1D5FFEDE1D5FFEDE1D5FFEDE1
        D5FFEDE1D5FFC4AB7FFF69636AE99C9696EC9C9696DF999292D3958F8FFFC3C0
        BFFFC3C0BFFF837D84FFC6A874FFE0CBAEFFE0CBAEFFE0CBAEFFE0CBAEFFE0CB
        AEFFE0CBAEFFC6A874FF837D84FFC3C0BFFFC3C0BFFF999292FFA49FA1FFD1CF
        CEFFD1CFCEFFD3D2D1FFD2D2D3FFD0D0D2FFD0D0D2FFD0D0D2FFD0D0D2FFD0D0
        D2FFD0D0D2FFD2D2D3FFD3D2D1FFBACAD7FF6E9BE3FFA49FA1FFAAA7A7FFD9D7
        D7FFD9D7D7FFD9D7D7FFD9D7D7FFD9D7D7FFD9D7D7FFD9D7D7FFD9D7D7FFD9D7
        D7FFD9D7D7FFD9D7D7FFD9D7D7FF8AC3E9FF004BFBFFABA8A8FFB7B3B3FFE6E8
        E9FFD6C5AFFFBC6B10FFBB6A0FFFBB6A0FFFBB6A0FFFBB6A0FFFBB6A0FFFBB6A
        0FFFBB6A0FFFBB6A0FFFBC6B10FFD6C5AFFFE6E8E9FFB8B5B5FFBCB9BAFFEEF2
        F5FFBA7B3EFFE1A942FFE1A842FFE1A842FFE1A842FFE1A842FFE1A842FFE1A8
        42FFE1A842FFE1A842FFE1A942FFBA7B3EFFEEF2F5FFBFBBBCFFCDC8C9FFF8FC
        FFFFCD9753FFEEC670FFEEC771FFEEC771FFEEC771FFEEC771FFEEC771FFEEC7
        71FFEEC771FFEEC771FFEEC670FFCD9753FFF8FCFFFFCECBCCFFD2D0D0FFFCFF
        FFFFD7A55CFFEDC977FFE9BF68FFE9BF68FFE9BF68FFE9BF68FFE9BF68FFE9BF
        68FFE9BF68FFE9BF68FFEDC977FFD7A55CFFFCFFFFFFD4D1D0FFDEDCDBFFFFFF
        FFFFE8C070FFE0AC54FFB99D6BFFD7BD91FFD7BD91FFD7BD91FFD7BD91FFD7BD
        91FFD7BD91FFB99D6BFFE0AC54FFE8C070FFFFFFFFFFE3DFDFFFCAC3C5E0B0AF
        B4D9D8A859D8C9924BE4C4AB7FFFDFCAADFFDFCAADFFDFCAADFFDFCAADFFDFCA
        ADFFDFCAADFFC4AB7FFFC9924BF0D8A859DFB0AFB4D5CAC2C4E0000000000000
        00000000000000000000D0BD98FFECDFD1FFECDFD1FFECDFD1FFECDFD1FFECDF
        D1FFECDFD1FFD0BD98FF00000000000000000000000000000000000000000000
        00000000000000000000D5C4A4FFEFE4D8FFEFE4D8FFEFE4D8FFEFE4D8FFEFE4
        D8FFEFE4D8FFD5C4A4FF00000000000000000000000000000000000000000000
        00000000000000000000DED0B8FFF5EDE4FFF5EDE4FFF5EDE4FFF5EDE4FFF5ED
        E4FFF5EDE4FFDED0B8FF00000000000000000000000000000000000000000000
        00000000000000000000E2D6C1FFF8F3EAFFF8F3EAFFF8F3EAFFF8F3EAFFF8F3
        EAFFF8F3EAFFE2D6C1FF00000000000000000000000000000000000000000000
        00000000000000000000E3D8C6E3EFE8DBFFEFE8DBFFEFE8DBFFEFE8DBFFEFE8
        DBFFEFE8DBFFE3D8C6D300000000000000000000000000000000
      }
      ParentColor = False
      Rounding.RoundX = 12
      Rounding.RoundY = 12
      Rounding.RoundOptions = []
      RoundingDropDown.RoundX = 1
      RoundingDropDown.RoundY = 1
      RoundingDropDown.RoundOptions = []
      TextApplyGlobalOpacity = False
      MemoryUsage = bmuHigh
    end
    object btnEdycja: TBCButton
      Left = 312
      Height = 33
      Top = 8
      Width = 35
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
      Color = clNone
      DropDownWidth = 16
      DropDownArrowSize = 8
      GlobalOpacity = 255
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        20000000000000040000640000006400000000000000000000000A2B95FF021C
        80FB0024973C1A66D8451766D121000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000092A927B0000
        58FF4E9FDFFF4CBFF8FF1467D4FF0B30ADB20000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000A81338AAD
        DCFFC3FFFFFF95EBFFFF58D0FDFF0773D9FF0C33AFD400000000000000000000
        00000000000000000000000000000000000000000000000000000E42B14692BA
        E5FFFFFFFFFF79DFFFFF0EA4EEFF0B6DD5FF0E7FE0FF1046BBDA000000000000
        0000000000000000000000000000000000000000000000000000000000001C4A
        BCB7DBFFFFFF06DFFAFF00C3FCFF119EEAFF1272D7FF0D80E1FF134BC0D30000
        0000000000000000000000000000000000000000000000000000000000000016
        A8B535B9E4FF0AFFFFFF00D8F6FF00C8FEFF119CEAFF1271D6FF0D7FDFFF154D
        C2DA000000000000000000000000000000000000000000000000000000000000
        00000B2EB4DA3AD2ECFF12FFFFFF00D9F6FF00C8FEFF119CEAFF1271D5FF0D80
        DEFF1550C4D30000000000000000000000000000000000000000000000000000
        000000000000102DB6D339D4EDFF12FFFFFF00D8F6FF00C8FEFF119CEAFF1271
        D5FF0D7FDFFF1651C9DA00000000000000000000000000000000000000000000
        000000000000000000001233B8DA3AD1ECFF0CFFFDFF00D9F6FF00C8FEFF119C
        EAFF126FD5FF0C80DFFF1A5BCBD3000000000000000000000000000000000000
        00000000000000000000000000001637BDD359F0F6FF07FFFBFF00D8F6FF00C8
        FEFF119CEAFF1371D6FF0B7FE3FF0047CADA0000000000000000000000000000
        000000000000000000000000000000000000294CC4DA67F6F8FF03FFFAFF00D8
        F6FF00C8FEFF0EA9F7FF0052BEFF627590FF5684D3D300000000000000000000
        000000000000000000000000000000000000000000002D4FC8D368F8F9FF05FF
        FAFF00E6FFFF00A4E9FF627992FFFFFFE9FF7976B8FF0032CBCB000000000000
        00000000000000000000000000000000000000000000000000002E53CADA66FF
        FFFF00E9E1FF639AA3FFFFFFFCFF6B6FAAFF0000DDFF0D27EFFF000000000000
        0000000000000000000000000000000000000000000000000000000000001E59
        CFD380B6BCFFFFFFFCFF6D7CADFF0000DAFF0007FFFF0D26E8FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00004474E3DA84A6BCFF0C6CE2FF1458FFFF0B21EDFF1130E026000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000953D0C43FADF7F92982EDEE103AEA1F00000000
      }
      OnClick = btnEdycjaClick
      ParentColor = False
      Rounding.RoundX = 12
      Rounding.RoundY = 12
      Rounding.RoundOptions = []
      RoundingDropDown.RoundX = 1
      RoundingDropDown.RoundY = 1
      RoundingDropDown.RoundOptions = []
      TextApplyGlobalOpacity = False
      MemoryUsage = bmuHigh
    end
  end
  object BCPanel2: TBCPanel
    Left = 0
    Height = 450
    Top = 0
    Width = 400
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
    TabOrder = 1
    object Image1: TImage
      Left = 4
      Height = 442
      Top = 4
      Width = 392
      AntialiasingMode = amOn
      Align = alClient
      BorderSpacing.Around = 4
      Center = True
      Proportional = True
      Stretch = True
    end
  end
end
