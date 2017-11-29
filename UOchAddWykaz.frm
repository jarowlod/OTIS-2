object OchAddWykaz: TOchAddWykaz
  Left = 396
  Height = 280
  Top = 229
  Width = 538
  Caption = 'Edycja wykazu - '
  ClientHeight = 280
  ClientWidth = 538
  OnCreate = FormCreate
  LCLVersion = '6.3'
  object Panel1: TPanel
    Left = 0
    Height = 38
    Top = 242
    Width = 538
    Align = alBottom
    BevelOuter = bvNone
    ClientHeight = 38
    ClientWidth = 538
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 320
      Height = 30
      Top = 0
      Width = 100
      Anchors = [akTop, akRight]
      DefaultCaption = True
      Kind = bkOK
      ModalResult = 1
      OnClick = BitBtn1Click
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 432
      Height = 30
      Top = 0
      Width = 100
      Anchors = [akTop, akRight]
      Cancel = True
      DefaultCaption = True
      Kind = bkCancel
      ModalResult = 2
      TabOrder = 1
    end
  end
  object dbeUwagi: TDBEdit
    Left = 8
    Height = 23
    Top = 165
    Width = 520
    DataField = 'Uwagi'
    DataSource = DSWykaz
    Anchors = [akTop, akLeft, akRight]
    CharCase = ecNormal
    MaxLength = 200
    TabOrder = 1
  end
  object Label1: TLabel
    Left = 8
    Height = 15
    Top = 144
    Width = 33
    Caption = 'Uwagi'
    ParentColor = False
  end
  object Label2: TLabel
    Left = 8
    Height = 15
    Top = 88
    Width = 95
    Caption = 'Kategoria wykazu:'
    ParentColor = False
  end
  object GroupBox1: TGroupBox
    Left = 0
    Height = 81
    Top = 0
    Width = 538
    Align = alTop
    Caption = 'Dane osadzonego'
    ClientHeight = 61
    ClientWidth = 534
    TabOrder = 2
    object Label3: TLabel
      Left = 8
      Height = 15
      Top = 0
      Width = 20
      Caption = 'IDO'
      ParentColor = False
    end
    object Label4: TLabel
      Left = 8
      Height = 15
      Top = 24
      Width = 50
      Caption = 'Nazwisko'
      ParentColor = False
    end
    object Label5: TLabel
      Left = 176
      Height = 15
      Top = 24
      Width = 23
      Caption = 'Imię'
      ParentColor = False
    end
    object Label6: TLabel
      Left = 328
      Height = 15
      Top = 24
      Width = 48
      Caption = 'Imię ojca'
      ParentColor = False
    end
    object Label7: TLabel
      AnchorSideLeft.Control = lbl_POC
      AnchorSideLeft.Side = asrBottom
      Left = 263
      Height = 15
      Top = 0
      Width = 61
      BorderSpacing.Left = 60
      Caption = 'Klasyfikacja'
      ParentColor = False
    end
    object Label8: TLabel
      AnchorSideLeft.Control = lbl_IDO
      AnchorSideLeft.Side = asrBottom
      Left = 133
      Height = 15
      Top = 0
      Width = 24
      BorderSpacing.Left = 60
      Caption = 'POC'
      ParentColor = False
    end
    object lbl_IDO: TLabel
      AnchorSideLeft.Control = Label3
      AnchorSideLeft.Side = asrBottom
      Left = 33
      Height = 15
      Top = 0
      Width = 40
      BorderSpacing.Left = 5
      Caption = 'lbl_IDO'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object lbl_POC: TLabel
      AnchorSideLeft.Control = Label8
      AnchorSideLeft.Side = asrBottom
      Left = 162
      Height = 15
      Top = 0
      Width = 41
      BorderSpacing.Left = 5
      Caption = 'lbl_POC'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object lbl_Klasyf: TLabel
      AnchorSideLeft.Control = Label7
      AnchorSideLeft.Side = asrBottom
      AnchorSideRight.Control = Label7
      Left = 329
      Height = 15
      Top = 0
      Width = 51
      BorderSpacing.Left = 5
      Caption = 'lbl_Klasyf'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object lbl_Nazwisko: TLabel
      AnchorSideTop.Control = Label4
      AnchorSideTop.Side = asrBottom
      Left = 8
      Height = 15
      Top = 39
      Width = 71
      Caption = 'lbl_Nazwisko'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object lbl_Imie: TLabel
      AnchorSideTop.Control = Label5
      AnchorSideTop.Side = asrBottom
      Left = 176
      Height = 15
      Top = 39
      Width = 43
      Caption = 'lbl_Imie'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object lbl_Ojciec: TLabel
      AnchorSideTop.Control = Label6
      AnchorSideTop.Side = asrBottom
      Left = 329
      Height = 15
      Top = 39
      Width = 52
      Caption = 'lbl_Ojciec'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
  end
  object cbKategoriaWykazu: TComboBox
    Left = 8
    Height = 23
    Top = 104
    Width = 312
    DropDownCount = 10
    ItemHeight = 15
    ItemIndex = 0
    Items.Strings = (
      ''
    )
    Style = csDropDownList
    TabOrder = 3
  end
  object ZQWykaz: TZQuery
    Params = <>
    Left = 440
    Top = 88
  end
  object DSWykaz: TDataSource
    DataSet = ZQWykaz
    Left = 504
    Top = 88
  end
end
