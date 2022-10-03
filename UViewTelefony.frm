object ViewTelefony: TViewTelefony
  Left = 325
  Height = 499
  Top = 234
  Width = 768
  Align = alClient
  BorderStyle = bsNone
  Caption = 'ViewTelefony'
  ClientHeight = 499
  ClientWidth = 768
  OnClose = FormClose
  OnCreate = FormCreate
  LCLVersion = '6.6'
  object RxDBGrid2: TRxDBGrid
    Left = 0
    Height = 499
    Top = 0
    Width = 768
    ColumnDefValues.BlobText = '(blob)'
    TitleButtons = True
    AutoSort = False
    Columns = <    
      item
        ReadOnly = True
        SizePriority = 0
        Title.Alignment = taCenter
        Title.Orientation = toHorizontal
        Title.Caption = 'Data'
        Width = 120
        FieldName = 'data_zap'
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
        ReadOnly = True
        SizePriority = 0
        Title.Alignment = taCenter
        Title.Orientation = toHorizontal
        Title.Caption = 'Dzień tygodnia'
        Width = 100
        FieldName = 'day_name'
        DisplayFormat = 'dddd'
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
        ReadOnly = True
        SizePriority = 0
        Title.Alignment = taCenter
        Title.Orientation = toHorizontal
        Title.Caption = 'Status'
        Width = 140
        FieldName = 'Status'
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
        ReadOnly = False
        SizePriority = 2
        Title.Alignment = taCenter
        Title.Orientation = toHorizontal
        Title.Caption = 'Uwagi'
        Width = 223
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
        ReadOnly = True
        SizePriority = 0
        Title.Alignment = taCenter
        Title.Orientation = toHorizontal
        Title.Caption = 'Użytkownik'
        Width = 164
        FieldName = 'User'
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
    FooterOptions.Style = tsNative
    FooterOptions.DrawFullLine = False
    SearchOptions.QuickSearchOptions = [loCaseInsensitive, loPartialKey]
    SearchOptions.FromStart = False
    OptionsRx = [rdgAllowDialogFind, rdgFooterRows, rdgAllowQuickSearch, rdgAllowQuickFilter, rdgAllowFilterForm, rdgAllowSortForm, rdgCaseInsensitiveSort, rdgWordWrap]
    FooterColor = clSilver
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
    DataSource = DSTelefony
    DefaultRowHeight = 19
    FixedColor = clNone
    FixedCols = 0
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgHeaderHotTracking, dgHeaderPushedLook, dgAnyButtonCanSelect, dgDisableDelete, dgDisableInsert, dgCellHints, dgTruncCellHints, dgCellEllipsis]
    ParentShowHint = False
    PopupMenu = PopupMenu1
    ReadOnly = True
    ShowHint = True
    TabOrder = 0
    TitleStyle = tsNative
    OnPrepareCanvas = RxDBGrid2PrepareCanvas
  end
  object ZQTelefony: TZQuery
    Connection = DM.ZConnection1
    UpdateObject = ZUTelefony
    SQL.Strings = (
      'SELECT id, '
      'ido, '
      'Status, '
      'Uwagi, '
      'User, '
      'data_zap,'
      'data_zap as day_name'
      'FROM telefony'
      'WHERE IDO = :ido'
      'ORDER BY data_zap DESC'
      'LIMIT 100'
    )
    Params = <    
      item
        DataType = ftUnknown
        Name = 'ido'
        ParamType = ptUnknown
      end>
    Left = 428
    Top = 204
    ParamData = <    
      item
        DataType = ftUnknown
        Name = 'ido'
        ParamType = ptUnknown
      end>
  end
  object DSTelefony: TDataSource
    DataSet = ZQTelefony
    Left = 428
    Top = 268
  end
  object ZUTelefony: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM telefony'
      'WHERE'
      '  telefony.id = :OLD_id'
    )
    InsertSQL.Strings = (
      'INSERT INTO telefony'
      '  (ido, Status, Uwagi, User, data_zap)'
      'VALUES'
      '  (:ido, :Status, :Uwagi, :User, now())'
    )
    ModifySQL.Strings = (
      'UPDATE telefony SET'
      '  Status = :Status,'
      '  Uwagi = :Uwagi'
      'WHERE'
      '  telefony.id = :OLD_id'
    )
    RefreshSQL.Strings = (
      ''
    )
    UseSequenceFieldForRefreshSQL = False
    Left = 512
    Top = 204
    ParamData = <    
      item
        DataType = ftUnknown
        Name = 'Status'
        ParamType = ptUnknown
      end    
      item
        DataType = ftUnknown
        Name = 'Uwagi'
        ParamType = ptUnknown
      end    
      item
        DataType = ftUnknown
        Name = 'OLD_id'
        ParamType = ptUnknown
      end    
      item
        DataType = ftUnknown
        Name = 'ido'
        ParamType = ptUnknown
      end    
      item
        DataType = ftUnknown
        Name = 'User'
        ParamType = ptUnknown
      end>
  end
  object PopupMenu1: TPopupMenu
    Images = DM.ImageList1
    Left = 289
    Top = 204
    object MenuItemDodaj: TMenuItem
      Caption = 'Dodaj telefon'
      ImageIndex = 54
      OnClick = MenuItemDodajClick
    end
    object MenuItemDodajDodatkowy: TMenuItem
      Caption = 'Dodaj telefon dodatkowy...'
      ImageIndex = 50
      OnClick = MenuItemDodajDodatkowyClick
    end
    object MenuItemDodajUrzedowy: TMenuItem
      Caption = 'Dodaj telefon urzędowy...'
      ImageIndex = 29
      OnClick = MenuItemDodajUrzedowyClick
    end
    object MenuItem4: TMenuItem
      Caption = '-'
    end
    object MenuItemUsun: TMenuItem
      Caption = 'Usuń...'
      Hint = 'Jeżeli w tym samym dniu to usuwa, inaczej zmienia na wpis omyłkowy.'
      ImageIndex = 44
      OnClick = MenuItemUsunClick
    end
  end
end
