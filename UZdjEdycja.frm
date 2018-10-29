object ZdjEdycja: TZdjEdycja
  Left = 664
  Height = 671
  Top = 468
  Width = 810
  AllowDropFiles = True
  Caption = 'Edycja zdjęcia'
  ClientHeight = 671
  ClientWidth = 810
  Constraints.MinHeight = 650
  Constraints.MinWidth = 700
  OnClose = FormClose
  OnCreate = FormCreate
  OnDropFiles = FormDropFiles
  Position = poScreenCenter
  LCLVersion = '6.6'
  WindowState = wsMaximized
  object ImgView: TImgView32
    Left = 0
    Height = 591
    Top = 80
    Width = 696
    Align = alClient
    Bitmap.ResamplerClassName = 'TNearestResampler'
    BitmapAlign = baCenter
    Color = clBtnFace
    ParentColor = False
    Scale = 1
    ScaleMode = smOptimalScaled
    ScrollBars.Color = clScrollBar
    ScrollBars.ShowHandleGrip = True
    ScrollBars.Style = rbsDefault
    ScrollBars.Size = 17
    ScrollBars.Visibility = svAuto
    OverSize = 0
    TabOrder = 0
    OnDblClick = ImgViewDblClick
    OnMouseEnter = Img_1MouseEnter
    OnMouseLeave = Img_1MouseLeave
    OnPaintStage = ImgViewPaintStage
  end
  object BCPanel2: TBCPanel
    Left = 696
    Height = 591
    Top = 80
    Width = 114
    Align = alRight
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
    object btnWytnij: TBCButton
      Left = 8
      Height = 33
      Top = 48
      Width = 96
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
      Caption = 'Wytnij'
      Color = clNone
      DropDownWidth = 16
      DropDownArrowSize = 8
      Enabled = False
      GlobalOpacity = 255
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000064000000640000000000000000000000000000000000
        00000000000000000000000000000002030B1409055436180B81481D0F579C46
        1E04000000000000000000000000000000000000000000000000000000000000
        000000000000000000000206040227120979A65B25FCD48A40FFC87B32FFA552
        1E8E000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000003137A4319D8D2862EE8D3973C4091602189BA6E
        25FFA04E191E0000000000000000000000000000000000000000000000000000
        00000000000000000000000000008A511BDBC36F27B400000000110B0646B26C
        27FDB76A2E420000000000000000000000000000000000000000000201020D05
        034843220F964F2F148D331C083D673C1582C6762CF02E0F076244210EAFC67F
        32FFBF79391D00000000000000000000000000000000000000000B03033B8445
        1CE5D6822EFFDD832CFBCF7F2EF9915B20A3A86B24CBC88035FFD08C46FFE29C
        46A500000000000000000000000000000000000000000000000031150A7ED586
        3DFFB88033607C4919076D391774CB863BFF966B32C4B39060F2E3BE8AFFA27B
        496B291E0C1C0701000E0000000000000000000000000000000032160A65D685
        39FF7F551E640000001118060576C47F3BFFD6AD73FFA2A8ADFF9D9D9AFFA8A4
        9EF29E988BDA8D8578CB6C665AAD5650467A453C2F1900000000220D0A11A554
        23ADBB7225FF975921EFB36E2DFFDB9A4FE1BB986EB1999791EEC6BDAFFFD3CA
        BFFFF7EDE1FFFFFBECFFFFFBEEFFF7F1E4FFB9B1A6DC8D84762A000000009140
        1F0AB7601F54BD6F2C66CA883C57C87F2F23000000006B655CB5F8EFDFFFC0B8
        A9DFBBB09E8FCEC5B8D2E2DACDF5F4E8DBFEFEFCEEFFBCB5A8C1000000000000
        000000000000000000000000000000000000000000005A5349A4F8EEDFFFD4CB
        BEEAA89A8601B5ABA106C8BFB010B0A39045C6BBAE8CCFC6B9A8000000000000
        00000000000000000000000000000000000000000000524A3F93F8EEE1FFE2D8
        CBF9B0A18D200000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000004C443975F2E9DBFFF5EC
        DCFFB2A693570000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000322A1D44E0D9CCFFFFF9
        E9FFC7BDAD870000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000001C1303059A9488B7FCF9
        EBFFE8DFD1AB0000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000006D655A15C9C2
        B794D4CBC0AB0000000000000000000000000000000000000000
      }
      OnClick = btnWytnijClick
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
    object btnZaznacz: TBCButton
      Left = 8
      Height = 33
      Top = 8
      Width = 96
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
      Caption = 'Zaznacz'
      Color = clNone
      DropDownWidth = 16
      DropDownArrowSize = 8
      Enabled = False
      GlobalOpacity = 255
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000064000000640000000000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00232323CD1F1F1FFE1A1A1AC7FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00040404BB010101FF000000C4FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF002B2B2BFFB2B2B2FF222121FFDA946AFFD89067FFD88D
        63FFD5895FFFD5865DFF090909FFA6A6A6FF030303FFFFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00333333E22D2D2DFF473F3AFFE4B191FFE3AE8FFFE2AB
        8BFFE1A989FFDFA786FF42342CFF0A0A0AFF070707D6FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00E1A57CFFE6B798FFE5B495FFE4B192FFE3AF
        8FFFE2AC8DFFE1A98AFFE0A787FFD5895FFFFFFFFF00FFFFFF00FFFFFF005F5F
        5FCD595959FF555555CDFFFFFF00E2A980FFE8BA9CFFE7B899FFE6B596FFE4B3
        93FFE3AF91FFE3AD8DFFE1AA8BFFD88D63FFFFFFFF00FFFFFF00FFFFFF006767
        67FFC6C6C6FF5D5D5DFFF3BC9AFFE3AC85FFEABE9FFFE8BB9DFFE8B89AFFE6B6
        97FFE5B394FFE4B191FFE3AE8FFFD99167FFFFFFFF00FFFFFF00FFFFFF007070
        70CC6B6B6BFF837B76FFF7CEB4FFE5AF88FFEBC0A2FFEABEA0FFE8BC9EFFE8BA
        9BFFE6B798FFE5B495FFE4B192FFDA966CFFFFFFFF00FFFFFF00FFFFFF00FFFF
        FF00F5C4A5FFF7D1B8FF7F7874FF5F5F5FFF6A6562FFDBB69AFFEABFA1FFE9BD
        9EFFE8BA9CFFE7B899FF544B45FF2C2C2CFF272727CDFFFFFF00FFFFFF00FFFF
        FF00F5C5A9FFF7D2BBFF6F6F6FFFC9C9C9FF626262FFD7A984FFE5AF86FFE3AC
        85FFE3AA81FFE1A67FFF3A3A3AFFB7B7B7FF2F2F2FFFFFFFFF00FFFFFF00FFFF
        FF00F5C8ABFFF7D3BDFF8D8783FF717171FF7E7975FFEBC6AFFFF7CEB4FFF7CD
        B3FFF3BB99FFFFFFFF00424242CC3D3D3DFF383838CCFFFFFF00FFFFFF00FFFF
        FF00F5C9ACFFF7D5BFFFF7D4BEFFF7D3BCFFF7D2BAFFF7D1B8FFF7D0B7FFF7CE
        B5FFF5BE9BFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008686
        86CD838383FF99918CFFF7D5C0FFF7D5BEFFF7D3BDFFF7D2BBFFF7D1BAFF8D83
        7DFF636363FF5F5F5FC4FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008989
        89FFD3D3D3FF848484FFF5CBAEFFF5C8ACFFF5C8ABFFF5C5A9FFF5C5A7FF6F6F
        6FFFC9C9C9FF676767FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008989
        89E2888888FF878787D6FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007878
        78BF737373FF717171D6FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
      }
      OnClick = btnZaznaczClick
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
    object btnWczytajFoto: TBCButton
      Left = 8
      Height = 33
      Top = 144
      Width = 96
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
      Caption = 'Wczytaj'
      Color = clNone
      DropDownWidth = 16
      DropDownArrowSize = 8
      GlobalOpacity = 255
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000064000000640000000000000000000000FFFFFF0063B6
        F84D64B5F77864B5F77864B5F77864B5F77864B5F77864B5F77864B5F77864B5
        F77864B5F77864B5F77864B5F77864B5F77863B6F84DFFFFFF00FFFFFF0063B4
        F7C363B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5
        F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B4F7C3FFFFFF00FFFFFF0063B5
        F7EA63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF86C5F4FFA2D1F2FFA2D1
        F2FFA2D1F2FFA2D1F2FF8EC8F3FF63B5F7FF63B5F7EAFFFFFF0063B8F11263B5
        F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FFA6D3F1FFCDE0E4FFC3D8
        DCFFC3D8DCFFC9DDE1FFB5DAF0FF63B5F7FF63B5F7FF63B8F11262B3F63963B5
        F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FFA6D3F1FFCCDFE3FFC6DB
        DFFFD1E3E6FFD6E7EAFFB5DAF0FF63B5F7FF63B5F7FF62B3F63962B5F76063B5
        F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF97CCF3FFC0DFEFFFC0DF
        EFFFC0DFEFFFC0DFEFFFA3D1F2FF63B5F7FF63B5F7FF62B5F76062B5F78763B5
        F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5
        F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF62B5F78763B5F8AF63B5
        F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5
        F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5F8AF63B5F7D663B5
        F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5
        F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7D664B5F7A163B0
        EEC477BBF2DA77BBF2DA77BBF2DA77BBF2DA77BBF2DA77BBF2DA77BBF2DA77BB
        F2DA77BBF2DA77BBF2DA77BBF2DA77BBF2DA64B0EEC564B5F7A1FFFFFF00648E
        B9E9DBE4ECFFDCE5EBFFDCE5EBFFDCE5EBFFDCE5EBFFDCE5EBFFDCE5EBFFDCE5
        EBFFDCE5EBFFDCE5EBFFDCE5EBFFDBE4ECFF6891BAEAFFFFFF00FFFFFF005B88
        B5E8A7BACBFFBBC6CEFFBBC6CEFFBBC6CEFFBBC6CEFFBBC6CEFFBBC6CEFFBBC6
        CEFFBBC6CEFFBBC6CEFFBBC6CEFFA9BCCCFF5B88B5E8FFFFFF00FFFFFF005B88
        B5E87195B9FF87A3BCFF87A3BCFF87A3BCFF87A3BCFF87A3BCFF87A3BCFF87A3
        BCFF87A3BCFF87A3BCFF87A3BCFF7296B9FF5B88B5E8FFFFFF00FFFFFF005B88
        B5E85B88B5FF5B88B5FF5B88B5FF5B88B5FF5B88B5FF5B88B5FF5B88B5FF5B88
        B5FF5B88B5FF5B88B5FF5B88B5FF5B88B5FF5B88B5E6FFFFFF00FFFFFF005B88
        B5E85B88B5FF5B88B5FF5B88B5FF5C87B5D15889B11A608AB518608AB518608A
        B518608AB518608AB518608AB518608AB518558EB812FFFFFF00FFFFFF005A87
        B4665B88B5785B88B5785B88B5785988B82BFFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
      }
      OnClick = ImgViewDblClick
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
    object btnZapiszDoOTIS: TBCButton
      Left = 0
      Height = 33
      Hint = 'Zapisuje zdjęcie do bazy zdjęć OTIS. !!!'
      Top = 352
      Width = 112
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
      Caption = 'Zapisz do OTIS'
      Color = clNone
      DropDownWidth = 16
      DropDownArrowSize = 8
      Enabled = False
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
      OnClick = btnZapiszDoOTISClick
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
    object btnPasteFoto: TBCButton
      Left = 8
      Height = 33
      Hint = 'Wklej zdjęcie ze schowka.'
      Top = 184
      Width = 96
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
      Caption = 'Wklej'
      Color = clNone
      DropDownWidth = 16
      DropDownArrowSize = 8
      GlobalOpacity = 255
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        200000000000000400006400000064000000000000000000000000000000328B
        BEFF3486C4F33488C4F33488C4F33288C8F33596DCF36A4B2BF3B8915AF3AF93
        69F3AF9266F3B09266F3B4976CF3B4996FF3BAA178F485581BE349AFFFFF49BB
        FFFF3FB8FFFF41B8FFFF40B6FFFF41BCFFFF2BC1FFFF737765FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBEA686F646A5FEF2349F
        FFFF2CA0FFFF2FA0FFFF2D9DFFFF31A4FFFF0CA2FFFF696F69FFFFEBD9FFF2F2
        EDFFF1EEE7FFF1EEE7FFEFEDE3FFECE9E1FFFFFFFFFFB69B73F146ABFEF33AAA
        FFFF35A9FFFF37A9FFFF39A9FFFF3BADFFFF1CACFFFF6F7269FFFFEEDCFFF4F4
        F1FFF3F1E9FFF4F1EBFFF6F2EDFFF8F1EDFFFFFFFFFFB69F78F147ADFEF33EB1
        FFFF39AAFFFF3BACFFFF3BABFFFF3DB1FFFF22B1FFFF6F7667FFFFEDD9FFF3F4
        EDFFF3EFEAFFF6F1ECFFFBF7F4FFFBF4F1FFFFFFFFFFB59A70F149ADFEF343B5
        FFFF3CADFFFF3EAFFFFF3EAEFFFF43B5FFFF26B5FFFF727D70FFFFF5E4FFF8F9
        F5FFFBF7F3FFFBFBF7FFFBFCF8FFF2EEE9FFF2EFE9FFAD9064F14EAFFEF348B9
        FFFF40B3FFFF43B4FFFF41B0FFFF44B7FFFF29B7FFFF7B8579FFFFF8EEFFFBFC
        FFFFF9FCFBFFFBFBFBFFF5F1ECFFE9E0D6FFE1D8C9FFA28451F54FB1FEF34EBF
        FFFF43B5FFFF48B8FFFF46B7FFFF47BBFFFF2CBAFFFF818980FFFFF8EDFFFBFD
        FFFFFCFBF9FFF7F4EDFFD9CEBAFFCEBFA1FFBCA27CFF966E35ED51B4FEF353C2
        FFFF46B9FFFF49B9FFFF49B6FFFF4ABBFFFF2BBAFFFF818E88FFFFF8EFFFFBFE
        FFFFF4F2EBFFEAE1D8FFCAB597FFFBFBF9FFF3EEEAFFB0966AFF54B5FEF358C4
        FFFF4ABBFFFF50CFFFFF54D8FFFF51D9FFFF3AD5FFFF9F9D8EFFFFFFFCFFFFFF
        FFFFFDE6D0FFEACAAAFFC19359FFF4EFEBFFAA8D5DFF0000000055B6FEF25ECA
        FFFF54CEFFFF3996BEFF145876FF1E668DFF02639DFF4E5C5AFF908570FF827E
        6AFF869D9AFF839B8DFF6C7D70FFC39558FF00000000000000005DB8FEFF5AD4
        FFFF44C1FBFF81716EFF91796DFF887A74FF8D7B72FF7A7E83FF787E87FF5D59
        5DFF0074CBFF25BEFFFF16A4FFFF0085FF44000000000000000058B1FECD77D3
        FFFF4DB8F4FFCFC9C6FFFFFFFCFFEFEFEEFFFFFEFDFFF1EFEFFFFFFFFEFFD7CD
        C4FF1166ACFF3AACFFFF2799FBFF0B87F13000000000000000000000000048AB
        FF5140A5F63EBFC2C1FFFFFCF6FFFFFFFFFFB3B1B1FFFCFEFEFFFFFFFFFFC5C8
        C5FF0064BF3E1890FE4D0C89F528000000000000000000000000000000000000
        00000000000000000000EBE4DF29E1E2E2FFABABABFFE4E2E2FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000C9C9C91EA6A6A6FFB7B7B780000000000000
        0000000000000000000000000000000000000000000000000000
      }
      OnClick = btnPasteFotoClick
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
  object BCPanel1: TBCPanel
    Left = 0
    Height = 80
    Top = 0
    Width = 810
    Align = alTop
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
    TabOrder = 2
    object Panel1: TPanel
      Left = 0
      Height = 22
      Top = 58
      Width = 810
      Align = alBottom
      BevelOuter = bvNone
      ClientHeight = 22
      ClientWidth = 810
      Color = 16755285
      ParentColor = False
      TabOrder = 0
      object lblFileEdit: TLabel
        Left = 10
        Height = 22
        Top = 0
        Width = 54
        Align = alLeft
        BorderSpacing.Left = 10
        Caption = 'FileName'
        Font.CharSet = EASTEUROPE_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Pitch = fpVariable
        Font.Quality = fqDraft
        Layout = tlCenter
        ParentColor = False
        ParentFont = False
      end
    end
    object lblIDO: TBGRALabel
      Left = 24
      Height = 41
      Top = 8
      Width = 304
      AutoSize = False
      Background.Color = clBtnFace
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
      Background.LightWidth = 0
      Background.LightOpacity = 64
      Caption = 'IDO:'
      ParentColor = False
      TextShadowColorOpacity = 255
      TextShadowOffsetX = 2
      TextShadowOffsetY = 2
      TextShadowRadius = 3
      GlobalOpacity = 255
      TextApplyGlobalOpacity = False
      WordWrap = True
      Font.CharSet = EASTEUROPE_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Pitch = fpVariable
      Font.Quality = fqDraft
    end
    object btnCopyIDO: TBCButton
      Left = 360
      Height = 33
      Hint = 'Kopiuj do schowka numer IDO osadzonego.'
      Top = 8
      Width = 144
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
      Caption = 'nr IDO do schowka'
      Color = clNone
      DropDownWidth = 16
      DropDownArrowSize = 8
      GlobalOpacity = 255
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000064000000640000000000000000000000000000000000
        00000000000000000000000000000000000079480AFD99753DFF936E36FF936E
        36FF936E36FF956E37FF936E37FF936E37FF9B783FFF653300FF000000000000
        000000000000000000000000000000000000C3AF8FFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA98953FF000000000000
        000000000000000000000000000000000000C3AF8FFFFFFFFFFFEFEBE1FFF1EC
        E4FFF1ECE8FFF1EDE2FFEEEADDFFEDE8DFFFFFFFFFFF9A753DFF000000000000
        000000000000000000000000000000000000C6B290FFFFFFFFFFF2EFE7FFF3F0
        EAFFF3F0EAFFF3F0EAFFF7F1EDFFF3F1EAFFFFFFFFFF9A753DFF8E6529FDB698
        70FFB09267FFB09267FFB09369FFA68252FFC1AC8AFFFFFFFFFFF2EFE7FFF3F0
        EAFFF3F2EBFFF6F2ECFFFAF3F1FFF9F2EDFFFFFFFFFF9A753DFFCBB899FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFBAA27BFFFFFFFFFFF2EEE6FFF2ED
        E8FFF6EFECFFF9F8F1FFFBFBF6FFF5EFE9FFFFFFFFFF9C7742FFC4AF8EFFFFFF
        FFFFEFEAE3FFF1ECE7FFF2F0E9FFEDEADDFFBFA984FFFFFFFFFFF6F3EAFFFAF7
        F3FFF9F8F8FFF9FBFAFFF7F5F2FFEBE3D9FFF6F6F4FF9A733AFFC4AF8CFFFFFF
        FFFFF2EDE7FFF3F0EAFFF3F2ECFFF3EDE7FFC2AD8FFFFFFFFFFFF8FAF5FFF9F9
        FBFFFBFBFDFFF8F7F1FFEEEDE6FFE4DBD3FFE8DFD4FF926C2FFFC4AF8CFFFFFF
        FFFFF2EDE7FFF3F0E8FFF7F3EDFFF6F1EBFFC7B292FFFFFFFFFFF8F8F8FFF9FB
        FBFFF9FAF3FFF1EEE3FFDED2C3FFC7B095FFC9B493FF8C6324FFC2AD8AFFFFFF
        FFFFF3EBE6FFF6F0EBFFF9F4F3FFFAF9F1FFC8B599FFFFFFFFFFF8FAFBFFF9FA
        F6FFF2ECE2FFE4D9CAFFD0BFA7FFECE3DCFFB5966BFF815309FFC7B699EFFFFF
        FFFFF7F7EEFFFBF9F9FFFBFBFDFFF6F6F2FFC9B99DFFFFFFFFFFFAFAF7FFF2ED
        E5FFE3D9D0FFD1BDA2FFC5AE90FFEAE6E1FFB89E73FF00000000CAB99CEFFFFF
        FFFFF8F8F7FFF9F9FFFFFCFDFCFFEFEBDFFFC9B798FFFFFFFFFFF9F8F6FFEAE0
        D5FFD6CBB5FFC7AF8BFF9B783AFF9F7F4CFF0000000000000000CEBEA2EFFFFF
        FFFFF8F8FAFFFAFAF7FFFBFAF3FFC9B499FFC5B090FFC0A584FFC0A584FFC0A5
        84FFB79B70FFA78954FF8A6220FF000000000000000000000000D1BFA6FFFFFF
        FFFFF9FBF9FFF2EEEAFFEBE3DAFFCAB598FFF1EAE5FFB6996CFF9C773BFF0000
        0000000000000000000000000000000000000000000000000000D4C9B3FFFFFF
        FFFFFCFAF5FFEDE6DCFFDCD0C1FFC0A780FFA98C59FF926929FF000000000000
        0000000000000000000000000000000000000000000000000000C6B293FFE9E2
        D7F4D6C6B3FFC9BA9CFFBCA37CFFA3854EFA926C2BFF00000000000000000000
        0000000000000000000000000000000000000000000000000000
      }
      OnClick = btnCopyIDOClick
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
  object OpenPictureDialog1: TOpenPictureDialog
    Options = [ofFileMustExist, ofEnableSizing, ofViewDetail]
    Left = 24
    Top = 256
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '.jpg'
    Filter = 'Graphic (*.png;*.xpm;*.bmp;*.cur;*.ico;*.icns;*.jpeg;*.jpg;*.jpe;*.jfif;*.tif;*.tiff;*.gif;*.pbm;*.pgm;*.ppm;*.gif;*.dds;*.hdr;*.o3tc;*.tga;*.tga;*.tga;*.bma)|*.png;*.xpm;*.bmp;*.cur;*.ico;*.icns;*.jpeg;*.jpg;*.jpe;*.jfif;*.tif;*.tiff;*.gif;*.pbm;*.pgm;*.ppm;*.gif;*.dds;*.hdr;*.o3tc;*.tga;*.tga;*.tga;*.bma|Portable Network Graphic (*.png)|*.png|Pixmap (*.xpm)|*.xpm|Bitmaps (*.bmp)|*.bmp|Cursor (*.cur)|*.cur|Icon (*.ico)|*.ico|Mac OS X Icon (*.icns)|*.icns|Joint Picture Expert Group (*.jpeg;*.jpg;*.jpe;*.jfif)|*.jpeg;*.jpg;*.jpe;*.jfif|Tagged Image File Format (*.tif;*.tiff)|*.tif;*.tiff|Graphics Interchange Format (*.gif)|*.gif|Portable PixMap (*.pbm;*.pgm;*.ppm)|*.pbm;*.pgm;*.ppm|Animated GIF (*.gif)|*.gif|Microsoft DirectDraw Surface (*.dds)|*.dds|High Dynamic Range Image (*.hdr)|*.hdr|oZone3D Texture Compression (*.o3tc)|*.o3tc|Targa (*.tga)|*.tga|Targa (*.tga)|*.tga|TGA Image File (*.tga)|*.tga|KControls alpha bitmap (*.bma)|*.bma|Wszystkie pliki (*.*)|*.*|'
    Left = 24
    Top = 328
  end
end
