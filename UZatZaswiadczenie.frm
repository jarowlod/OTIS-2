object ZatZaswiadczenie: TZatZaswiadczenie
  Left = 334
  Height = 645
  Top = 226
  Width = 710
  Caption = 'Zaświadczenie o wykonywaniu pracy'
  ClientHeight = 645
  ClientWidth = 710
  Position = poOwnerFormCenter
  LCLVersion = '6.6'
  object Panel1: TPanel
    Left = 0
    Height = 40
    Top = 0
    Width = 710
    Align = alTop
    BevelOuter = bvNone
    Caption = 'ZAŚWIADCZENIE O WYKONYWANIU PRACY'
    Font.CharSet = EASTEUROPE_CHARSET
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Quality = fqDraft
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Height = 72
    Top = 40
    Width = 710
    Align = alTop
    BevelOuter = bvLowered
    ClientHeight = 72
    ClientWidth = 710
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Height = 15
      Top = 12
      Width = 80
      Caption = 'Imię i nazwisko'
      ParentColor = False
    end
    object Label2: TLabel
      Left = 57
      Height = 15
      Top = 40
      Width = 31
      Caption = 'ojciec'
      ParentColor = False
    end
    object Label3: TLabel
      Left = 248
      Height = 15
      Top = 40
      Width = 50
      Caption = 'urodzony'
      ParentColor = False
    end
    object Label4: TLabel
      Left = 424
      Height = 15
      Top = 40
      Width = 9
      Caption = 'w'
      ParentColor = False
    end
    object edNazwiskoImie: TEdit
      Left = 96
      Height = 23
      Top = 8
      Width = 603
      Anchors = [akTop, akLeft, akRight]
      TabOrder = 0
    end
    object edOjciec: TEdit
      Left = 96
      Height = 23
      Top = 37
      Width = 136
      TabOrder = 1
    end
    object edUrodzony: TEdit
      Left = 304
      Height = 23
      Top = 37
      Width = 109
      TabOrder = 2
    end
    object edMiejscowosc: TEdit
      Left = 440
      Height = 23
      Top = 37
      Width = 259
      Anchors = [akTop, akLeft, akRight]
      TabOrder = 3
    end
  end
  object RxDBGrid1: TRxDBGrid
    Left = 0
    Height = 349
    Top = 112
    Width = 710
    ColumnDefValues.BlobText = '(blob)'
    TitleButtons = True
    AutoSort = True
    Columns = <    
      item
        Title.Alignment = taCenter
        Title.Orientation = toHorizontal
        Title.Caption = 'Od'
        FieldName = 'Od'
        EditButtons = <>
        Filter.DropDownRows = 0
        Filter.EmptyValue = '(Empty)'
        Filter.NotEmptyValue = '(Not empty)'
        Filter.AllValue = '(All values)'
        Filter.EmptyFont.Style = [fsItalic]
        Filter.ItemIndex = -1
        Footers = <>
        SortFields = 'Od'
      end    
      item
        Title.Alignment = taCenter
        Title.Orientation = toHorizontal
        Title.Caption = 'Do'
        FieldName = 'Do'
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
        PickList.Strings = (
          ''
          'SKIEROWANIE'
        )
        Title.Alignment = taCenter
        Title.Orientation = toHorizontal
        Title.Caption = 'forma'
        Width = 120
        FieldName = 'forma'
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
        PickList.Strings = (
          ''
          'ODPŁATNIE'
          'NIEODPŁATNIE'
        )
        Title.Alignment = taCenter
        Title.Orientation = toHorizontal
        Title.Caption = 'rodzaj'
        Width = 120
        FieldName = 'rodzaj'
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
        PickList.Strings = (
          '1/8 ETATU'
          '2/8 ETATU'
          '3/8 ETATU'
          '4/8 ETATU'
          '5/8 ETATU'
          '6/8 ETATU'
          '7/8 ETATU'
          '8/8 ETATU'
          'DO 90 GODZ.'
        )
        Title.Alignment = taCenter
        Title.Orientation = toHorizontal
        Title.Caption = 'wymiar'
        Width = 100
        FieldName = 'wymiar'
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
        Title.Caption = 'Jednostka'
        Width = 120
        FieldName = 'Jednostka'
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
    Color = clWindow
    DrawFullLine = False
    FocusColor = clHighlight
    FixedHotColor = clNone
    SelectedColor = clHighlight
    GridLineStyle = psSolid
    DataSource = DSOkresy
    DefaultRowHeight = 24
    FixedColor = clNone
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgHeaderHotTracking, dgHeaderPushedLook, dgAnyButtonCanSelect, dgCellHints, dgCellEllipsis]
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    TitleStyle = tsNative
  end
  object Panel3: TPanel
    Left = 0
    Height = 159
    Top = 486
    Width = 710
    Align = alBottom
    BevelOuter = bvNone
    ClientHeight = 159
    ClientWidth = 710
    TabOrder = 3
    object BitBtn1: TBitBtn
      Left = 8
      Height = 30
      Top = 123
      Width = 120
      Anchors = [akLeft, akBottom]
      Caption = 'Drukuj'
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
      OnClick = BitBtn1Click
      TabOrder = 0
    end
    object Label5: TLabel
      Left = 8
      Height = 15
      Top = 19
      Width = 111
      Anchors = [akLeft, akBottom]
      Caption = 'Ostatnio pracował w '
      ParentColor = False
    end
    object edPracodawca_1: TEdit
      Left = 128
      Height = 23
      Top = 11
      Width = 571
      Anchors = [akLeft, akBottom]
      TabOrder = 1
    end
    object Label6: TLabel
      Left = 8
      Height = 15
      Top = 91
      Width = 75
      Anchors = [akLeft, akBottom]
      Caption = 'na stanowisku'
      ParentColor = False
    end
    object edStanowisko: TEdit
      Left = 96
      Height = 23
      Top = 83
      Width = 603
      Anchors = [akLeft, akBottom]
      TabOrder = 2
    end
    object Label7: TLabel
      Left = 304
      Height = 15
      Top = 35
      Width = 241
      Anchors = [akLeft, akBottom]
      Caption = '(pełna nazwa pracodawcy oraz adres siedziby)'
      ParentColor = False
    end
    object edPracodawca_2: TEdit
      Left = 8
      Height = 23
      Top = 51
      Width = 691
      Anchors = [akLeft, akBottom]
      TabOrder = 3
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Height = 25
    Top = 461
    Width = 710
    Align = alBottom
    BevelOuter = bvNone
    ChildSizing.EnlargeHorizontal = crsScaleChilds
    ChildSizing.EnlargeVertical = crsScaleChilds
    ChildSizing.ShrinkHorizontal = crsScaleChilds
    ChildSizing.ShrinkVertical = crsScaleChilds
    ChildSizing.Layout = cclLeftToRightThenTopToBottom
    ChildSizing.ControlsPerLine = 100
    ClientHeight = 25
    ClientWidth = 710
    DataSource = DSOkresy
    Options = []
    TabOrder = 4
  end
  object DSOkresy: TDataSource
    DataSet = bufOkresy
    Left = 432
    Top = 280
  end
  object frDBDataSet1: TfrDBDataSet
    DataSet = bufOkresy
    Left = 628
    Top = 206
  end
  object frReport1: TfrReport
    Dataset = frDBDataSet1
    InitialZoom = pzDefault
    Options = [roSaveAndRestoreBookmarks]
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    DataType = dtDataSet
    Left = 558
    Top = 206
  end
  object bufOkresy: TBufDataset
    PacketRecords = -1
    IndexFieldNames = 'Od'
    FieldDefs = <    
      item
        Name = 'Od'
        DataType = ftDate
      end    
      item
        Name = 'Do'
        DataType = ftDate
      end    
      item
        Name = 'forma'
        DataType = ftString
        Size = 100
      end    
      item
        Name = 'rodzaj'
        DataType = ftString
        Size = 100
      end    
      item
        Name = 'wymiar'
        DataType = ftString
        Size = 50
      end    
      item
        Name = 'Jednostka'
        DataType = ftString
        Size = 100
      end>
    Left = 496
    Top = 280
  end
end
