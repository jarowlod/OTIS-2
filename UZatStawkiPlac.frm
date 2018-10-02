object ZatStawkiPlac: TZatStawkiPlac
  Left = 440
  Height = 332
  Top = 236
  Width = 828
  Caption = 'Wyciąg z decyzji w sprawie stawki zaszeregowania.'
  ClientHeight = 332
  ClientWidth = 828
  OnCloseQuery = FormCloseQuery
  LCLVersion = '6.5'
  object Panel1: TPanel
    Left = 0
    Height = 40
    Top = 0
    Width = 828
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Stawki zaszeregowania'
    Color = clWhite
    Font.CharSet = EASTEUROPE_CHARSET
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Quality = fqDraft
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 0
  end
  object Panel3: TPanel
    Left = 0
    Height = 43
    Top = 289
    Width = 828
    Align = alBottom
    BevelOuter = bvNone
    ClientHeight = 43
    ClientWidth = 828
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 8
      Height = 30
      Top = 7
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
  end
  object Panel2: TPanel
    Left = 0
    Height = 249
    Top = 40
    Width = 828
    Align = alClient
    BevelOuter = bvLowered
    ClientHeight = 249
    ClientWidth = 828
    TabOrder = 2
    object RxDBGrid2: TRxDBGrid
      Left = 1
      Height = 247
      Top = 1
      Width = 127
      ColumnDefValues.BlobText = '(blob)'
      TitleButtons = True
      AutoSort = True
      Columns = <      
        item
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = 'ROK'
          FieldName = 'rok'
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
      OptionsRx = [rdgAllowDialogFind, rdgAllowQuickSearch, rdgAllowQuickFilter, rdgAllowFilterForm, rdgAllowSortForm, rdgCaseInsensitiveSort, rdgWordWrap]
      FooterRowCount = 1
      Align = alLeft
      AlternateColor = 16055807
      AutoAdvance = aaNone
      AutoEdit = False
      Color = clWindow
      DrawFullLine = False
      FocusColor = clHighlight
      FixedHotColor = clNone
      SelectedColor = clHighlight
      GridLineStyle = psSolid
      DataSource = DSStawkiPlac
      DefaultRowHeight = 22
      FixedColor = clNone
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgAlwaysShowSelection, dgConfirmDelete, dgHeaderHotTracking, dgHeaderPushedLook, dgAnyButtonCanSelect, dgDisableDelete, dgDisableInsert, dgCellHints, dgCellEllipsis]
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TitleStyle = tsNative
    end
    object DBMemo1: TDBMemo
      Left = 144
      Height = 90
      Top = 40
      Width = 126
      DataField = 'nazwa_1'
      DataSource = DSStawkiPlac
      TabOrder = 1
    end
    object DBMemo2: TDBMemo
      Left = 280
      Height = 90
      Top = 40
      Width = 126
      DataField = 'nazwa_2'
      DataSource = DSStawkiPlac
      TabOrder = 2
    end
    object DBMemo3: TDBMemo
      Left = 416
      Height = 90
      Top = 40
      Width = 126
      DataField = 'nazwa_3'
      DataSource = DSStawkiPlac
      TabOrder = 3
    end
    object DBMemo4: TDBMemo
      Left = 552
      Height = 90
      Top = 40
      Width = 126
      DataField = 'nazwa_4'
      DataSource = DSStawkiPlac
      TabOrder = 4
    end
    object DBMemo5: TDBMemo
      Left = 688
      Height = 90
      Top = 40
      Width = 126
      DataField = 'nazwa_5'
      DataSource = DSStawkiPlac
      TabOrder = 5
    end
    object DBEdit1: TDBEdit
      Left = 144
      Height = 23
      Top = 168
      Width = 126
      DataField = 'stawka_1'
      DataSource = DSStawkiPlac
      CharCase = ecNormal
      MaxLength = 0
      TabOrder = 6
    end
    object DBEdit2: TDBEdit
      Left = 280
      Height = 23
      Top = 168
      Width = 126
      DataField = 'stawka_2'
      DataSource = DSStawkiPlac
      CharCase = ecNormal
      MaxLength = 0
      TabOrder = 7
    end
    object DBEdit3: TDBEdit
      Left = 416
      Height = 23
      Top = 168
      Width = 126
      DataField = 'stawka_3'
      DataSource = DSStawkiPlac
      CharCase = ecNormal
      MaxLength = 0
      TabOrder = 8
    end
    object DBEdit4: TDBEdit
      Left = 552
      Height = 23
      Top = 168
      Width = 126
      DataField = 'stawka_4'
      DataSource = DSStawkiPlac
      CharCase = ecNormal
      MaxLength = 0
      TabOrder = 9
    end
    object DBEdit5: TDBEdit
      Left = 688
      Height = 23
      Top = 168
      Width = 126
      DataField = 'stawka_5'
      DataSource = DSStawkiPlac
      CharCase = ecNormal
      MaxLength = 0
      TabOrder = 10
    end
    object Label1: TLabel
      Left = 147
      Height = 15
      Top = 15
      Width = 76
      Caption = 'Opis miesięcy:'
      ParentColor = False
    end
    object Label2: TLabel
      Left = 147
      Height = 15
      Top = 144
      Width = 259
      Caption = 'Stawki godzinowe w poszczególnych miesiącach:'
      ParentColor = False
    end
    object DBNavigator1: TDBNavigator
      Left = 144
      Height = 25
      Top = 219
      Width = 241
      BevelOuter = bvNone
      ChildSizing.EnlargeHorizontal = crsScaleChilds
      ChildSizing.EnlargeVertical = crsScaleChilds
      ChildSizing.ShrinkHorizontal = crsScaleChilds
      ChildSizing.ShrinkVertical = crsScaleChilds
      ChildSizing.Layout = cclLeftToRightThenTopToBottom
      ChildSizing.ControlsPerLine = 100
      ClientHeight = 25
      ClientWidth = 241
      DataSource = DSStawkiPlac
      Options = []
      TabOrder = 11
      VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
    end
  end
  object frReport1: TfrReport
    InitialZoom = pzDefault
    Options = [roSaveAndRestoreBookmarks]
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    DataType = dtDataSet
    Left = 712
    Top = 8
  end
  object DSStawkiPlac: TDataSource
    DataSet = ZQStawkiPlac
    Left = 632
    Top = 8
  end
  object ZQStawkiPlac: TZQuery
    Connection = DM.ZConnection1
    OnNewRecord = ZQStawkiPlacNewRecord
    SQL.Strings = (
      'SELECT *'
      'FROM zat_stawki_plac;'
    )
    Params = <>
    Left = 552
    Top = 8
    object ZQStawkiPlacID: TLongintField
      FieldKind = fkData
      FieldName = 'ID'
      Index = 0
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = True
    end
    object ZQStawkiPlacrok: TLongintField
      FieldKind = fkData
      FieldName = 'rok'
      Index = 1
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = True
    end
    object ZQStawkiPlacnazwa_1: TStringField
      FieldKind = fkData
      FieldName = 'nazwa_1'
      Index = 2
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = True
      Size = 400
    end
    object ZQStawkiPlacstawka_1: TFloatField
      FieldKind = fkData
      FieldName = 'stawka_1'
      Index = 3
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = True
      DisplayFormat = '# ### ##0.00'
      EditFormat = '###0.00'
      Currency = True
      Precision = 7
    end
    object ZQStawkiPlacnazwa_2: TStringField
      FieldKind = fkData
      FieldName = 'nazwa_2'
      Index = 4
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = True
      Size = 400
    end
    object ZQStawkiPlacstawka_2: TFloatField
      FieldKind = fkData
      FieldName = 'stawka_2'
      Index = 5
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = True
      DisplayFormat = '# ### ##0.00'
      EditFormat = '###0.00'
      Currency = True
      Precision = 7
    end
    object ZQStawkiPlacnazwa_3: TStringField
      FieldKind = fkData
      FieldName = 'nazwa_3'
      Index = 6
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = True
      Size = 400
    end
    object ZQStawkiPlacstawka_3: TFloatField
      FieldKind = fkData
      FieldName = 'stawka_3'
      Index = 7
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = True
      DisplayFormat = '# ### ##0.00'
      EditFormat = '###0.00'
      Currency = True
      Precision = 7
    end
    object ZQStawkiPlacnazwa_4: TStringField
      FieldKind = fkData
      FieldName = 'nazwa_4'
      Index = 8
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = True
      Size = 400
    end
    object ZQStawkiPlacstawka_4: TFloatField
      FieldKind = fkData
      FieldName = 'stawka_4'
      Index = 9
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = True
      DisplayFormat = '# ### ##0.00'
      EditFormat = '###0.00'
      Currency = True
      Precision = 7
    end
    object ZQStawkiPlacnazwa_5: TStringField
      FieldKind = fkData
      FieldName = 'nazwa_5'
      Index = 10
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = True
      Size = 400
    end
    object ZQStawkiPlacstawka_5: TFloatField
      FieldKind = fkData
      FieldName = 'stawka_5'
      Index = 11
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = True
      DisplayFormat = '# ### ##0.00'
      EditFormat = '###0.00'
      Currency = True
      Precision = 7
    end
  end
  object ZQZatOs: TZQuery
    Connection = DM.ZConnection1
    ReadOnly = True
    SQL.Strings = (
      'SELECT '
      'zat.Nazwisko, '
      'zat.Imie, '
      'zat.Ojciec, '
      'zat.zat_od, '
      'zat.nr_ewidencyjny, '
      'sta.forma, '
      'sta.system, '
      'sta.nazwa'
      'FROM zat_zatrudnieni as zat'
      'LEFT OUTER JOIN zat_stanowiska as sta ON (zat.id_stanowiska = sta.id)'
      'WHERE zat.id = :id'
    )
    Params = <    
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    Left = 552
    Top = 64
    ParamData = <    
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object DSZatOs: TDataSource
    DataSet = ZQZatOs
    Left = 632
    Top = 64
  end
end
