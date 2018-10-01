object ZatAddStanowiskaPokrewne: TZatAddStanowiskaPokrewne
  Left = 440
  Height = 324
  Top = 236
  Width = 468
  Caption = 'Stanowiska Pokrewne dla skierowania na badania.'
  ClientHeight = 324
  ClientWidth = 468
  Position = poOwnerFormCenter
  LCLVersion = '6.5'
  object Panel2: TPanel
    Left = 0
    Height = 72
    Top = 0
    Width = 468
    Align = alTop
    BevelOuter = bvNone
    ClientHeight = 72
    ClientWidth = 468
    Color = clWhite
    ParentColor = False
    TabOrder = 0
    object plGradient3: TplGradient
      Left = 0
      Height = 72
      Top = 0
      Width = 468
      Align = alClient
      BevelWidth = 1
      BevelStyle = bvNone
      Buffered = True
      Direction = gdUpLeft
      ColorStart = clSkyBlue
      ColorEnd = clWhite
      StepWidth = 1
      Style = gsHorizontal
    end
    object Label8: TLabel
      Left = 16
      Height = 30
      Top = 0
      Width = 238
      Caption = 'Stanowiska pokrewne dla:'
      Font.CharSet = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Pitch = fpVariable
      Font.Quality = fqDraft
      ParentColor = False
      ParentFont = False
    end
    object lblStanowisko: TLabel
      Left = 16
      Height = 29
      Top = 40
      Width = 432
      Alignment = taCenter
      Anchors = [akTop, akLeft, akRight]
      AutoSize = False
      Caption = 'Stanowisko'
      Font.CharSet = EASTEUROPE_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Pitch = fpVariable
      Font.Quality = fqDraft
      Font.Style = [fsBold]
      Layout = tlCenter
      ParentColor = False
      ParentFont = False
    end
  end
  object Panel1: TPanel
    Left = 0
    Height = 46
    Top = 278
    Width = 468
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    ClientHeight = 46
    ClientWidth = 468
    TabOrder = 1
    object btnOK: TBitBtn
      Left = 235
      Height = 30
      Top = 8
      Width = 100
      Anchors = [akTop, akRight]
      DefaultCaption = True
      Kind = bkOK
      ModalResult = 1
      OnClick = btnOKClick
      TabOrder = 0
    end
    object btnAnuluj: TBitBtn
      Left = 355
      Height = 30
      Top = 8
      Width = 100
      Anchors = [akTop, akRight]
      Cancel = True
      DefaultCaption = True
      Kind = bkCancel
      ModalResult = 2
      OnClick = btnAnulujClick
      TabOrder = 1
    end
  end
  object DBMemo1: TDBMemo
    Left = 5
    Height = 196
    Top = 77
    Width = 458
    Align = alClient
    BorderSpacing.Around = 5
    DataField = 'pokrewne'
    DataSource = DSStPokrewne
    MaxLength = 500
    TabOrder = 2
  end
  object ZQStPokrewne: TZQuery
    Connection = DM.ZConnection1
    SQL.Strings = (
      'SELECT * FROM zat_stanowiska_pokrewne WHERE stanowisko=:stanowisko'
    )
    Params = <    
      item
        DataType = ftUnknown
        Name = 'stanowisko'
        ParamType = ptUnknown
      end>
    Left = 168
    Top = 119
    ParamData = <    
      item
        DataType = ftUnknown
        Name = 'stanowisko'
        ParamType = ptUnknown
      end>
  end
  object DSStPokrewne: TDataSource
    DataSet = ZQStPokrewne
    Left = 167
    Top = 184
  end
end
