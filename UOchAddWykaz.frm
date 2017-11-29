object OchAddWykaz: TOchAddWykaz
  Left = 396
  Height = 453
  Top = 222
  Width = 562
  Caption = 'Edycja wykazu - '
  ClientHeight = 453
  ClientWidth = 562
  OnCreate = FormCreate
  LCLVersion = '6.3'
  object Panel1: TPanel
    Left = 0
    Height = 38
    Top = 415
    Width = 562
    Align = alBottom
    BevelOuter = bvNone
    ClientHeight = 38
    ClientWidth = 562
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 344
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
      Left = 456
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
    Width = 544
    DataField = 'Uwagi'
    DataSource = DSWykaz
    Anchors = [akTop, akLeft, akRight]
    CharCase = ecNormal
    MaxLength = 0
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
    Width = 562
    Align = alTop
    Caption = 'Dane osadzonego'
    ClientHeight = 61
    ClientWidth = 558
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
      Font.Color = clBlue
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
      Font.Color = clBlue
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
      Font.Color = clBlue
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
  object GroupBox2: TGroupBox
    Left = 0
    Height = 215
    Top = 200
    Width = 562
    Align = alBottom
    Anchors = [akTop, akLeft, akRight, akBottom]
    Caption = 'Osadzony widnieje w następujących wykazach:'
    ClientHeight = 195
    ClientWidth = 558
    TabOrder = 4
    object RxDBGrid1: TRxDBGrid
      Left = 0
      Height = 195
      Top = 0
      Width = 558
      ColumnDefValues.BlobText = '(blob)'
      TitleButtons = True
      AutoSort = True
      Columns = <      
        item
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = 'Kategoria'
          Width = 150
          FieldName = 'Opis'
          EditButtons = <>
          Filter.DropDownRows = 0
          Filter.EmptyValue = '(Empty)'
          Filter.AllValue = '(All values)'
          Filter.EmptyFont.Style = [fsItalic]
          Filter.ItemIndex = -1
          Footers = <>
        end      
        item
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = 'Uwagi'
          Width = 300
          FieldName = 'Uwagi'
          EditButtons = <>
          Filter.DropDownRows = 0
          Filter.EmptyValue = '(Empty)'
          Filter.AllValue = '(All values)'
          Filter.EmptyFont.Style = [fsItalic]
          Filter.ItemIndex = -1
          Footers = <>
        end      
        item
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = 'Użytkownik'
          Width = 100
          FieldName = 'user_dodania'
          EditButtons = <>
          Filter.DropDownRows = 0
          Filter.EmptyValue = '(Empty)'
          Filter.AllValue = '(All values)'
          Filter.EmptyFont.Style = [fsItalic]
          Filter.ItemIndex = -1
          Footers = <>
        end      
        item
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = 'Data'
          Width = 90
          FieldName = 'data_dodania'
          EditButtons = <>
          Filter.DropDownRows = 0
          Filter.EmptyValue = '(Empty)'
          Filter.AllValue = '(All values)'
          Filter.EmptyFont.Style = [fsItalic]
          Filter.ItemIndex = -1
          Footers = <>
        end>
      KeyStrokes = <      
        item
          Command = rxgcShowFindDlg
          ShortCut = 16454
          Enabled = True
        end      
        item
          Command = rxgcShowColumnsDlg
          ShortCut = 16471
          Enabled = True
        end      
        item
          Command = rxgcShowFilterDlg
          ShortCut = 16468
          Enabled = True
        end      
        item
          Command = rxgcShowSortDlg
          ShortCut = 16467
          Enabled = True
        end      
        item
          Command = rxgcShowQuickFilter
          ShortCut = 16465
          Enabled = True
        end      
        item
          Command = rxgcHideQuickFilter
          ShortCut = 16456
          Enabled = True
        end      
        item
          Command = rxgcSelectAll
          ShortCut = 16449
          Enabled = True
        end      
        item
          Command = rxgcDeSelectAll
          ShortCut = 16429
          Enabled = True
        end      
        item
          Command = rxgcInvertSelection
          ShortCut = 16426
          Enabled = True
        end      
        item
          Command = rxgcOptimizeColumnsWidth
          ShortCut = 16427
          Enabled = True
        end      
        item
          Command = rxgcCopyCellValue
          ShortCut = 16451
          Enabled = True
        end>
      FooterOptions.Style = tsNative
      FooterOptions.DrawFullLine = False
      SearchOptions.QuickSearchOptions = [loCaseInsensitive, loPartialKey]
      SearchOptions.FromStart = False
      OptionsRx = [rdgAllowSortForm, rdgCaseInsensitiveSort, rdgDisableWordWrapTitles]
      Align = alClient
      AlternateColor = 16055807
      AutoAdvance = aaNone
      AutoEdit = False
      Color = clWindow
      DrawFullLine = False
      FocusColor = clHighlight
      FixedHotColor = clNone
      SelectedColor = clHighlight
      GridLineStyle = psSolid
      DataSource = DSRejWykazow
      DefaultRowHeight = 24
      FixedColor = clNone
      FixedCols = 0
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgHeaderHotTracking, dgHeaderPushedLook, dgAnyButtonCanSelect, dgDisableDelete, dgDisableInsert, dgCellHints, dgCellEllipsis]
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 0
      TitleStyle = tsNative
    end
  end
  object ZQWykaz: TZQuery
    Connection = DM.ZConnection1
    SQL.Strings = (
      'SELECT'
      'ID,'
      'IDO,'
      'Uwagi,'
      'Kategoria,'
      'data_dodania,'
      'user_dodania'
      'FROM uwagi_wykazy'
      'LIMIT 1'
    )
    Params = <>
    Left = 440
    Top = 88
  end
  object DSWykaz: TDataSource
    DataSet = ZQWykaz
    Left = 504
    Top = 88
  end
  object DSRejWykazow: TDataSource
    DataSet = ZQRejWykazow
    Left = 504
    Top = 224
  end
  object ZQRejWykazow: TZQuery
    Connection = DM.ZConnection1
    ReadOnly = True
    SQL.Strings = (
      'SELECT'
      'kat.Opis,'
      'wyk.Uwagi,'
      'wyk.IDO,'
      'wyk.Kategoria,'
      'wyk.data_dodania,'
      'wyk.user_dodania'
      'FROM uwagi_wykazy as wyk'
      'JOIN katalog_wykazow as kat ON kat.ID = wyk.Kategoria'
      'WHERE wyk.IDO = :ido'
    )
    Params = <    
      item
        DataType = ftUnknown
        Name = 'ido'
        ParamType = ptUnknown
      end>
    Left = 410
    Top = 224
    ParamData = <    
      item
        DataType = ftUnknown
        Name = 'ido'
        ParamType = ptUnknown
      end>
  end
end
