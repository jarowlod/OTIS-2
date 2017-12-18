object OchAddOsobeWidzenie: TOchAddOsobeWidzenie
  Left = 407
  Height = 342
  Top = 229
  Width = 622
  Caption = 'Osoba uprawniona do widzeń'
  ClientHeight = 342
  ClientWidth = 622
  KeyPreview = True
  Position = poScreenCenter
  LCLVersion = '6.3'
  object Label6: TLabel
    AnchorSideTop.Control = DBDateTimePicker1
    AnchorSideTop.Side = asrCenter
    AnchorSideRight.Control = DBDateTimePicker1
    Left = 98
    Height = 15
    Top = 188
    Width = 116
    Anchors = [akTop, akRight]
    BorderSpacing.Right = 10
    Caption = 'Data decyzji dyrektora'
    ParentColor = False
  end
  object DBEdit1: TDBEdit
    Left = 96
    Height = 23
    Top = 24
    Width = 516
    DataField = 'Nazwisko'
    DataSource = DSUprawnione
    Anchors = [akTop, akLeft, akRight]
    CharCase = ecUppercase
    MaxLength = 0
    TabOrder = 0
  end
  object Label1: TLabel
    AnchorSideLeft.Control = DBEdit1
    AnchorSideTop.Control = DBEdit1
    AnchorSideTop.Side = asrCenter
    AnchorSideRight.Control = DBEdit1
    Left = 36
    Height = 15
    Top = 28
    Width = 50
    Anchors = [akTop, akRight]
    BorderSpacing.Right = 10
    Caption = 'Nazwisko'
    ParentColor = False
  end
  object DBEdit2: TDBEdit
    Left = 96
    Height = 23
    Top = 56
    Width = 516
    DataField = 'Imie'
    DataSource = DSUprawnione
    Anchors = [akTop, akLeft, akRight]
    CharCase = ecUppercase
    MaxLength = 0
    TabOrder = 1
  end
  object Label2: TLabel
    AnchorSideTop.Control = DBEdit2
    AnchorSideTop.Side = asrCenter
    AnchorSideRight.Control = DBEdit2
    Left = 63
    Height = 15
    Top = 60
    Width = 23
    Anchors = [akTop, akRight]
    BorderSpacing.Right = 10
    Caption = 'Imię'
    ParentColor = False
  end
  object DBEdit3: TDBEdit
    Left = 96
    Height = 23
    Top = 86
    Width = 516
    DataField = 'Adres'
    DataSource = DSUprawnione
    Anchors = [akTop, akLeft, akRight]
    CharCase = ecUppercase
    MaxLength = 0
    TabOrder = 2
  end
  object Label3: TLabel
    AnchorSideTop.Side = asrCenter
    Left = 6
    Height = 15
    Top = 121
    Width = 80
    Anchors = [akTop, akRight]
    BorderSpacing.Right = 10
    Caption = 'Pokrewieństwo'
    ParentColor = False
  end
  object Label4: TLabel
    AnchorSideTop.Control = DBEdit3
    AnchorSideTop.Side = asrCenter
    AnchorSideRight.Control = DBEdit3
    Left = 56
    Height = 15
    Top = 90
    Width = 30
    Anchors = [akTop, akRight]
    BorderSpacing.Right = 10
    Caption = 'Adres'
    ParentColor = False
  end
  object DBEdit5: TDBEdit
    Left = 96
    Height = 23
    Top = 148
    Width = 516
    DataField = 'Uwagi'
    DataSource = DSUprawnione
    Anchors = [akTop, akLeft, akRight]
    CharCase = ecUppercase
    MaxLength = 0
    TabOrder = 3
  end
  object Label5: TLabel
    AnchorSideTop.Control = DBEdit5
    AnchorSideTop.Side = asrCenter
    AnchorSideRight.Control = DBEdit5
    Left = 53
    Height = 15
    Top = 152
    Width = 33
    Anchors = [akTop, akRight]
    BorderSpacing.Right = 10
    Caption = 'Uwagi'
    ParentColor = False
  end
  object DBDateTimePicker1: TDBDateTimePicker
    Left = 224
    Height = 23
    Top = 184
    Width = 83
    DataField = 'Data_DD'
    DataSource = DSUprawnione
    ReadOnly = False
    CenturyFrom = 1941
    MaxDate = 2958465
    MinDate = -53780
    TabOrder = 4
    TrailingSeparator = False
    TextForNullDate = 'NULL'
    LeadingZeros = True
    Kind = dtkDate
    TimeFormat = tf24
    TimeDisplay = tdHMS
    DateMode = dmComboBox
    UseDefaultSeparators = True
    HideDateTimeParts = []
    MonthNames = 'Long'
  end
  object DBCheckBox1: TDBCheckBox
    Left = 502
    Height = 19
    Top = 188
    Width = 110
    Alignment = taLeftJustify
    Anchors = [akTop, akRight]
    AutoSize = True
    Caption = 'Prawo do widzeń'
    DataField = 'Skreslona'
    DataSource = DSUprawnione
    TabOrder = 5
    ValueChecked = '0'
    ValueUnchecked = '1'
  end
  object GroupBox1: TGroupBox
    Left = 0
    Height = 65
    Top = 216
    Width = 622
    Align = alCustom
    Anchors = [akTop, akLeft, akRight]
    ClientHeight = 45
    ClientWidth = 618
    Font.Color = 7039851
    ParentColor = False
    ParentFont = False
    TabOrder = 6
    object DBText1: TDBText
      Left = 88
      Height = 15
      Top = 0
      Width = 43
      DataField = 'WPISAL'
      DataSource = DSUprawnione
      ParentColor = False
    end
    object DBText2: TDBText
      Left = 88
      Height = 15
      Top = 23
      Width = 43
      DataField = 'Data_W'
      DataSource = DSUprawnione
      ParentColor = False
    end
    object DBText3: TDBText
      Left = 432
      Height = 15
      Top = 0
      Width = 43
      DataField = 'Skreslil'
      DataSource = DSUprawnione
      ParentColor = False
    end
    object DBText4: TDBText
      Left = 432
      Height = 15
      Top = 23
      Width = 43
      DataField = 'Data_Skreslenia'
      DataSource = DSUprawnione
      ParentColor = False
    end
    object Label7: TLabel
      Left = 47
      Height = 15
      Top = 0
      Width = 34
      Caption = 'Dodał:'
      ParentColor = False
    end
    object Label8: TLabel
      Left = 8
      Height = 15
      Top = 23
      Width = 73
      Caption = 'Data dodania:'
      ParentColor = False
    end
    object Label9: TLabel
      Left = 277
      Height = 15
      Top = 0
      Width = 147
      Caption = 'Odebrał prawo do widzenia:'
      ParentColor = False
    end
    object Label10: TLabel
      Left = 240
      Height = 15
      Top = 23
      Width = 184
      Caption = 'Data odebrania prawa do widzenia:'
      ParentColor = False
    end
  end
  object Panel1: TPanel
    Left = 0
    Height = 38
    Top = 304
    Width = 622
    Align = alBottom
    BevelOuter = bvNone
    ClientHeight = 38
    ClientWidth = 622
    TabOrder = 7
    object btnOK: TBitBtn
      Left = 405
      Height = 30
      Top = 0
      Width = 100
      Anchors = [akTop, akRight]
      DefaultCaption = True
      Kind = bkOK
      ModalResult = 1
      OnClick = btnOKClick
      TabOrder = 0
    end
    object btnAnuluj: TBitBtn
      Left = 516
      Height = 30
      Top = 0
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
  object DBComboBox1: TDBComboBox
    Left = 98
    Height = 23
    Top = 117
    Width = 514
    AutoComplete = True
    AutoCompleteText = [cbactEnabled, cbactEndOfLineComplete, cbactSearchAscending]
    CharCase = ecUppercase
    DataField = 'Pokrew'
    DataSource = DSUprawnione
    ItemHeight = 15
    Items.Strings = (
      'MATKA'
      'OJCIEC'
      'BRAT'
      'SIOSTRA'
      'SYN'
      'CÓRKA'
      'WUJEK'
      'KUZYN'
      'KOLEGA'
      'KOLEŻANKA'
      'KONKUBINA'
    )
    MaxLength = 0
    TabOrder = 8
  end
  object ZQUprawnione: TZQuery
    Connection = DM.ZConnection1
    SQL.Strings = (
      'SELECT '
      'ID,'
      'IDO,'
      'Nazwisko,'
      'Imie,'
      'Adres,'
      'Data_DD,'
      'Skreslona,'
      'Data_Skreslenia,'
      'Data_W,'
      'Pokrew,'
      'WPISAL,'
      'Skreslil,'
      'Uwagi'
      'FROM uprawnione'
    )
    Params = <>
    Left = 384
    Top = 8
  end
  object DSUprawnione: TDataSource
    DataSet = ZQUprawnione
    Left = 384
    Top = 72
  end
end
