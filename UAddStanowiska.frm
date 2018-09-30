object AddStanowiska: TAddStanowiska
  Left = 440
  Height = 573
  Top = 236
  Width = 602
  Caption = 'Stanowisko / Grupa'
  ClientHeight = 573
  ClientWidth = 602
  Position = poOwnerFormCenter
  LCLVersion = '6.5'
  object Panel1: TPanel
    Left = 0
    Height = 46
    Top = 527
    Width = 602
    Align = alBottom
    BevelOuter = bvNone
    ClientHeight = 46
    ClientWidth = 602
    TabOrder = 0
    object btnOK: TBitBtn
      Left = 369
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
      Left = 489
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
  object Panel5: TPanel
    Left = 0
    Height = 527
    Top = 0
    Width = 602
    Align = alClient
    ClientHeight = 527
    ClientWidth = 602
    TabOrder = 1
    object DBEdit1: TDBEdit
      Left = 72
      Height = 23
      Top = 8
      Width = 517
      DataField = 'nazwa'
      DataSource = DSST
      Anchors = [akTop, akLeft, akRight]
      CharCase = ecNormal
      MaxLength = 0
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 72
      Height = 23
      Top = 68
      Width = 517
      DataField = 'stanowisko'
      DataSource = DSST
      Anchors = [akTop, akLeft, akRight]
      CharCase = ecNormal
      MaxLength = 0
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 72
      Height = 23
      Hint = 'Dla statystyk: dla grup ZK rozpoczynamy opis od ''DZIAŁ'''
      Top = 38
      Width = 517
      DataField = 'miejsce'
      DataSource = DSST
      Anchors = [akTop, akLeft, akRight]
      CharCase = ecNormal
      MaxLength = 0
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
    object Label2: TLabel
      Left = 32
      Height = 15
      Top = 16
      Width = 35
      Caption = 'Nazwa'
      ParentColor = False
    end
    object Label3: TLabel
      Left = 7
      Height = 15
      Top = 76
      Width = 60
      Caption = 'Stanowisko'
      ParentColor = False
    end
    object Label4: TLabel
      Left = 33
      Height = 15
      Top = 136
      Width = 34
      Caption = 'Forma'
      ParentColor = False
    end
    object Label5: TLabel
      Left = 27
      Height = 15
      Top = 46
      Width = 40
      Caption = 'Miejsce'
      ParentColor = False
    end
    object Label6: TLabel
      Left = 29
      Height = 15
      Top = 106
      Width = 38
      Caption = 'System'
      ParentColor = False
    end
    object DBMemo1: TDBMemo
      Left = 7
      Height = 249
      Top = 224
      Width = 582
      Anchors = [akTop, akLeft, akRight, akBottom]
      BorderStyle = bsNone
      DataField = 'opis'
      DataSource = DSST
      TabOrder = 5
    end
    object Label7: TLabel
      Left = 8
      Height = 15
      Top = 200
      Width = 24
      Caption = 'Opis'
      ParentColor = False
    end
    object RadioGroup1: TRadioGroup
      Left = 405
      Height = 41
      Top = 480
      Width = 184
      Anchors = [akRight, akBottom]
      AutoFill = True
      Caption = 'Status'
      ChildSizing.LeftRightSpacing = 6
      ChildSizing.EnlargeHorizontal = crsHomogenousChildResize
      ChildSizing.EnlargeVertical = crsHomogenousChildResize
      ChildSizing.ShrinkHorizontal = crsScaleChilds
      ChildSizing.ShrinkVertical = crsScaleChilds
      ChildSizing.Layout = cclLeftToRightThenTopToBottom
      ChildSizing.ControlsPerLine = 2
      ClientHeight = 21
      ClientWidth = 180
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Aktywne'
        'Uprzednie'
      )
      TabOrder = 6
    end
    object DBComboBox1: TDBComboBox
      Left = 72
      Height = 23
      Top = 98
      Width = 517
      Anchors = [akTop, akLeft, akRight]
      AutoDropDown = True
      CharCase = ecUppercase
      DataField = 'system'
      DataSource = DSST
      ItemHeight = 15
      Items.Strings = (
        'PEŁNY'
        'BEZ KONWOJENTA'
      )
      MaxLength = 0
      Style = csDropDownList
      TabOrder = 3
    end
    object DBComboBox2: TDBComboBox
      Left = 72
      Height = 23
      Top = 128
      Width = 517
      Anchors = [akTop, akLeft, akRight]
      CharCase = ecUppercase
      DataField = 'forma'
      DataSource = DSST
      ItemHeight = 15
      Items.Strings = (
        'ODPŁATNIE'
        'NIEODPŁATNIE'
      )
      MaxLength = 0
      Style = csDropDownList
      TabOrder = 4
    end
    object Label1: TLabel
      Left = 387
      Height = 15
      Top = 165
      Width = 144
      Caption = 'Planowana godzina wyjścia'
      ParentColor = False
    end
    object Label8: TLabel
      Left = 380
      Height = 15
      Top = 189
      Width = 151
      Caption = 'Planowana godzina powrotu'
      ParentColor = False
    end
    object DBEdit3: TDBEdit
      Left = 536
      Height = 23
      Top = 160
      Width = 53
      DataField = 'godz_wyjscia'
      DataSource = DSST
      CharCase = ecNormal
      MaxLength = 0
      TabOrder = 7
      OnEditingDone = DBEdit3EditingDone
    end
    object DBEdit5: TDBEdit
      Left = 536
      Height = 23
      Top = 184
      Width = 53
      DataField = 'godz_powrotu'
      DataSource = DSST
      CharCase = ecNormal
      MaxLength = 0
      TabOrder = 8
      OnEditingDone = DBEdit3EditingDone
    end
  end
  object ZQST: TZQuery
    Connection = DM.ZConnection1
    SQL.Strings = (
      'SELECT *'
      'FROM zat_stanowiska;'
    )
    Params = <>
    Left = 32
    Top = 368
  end
  object DSST: TDataSource
    DataSet = ZQST
    Left = 96
    Top = 368
  end
end
