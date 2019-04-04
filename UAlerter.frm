object AlerterForm: TAlerterForm
  Left = 334
  Height = 486
  Top = 226
  Width = 759
  Caption = 'AlerterForm'
  ClientHeight = 486
  ClientWidth = 759
  Color = clRed
  OnClose = FormClose
  OnShow = FormShow
  LCLVersion = '6.6'
  object Bevel2: TBevel
    Left = 560
    Height = 44
    Top = 48
    Width = 184
    Shape = bsBottomLine
  end
  object Bevel1: TBevel
    Left = 16
    Height = 44
    Top = 48
    Width = 274
    Shape = bsBottomLine
  end
  object lblLokalizacjaWezwania: TLabel
    Left = 0
    Height = 128
    Top = 120
    Width = 759
    Alignment = taCenter
    Anchors = [akTop, akLeft, akRight]
    AutoSize = False
    Caption = 'lblLokalizacja'#13#10'Wezwania'
    Font.CharSet = EASTEUROPE_CHARSET
    Font.Color = clBlack
    Font.Height = -48
    Font.Name = 'Segoe UI'
    Font.Pitch = fpVariable
    Font.Quality = fqDraft
    ParentColor = False
    ParentFont = False
    WordWrap = True
  end
  object Label1: TLabel
    Left = 0
    Height = 29
    Top = 0
    Width = 759
    Align = alTop
    Alignment = taCenter
    Caption = 'WEZWANIE POMOCY'
    Font.CharSet = EASTEUROPE_CHARSET
    Font.Color = 7733247
    Font.Height = -24
    Font.Name = 'Georgia'
    Font.Pitch = fpVariable
    Font.Quality = fqDraft
    Font.Style = [fsItalic]
    ParentColor = False
    ParentFont = False
  end
  object lblUserWezwania: TLabel
    Left = 0
    Height = 109
    Top = 272
    Width = 759
    Alignment = taCenter
    Anchors = [akTop, akLeft, akRight]
    AutoSize = False
    Caption = 'lblUser'#13#10'Wezwania'
    Font.CharSet = EASTEUROPE_CHARSET
    Font.Color = 12177407
    Font.Height = -37
    Font.Name = 'Segoe UI'
    Font.Pitch = fpVariable
    Font.Quality = fqDraft
    ParentColor = False
    ParentFont = False
    WordWrap = True
  end
  object Label2: TLabel
    AnchorSideBottom.Control = lblLokalizacjaWezwania
    Left = 24
    Height = 15
    Top = 105
    Width = 68
    Anchors = [akLeft, akBottom]
    Caption = 'Lokalizacja:'
    Font.Color = clSilver
    Font.Style = [fsBold, fsItalic]
    ParentColor = False
    ParentFont = False
  end
  object Label3: TLabel
    AnchorSideTop.Control = lblUserWezwania
    AnchorSideBottom.Control = lblUserWezwania
    Left = 24
    Height = 15
    Top = 257
    Width = 72
    Anchors = [akLeft, akBottom]
    Caption = 'Użytkownik:'
    Font.Color = clSilver
    Font.Style = [fsBold, fsItalic]
    ParentColor = False
    ParentFont = False
  end
  object ProgressBar1: TProgressBar
    Left = 0
    Height = 12
    Top = 29
    Width = 759
    Align = alTop
    Position = 100
    Style = pbstMarquee
    TabOrder = 0
  end
  object lblUserTel: TLabel
    Left = 104
    Height = 32
    Top = 56
    Width = 30
    Caption = '---'
    Font.CharSet = EASTEUROPE_CHARSET
    Font.Color = 12177407
    Font.Height = 34
    Font.Name = 'Segoe UI'
    Font.Pitch = fpVariable
    Font.Quality = fqDraft
    Layout = tlCenter
    ParentColor = False
    ParentFont = False
  end
  object Label4: TLabel
    AnchorSideBottom.Control = lblUserTel
    AnchorSideBottom.Side = asrBottom
    Left = 24
    Height = 15
    Top = 66
    Width = 69
    Anchors = [akLeft, akBottom]
    BorderSpacing.Bottom = 7
    Caption = 'Nr telefonu:'
    Font.Color = clSilver
    Font.Style = [fsBold, fsItalic]
    ParentColor = False
    ParentFont = False
  end
  object lblSendTime: TLabel
    Left = 624
    Height = 32
    Top = 56
    Width = 30
    Caption = '---'
    Font.CharSet = EASTEUROPE_CHARSET
    Font.Color = 12177407
    Font.Height = 34
    Font.Name = 'Segoe UI'
    Font.Pitch = fpVariable
    Font.Quality = fqDraft
    Layout = tlCenter
    ParentColor = False
    ParentFont = False
  end
  object Label5: TLabel
    AnchorSideBottom.Control = lblSendTime
    AnchorSideBottom.Side = asrBottom
    Left = 568
    Height = 15
    Top = 66
    Width = 51
    Anchors = [akLeft, akBottom]
    BorderSpacing.Bottom = 7
    Caption = 'Godzina:'
    Font.Color = clSilver
    Font.Style = [fsBold, fsItalic]
    ParentColor = False
    ParentFont = False
  end
  object Bevel3: TBevel
    Left = 16
    Height = 2
    Top = 120
    Width = 728
    Anchors = [akTop, akLeft, akRight]
  end
  object Bevel4: TBevel
    Left = 16
    Height = 2
    Top = 272
    Width = 728
    Anchors = [akTop, akLeft, akRight]
  end
end
