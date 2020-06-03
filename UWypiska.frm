object Wypiska: TWypiska
  Left = 327
  Height = 586
  Top = 225
  Width = 774
  Caption = 'Wypiska'
  ClientHeight = 586
  ClientWidth = 774
  Position = poOwnerFormCenter
  LCLVersion = '6.6'
  object Panel1: TPanel
    Left = 0
    Height = 48
    Top = 0
    Width = 774
    Align = alTop
    BevelOuter = bvNone
    ClientHeight = 48
    ClientWidth = 774
    TabOrder = 0
    object btnWklejZeSchowka: TBitBtn
      Left = 8
      Height = 30
      Top = 8
      Width = 240
      Caption = 'Wczytaj plik paragonów z wypiski'
      Images = DM.ImageList1
      ImageIndex = 53
      OnClick = btnWklejZeSchowkaClick
      TabOrder = 0
    end
    object btnDrukuj: TBitBtn
      Left = 651
      Height = 30
      Top = 8
      Width = 112
      Anchors = [akRight, akBottom]
      Caption = 'Wydruk'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000064000000640000000000000000000000000000000000
        00000000000000000000D7C39BFFECE3D6FFECE3D6FFECE3D6FFECE3D6FFECE3
        D6FFECE3D6FFD7C39BFF00000000000000000000000000000000958F8FBF9C96
        96CB9C9696E469636AF1C4AB7FFFEDE1D5FFEDE1D5FFEDE1D5FFEDE1D5FFEDE1
        D5FFEDE1D5FFC4AB7FFF69636AE99C9696EC9C9696DF999292D3958F8FFFC3C0
        BFFFC3C0BFFF837D84FFC6A874FFE0CBAEFFE0CBAEFFE0CBAEFFE0CBAEFFE0CB
        AEFFE0CBAEFFC6A874FF837D84FFC3C0BFFFC3C0BFFF999292FFA49FA1FFD1CF
        CEFFD1CFCEFFD3D2D1FFD2D2D3FFD0D0D2FFD0D0D2FFD0D0D2FFD0D0D2FFD0D0
        D2FFD0D0D2FFD2D2D3FFD3D2D1FFBACAD7FF6E9BE3FFA49FA1FFAAA7A7FFD9D7
        D7FFD9D7D7FFD9D7D7FFD9D7D7FFD9D7D7FFD9D7D7FFD9D7D7FFD9D7D7FFD9D7
        D7FFD9D7D7FFD9D7D7FFD9D7D7FF8AC3E9FF004BFBFFABA8A8FFB7B3B3FFE6E8
        E9FFD6C5AFFFBC6B10FFBB6A0FFFBB6A0FFFBB6A0FFFBB6A0FFFBB6A0FFFBB6A
        0FFFBB6A0FFFBB6A0FFFBC6B10FFD6C5AFFFE6E8E9FFB8B5B5FFBCB9BAFFEEF2
        F5FFBA7B3EFFE1A942FFE1A842FFE1A842FFE1A842FFE1A842FFE1A842FFE1A8
        42FFE1A842FFE1A842FFE1A942FFBA7B3EFFEEF2F5FFBFBBBCFFCDC8C9FFF8FC
        FFFFCD9753FFEEC670FFEEC771FFEEC771FFEEC771FFEEC771FFEEC771FFEEC7
        71FFEEC771FFEEC771FFEEC670FFCD9753FFF8FCFFFFCECBCCFFD2D0D0FFFCFF
        FFFFD7A55CFFEDC977FFE9BF68FFE9BF68FFE9BF68FFE9BF68FFE9BF68FFE9BF
        68FFE9BF68FFE9BF68FFEDC977FFD7A55CFFFCFFFFFFD4D1D0FFDEDCDBFFFFFF
        FFFFE8C070FFE0AC54FFB99D6BFFD7BD91FFD7BD91FFD7BD91FFD7BD91FFD7BD
        91FFD7BD91FFB99D6BFFE0AC54FFE8C070FFFFFFFFFFE3DFDFFFCAC3C5E0B0AF
        B4D9D8A859D8C9924BE4C4AB7FFFDFCAADFFDFCAADFFDFCAADFFDFCAADFFDFCA
        ADFFDFCAADFFC4AB7FFFC9924BF0D8A859DFB0AFB4D5CAC2C4E0000000000000
        00000000000000000000D0BD98FFECDFD1FFECDFD1FFECDFD1FFECDFD1FFECDF
        D1FFECDFD1FFD0BD98FF00000000000000000000000000000000000000000000
        00000000000000000000D5C4A4FFEFE4D8FFEFE4D8FFEFE4D8FFEFE4D8FFEFE4
        D8FFEFE4D8FFD5C4A4FF00000000000000000000000000000000000000000000
        00000000000000000000DED0B8FFF5EDE4FFF5EDE4FFF5EDE4FFF5EDE4FFF5ED
        E4FFF5EDE4FFDED0B8FF00000000000000000000000000000000000000000000
        00000000000000000000E2D6C1FFF8F3EAFFF8F3EAFFF8F3EAFFF8F3EAFFF8F3
        EAFFF8F3EAFFE2D6C1FF00000000000000000000000000000000000000000000
        00000000000000000000E3D8C6E3EFE8DBFFEFE8DBFFEFE8DBFFEFE8DBFFEFE8
        DBFFEFE8DBFFE3D8C6D300000000000000000000000000000000
      }
      OnClick = btnDrukujClick
      TabOrder = 1
    end
    object btnDoSchowka: TBitBtn
      Left = 504
      Height = 30
      Top = 8
      Width = 139
      Anchors = [akTop, akRight]
      Caption = 'Kopuj do schowka'
      Images = DM.ImageList1
      ImageIndex = 32
      OnClick = btnDoSchowkaClick
      TabOrder = 2
    end
  end
  object RxDBGrid1: TRxDBGrid
    Left = 0
    Height = 538
    Top = 48
    Width = 774
    ColumnDefValues.BlobText = '(blob)'
    TitleButtons = True
    AutoSort = True
    Columns = <    
      item
        Alignment = taRightJustify
        Title.Alignment = taCenter
        Title.Orientation = toHorizontal
        Title.Caption = 'Lp'
        Width = 50
        FieldName = 'Lp'
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
        Footers = <>
      end    
      item
        Title.Alignment = taCenter
        Title.Orientation = toHorizontal
        Title.Caption = 'Imie'
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
        Title.Alignment = taCenter
        Title.Orientation = toHorizontal
        Title.Caption = 'Ojciec'
        Width = 120
        FieldName = 'Ojciec'
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
        Font.Color = clGreen
        Title.Alignment = taCenter
        Title.Orientation = toHorizontal
        Title.Caption = 'POC'
        FieldName = 'POC'
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
        Alignment = taRightJustify
        Font.Color = clBlue
        Title.Alignment = taCenter
        Title.Orientation = toHorizontal
        Title.Caption = 'Kwota'
        Width = 100
        FieldName = 'Kwota'
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
    FooterOptions.Color = 15658734
    FooterOptions.RowCount = 1
    FooterOptions.DrawFullLine = False
    SearchOptions.QuickSearchOptions = [loCaseInsensitive, loPartialKey]
    SearchOptions.FromStart = False
    OptionsRx = [rdgAllowColumnsForm, rdgAllowDialogFind, rdgFooterRows, rdgAllowQuickFilter]
    FooterColor = 15658734
    FooterRowCount = 1
    Align = alClient
    AlternateColor = 14022911
    Color = clWindow
    DrawFullLine = False
    FocusColor = clHighlight
    FixedHotColor = clNone
    SelectedColor = clHighlight
    GridLineStyle = psSolid
    DataSource = DSMem
    FixedColor = clNone
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColumnMove, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgHeaderPushedLook]
    ReadOnly = True
    TabOrder = 1
    TitleStyle = tsNative
  end
  object RxMem: TRxMemoryData
    Active = True
    FieldDefs = <    
      item
        Name = 'Lp'
        DataType = ftString
        Size = 10
      end    
      item
        Name = 'Nazwisko'
        DataType = ftString
        Size = 60
      end    
      item
        Name = 'Imie'
        DataType = ftString
        Size = 60
      end    
      item
        Name = 'Ojciec'
        DataType = ftString
        Size = 60
      end    
      item
        Name = 'POC'
        DataType = ftString
        Size = 15
      end    
      item
        Name = 'Kwota'
        DataType = ftString
        Size = 60
      end>
    PacketRecords = 0
    Left = 352
    Top = 220
  end
  object DSMem: TDataSource
    DataSet = RxMem
    Left = 420
    Top = 220
  end
  object ZQOsadzeni: TZQuery
    Connection = DM.ZConnection1
    SQL.Strings = (
      'SELECT POC, Concat(NAZWISKO, IMIE, OJCIEC)as NazwiskoImie FROM osadzeni;'
    )
    Params = <>
    Left = 350
    Top = 291
  end
  object OpenDialog1: TOpenDialog
    Options = [ofPathMustExist, ofFileMustExist, ofEnableSizing, ofViewDetail]
    Left = 352
    Top = 128
  end
  object frReport1: TfrReport
    Dataset = frDBDataSet1
    InitialZoom = pzDefault
    Options = [roSaveAndRestoreBookmarks]
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    DataType = dtDataSet
    Left = 652
    Top = 128
  end
  object frDBDataSet1: TfrDBDataSet
    DataSet = RxMem
    DataSource = DSMem
    OpenDataSource = False
    Left = 652
    Top = 184
  end
end
