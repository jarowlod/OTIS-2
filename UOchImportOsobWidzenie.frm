object OchImportOsobWidzenie: TOchImportOsobWidzenie
  Left = 342
  Height = 457
  Top = 242
  Width = 856
  Caption = 'Import osób uprawnionych do widzenia z NoeNET.'
  ClientHeight = 457
  ClientWidth = 856
  OnCreate = FormCreate
  LCLVersion = '6.6'
  object Panel2: TPanel
    Left = 0
    Height = 48
    Top = 0
    Width = 856
    Align = alTop
    BevelOuter = bvNone
    ClientHeight = 48
    ClientWidth = 856
    Color = clWhite
    ParentColor = False
    TabOrder = 0
    object plGradient2: TplGradient
      Left = 0
      Height = 48
      Top = 0
      Width = 856
      Align = alClient
      BevelWidth = 1
      BevelStyle = bvNone
      Buffered = True
      Direction = gdUpLeft
      ColorStart = clSkyBlue
      ColorEnd = clWhite
      StepWidth = 1
      Style = gsHorizontal
    end
    object Label8: TLabel
      Left = 16
      Height = 23
      Top = 10
      Width = 256
      Caption = 'Import osób bliskich osadzonego:'
      Font.Height = 24
      ParentColor = False
      ParentFont = False
    end
    object lblDaneOsadzonego: TLabel
      Left = 280
      Height = 38
      Top = 7
      Width = 156
      Caption = 'lblDaneOsadzonego'#13#10'POC'
      Font.CharSet = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Pitch = fpVariable
      Font.Quality = fqDraft
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
  end
  object Panel1: TPanel
    Left = 0
    Height = 50
    Top = 407
    Width = 856
    Align = alBottom
    ClientHeight = 50
    ClientWidth = 856
    TabOrder = 1
    object btnImportOsob: TBitBtn
      Left = 8
      Height = 30
      Top = 8
      Width = 163
      Caption = 'Dopisz osoby bliskie'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000064000000640000000000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0042AD52FF42AD52FFFFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF5AD2E0EF98C6D6EA98C9D8EA96C9D7E996C9D7E996C9D7E896FFFF
        FFFFFFFFFFFFFFFFFFFF42AD52FF42AD52FFFFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFFE46794CDFF659AD5FF5C92D2FF5991D0FF5991D0FF578FCFFFFFFF
        FFFF42AD52FF42AD52FF42AD52FF42AD52FF42AD52FF42AD52FFFFFFFF00FFFF
        FF00FFFFFFE16C93CBFF79B4EBFF8DCBFCFF78C0FBFF5EAFF7FF51A7F6FFFFFF
        FFFF42AD52FF42AD52FF42AD52FF42AD52FF42AD52FF42AD52FFFFFFFF00FFFF
        FF00FFFFFF46FEFEFFC3B3C5E2FE6593CFFF61A2E1FF6FB7F5FF60AFF4FFFFFF
        FFFFFFFFFFFFFFFFFFFF42AD52FF42AD52FFFFFFFF00FFFFFF00000000070000
        00080000000800000008E5E5E53BFCFCFCBABDCCE4FD659FD9FF60A1E1FFABBE
        DDFEF1F3F7CDFFFFFFFF42AD52FF42AD52FF0000000800000007845925578658
        24618354245F7F52225F7E4F205FA9907988C7D3E9FE68A4DDFF69ABE9FFA8BE
        DEFF9BA0CF9CFFFFFFFFFFFFFFFFFFFFFFFF17249F6114229957BF9768E2D3B5
        86FFC6A16CFFBE9763FFBC9462FFDACCBBFF6395D0FF8AC7FAFF7CC1FAFF5B8E
        CDFFC8CCF3FF626DE0FF5E68DFFF5D66DFFF6A72E5FF5262CEE9865A2957B68C
        59C5CCAA76FFCBA56DFFBA8D50FFDCCFC0FF6698D2FF8DCAF9FF7CC1F9FF578F
        D0FFC3CAF3FF6069EEFF6D73F0FF6C72E9FF5A65D6EA2538A57D000000090603
        011B8254275BAC8051B7C9A56FFBE7DACAFE6492CEFFA2D7FDFF97D2FDFF5A8F
        CDFFCFD4F5FE747DECFD4B5AC4BE2839A0720D1C66360000000DFFFFFF000000
        00000000000739220C27C19A66E4D9C2A3FBBACAE4FE6496D3FF6399D7FF9EB8
        DCFFB0B5EBF0747FE0F915227B410000000A00000003FFFFFF00FFFFFF00FFFF
        FF000000000DA274408FD1AD76FECFAC73FFD0BAA0C8BACAE2D8ACBFDEE2BEC3
        E5CD808CEEFE7E8AF1FF4653C0A700000010FFFFFF00FFFFFF00FFFFFF000000
        0001301F0C23C29B63D8D3AE6CFFCDA663FFB89060DF38200E270F1133256B77
        D4D87B8BF6FF7482F5FF626ED2DF0E16452700000002FFFFFF00FFFFFF000000
        0002412A1227C8A169E0D8B56EFFD3AC67FFBE9663E23F25102C16194429727E
        D8E07D8FF8FF7787F6FF6875D5E212194D2A00000002FFFFFF00FFFFFF000000
        00000604011BAE7E48A0DCBD83FFDDBF85FFB0844FB4100A031D0202071B545A
        BDA08E9BF0FF8F9DF3FF5461C6B40406141D00000000FFFFFF00FFFFFF00FFFF
        FF000000000436220E24A0713A7BA676428F5B3B183300000007000000041214
        3B24444DAF7B4B55B48F1D24693300000007FFFFFF00FFFFFF00
      }
      OnClick = btnImportOsobClick
      TabOrder = 0
    end
  end
  object Panel3: TPanel
    Left = 0
    Height = 359
    Top = 48
    Width = 856
    Align = alClient
    BevelOuter = bvNone
    ClientHeight = 359
    ClientWidth = 856
    TabOrder = 2
    object btnPaste: TBitBtn
      Left = 8
      Height = 30
      Hint = 'Zawartość XML: (Przeglądarka osób bliskich / prawy przycisk myszy / zaznaczamy całość i kopiujemy do schowka)'
      Top = 0
      Width = 208
      Caption = 'Wklej ze schowka dane z Noe'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        200000000000000400006400000064000000000000000000000000000000328B
        BEFF3486C4F33488C4F33488C4F33288C8F33596DCF36A4B2BF3B8915AF3AF93
        69F3AF9266F3B09266F3B4976CF3B4996FF3BAA178F485581BE349AFFFFF49BB
        FFFF3FB8FFFF41B8FFFF40B6FFFF41BCFFFF2BC1FFFF737765FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBEA686F646A5FEF2349F
        FFFF2CA0FFFF2FA0FFFF2D9DFFFF31A4FFFF0CA2FFFF696F69FFFFEBD9FFF2F2
        EDFFF1EEE7FFF1EEE7FFEFEDE3FFECE9E1FFFFFFFFFFB69B73F146ABFEF33AAA
        FFFF35A9FFFF37A9FFFF39A9FFFF3BADFFFF1CACFFFF6F7269FFFFEEDCFFF4F4
        F1FFF3F1E9FFF4F1EBFFF6F2EDFFF8F1EDFFFFFFFFFFB69F78F147ADFEF33EB1
        FFFF39AAFFFF3BACFFFF3BABFFFF3DB1FFFF22B1FFFF6F7667FFFFEDD9FFF3F4
        EDFFF3EFEAFFF6F1ECFFFBF7F4FFFBF4F1FFFFFFFFFFB59A70F149ADFEF343B5
        FFFF3CADFFFF3EAFFFFF3EAEFFFF43B5FFFF26B5FFFF727D70FFFFF5E4FFF8F9
        F5FFFBF7F3FFFBFBF7FFFBFCF8FFF2EEE9FFF2EFE9FFAD9064F14EAFFEF348B9
        FFFF40B3FFFF43B4FFFF41B0FFFF44B7FFFF29B7FFFF7B8579FFFFF8EEFFFBFC
        FFFFF9FCFBFFFBFBFBFFF5F1ECFFE9E0D6FFE1D8C9FFA28451F54FB1FEF34EBF
        FFFF43B5FFFF48B8FFFF46B7FFFF47BBFFFF2CBAFFFF818980FFFFF8EDFFFBFD
        FFFFFCFBF9FFF7F4EDFFD9CEBAFFCEBFA1FFBCA27CFF966E35ED51B4FEF353C2
        FFFF46B9FFFF49B9FFFF49B6FFFF4ABBFFFF2BBAFFFF818E88FFFFF8EFFFFBFE
        FFFFF4F2EBFFEAE1D8FFCAB597FFFBFBF9FFF3EEEAFFB0966AFF54B5FEF358C4
        FFFF4ABBFFFF50CFFFFF54D8FFFF51D9FFFF3AD5FFFF9F9D8EFFFFFFFCFFFFFF
        FFFFFDE6D0FFEACAAAFFC19359FFF4EFEBFFAA8D5DFF0000000055B6FEF25ECA
        FFFF54CEFFFF3996BEFF145876FF1E668DFF02639DFF4E5C5AFF908570FF827E
        6AFF869D9AFF839B8DFF6C7D70FFC39558FF00000000000000005DB8FEFF5AD4
        FFFF44C1FBFF81716EFF91796DFF887A74FF8D7B72FF7A7E83FF787E87FF5D59
        5DFF0074CBFF25BEFFFF16A4FFFF0085FF44000000000000000058B1FECD77D3
        FFFF4DB8F4FFCFC9C6FFFFFFFCFFEFEFEEFFFFFEFDFFF1EFEFFFFFFFFEFFD7CD
        C4FF1166ACFF3AACFFFF2799FBFF0B87F13000000000000000000000000048AB
        FF5140A5F63EBFC2C1FFFFFCF6FFFFFFFFFFB3B1B1FFFCFEFEFFFFFFFFFFC5C8
        C5FF0064BF3E1890FE4D0C89F528000000000000000000000000000000000000
        00000000000000000000EBE4DF29E1E2E2FFABABABFFE4E2E2FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000C9C9C91EA6A6A6FFB7B7B780000000000000
        0000000000000000000000000000000000000000000000000000
      }
      OnClick = btnPasteClick
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
    object RxDBGrid4: TRxDBGrid
      Left = 0
      Height = 327
      Top = 32
      Width = 856
      ColumnDefValues.BlobText = '(blob)'
      TitleButtons = True
      AutoSort = True
      Columns = <      
        item
          SizePriority = 0
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = 'Nazwisko'
          Width = 100
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
          Width = 100
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
          SizePriority = 0
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = 'Adres'
          Width = 150
          FieldName = 'Adres'
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
          Title.Caption = 'Pokrewieństwo'
          Width = 100
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
          SizePriority = 2
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = 'Uwagi'
          Width = 243
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
          ButtonStyle = cbsCheckboxColumn
          SizePriority = 0
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = 'Prawo do widzeń'
          Width = 60
          ValueChecked = '0'
          ValueUnchecked = '1'
          FieldName = 'Skreslona'
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
          Color = clSkyBlue
          SizePriority = 0
          Title.Alignment = taCenter
          Title.Font.CharSet = EASTEUROPE_CHARSET
          Title.Font.Pitch = fpVariable
          Title.Font.Quality = fqDraft
          Title.Font.Style = [fsBold]
          Title.Orientation = toHorizontal
          Title.Caption = 'Status Osoby'
          Width = 70
          FieldName = 'StatusOs'
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
      OptionsRx = [rdgFooterRows, rdgCaseInsensitiveSort, rdgWordWrap]
      FooterColor = clSilver
      FooterRowCount = 1
      Align = alBottom
      AlternateColor = 16055807
      Anchors = [akTop, akLeft, akRight]
      AutoAdvance = aaNone
      AutoFillColumns = True
      AutoEdit = False
      Color = clWindow
      DrawFullLine = False
      FocusColor = clHighlight
      FixedHotColor = clNone
      SelectedColor = clHighlight
      GridLineStyle = psSolid
      DataSource = DSImport
      DefaultRowHeight = 19
      FixedColor = clNone
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgHeaderHotTracking, dgHeaderPushedLook, dgDisableDelete, dgDisableInsert, dgTruncCellHints, dgCellEllipsis]
      ReadOnly = True
      TabOrder = 1
      TitleFont.CharSet = EASTEUROPE_CHARSET
      TitleFont.Pitch = fpVariable
      TitleFont.Quality = fqDraft
      TitleStyle = tsNative
      OnPrepareCanvas = RxDBGrid4PrepareCanvas
    end
    object Label1: TLabel
      Left = 224
      Height = 15
      Top = 7
      Width = 599
      Caption = 'Zawartość XML: (Przeglądarka osób bliskich / prawy przycisk myszy / zaznaczamy całość i kopiujemy do schowka)'
      Font.Color = clGray
      ParentColor = False
      ParentFont = False
    end
  end
  object DSImport: TDataSource
    DataSet = RxMemoryImport
    Left = 100
    Top = 180
  end
  object RxMemoryImport: TRxMemoryData
    FieldDefs = <    
      item
        Name = 'Nazwisko'
        DataType = ftString
        Size = 45
      end    
      item
        Name = 'Imie'
        DataType = ftString
        Size = 45
      end    
      item
        Name = 'Adres'
        DataType = ftString
        Size = 100
      end    
      item
        Name = 'Pokrew'
        DataType = ftString
        Size = 100
      end    
      item
        Name = 'Uwagi'
        DataType = ftString
        Size = 100
      end    
      item
        Name = 'Skreslona'
        DataType = ftInteger
      end    
      item
        Name = 'StatusOs'
        DataType = ftString
        Size = 20
      end    
      item
        Name = 'ID'
        DataType = ftInteger
      end>
    PacketRecords = 0
    Left = 100
    Top = 236
    object RxMemoryImportNazwisko: TStringField
      FieldKind = fkData
      FieldName = 'Nazwisko'
      Index = 0
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
      Size = 50
    end
    object RxMemoryImportImie: TStringField
      FieldKind = fkData
      FieldName = 'Imie'
      Index = 1
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
      Size = 50
    end
    object RxMemoryImportAdres: TStringField
      FieldKind = fkData
      FieldName = 'Adres'
      Index = 2
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
      Size = 100
    end
    object RxMemoryImportPokrew: TStringField
      FieldKind = fkData
      FieldName = 'Pokrew'
      Index = 3
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
      Size = 50
    end
    object RxMemoryImportUwagi: TStringField
      FieldKind = fkData
      FieldName = 'Uwagi'
      Index = 4
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
      Size = 100
    end
    object RxMemoryImportSkreslona: TLongintField
      FieldKind = fkData
      FieldName = 'Skreslona'
      Index = 5
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
    end
    object RxMemoryImportStatusOs: TStringField
      FieldKind = fkData
      FieldName = 'StatusOs'
      Index = 6
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
    end
    object RxMemoryImportID: TLongintField
      FieldKind = fkData
      FieldName = 'ID'
      Index = 7
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
    end
  end
end
