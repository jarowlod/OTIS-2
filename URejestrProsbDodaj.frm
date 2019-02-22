object RejestrProsbDodaj: TRejestrProsbDodaj
  Left = 334
  Height = 466
  Top = 226
  Width = 661
  BorderStyle = bsDialog
  Caption = 'Zarejestruj prośbę'
  ClientHeight = 466
  ClientWidth = 661
  Position = poOwnerFormCenter
  LCLVersion = '6.6'
  object Panel1: TPanel
    Left = 0
    Height = 46
    Top = 420
    Width = 661
    Align = alBottom
    BevelOuter = bvNone
    ClientHeight = 46
    ClientWidth = 661
    TabOrder = 0
    object btnOK: TBitBtn
      Left = 428
      Height = 30
      Top = 8
      Width = 100
      Anchors = [akTop, akRight]
      DefaultCaption = True
      Kind = bkOK
      OnClick = btnOKClick
      TabOrder = 0
    end
    object btnAnuluj: TBitBtn
      Left = 548
      Height = 30
      Top = 8
      Width = 100
      Anchors = [akTop, akRight]
      Cancel = True
      DefaultCaption = True
      Kind = bkCancel
      ModalResult = 2
      TabOrder = 1
    end
  end
  object Label4: TLabel
    Left = 10
    Height = 15
    Top = 164
    Width = 109
    Caption = 'Sposób ropzatrzenia:'
    ParentColor = False
  end
  object Label5: TLabel
    Left = 10
    Height = 15
    Top = 196
    Width = 66
    Caption = 'Data decyzji:'
    ParentColor = False
  end
  object Label6: TLabel
    Left = 10
    Height = 15
    Top = 232
    Width = 273
    Caption = 'Miejsce na dodatkowe uwagi: można modyfikować:'
    ParentColor = False
  end
  object cbDrukuj: TCheckBox
    Left = 10
    Height = 19
    Top = 392
    Width = 177
    Caption = 'Wydrukowano potwierdzenie.'
    TabOrder = 1
  end
  object memUwagi: TMemo
    Left = 10
    Height = 114
    Top = 254
    Width = 641
    MaxLength = 500
    TabOrder = 2
  end
  object Panel2: TPanel
    Left = 10
    Height = 130
    Top = 10
    Width = 641
    Align = alTop
    BorderSpacing.Around = 10
    BevelOuter = bvLowered
    ClientHeight = 130
    ClientWidth = 641
    Color = 16316664
    ParentColor = False
    TabOrder = 3
    object Label1: TLabel
      Left = 8
      Height = 15
      Top = 8
      Width = 71
      Caption = 'Data wpływu:'
      ParentColor = False
    end
    object Label2: TLabel
      Left = 8
      Height = 15
      Top = 40
      Width = 88
      Caption = 'Kategoria pisma:'
      ParentColor = False
    end
    object Label3: TLabel
      Left = 8
      Height = 15
      Top = 81
      Width = 602
      Caption = 'Dodatkowy opis pisma, (będzie drukowany w odpowiedzi), w przypadku wybrania kategorii inne (opis wymagany).'
      ParentColor = False
    end
    object dtpWplywu: TDateTimePicker
      Left = 104
      Height = 23
      Top = 4
      Width = 146
      ShowCheckBox = True
      CenturyFrom = 1941
      MaxDate = 2958465
      MinDate = -53780
      TabOrder = 0
      DateSeparator = '-'
      TrailingSeparator = False
      TextForNullDate = 'NULL'
      LeadingZeros = True
      NullInputAllowed = False
      Kind = dtkDate
      TimeSeparator = ':'
      TimeFormat = tf24
      TimeDisplay = tdHMS
      DateMode = dmComboBox
      Date = 42877
      Time = 0.578726759260462
      UseDefaultSeparators = False
      HideDateTimeParts = []
      MonthNames = 'Long'
      ShowMonthNames = True
    end
    object cbKategoria: TComboBox
      Left = 104
      Height = 21
      Top = 37
      Width = 448
      AutoComplete = True
      AutoCompleteText = [cbactEnabled, cbactEndOfLineComplete, cbactSearchAscending]
      AutoDropDown = True
      DropDownCount = 25
      ItemHeight = 15
      MaxLength = 100
      OnDrawItem = cbKategoriaDrawItem
      Style = csOwnerDrawFixed
      TabOrder = 1
    end
    object edOpis: TEdit
      Left = 8
      Height = 23
      Top = 96
      Width = 626
      MaxLength = 200
      TabOrder = 2
    end
    object lbl_Oznaczenie: TLabel
      Left = 320
      Height = 15
      Top = 8
      Width = 82
      Caption = 'lbl_Oznaczenie'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Visible = False
    end
  end
  object cbStatus: TComboBox
    Left = 130
    Height = 21
    Top = 160
    Width = 198
    AutoComplete = True
    AutoCompleteText = [cbactEnabled, cbactEndOfLineComplete, cbactSearchAscending]
    AutoDropDown = True
    ItemHeight = 15
    ItemIndex = 2
    Items.Strings = (
      'Negatywnie'
      'Pozytywnie'
      'Oczekuje'
      'Wpis omyłkowy'
    )
    OnDrawItem = cbStatusDrawItem
    Style = csOwnerDrawFixed
    TabOrder = 4
    Text = 'Oczekuje'
  end
  object dtpDecyzji: TDateTimePicker
    Left = 130
    Height = 23
    Top = 192
    Width = 146
    ShowCheckBox = True
    CenturyFrom = 1941
    MaxDate = 2958465
    MinDate = -53780
    TabOrder = 5
    DateSeparator = '-'
    TrailingSeparator = False
    TextForNullDate = 'NULL'
    LeadingZeros = True
    NullInputAllowed = False
    Kind = dtkDate
    TimeSeparator = ':'
    TimeFormat = tf24
    TimeDisplay = tdHMS
    DateMode = dmComboBox
    Date = 42877
    Time = 0.578726759260462
    UseDefaultSeparators = False
    HideDateTimeParts = []
    MonthNames = 'Long'
    ShowMonthNames = True
  end
end
