object AlerterForm: TAlerterForm
  Left = 333
  Height = 486
  Top = 237
  Width = 759
  Caption = 'AlerterForm'
  ClientHeight = 486
  ClientWidth = 759
  Color = clRed
  OnClose = FormClose
  OnShow = FormShow
  LCLVersion = '6.6'
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
end
