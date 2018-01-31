object ViewStolik: TViewStolik
  Left = 407
  Height = 140
  Top = 238
  Width = 240
  BorderStyle = bsNone
  Caption = 'Stolik'
  ClientHeight = 140
  ClientWidth = 240
  OnCreate = FormCreate
  PopupMenu = PopupMenu1
  PopupMode = pmAuto
  LCLVersion = '6.3'
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
    object lblIDO: TLabel
      Left = 96
      Height = 15
      Top = 8
      Width = 33
      Caption = 'lblIDO'
      ParentColor = False
    end
    object lblNazwiskoImie: TLabel
      Left = 96
      Height = 15
      Top = 24
      Width = 86
      Caption = 'lblNazwiskoImie'
      ParentColor = False
    end
    object lblPozostalo: TLabel
      Left = 1
      Height = 15
      Top = 124
      Width = 238
      Align = alBottom
      Alignment = taCenter
      Caption = 'lblPozostalo'
      ParentColor = False
    end
    object lblPodkultura: TLabel
      Left = 96
      Height = 15
      Top = 72
      Width = 71
      Caption = 'lblPodkultura'
      ParentColor = False
    end
    object lblUwagi: TLabel
      Left = 96
      Height = 15
      Top = 88
      Width = 46
      Caption = 'lblUwagi'
      ParentColor = False
    end
    object lblCzas: TLabel
      Left = 184
      Height = 15
      Top = 88
      Width = 37
      Caption = 'lblCzas'
      ParentColor = False
    end
    object ProgressBar1: TBGRAFlashProgressBar
      Left = 1
      Height = 15
      Top = 109
      Width = 238
      Align = alBottom
      MinValue = 0
      MaxValue = 200
      Value = 100
      Color = clLime
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
      Caption = 'Zatrzymaj'
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
      Caption = 'Karta ochronna'
      ImageIndex = 24
      OnClick = miKartaOchronnaClick
    end
    object miModyfikujWidzenie: TMenuItem
      Caption = 'Modyfikuj'
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
