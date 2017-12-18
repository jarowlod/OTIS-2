object ViewZatrudnienie: TViewZatrudnienie
  Left = 407
  Height = 434
  Top = 229
  Width = 679
  Align = alClient
  BorderStyle = bsNone
  Caption = 'ViewZatrudnienie'
  ClientHeight = 434
  ClientWidth = 679
  OnClose = FormClose
  OnCreate = FormCreate
  LCLVersion = '6.3'
  object RxDBGrid2: TRxDBGrid
    Left = 0
    Height = 434
    Top = 0
    Width = 679
    ColumnDefValues.BlobText = '(blob)'
    TitleButtons = True
    AutoSort = True
    Columns = <    
      item
        Alignment = taCenter
        Title.Alignment = taCenter
        Title.Orientation = toHorizontal
        Title.Caption = 'Status'
        Width = 90
        FieldName = 'status_zatrudnienia'
        EditButtons = <>
        Filter.DropDownRows = 0
        Filter.EmptyValue = '(Empty)'
        Filter.AllValue = '(All values)'
        Filter.EmptyFont.Style = [fsItalic]
        Filter.ItemIndex = -1
        Footer.ValueType = fvtCount
        Footers = <>
      end    
      item
        Title.Alignment = taCenter
        Title.Orientation = toHorizontal
        Title.Caption = 'Nazwa grupy'
        Width = 200
        FieldName = 'nazwa'
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
        Title.Orientation = toHorizontal
        Title.Caption = 'zat_od'
        Width = 80
        FieldName = 'zat_od'
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
        Title.Orientation = toHorizontal
        Title.Caption = 'zat_do'
        Width = 80
        FieldName = 'zat_do'
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
        Title.Caption = 'Powód wycofania'
        Width = 200
        FieldName = 'powod_wycofania'
        EditButtons = <>
        Filter.DropDownRows = 0
        Filter.EmptyValue = '(Empty)'
        Filter.AllValue = '(All values)'
        Filter.EmptyFont.Style = [fsItalic]
        Filter.ItemIndex = -1
        Footers = <>
        WordWrap = True
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
    AutoEdit = False
    Color = clWindow
    DrawFullLine = False
    FocusColor = clHighlight
    FixedHotColor = clNone
    SelectedColor = clHighlight
    GridLineStyle = psSolid
    DataSource = DSOsZat
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
  object ZQOsZat: TZQuery
    Connection = DM.ZConnection1
    ReadOnly = True
    SQL.Strings = (
      'SELECT '
      'zat.IDO, '
      'zat.status_zatrudnienia, '
      'sta.nazwa,'
      'zat.zat_od,'
      'zat.zat_do,'
      'zat.powod_wycofania'
      'FROM zat_zatrudnieni as zat'
      '  LEFT JOIN zat_stanowiska as sta ON sta.id = zat.id_stanowiska'
      'WHERE IDO = :ido'
    )
    Params = <    
      item
        DataType = ftUnknown
        Name = 'ido'
        ParamType = ptUnknown
      end>
    MasterFields = 'IDO'
    LinkedFields = 'IDO'
    Left = 344
    Top = 120
    ParamData = <    
      item
        DataType = ftUnknown
        Name = 'ido'
        ParamType = ptUnknown
      end>
  end
  object DSOsZat: TDataSource
    DataSet = ZQOsZat
    Left = 344
    Top = 184
  end
end
