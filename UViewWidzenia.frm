object ViewWidzenia: TViewWidzenia
  Left = 333
  Height = 454
  Top = 237
  Width = 925
  Align = alClient
  BorderStyle = bsNone
  Caption = 'ViewWidzenia'
  ClientHeight = 454
  ClientWidth = 925
  OnClose = FormClose
  OnCreate = FormCreate
  LCLVersion = '6.6'
  object RxDBGrid2: TRxDBGrid
    Left = 0
    Height = 301
    Top = 0
    Width = 925
    ColumnDefValues.BlobText = '(blob)'
    TitleButtons = True
    AutoSort = True
    Columns = <    
      item
        Font.Color = clMaroon
        SizePriority = 0
        Title.Alignment = taCenter
        Title.Orientation = toHorizontal
        Title.Caption = 'Data widzenia'
        Width = 120
        FieldName = 'Data_Widzenie'
        EditButtons = <>
        Filter.DropDownRows = 0
        Filter.EmptyValue = '(Empty)'
        Filter.NotEmptyValue = '(Not empty)'
        Filter.AllValue = '(All values)'
        Filter.EmptyFont.Style = [fsItalic]
        Filter.ItemIndex = -1
        Footer.ValueType = fvtCount
        Footers = <>
      end    
      item
        Alignment = taCenter
        Font.Color = clBlue
        MinSize = 40
        MaxSize = 40
        SizePriority = 0
        Title.Alignment = taCenter
        Title.Orientation = toHorizontal
        Title.Caption = 'Czas widz.'
        Width = 40
        FieldName = 'Czas_widzenia'
        EditButtons = <>
        Filter.DropDownRows = 0
        Filter.EmptyValue = '(Empty)'
        Filter.NotEmptyValue = '(Not empty)'
        Filter.AllValue = '(All values)'
        Filter.EmptyFont.Style = [fsItalic]
        Filter.ItemIndex = -1
        Footers = <>
      end    
      item
        Alignment = taCenter
        Font.Color = clNavy
        MinSize = 40
        MaxSize = 40
        SizePriority = 0
        Title.Alignment = taCenter
        Title.Orientation = toHorizontal
        Title.Caption = 'Czas reg.'
        Width = 40
        FieldName = 'Czas_reg'
        EditButtons = <>
        Filter.DropDownRows = 0
        Filter.EmptyValue = '(Empty)'
        Filter.NotEmptyValue = '(Not empty)'
        Filter.AllValue = '(All values)'
        Filter.EmptyFont.Style = [fsItalic]
        Filter.ItemIndex = -1
        Footers = <>
      end    
      item
        Alignment = taCenter
        Font.Color = clNavy
        MinSize = 40
        MaxSize = 40
        SizePriority = 0
        Title.Alignment = taCenter
        Title.Orientation = toHorizontal
        Title.Caption = 'Czas dod.'
        Width = 40
        FieldName = 'Czas_dod'
        EditButtons = <>
        Filter.DropDownRows = 0
        Filter.EmptyValue = '(Empty)'
        Filter.NotEmptyValue = '(Not empty)'
        Filter.AllValue = '(All values)'
        Filter.EmptyFont.Style = [fsItalic]
        Filter.ItemIndex = -1
        Footers = <>
      end    
      item
        Alignment = taCenter
        MinSize = 50
        MaxSize = 50
        SizePriority = 0
        Title.Alignment = taCenter
        Title.Orientation = toHorizontal
        Title.Caption = 'Sposób'
        Width = 50
        FieldName = 'Sposob'
        EditButtons = <>
        Filter.DropDownRows = 0
        Filter.EmptyValue = '(Empty)'
        Filter.NotEmptyValue = '(Not empty)'
        Filter.AllValue = '(All values)'
        Filter.EmptyFont.Style = [fsItalic]
        Filter.ItemIndex = -1
        Footers = <>
      end    
      item
        Alignment = taCenter
        MinSize = 45
        MaxSize = 45
        SizePriority = 0
        Title.Alignment = taCenter
        Title.Orientation = toHorizontal
        Title.Caption = 'Doda- tkowe'
        Width = 45
        FieldName = 'Dodatkowe'
        EditButtons = <>
        Filter.DropDownRows = 0
        Filter.EmptyValue = '(Empty)'
        Filter.NotEmptyValue = '(Not empty)'
        Filter.AllValue = '(All values)'
        Filter.EmptyFont.Style = [fsItalic]
        Filter.ItemIndex = -1
        Footers = <>
      end    
      item
        Title.Alignment = taCenter
        Title.Orientation = toHorizontal
        Title.Caption = 'Uwagi do dodatkowego'
        Width = 224
        FieldName = 'Data_dod'
        EditButtons = <>
        Filter.DropDownRows = 0
        Filter.EmptyValue = '(Empty)'
        Filter.NotEmptyValue = '(Not empty)'
        Filter.AllValue = '(All values)'
        Filter.EmptyFont.Style = [fsItalic]
        Filter.ItemIndex = -1
        Footers = <>
      end    
      item
        Title.Alignment = taCenter
        Title.Orientation = toHorizontal
        Title.Caption = 'Uwagi'
        Width = 224
        FieldName = 'Uwagi'
        EditButtons = <>
        Filter.DropDownRows = 0
        Filter.EmptyValue = '(Empty)'
        Filter.NotEmptyValue = '(Not empty)'
        Filter.AllValue = '(All values)'
        Filter.EmptyFont.Style = [fsItalic]
        Filter.ItemIndex = -1
        Footers = <>
      end    
      item
        Font.Color = clNavy
        SizePriority = 0
        Title.Alignment = taCenter
        Title.Orientation = toHorizontal
        Title.Caption = 'Nadzór'
        Width = 120
        FieldName = 'Nadzor'
        EditButtons = <>
        Filter.DropDownRows = 0
        Filter.EmptyValue = '(Empty)'
        Filter.NotEmptyValue = '(Not empty)'
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
    FooterOptions.Active = True
    FooterOptions.Color = clSilver
    FooterOptions.RowCount = 1
    FooterOptions.Style = tsNative
    FooterOptions.DrawFullLine = False
    SearchOptions.QuickSearchOptions = [loCaseInsensitive, loPartialKey]
    SearchOptions.FromStart = False
    OptionsRx = [rdgAllowDialogFind, rdgFooterRows, rdgAllowQuickSearch, rdgAllowQuickFilter, rdgAllowFilterForm, rdgAllowSortForm, rdgCaseInsensitiveSort, rdgWordWrap]
    FooterColor = clSilver
    FooterRowCount = 1
    Align = alClient
    AlternateColor = 16055807
    AutoAdvance = aaNone
    AutoFillColumns = True
    AutoEdit = False
    Color = clWindow
    DrawFullLine = False
    FocusColor = clHighlight
    FixedHotColor = clNone
    SelectedColor = clHighlight
    GridLineStyle = psSolid
    DataSource = DSWidzenia
    DefaultRowHeight = 19
    FixedColor = clNone
    FixedCols = 0
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgHeaderHotTracking, dgHeaderPushedLook, dgAnyButtonCanSelect, dgDisableDelete, dgDisableInsert, dgCellHints, dgTruncCellHints, dgCellEllipsis]
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 0
    TitleStyle = tsNative
    OnPrepareCanvas = RxDBGrid2PrepareCanvas
  end
  object Panel3: TPanel
    Left = 0
    Height = 148
    Top = 306
    Width = 925
    Align = alBottom
    BevelOuter = bvNone
    ClientHeight = 148
    ClientWidth = 925
    TabOrder = 1
    object Label1: TLabel
      Left = 0
      Height = 24
      Top = 0
      Width = 925
      Align = alTop
      Alignment = taCenter
      AutoSize = False
      Caption = 'Osoby odwiedzające'
      Layout = tlCenter
      ParentColor = False
    end
    object RxDBGrid3: TRxDBGrid
      Left = 0
      Height = 124
      Top = 24
      Width = 925
      ColumnDefValues.BlobText = '(blob)'
      TitleButtons = True
      AutoSort = True
      Columns = <      
        item
          SizePriority = 0
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = 'Nazwisko'
          Width = 120
          FieldName = 'Nazwisko'
          EditButtons = <>
          Filter.DropDownRows = 0
          Filter.EmptyValue = '(Empty)'
          Filter.NotEmptyValue = '(Not empty)'
          Filter.AllValue = '(All values)'
          Filter.EmptyFont.Style = [fsItalic]
          Filter.ItemIndex = -1
          Footer.ValueType = fvtCount
          Footers = <>
        end      
        item
          SizePriority = 0
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = 'Imię'
          Width = 120
          FieldName = 'Imie'
          EditButtons = <>
          Filter.DropDownRows = 0
          Filter.EmptyValue = '(Empty)'
          Filter.NotEmptyValue = '(Not empty)'
          Filter.AllValue = '(All values)'
          Filter.EmptyFont.Style = [fsItalic]
          Filter.ItemIndex = -1
          Footers = <>
        end      
        item
          Alignment = taCenter
          SizePriority = 0
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = 'Pokrewieństwo'
          Width = 120
          FieldName = 'Pokrew'
          EditButtons = <>
          Filter.DropDownRows = 0
          Filter.EmptyValue = '(Empty)'
          Filter.NotEmptyValue = '(Not empty)'
          Filter.AllValue = '(All values)'
          Filter.EmptyFont.Style = [fsItalic]
          Filter.ItemIndex = -1
          Footers = <>
        end      
        item
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = 'Uwagi'
          Width = 532
          FieldName = 'Uwagi'
          EditButtons = <>
          Filter.DropDownRows = 0
          Filter.EmptyValue = '(Empty)'
          Filter.NotEmptyValue = '(Not empty)'
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
      FooterOptions.Active = True
      FooterOptions.Color = clSilver
      FooterOptions.RowCount = 1
      FooterOptions.Style = tsNative
      FooterOptions.DrawFullLine = False
      SearchOptions.QuickSearchOptions = [loCaseInsensitive, loPartialKey]
      SearchOptions.FromStart = False
      OptionsRx = [rdgAllowDialogFind, rdgFooterRows, rdgAllowQuickSearch, rdgAllowQuickFilter, rdgAllowFilterForm, rdgAllowSortForm, rdgAllowToolMenu, rdgCaseInsensitiveSort, rdgWordWrap]
      FooterColor = clSilver
      FooterRowCount = 1
      Align = alClient
      AlternateColor = 16055807
      AutoAdvance = aaNone
      AutoFillColumns = True
      AutoEdit = False
      Color = clWindow
      DrawFullLine = False
      FocusColor = clHighlight
      FixedHotColor = clNone
      SelectedColor = clHighlight
      GridLineStyle = psSolid
      DataSource = DSOsoby
      DefaultRowHeight = 0
      FixedColor = clNone
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgHeaderPushedLook, dgAnyButtonCanSelect, dgDisableDelete, dgDisableInsert, dgTruncCellHints, dgCellEllipsis]
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 0
      TitleStyle = tsNative
    end
  end
  object Splitter1: TSplitter
    Cursor = crVSplit
    Left = 0
    Height = 5
    Top = 301
    Width = 925
    Align = alBottom
    ResizeAnchor = akBottom
  end
  object ZQWidzenia: TZQuery
    Connection = DM.ZConnection1
    ReadOnly = True
    SQL.Strings = (
      'SELECT '
      'ID,'
      'IDO,'
      'Etap,'
      'Data_Widzenie,'
      'Czas_widzenia,'
      'Czas_reg,'
      'Czas_dod,'
      'Sposob,'
      'Dodatkowe,'
      'Data_dod,'
      'Uwagi,'
      'Nadzor'
      'FROM widzenia'
      'WHERE IDO = :ido'
      'ORDER BY Data_Widzenie DESC'
    )
    Params = <    
      item
        DataType = ftUnknown
        Name = 'ido'
        ParamType = ptUnknown
      end>
    MasterFields = 'IDO'
    LinkedFields = 'IDO'
    Left = 372
    Top = 148
    ParamData = <    
      item
        DataType = ftUnknown
        Name = 'ido'
        ParamType = ptUnknown
      end>
  end
  object DSWidzenia: TDataSource
    DataSet = ZQWidzenia
    Left = 372
    Top = 212
  end
  object DSOsoby: TDataSource
    DataSet = ZQOsoby
    Left = 372
    Top = 352
  end
  object ZQOsoby: TZQuery
    Connection = DM.ZConnection1
    ReadOnly = True
    SQL.Strings = (
      'SELECT'
      'u.IDO,'
      'w.ID_widzenia, '
      'w.ID_uprawnione, '
      'u.Nazwisko, '
      'u.Imie, '
      'u.Pokrew, '
      'u.Uwagi '
      'FROM widzenia_upr w'
      'LEFT JOIN uprawnione u ON (w.ID_uprawnione = u.ID)'
      'WHERE IDO = :ido'
    )
    Params = <    
      item
        DataType = ftUnknown
        Name = 'ido'
        ParamType = ptUnknown
      end>
    MasterFields = 'ID'
    MasterSource = DSWidzenia
    LinkedFields = 'ID_widzenia'
    Left = 372
    Top = 288
    ParamData = <    
      item
        DataType = ftUnknown
        Name = 'ido'
        ParamType = ptUnknown
      end>
  end
end
