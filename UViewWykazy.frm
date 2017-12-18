object ViewWykazy: TViewWykazy
  Left = 407
  Height = 339
  Top = 229
  Width = 674
  Align = alClient
  BorderStyle = bsNone
  Caption = 'ViewWykazy'
  ClientHeight = 339
  ClientWidth = 674
  OnClose = FormClose
  OnCreate = FormCreate
  LCLVersion = '6.3'
  object RxDBGrid1: TRxDBGrid
    Left = 0
    Height = 339
    Top = 0
    Width = 674
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
    OptionsRx = [rdgAllowSortForm, rdgCaseInsensitiveSort, rdgWordWrap, rdgDisableWordWrapTitles]
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
    DataSource = DSRejWyk
    DefaultRowHeight = 19
    FixedColor = clNone
    FixedCols = 0
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgHeaderHotTracking, dgHeaderPushedLook, dgAnyButtonCanSelect, dgDisableDelete, dgDisableInsert, dgCellHints, dgTruncCellHints, dgCellEllipsis]
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 0
    TitleStyle = tsNative
  end
  object ZQRejWyk: TZQuery
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
    Left = 416
    Top = 80
    ParamData = <    
      item
        DataType = ftUnknown
        Name = 'ido'
        ParamType = ptUnknown
      end>
  end
  object DSRejWyk: TDataSource
    DataSet = ZQRejWyk
    Left = 416
    Top = 152
  end
end
