object ViewPaczki: TViewPaczki
  Left = 342
  Height = 467
  Top = 242
  Width = 801
  Align = alClient
  BorderStyle = bsNone
  Caption = 'ViewPaczki'
  ClientHeight = 467
  ClientWidth = 801
  OnClose = FormClose
  OnCreate = FormCreate
  LCLVersion = '6.6'
  object RxDBGrid2: TRxDBGrid
    Left = 0
    Height = 467
    Top = 0
    Width = 801
    ColumnDefValues.BlobText = '(blob)'
    TitleButtons = True
    AutoSort = True
    Columns = <    
      item
        Font.Color = clMaroon
        SizePriority = 0
        Title.Alignment = taCenter
        Title.Orientation = toHorizontal
        Title.Caption = 'Data wydania'
        Width = 115
        FieldName = 'WYDANO'
        EditButtons = <>
        Filter.DropDownRows = 0
        Filter.EmptyValue = '(Empty)'
        Filter.NotEmptyValue = '(Not empty)'
        Filter.AllValue = '(All values)'
        Filter.EmptyFont.Style = [fsItalic]
        Filter.ItemIndex = -1
        Footer.Alignment = taCenter
        Footer.ValueType = fvtCount
        Footers = <>
      end    
      item
        Alignment = taCenter
        SizePriority = 0
        Title.Alignment = taCenter
        Title.Orientation = toHorizontal
        Title.Caption = 'Rodzaj'
        Width = 90
        FieldName = 'RODZAJ'
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
        Font.Color = clBlue
        SizePriority = 0
        Title.Alignment = taCenter
        Title.Orientation = toHorizontal
        Title.Caption = 'doda- tkowa'
        Width = 45
        FieldName = 'DODATKOWA'
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
        Font.Color = clBlue
        SizePriority = 0
        Title.Alignment = taCenter
        Title.Orientation = toHorizontal
        Title.Caption = 'e-paka'
        Width = 45
        FieldName = 'KANTYNA'
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
        Title.Caption = 'UWAGI'
        Width = 140
        FieldName = 'UWAGI'
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
        SizePriority = 0
        Title.Alignment = taCenter
        Title.Orientation = toHorizontal
        Title.Caption = 'Wydający'
        Width = 120
        FieldName = 'WYDAL'
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
        SizePriority = 0
        Title.Alignment = taCenter
        Title.Orientation = toHorizontal
        Title.Caption = 'Nadawca'
        Width = 125
        FieldName = 'NADAWCA'
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
        SizePriority = 0
        Title.Alignment = taCenter
        Title.Orientation = toHorizontal
        Title.Caption = 'Adres'
        Width = 100
        FieldName = 'ADRES'
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
    DataSource = DSPaczki
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
  object DSPaczki: TDataSource
    DataSet = ZQPaczki
    Left = 400
    Top = 240
  end
  object ZQPaczki: TZQuery
    Connection = DM.ZConnection1
    ReadOnly = True
    SQL.Strings = (
      'SELECT '
      'ID,'
      'IDO,'
      'WYDANO,'
      'RODZAJ,'
      'WAGA,'
      'UWAGI,'
      'DODATKOWA,'
      'KANTYNA,'
      'NADAWCA,'
      'ADRES,'
      'WYDAL'
      'FROM paczki'
      'WHERE IDO = :ido'
      'ORDER BY WYDANO DESC'
    )
    Params = <    
      item
        DataType = ftUnknown
        Name = 'ido'
        ParamType = ptUnknown
      end>
    Left = 400
    Top = 176
    ParamData = <    
      item
        DataType = ftUnknown
        Name = 'ido'
        ParamType = ptUnknown
      end>
  end
end
