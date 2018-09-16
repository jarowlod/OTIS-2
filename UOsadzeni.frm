object Osadzeni: TOsadzeni
  Left = 404
  Height = 568
  Top = 224
  Width = 841
  Caption = 'Osadzeni'
  ClientHeight = 568
  ClientWidth = 841
  OnCreate = FormCreate
  Position = poDesktopCenter
  LCLVersion = '6.3'
  object Panel1: TPanel
    Left = 0
    Height = 46
    Top = 522
    Width = 841
    Align = alBottom
    BevelOuter = bvNone
    ClientHeight = 46
    ClientWidth = 841
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 608
      Height = 30
      Top = 8
      Width = 100
      Anchors = [akTop, akRight]
      Default = True
      DefaultCaption = True
      Kind = bkOK
      ModalResult = 1
      OnClick = BitBtn1Click
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 728
      Height = 30
      Top = 8
      Width = 100
      Anchors = [akTop, akRight]
      DefaultCaption = True
      Kind = bkCancel
      ModalResult = 2
      OnClick = BitBtn2Click
      TabOrder = 1
    end
  end
  object RxDBGrid1: TRxDBGrid
    Left = 0
    Height = 456
    Top = 66
    Width = 841
    ColumnDefValues.BlobText = '(blob)'
    TitleButtons = True
    AutoSort = True
    Columns = <    
      item
        Alignment = taCenter
        Font.Color = clBlue
        Title.Alignment = taCenter
        Title.Font.Style = [fsBold]
        Title.Orientation = toHorizontal
        Title.Caption = 'IDO'
        Width = 65
        FieldName = 'IDO'
        EditButtons = <>
        Filter.DropDownRows = 0
        Filter.EmptyValue = '(Empty)'
        Filter.AllValue = '(All values)'
        Filter.EmptyFont.Style = [fsItalic]
        Filter.ItemIndex = -1
        Footer.Font.CharSet = EASTEUROPE_CHARSET
        Footer.Font.Color = clBlack
        Footer.Font.Height = -11
        Footer.Font.Name = 'Arial'
        Footer.Font.Pitch = fpVariable
        Footer.Font.Quality = fqDraft
        Footers = <>
      end    
      item
        Title.Alignment = taCenter
        Title.Font.Style = [fsBold]
        Title.Orientation = toHorizontal
        Title.Caption = 'Nazwisko'
        Width = 120
        FieldName = 'NAZWISKO'
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
        Title.Font.Style = [fsBold]
        Title.Orientation = toHorizontal
        Title.Caption = 'Imię'
        Width = 120
        FieldName = 'IMIE'
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
        Title.Font.Style = [fsBold]
        Title.Orientation = toHorizontal
        Title.Caption = 'Imię ojca'
        Width = 120
        FieldName = 'OJCIEC'
        EditButtons = <>
        Filter.DropDownRows = 0
        Filter.EmptyValue = '(Empty)'
        Filter.AllValue = '(All values)'
        Filter.EmptyFont.Style = [fsItalic]
        Filter.ItemIndex = -1
        Footers = <>
      end    
      item
        Alignment = taCenter
        Font.Color = clMaroon
        Title.Alignment = taCenter
        Title.Font.Style = [fsBold]
        Title.Orientation = toHorizontal
        Title.Caption = 'Urodzony'
        Width = 80
        FieldName = 'URODZ'
        EditButtons = <>
        Filter.DropDownRows = 0
        Filter.EmptyValue = '(Empty)'
        Filter.AllValue = '(All values)'
        Filter.EmptyFont.Style = [fsItalic]
        Filter.ItemIndex = -1
        Footers = <>
      end    
      item
        Alignment = taCenter
        Font.Color = clMaroon
        Title.Alignment = taCenter
        Title.Font.Style = [fsBold]
        Title.Orientation = toHorizontal
        Title.Caption = 'Przyjęty'
        Width = 80
        FieldName = 'PRZYJ'
        EditButtons = <>
        Filter.DropDownRows = 0
        Filter.EmptyValue = '(Empty)'
        Filter.AllValue = '(All values)'
        Filter.EmptyFont.Style = [fsItalic]
        Filter.ItemIndex = -1
        Footers = <>
      end    
      item
        Alignment = taCenter
        Font.Color = clGreen
        Title.Alignment = taCenter
        Title.Font.Style = [fsBold]
        Title.Orientation = toHorizontal
        Title.Caption = 'Klasyfikacja'
        Width = 85
        FieldName = 'KLASYF'
        EditButtons = <>
        Filter.DropDownRows = 0
        Filter.EmptyValue = '(Empty)'
        Filter.AllValue = '(All values)'
        Filter.EmptyFont.Style = [fsItalic]
        Filter.ItemIndex = -1
        Footers = <>
      end    
      item
        Alignment = taCenter
        Font.Color = clGreen
        Title.Alignment = taCenter
        Title.Font.Style = [fsBold]
        Title.Orientation = toHorizontal
        Title.Caption = 'POC'
        Width = 65
        FieldName = 'POC'
        EditButtons = <>
        Filter.DropDownRows = 0
        Filter.EmptyValue = '(Empty)'
        Filter.AllValue = '(All values)'
        Filter.EmptyFont.Style = [fsItalic]
        Filter.ItemIndex = -1
        Footers = <>
      end    
      item
        Alignment = taCenter
        Title.Alignment = taCenter
        Title.Font.Style = [fsBold]
        Title.Orientation = toHorizontal
        Title.Caption = 'Status'
        Width = 65
        FieldName = 'STATUS'
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
    FooterOptions.RowCount = 1
    FooterOptions.Style = tsNative
    FooterOptions.DrawFullLine = False
    SearchOptions.QuickSearchOptions = [loCaseInsensitive, loPartialKey]
    SearchOptions.FromStart = False
    OptionsRx = [rdgAllowDialogFind, rdgAllowQuickSearch, rdgAllowQuickFilter, rdgAllowFilterForm, rdgAllowSortForm, rdgAllowToolMenu, rdgCaseInsensitiveSort, rdgWordWrap]
    FooterRowCount = 1
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
    DataSource = DSOs
    DefaultRowHeight = 24
    FixedColor = clNone
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgHeaderHotTracking, dgHeaderPushedLook, dgDisableDelete, dgDisableInsert, dgTruncCellHints, dgCellEllipsis]
    ReadOnly = True
    TabOrder = 1
    TitleStyle = tsNative
    OnDblClick = RxDBGrid1DblClick
    OnKeyDown = RxDBGrid1KeyDown
    OnKeyPress = RxDBGrid1KeyPress
  end
  object Panel2: TPanel
    Left = 0
    Height = 66
    Top = 0
    Width = 841
    Align = alTop
    BevelOuter = bvNone
    ClientHeight = 66
    ClientWidth = 841
    Color = 16632718
    ParentColor = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Height = 15
      Top = 8
      Width = 52
      Caption = 'Wyszukaj:'
      ParentColor = False
    end
    object Edit1: TEdit
      Left = 8
      Height = 30
      Top = 24
      Width = 264
      AutoSelect = False
      CharCase = ecUppercase
      Font.CharSet = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Pitch = fpVariable
      Font.Quality = fqDraft
      OnChange = Edit1Change
      OnKeyPress = RxDBGrid1KeyPress
      ParentFont = False
      TabOrder = 0
    end
  end
  object ZQOs: TZQuery
    Connection = DM.ZConnection1
    SQL.Strings = (
      'SELECT * FROM osadzeni WHERE (NAZWISKO LIKE :nazwisko);'
    )
    Params = <    
      item
        DataType = ftUnknown
        Name = 'nazwisko'
        ParamType = ptUnknown
      end>
    Left = 637
    Top = 25
    ParamData = <    
      item
        DataType = ftUnknown
        Name = 'nazwisko'
        ParamType = ptUnknown
      end>
  end
  object DSOs: TDataSource
    DataSet = ZQOs
    Left = 704
    Top = 25
  end
end
