object ViewStolik: TViewStolik
  Left = 328
  Height = 140
  Top = 230
  Width = 240
  BorderStyle = bsNone
  Caption = 'Stolik'
  ClientHeight = 140
  ClientWidth = 240
  OnCreate = FormCreate
  PopupMenu = PopupMenu1
  PopupMode = pmAuto
  LCLVersion = '6.6'
  object Panel1: TPanel
    Left = 0
    Height = 140
    Top = 0
    Width = 240
    Align = alClient
    ClientHeight = 140
    ClientWidth = 240
    Color = 14740718
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    object Image1: TImage
      Left = 8
      Height = 100
      Top = 8
      Width = 75
      AntialiasingMode = amOn
      Center = True
      OnDblClick = Image1DblClick
      Proportional = True
      Stretch = True
    end
    object lblPOC: TLabel
      Left = 96
      Height = 15
      Top = 24
      Width = 37
      Caption = 'lblPOC'
      ParentColor = False
    end
    object lblNazwiskoImie: TLabel
      Left = 96
      Height = 15
      Top = 8
      Width = 86
      Caption = 'lblNazwiskoImie'
      ParentColor = False
    end
    object lblPozostalo: TLabel
      Left = 1
      Height = 15
      Top = 109
      Width = 238
      Align = alBottom
      Alignment = taCenter
      Caption = 'lblPozostalo'
      ParentColor = False
    end
    object lblPodkultura: TLabel
      Left = 96
      Height = 15
      Top = 64
      Width = 74
      Caption = 'lblPodkultura'
      Font.Color = 27607
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object lblCzas: TLabel
      Left = 96
      Height = 15
      Top = 40
      Width = 37
      Caption = 'lblCzas'
      ParentColor = False
    end
    object ProgressBar1: TBGRAFlashProgressBar
      Left = 1
      Height = 15
      Top = 124
      Width = 238
      Align = alBottom
      MinValue = 0
      MaxValue = 200
      Value = 100
      Color = clLime
      BackgroundColor = 3092271
      BackgroundRandomizeMinIntensity = 4000
      BackgroundRandomizeMaxIntensity = 5000
      BackgroundRandomize = True
    end
    object sbnWykazy: TSpeedButton
      Left = 216
      Height = 22
      Hint = 'Osadzony widnieje na wykazach.'
      Top = 86
      Width = 23
      Anchors = [akTop, akRight]
      Flat = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        200000000000000400006400000064000000000000000000000000000000B268
        2350DCA24EFFDCA24EF6DBA352F3D9A250F3D9A250F3D9A250F3D9A250F3D9A2
        50F3D9A24DF3DAA04AF3DAA04CF6C58438F6B2621D4E0000000000000000B268
        23DAFFE396FFEFBD55FFEFC361FFEFC360FFEFC360FFEFC360FFEFC360FFEFC1
        5EFFEFC262FFF7DDA5FFF9DEA7FFFBD26AFFC07728EF0000000000000000AC5C
        1C6AE0B671FFE5A93EFFDD982CFFDF9D33FFDF9D32FFDF9D32FFDF9D33FFDD98
        29FFE1A745FFEFDBAEFFEABB5DFFD48A21FFAB5C1B680000000000000000A952
        1101B97230BBE8BE5BFFD78E13FFDA921FFFDA921FFFDA921FFFDA921FFFD78C
        14FFE0AC4CFFEDCF88FFDE961CFFB3631B9E0000000000000000000000000000
        000000000000D4A158E1E0A22CFFD4850DFFD68D19FFD68C18FFD68C16FFD585
        0BFFE8C46FFFE6B040FFC67411F3AC5A20140000000000000000000000000000
        000000000000B767247AE4B859FFD48503FFCF7F03FFD18206FFD17F03FFD388
        0BFFE6C063FFD2880FFFB767236B000000000000000000000000000000000000
        00000000000000000000CD9249F6E7B656FFD88E1CFFD89426FFD78F1DFFE0AD
        4BFFE6B754FFC27114CB00000000000000000000000000000000000000000000
        00000000000000000000B8641339EFD7B2FCFFEDC4FFF6DBAAFFF6DBA7FFFFF6
        E1FFECC68FFFBB681B3100000000000000000000000000000000000000000000
        0000000000000000000000000000CB833296FDF1DCFFF6D9B0FFF6DEB8FFFBE8
        C9FFD5974C900000000000000000000000000000000000000000000000000000
        0000000000000000000000000000C36C0D04DFB375FFFCEAD1FFFBE7C7FFDDA8
        63FF000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000DAA056FFFCF1DCFFFBEDD1FFDA9E
        52FF000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000E0AD65FFFDF0E4FFFCEEDAFFE0A9
        5DFF000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000E4B066FFFCF2E6FFFCEFDFFFE4AF
        61FF000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000E5B261FFFDF4E9FFFEF1E6FFE7B2
        62FF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000E3A33594F5DFB8FFFEF8F9FFFCF3EDFFF0D0
        9AFFE3A336940000000000000000000000000000000000000000000000000000
        0000000000000000000000000000E5A83C81EDC175FFEBB45BF4E9B252F4EAB5
        5AFFE5A83C820000000000000000000000000000000000000000
      }
      OnClick = sbnWykazyClick
      ShowHint = True
      ParentShowHint = False
    end
    object sbnUwagi: TSpeedButton
      Left = 96
      Height = 22
      Hint = 'Uwagi ...'
      Top = 86
      Width = 56
      Caption = 'Uwagi'
      Flat = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000064000000640000000000000000000000000000000000
        000000000000000000000704934A0906A69C0C08B0E90D09BBF40D09BBF40C08
        B0E90906A69C0704934A00000000000000000000000000000000000000000000
        00000A06A3090807A2BA140FD7FF1814F6FF100CFFFF0400FFFF0400FFFF100C
        FFFF1814F6FF140FD7FF0807A2BA0A06A3090000000000000000000000000B08
        AE080D0AB4E51917F3FF1E1AFDFF120FF5FF1915F1FFAFADF9FFAFADF9FF1915
        F1FF120FF5FF1E1AFDFF1917F3FF0D0AB4E50B08AE0800000000000000000E09
        B5B81B1DF2FF1E21FAFF1D20F1FF0204F0FF8787F9FFFFFFFFFFFFFFFFFF8787
        F9FF0204F0FF1D20F1FF1E21FAFF1B1DF2FF0E09B5B8000000000E08BC48181C
        E1FF202AFBFF1E25F1FF1F26F2FF070FF0FF6A72F5FFFFFFFFFFFFFFFFFF6A72
        F5FF070FF0FF1F26F2FF1E25F1FF202AFBFF181CE1FF0E08BC480E0AC99D202B
        F5FF202EF5FF202CF3FF212DF3FF1B27F2FF0917F2FF515EF6FF515EF6FF0917
        F2FF1B27F2FF212DF3FF202CF3FF202EF5FF1F2BF5FF110CC99D2121DAE91E32
        F9FF2332F3FF2333F3FF2434F3FF0F20F1FF4F5CF4FFFCFDFEFFFCFDFEFF4F5C
        F4FF0F20F1FF2434F3FF2333F3FF2233F2FF2539FBFF1616D6E95253E7F7334F
        F9FF192EF2FF2237F3FF263CF3FF0D25F1FF8A9AF8FFFFFFFFFFFFFFFFFF8A9A
        F8FF0D25F1FF263BF3FF253AF3FF253AF2FF2945FBFF1416D9F74F4FECF76C88
        FBFF445CF6FF253EF5FF2037F4FF0E28F3FF899AF9FFFFFFFFFFFFFFFFFF899A
        F9FF102CF3FF2A41F4FF2840F4FF243AF4FF2240FAFF1B1CD6F7504CECE96882
        F9FF6C84F7FF637AF7FF4A63F6FF1A37F4FF889AF9FFFFFFFFFFFFFFFFFF889A
        F9FF102CF3FF2741F4FF2640F4FF3954F8FF546EF3FF4D49E0E9473BEB9D7285
        F8FF6483F7FF6983F7FF6F88F7FF5A78F6FFB3C2FCFFFFFFFFFFFFFFFFFFA5B6
        FBFF4160F5FF5D7AF7FF6984F7FF6D8BFCFF7589EDFF4339DD9D4137E9486260
        F5FF84A4FAFF607FF7FF6A85F7FF5979F6FFB6C7FCFFFFFFFFFFFFFFFFFFBAC9
        FCFF5F7FF6FF6C87F7FF6281F7FF85A5FDFF5857D7FF4137EB48000000003E32
        EFB8818AF8FF8AAAFAFF6684F7FF5A7BF5FFB2C3FBFFFFFFFFFFFFFFFFFFB2C3
        FBFF5A7BF5FF6685F7FF8DABFFFF747DE0FF392EE1B80000000000000000463F
        F0083E30F1E5828BF6FFA4C0FAFF7C9DFAFF6C8EF8FFD4DEFEFFD4DEFEFF6C8E
        F8FF7C9DFCFFA4C1FDFF7D87E3FF362BD9E54B42F70800000000000000000000
        00004841F5093D32F1BA6463F1FF98A7F5FF9FB8F9FF97B3FAFF96B3FBFF9FB7
        F8FF96A5F0FF5E5EE2FF392EE5BA4A41F8090000000000000000000000000000
        000000000000000000004137F54A3C32EF9C534EEEE95753ECF45753ECF4504A
        EAE93A30E99C4036F14A00000000000000000000000000000000
      }
      OnClick = sbnWykazyClick
      ShowHint = True
      ParentFont = False
      ParentShowHint = False
    end
    object BCPrzyslona: TBCPanel
      Left = 152
      Height = 25
      Top = 32
      Width = 80
      Background.Color = clWhite
      Background.ColorOpacity = 180
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
      Background.Style = bbsColor
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
      Caption = 'Pobieranie ...'
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
  object PopupMenu1: TPopupMenu
    Images = DM.ImageList1
    OnPopup = PopupMenu1Popup
    Left = 24
    Top = 56
    object miOsadzony: TMenuItem
      Caption = 'Osadzony'
      ImageIndex = 5
      OnClick = miOsadzonyClick
    end
    object MenuItem2: TMenuItem
      Caption = '-'
    end
    object miRozpocznijWidzenie: TMenuItem
      Caption = 'Rozpocznij widzenie'
      ImageIndex = 40
      OnClick = miRozpocznijWidzenieClick
    end
    object miZatrzymajWidzenie: TMenuItem
      Caption = 'Cofnij rozpoczęcie'
      ImageIndex = 43
      OnClick = miZatrzymajWidzenieClick
    end
    object miCofnijDoPoczekalni: TMenuItem
      Caption = 'Cofnij do poczekalni'
      ImageIndex = 41
      OnClick = miCofnijDoPoczekalniClick
    end
    object miZakonczWidzenie: TMenuItem
      Caption = 'Zakończ widzenie'
      ImageIndex = 42
      OnClick = miZakonczWidzenieClick
    end
    object MenuItem1: TMenuItem
      Caption = '-'
    end
    object miKartaOchronna: TMenuItem
      Caption = 'Karta ochronna ...'
      ImageIndex = 24
      OnClick = miKartaOchronnaClick
    end
    object miModyfikujWidzenie: TMenuItem
      Caption = 'Modyfikuj ...'
      ImageIndex = 39
      OnClick = miModyfikujWidzenieClick
    end
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 24
  end
end
