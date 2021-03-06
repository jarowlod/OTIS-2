object AktualizacjaOs: TAktualizacjaOs
  Left = 334
  Height = 515
  Top = 226
  Width = 1163
  Caption = 'AktualizacjaOs'
  ClientHeight = 515
  ClientWidth = 1163
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  Position = poOwnerFormCenter
  LCLVersion = '6.6'
  object Panel1: TPanel
    Left = 0
    Height = 234
    Top = 0
    Width = 1163
    Align = alTop
    ClientHeight = 234
    ClientWidth = 1163
    Color = 16308899
    ParentColor = False
    TabOrder = 0
    object Memo2: TMemo
      Left = 312
      Height = 212
      Top = 11
      Width = 840
      Align = alRight
      Anchors = [akTop, akLeft, akRight, akBottom]
      BorderSpacing.Around = 10
      Color = clBlack
      Font.Color = clLime
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssAutoBoth
      TabOrder = 0
    end
    object btnAktualizujOs: TBitBtn
      Left = 22
      Height = 30
      Top = 14
      Width = 251
      Caption = 'Aktualizuj dane osadzonych'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000064000000640000000000000000000000000000000000
        0000000000002B930009339A00642EA600CD1F9C00F619A000F31B9300F51D93
        03DA217E03722382032400000000000000000000000035B40A37000000000000
        00002C92003F279B00ED22D000FF1DE400FF17EB00FF17E400FF1AE605FF22E3
        09FF28D50BFF26AC06FF26960477000000001585038A199405FF000000002F97
        00391EA000FF17E000FF1AE800FF1CE100FF21E403FF27E707FF2CE508FF30E5
        05FF36E813FF32EC19FF25C50CFF107E00F71DC916FF28CC14F9309C000A1E8A
        00F910D700FF17DF00FF1DE200FF23E605FF30D60AFF3AC90EFF56DB37FF77F2
        76FF5EF444FF4CEC2BFF45F02DFF31E823FF47FA44FF2DCB1BF32A8C006412B3
        00FF10D900FF1ADA01FF2AE407FF3EBB0AF4319B049134A2041F38AF0B392DA9
        04A75DCD5CFF7FFC74FF66F14EFF62F459FF77FD7BFF3CD629F3198301E609CC
        00FF0FD403FF1FE308FF46C50DFF4CB7092F000000000000000029AC032228AE
        0FC661E562FF7AFB69FF76F86BFF77F874FF92FF9DFF40DE2EF32C7F01AF16AB
        01C71BC104FF24C709FF3CB009A5000000000000000045CF100C21A600C442C3
        42FE97EBA3FF8EF396FF9DFFB0FFA5FFB1FFA6FFBCFF3EE432F4000000000000
        00000000000000000000000000000000000000000000000000000000000014A3
        00130097004209BD007031C935D051DB56FF95FAAEFF59E850FFBD6E1FFFF3C5
        6BFFECB378FFDA884ED7D375286FC3640342C365091300000000000000000000
        0000000000000000000000000000000000000000000000000000B75A00F4EBA9
        17FFF0BD4FFFF7D87DFFF6D794FFF1D4A1FFE2B067FED07F1EC4D483270C0000
        000000000000DD8B25FFF5B24BFFFDB149FFFFB751FFFF9331FFB95E03F3E496
        04FFE1970AFFE6A31DFFEEB63BFFEEC467FFD18633C6C3681322000000000000
        0000DA8E252FE9AD42F8FFEC9BFFFFEB99FFFFF2C9FFF1C45CE7BB6006F3E59F
        0FFFE6A421FFE7A829FFF2C65FFFE4B472FFA7480AA795370939A4420B1FAE4F
        0E91DC912CF4FCE088FFFDE28BFFFFECABFFFCE3B4FFEEB33164BB5E07F3E69A
        0FFFE2961DFFE9A930FFEBB23BFFF4CA63FFF7DA90FFEFC370FFE8AE4FFFF2C6
        62FFFDE187FFFCE186FFFDE394FFFFF7DCFFF1C154F9EFB53B0AC7710CF9D881
        10FFB55814F7D88D2BFFEFB941FFF0BF4CFFF1C14CFFF5CA5EFFF9D470FFF9D7
        74FFFADA7DFFFFE8A3FFFFF7DCFFF5CD74FFEEB1323900000000B55A0FFFB259
        138A00000000C66F1A77D98F34FFECB854FFF7D679FFF9DC89FFFBE08FFFFDE8
        A7FFFDEBB8FFFBE4B4FFF1C155EDEEB2313F0000000000000000BD6618370000
        00000000000000000000CE791924D78E2E72E4A84CDAE9B057F5F1C472F3EFBF
        6AF6EFBD58CDEDB23364EEB43509000000000000000000000000
      }
      OnClick = btnAktualizujOsClick
      TabOrder = 1
    end
    object Label1: TLabel
      Left = 8
      Height = 31
      Top = 192
      Width = 296
      AutoSize = False
      Caption = 'Nowe dane z wyszukiwarki osadzonych z NeoNet wklejamy za pomocą przycisku [Wklej ze schowka].'
      ParentColor = False
      WordWrap = True
    end
    object btnWczytajSchowek: TBitBtn
      Left = 22
      Height = 30
      Top = 155
      Width = 147
      Caption = 'Wklej ze schowka'
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
      OnClick = btnWczytajSchowekClick
      TabOrder = 2
    end
  end
  object Memo1: TMemo
    Left = 0
    Height = 281
    Top = 234
    Width = 424
    Align = alClient
    ReadOnly = True
    ScrollBars = ssAutoBoth
    TabOrder = 1
  end
  object RxDBGrid1: TRxDBGrid
    Left = 424
    Height = 281
    Top = 234
    Width = 739
    ColumnDefValues.BlobText = '(blob)'
    TitleButtons = True
    AutoSort = True
    Columns = <    
      item
        Font.Color = clNavy
        Title.Alignment = taCenter
        Title.Orientation = toHorizontal
        Title.Caption = 'IDO'
        Width = 70
        FieldName = 'IDO'
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
        Title.Caption = 'NAZWISKO'
        Width = 100
        FieldName = 'NAZWISKO'
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
        Title.Caption = 'IMIE'
        Width = 100
        FieldName = 'IMIE'
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
        Title.Caption = 'OJCIEC'
        Width = 100
        FieldName = 'OJCIEC'
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
        Font.Color = clMaroon
        Title.Alignment = taCenter
        Title.Orientation = toHorizontal
        Title.Caption = 'URODZ'
        Width = 80
        FieldName = 'URODZ'
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
        Font.Color = clMaroon
        Title.Alignment = taCenter
        Title.Orientation = toHorizontal
        Title.Caption = 'PRZYJ'
        Width = 80
        FieldName = 'PRZYJ'
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
        Font.Color = clGreen
        Title.Alignment = taCenter
        Title.Orientation = toHorizontal
        Title.Caption = 'KLASYF'
        Width = 60
        FieldName = 'KLASYF'
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
        Font.Color = clGreen
        Title.Alignment = taCenter
        Title.Orientation = toHorizontal
        Title.Caption = 'POC'
        Width = 50
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
        Title.Alignment = taCenter
        Title.Orientation = toHorizontal
        Title.Caption = 'STATUS'
        Width = 60
        FieldName = 'STATUS'
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
    Align = alRight
    AlternateColor = 16055807
    AutoAdvance = aaNone
    AutoEdit = False
    Color = clWindow
    DrawFullLine = False
    FocusColor = clHighlight
    FixedHotColor = clNone
    SelectedColor = clHighlight
    GridLineStyle = psSolid
    DataSource = DataSource1
    DefaultRowHeight = 24
    FixedColor = clNone
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgHeaderHotTracking, dgHeaderPushedLook, dgDisableDelete, dgDisableInsert, dgTruncCellHints, dgCellEllipsis]
    ReadOnly = True
    TabOrder = 2
    TitleStyle = tsNative
  end
  object MemDataset1: TMemDataset
    FieldDefs = <    
      item
        Name = 'IDO'
        DataType = ftInteger
      end    
      item
        Name = 'NAZWISKO'
        DataType = ftString
        Size = 45
      end    
      item
        Name = 'IMIE'
        DataType = ftString
        Size = 45
      end    
      item
        Name = 'OJCIEC'
        DataType = ftString
        Size = 45
      end    
      item
        Name = 'URODZ'
        DataType = ftDate
      end    
      item
        Name = 'PRZYJ'
        DataType = ftDate
      end    
      item
        Name = 'KLASYF'
        DataType = ftString
        Size = 10
      end    
      item
        Name = 'POC'
        DataType = ftString
        Size = 10
      end    
      item
        Name = 'STATUS'
        DataType = ftString
        Size = 10
      end>
    Left = 640
    Top = 326
  end
  object DataSource1: TDataSource
    DataSet = MemDataset1
    Left = 733
    Top = 326
  end
end
