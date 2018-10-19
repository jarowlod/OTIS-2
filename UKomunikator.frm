object Komunikator: TKomunikator
  Left = 328
  Height = 560
  Top = 230
  Width = 736
  Caption = 'Komunikator'
  ClientHeight = 560
  ClientWidth = 736
  OnCreate = FormCreate
  Position = poOwnerFormCenter
  LCLVersion = '6.6'
  object PageControl1: TPageControl
    Left = 0
    Height = 510
    Top = 0
    Width = 736
    ActivePage = TabSheet1
    Align = alClient
    TabIndex = 0
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Odebrane'
      ClientHeight = 482
      ClientWidth = 728
      object RxDBGrid1: TRxDBGrid
        Left = 0
        Height = 162
        Top = 0
        Width = 728
        ColumnDefValues.BlobText = '(blob)'
        TitleButtons = True
        AutoSort = True
        Columns = <        
          item
            Font.Color = clMaroon
            Title.Alignment = taCenter
            Title.Orientation = toHorizontal
            Title.Caption = 'Data Nadania'
            Width = 120
            FieldName = 'dataNadania'
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
            Title.Caption = 'Nadawca'
            Width = 170
            FieldName = 'Full_name'
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
            Title.Caption = 'Temat'
            Width = 280
            FieldName = 'temat'
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
            Title.Caption = 'Data Odebrania'
            Width = 120
            FieldName = 'dataOdebrania'
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
        Align = alTop
        AlternateColor = 16055807
        AutoAdvance = aaNone
        AutoEdit = False
        Color = clWindow
        DrawFullLine = False
        FocusColor = clHighlight
        FixedHotColor = clNone
        SelectedColor = clHighlight
        GridLineStyle = psSolid
        DataSource = DSKomOdebrane
        DefaultRowHeight = 22
        FixedColor = clNone
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgHeaderHotTracking, dgHeaderPushedLook, dgAnyButtonCanSelect, dgDisableDelete, dgDisableInsert, dgCellHints, dgCellEllipsis]
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 0
        TitleStyle = tsNative
      end
      object RichMemo1: TRichMemo
        Left = 0
        Height = 315
        Top = 167
        Width = 728
        Align = alClient
        HideSelection = False
        PopupMenu = PopupMenu1
        ReadOnly = True
        ScrollBars = ssAutoBoth
        TabOrder = 1
        ZoomFactor = 1
      end
      object Splitter2: TSplitter
        Cursor = crVSplit
        Left = 0
        Height = 5
        Top = 162
        Width = 728
        Align = alTop
        ResizeAnchor = akTop
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Wysłane'
      ClientHeight = 482
      ClientWidth = 728
      object Panel2: TPanel
        Left = 0
        Height = 168
        Top = 0
        Width = 728
        Align = alTop
        BevelOuter = bvNone
        ClientHeight = 168
        ClientWidth = 728
        TabOrder = 0
        object RxDBGrid2: TRxDBGrid
          Left = 0
          Height = 168
          Top = 0
          Width = 361
          ColumnDefValues.BlobText = '(blob)'
          TitleButtons = True
          AutoSort = True
          Columns = <          
            item
              Font.Color = clMaroon
              SizePriority = 0
              Title.Alignment = taCenter
              Title.Orientation = toHorizontal
              Title.Caption = 'Data Nadania'
              Width = 120
              FieldName = 'dataNadania'
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
              Title.Caption = 'Temat'
              Width = 208
              FieldName = 'temat'
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
          DataSource = DSKomWyslane
          DefaultRowHeight = 22
          FixedColor = clNone
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgHeaderHotTracking, dgHeaderPushedLook, dgAnyButtonCanSelect, dgDisableDelete, dgDisableInsert, dgCellHints, dgCellEllipsis]
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 0
          TitleStyle = tsNative
        end
        object RxDBGrid3: TRxDBGrid
          Left = 361
          Height = 168
          Top = 0
          Width = 367
          ColumnDefValues.BlobText = '(blob)'
          TitleButtons = True
          AutoSort = True
          Columns = <          
            item
              Title.Alignment = taCenter
              Title.Orientation = toHorizontal
              Title.Caption = 'Odbiorca'
              Width = 200
              FieldName = 'Full_name'
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
              Title.Caption = 'Data Odebrania'
              Width = 120
              FieldName = 'dataOdebrania'
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
          DataSource = DSKomOdbiorcy
          DefaultRowHeight = 22
          FixedColor = clNone
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgHeaderHotTracking, dgHeaderPushedLook, dgAnyButtonCanSelect, dgDisableDelete, dgDisableInsert, dgCellHints, dgCellEllipsis]
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 1
          TitleStyle = tsNative
        end
      end
      object RichMemo2: TRichMemo
        Left = 0
        Height = 309
        Top = 173
        Width = 728
        Align = alClient
        HideSelection = False
        ReadOnly = True
        Rtf = '{\rtf1\ansi\ansicpg1250\deff0\deflang1045{\fonttbl{\f0\fnil\fcharset0 Segoe UI;}}'#13#10'{\*\generator Msftedit 5.41.21.2510;}\viewkind4\uc1\pard\lang1033\f0\fs18\par'#13#10'}'#13#10#0
        ScrollBars = ssAutoBoth
        TabOrder = 1
        ZoomFactor = 1
      end
      object Splitter1: TSplitter
        Cursor = crVSplit
        Left = 0
        Height = 5
        Top = 168
        Width = 728
        Align = alTop
        ResizeAnchor = akTop
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Height = 50
    Top = 510
    Width = 736
    Align = alBottom
    ClientHeight = 50
    ClientWidth = 736
    TabOrder = 1
    object btnNowaWiadomosc: TBitBtn
      Left = 8
      Height = 30
      Top = 8
      Width = 160
      Caption = 'Nowa wiadomość'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000064000000640000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000009F5A
        00FF9F5A00470000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000009F5A
        00FF9F5A00FF9F5A004700000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000A05C
        00FFDCB069FFA15C00FF9F5A0047000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000A35E
        00FFF4D191FFDCB069FFA35E00FF9F5A00470000000000000000000000000000
        00000000000000000000000000000000000000000000000000009F5A0047A661
        00FFF5D499FFF5D599FFDDB26EFFA66000FF9F5A004700000000000000009F5A
        0047AA6400FFA96400FFA96400FFAA6400FFAA6400FFAA6400FFAA6400FFAA64
        00FFF6D9A4FFF6D9A4FFF6D9A4FFDEB676FFA96400FF9F5A00479F5A0047AE67
        00FFDEB980FFF8DFB2FFF8DFB2FFF7DFB1FFF7DFB2FFF7DFB1FFF7DFB1FFF7DF
        B1FFF7DFB1FFF7DFB2FFF7DEB2FFF7DEB1FFDFBA80FFAE6800FFB16B00FFE0BE
        8BFFF8E5C0FFF8E5C0FFF8E5C1FFF9E5C0FFF8E5C0FFF9E5C1FFF8E5C0FFF8E5
        C1FFF9E5C0FFF9E5C0FFF9E5C1FFF9E5C1FFF9E5C0FFB16B00FFB56E00FFFAEB
        CFFFFAEBCFFFFAEBCFFFFAEBD0FFFAEBD0FFFBEBD0FFFAEBD0FFFAEBCFFFFBEB
        D0FFFBEBCFFFFBEBD0FFFAEBCFFFFBECD0FFFAEBD0FFB56F00FFB87100FFFCF1
        DEFFFCF2DFFFFCF1DFFFFBF1DFFFFCF1DEFFFCF1DEFFFCF1DFFFFCF1DFFFFCF1
        DEFFFCF2DFFFFCF1DFFFFCF1DFFFFCF1DEFFFBF1DEFFB87200FFBC7500FFFDF7
        ECFFFDF7ECFFFDF7ECFFFDF7ECFFFDF7ECFFFEF7ECFFFDF7ECFFFDF7EBFFFDF7
        ECFFFDF7ECFFFDF7ECFFFDF7ECFFFDF7ECFFFDF7EBFFBB7500FFBF7700FFFEFC
        F7FFFEFCF7FFFEFCF7FFFEFCF7FFFFFCF7FFFEFBF7FFFEFCF7FFFFFCF7FFFEFC
        F7FFFEFBF7FFFFFCF7FFFEFCF7FFFEFBF7FFFEFCF7FFBF7800FFC27A00FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC27A00FFC37C00FFE4D1
        B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4D1B8FFC37C00FF9F5A0047C37C
        00FFE4D1B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFE4D1B8FFC37C00FF9F5A0047000000009F5A
        0047C37C00FFC37C00FFC37C00FFC37C00FFC37C00FFC37C00FFC37C00FFC37C
        00FFC37C00FFC37C00FFC37C00FFC37C00FF9F5A004700000000
      }
      OnClick = btnNowaWiadomoscClick
      TabOrder = 0
    end
    object btnOdswiez: TBitBtn
      Left = 607
      Height = 30
      Top = 8
      Width = 123
      Anchors = [akTop, akRight]
      Caption = 'Odśwież'
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
      OnClick = btnOdswiezClick
      TabOrder = 1
    end
    object btnOdpisz: TBitBtn
      Left = 176
      Height = 30
      Top = 8
      Width = 104
      Caption = 'Odpisz'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000064000000640000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000009F5A
        00FF9F5A00470000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000009F5A
        00FF9F5A00FF9F5A004700000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000A05C
        00FFDCB069FFA15C00FF9F5A0047000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000A35E
        00FFF4D191FFDCB069FFA35E00FF9F5A00470000000000000000000000000000
        00000000000000000000000000000000000000000000000000009F5A0047A661
        00FFF5D499FFF5D599FFDDB26EFFA66000FF9F5A004700000000000000009F5A
        0047AA6400FFA96400FFA96400FFAA6400FFAA6400FFAA6400FFAA6400FFAA64
        00FFF6D9A4FFF6D9A4FFF6D9A4FFDEB676FFA96400FF9F5A00479F5A0047AE67
        00FFDEB980FFF8DFB2FFF8DFB2FFF7DFB1FFF7DFB2FFF7DFB1FFF7DFB1FFF7DF
        B1FFF7DFB1FFF7DFB2FFF7DEB2FFF7DEB1FFDFBA80FFAE6800FFB16B00FFE0BE
        8BFFF8E5C0FFF8E5C0FFF8E5C1FFF9E5C0FFF8E5C0FFF9E5C1FFF8E5C0FFF8E5
        C1FFF9E5C0FFF9E5C0FFF9E5C1FFF9E5C1FFF9E5C0FFB16B00FFB56E00FFFAEB
        CFFFFAEBCFFFFAEBCFFFFAEBD0FFFAEBD0FFFBEBD0FFFAEBD0FFFAEBCFFFFBEB
        D0FFFBEBCFFFFBEBD0FFFAEBCFFFFBECD0FFFAEBD0FFB56F00FFB87100FFFCF1
        DEFFFCF2DFFFFCF1DFFFFBF1DFFFFCF1DEFFFCF1DEFFFCF1DFFFFCF1DFFFFCF1
        DEFFFCF2DFFFFCF1DFFFFCF1DFFFFCF1DEFFFBF1DEFFB87200FFBC7500FFFDF7
        ECFFFDF7ECFFFDF7ECFFFDF7ECFFFDF7ECFFFEF7ECFFFDF7ECFFFDF7EBFFFDF7
        ECFFFDF7ECFFFDF7ECFFFDF7ECFFFDF7ECFFFDF7EBFFBB7500FFBF7700FFFEFC
        F7FFFEFCF7FFFEFCF7FFFEFCF7FFFFFCF7FFFEFBF7FFFEFCF7FFFFFCF7FFFEFC
        F7FFFEFBF7FFFFFCF7FFFEFCF7FFFEFBF7FFFEFCF7FFBF7800FFC27A00FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC27A00FFC37C00FFE4D1
        B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4D1B8FFC37C00FF9F5A0047C37C
        00FFE4D1B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFE4D1B8FFC37C00FF9F5A0047000000009F5A
        0047C37C00FFC37C00FFC37C00FFC37C00FFC37C00FFC37C00FFC37C00FFC37C
        00FFC37C00FFC37C00FFC37C00FFC37C00FF9F5A004700000000
      }
      OnClick = btnOdpiszClick
      TabOrder = 2
    end
    object btnDrukuj: TBitBtn
      Left = 336
      Height = 30
      Top = 8
      Width = 40
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
      TabOrder = 3
    end
    object btnDrukujZaznaczone: TBitBtn
      Left = 376
      Height = 30
      Top = 8
      Width = 112
      Caption = 'Zaznaczone'
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
      OnClick = btnDrukujZaznaczoneClick
      TabOrder = 4
    end
  end
  object ZQKomOdebrane: TZQuery
    Connection = DM.ZConnection1
    UpdateObject = ZUKomOdebrane
    SQL.Strings = (
      'SELECT'
      'odb.ID,'
      'odb.odbiorca,'
      'odb.dataOdebrania,'
      'kom.dataNadania,'
      'kom.nadawca,'
      'kom.temat,'
      'kom.komunikat,'
      'upr.Full_name'
      'FROM kom_odbiorcy odb'
      'LEFT OUTER JOIN kom_tresc kom ON (odb.ID_tresc = kom.ID)'
      'LEFT OUTER JOIN uprawnienia upr ON (upr.user = kom.nadawca)'
      'WHERE (odb.odbiorca=:odbiorca)'
      'ORDER BY kom.ID DESC'
    )
    Params = <    
      item
        DataType = ftUnknown
        Name = 'odbiorca'
        ParamType = ptUnknown
      end>
    Left = 184
    Top = 232
    ParamData = <    
      item
        DataType = ftUnknown
        Name = 'odbiorca'
        ParamType = ptUnknown
      end>
  end
  object DSKomOdebrane: TDataSource
    DataSet = ZQKomOdebrane
    OnDataChange = DSKomOdebraneDataChange
    Left = 184
    Top = 360
  end
  object ZUKomOdebrane: TZUpdateSQL
    ModifySQL.Strings = (
      'UPDATE kom_odbiorcy SET'
      '  dataOdebrania = :dataOdebrania'
      'WHERE'
      '  kom_odbiorcy.ID = :OLD_ID'
    )
    UseSequenceFieldForRefreshSQL = False
    Left = 184
    Top = 295
    ParamData = <    
      item
        DataType = ftUnknown
        Name = 'dataOdebrania'
        ParamType = ptUnknown
      end    
      item
        DataType = ftUnknown
        Name = 'OLD_ID'
        ParamType = ptUnknown
      end>
  end
  object ZQKomWyslane: TZQuery
    Connection = DM.ZConnection1
    SQL.Strings = (
      'SELECT'
      'kom.ID,'
      'kom.dataNadania,'
      'kom.nadawca,'
      'kom.temat,'
      'kom.komunikat'
      'FROM kom_tresc kom'
      'WHERE (nadawca=:nadawca)'
      'ORDER BY kom.ID DESC'
    )
    Params = <    
      item
        DataType = ftUnknown
        Name = 'nadawca'
        ParamType = ptUnknown
      end>
    Left = 416
    Top = 232
    ParamData = <    
      item
        DataType = ftUnknown
        Name = 'nadawca'
        ParamType = ptUnknown
      end>
  end
  object DSKomWyslane: TDataSource
    DataSet = ZQKomWyslane
    OnDataChange = DSKomWyslaneDataChange
    Left = 416
    Top = 295
  end
  object ZQKomOdbiorcy: TZQuery
    Connection = DM.ZConnection1
    SQL.Strings = (
      'SELECT'
      'kom.ID,'
      'kom.ID_tresc,'
      'kom.dataOdebrania,'
      'kom.odbiorca,'
      'upr.Full_name'
      'FROM kom_odbiorcy kom'
      'LEFT OUTER JOIN uprawnienia upr ON (upr.user = kom.odbiorca)'
    )
    Params = <>
    MasterFields = 'ID'
    MasterSource = DSKomWyslane
    LinkedFields = 'ID_tresc'
    Left = 520
    Top = 232
  end
  object DSKomOdbiorcy: TDataSource
    DataSet = ZQKomOdbiorcy
    Left = 520
    Top = 295
  end
  object PopupMenu1: TPopupMenu
    Left = 56
    Top = 200
    object MenuItemKopiuj: TMenuItem
      Caption = 'Kopiuj'
      Bitmap.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000064000000640000000000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C57342C1C67545E6C87545FEC775
        45F3C87545F3C77545F3C77545F3C87546F4C57444E8CA7F53F1FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C77949EDFCF3ECFFFAF1E8FFFAF0
        E7FFFBF1E9FFFBF2EAFFFBF2EAFFFBF2EBFFFDF4EEFFCA8054F9FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CF8253FFEFF1E7FFFFE9D9FFFFEA
        DBFFFFE9D9FFFFE7D7FFFFE5D2FFFFE2CBFFEFF2E8FFCE8156FFFFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC8352FBFBF5EEFFFFE9D9FFFFEA
        DBFFFFE9D9FFFFE7D7FFFFE5D2FFFFE2CBFFFBF6EFFFCC8355FEC7794AB9C879
        4BCEC87545DDC77545D4C87545D4C77545D4CA8452FFFFF7F1FFFFE9D9FFFFEA
        DBFFFFE9D9FFFFE7D7FFFFE5D2FFFFE2CBFFFFF7F1FFCB8555FEC87C4ED3FCF3
        ECDEFAF1E8DEFAF0E7DEFBF1E9DEFBF2EADEE4BA91FFFFF7F0FFFFE7D5FFFDE7
        D6FFFDE6D4FFFCE4D0FFFBE3CBFFFADCC2FFFEF3E8FFCC8656FECF8253DEEFF1
        E7DEFFE9D9DEFFEADBDEFFE9D9DEFFE7D7DEE4BB91FFFFF7F2FFFEE7D5FFFEE7
        D5FFFDE5D1FFFAE0CAFFF9DEC4FFF7D9BCFFFDF2E7FFCC8757FECC8352DBFBF5
        EEDEFFE9D9DEFFEADBDEFFE9D9DEFFE7D7DEE4BB92FFFEF7F1FFFCE5D2FFFCE4
        D1FFFBE2CCFFF9DDC4FFF6D7BBFFF3D1AFFFFAEFE4FFCC8758FECA8452DBFFF7
        F1DEFFE9D9DEFFEADBDEFFE9D9DEFFE7D7DEE4BB92FFFEF6F0FFFCE2CDFFFCE3
        CDFFFADFC8FFF7D9BCFFF5E9DDFFFAF3EBFFFBF8F3FFCA8353FECB8553DBFFF7
        F0DEFFE7D5DEFDE7D6DEFDE6D4DEFCE4D0DEE4BB93FFFEF5EDFFFCDEC5FFFBE0
        C7FFF9DCC2FFF5D3B4FFFEF9F3FFFAE2C4FFECC193FFC37D4893CB8654DBFFF7
        F2DEFEE7D5DEFEE7D5DEFDE5D1DEFAE0CADEE5BE96FFFFFFFEFFFDF3E9FFFDF3
        EAFFFCF2E8FFFAEFE3FFFAF2E7FFEABB88FFCF8555B3B4693D0CCB8655DBFEF7
        F1DEFCE5D2DEFCE4D1DEFBE2CCDEF9DDC4DEEAC39DFFE6BF96FFE4BB92FFE4BB
        92FFD1A06CF5D09E6DF6CC965FDAC479427EB2673C09FFFFFF00CB8655DBFEF6
        F0DEFCE2CDDEFCE3CDDEFADFC8DEF7D9BCDEF5E9DDDEFAF3EBDEFBF8F3DECD95
        65DCFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CB8656DAFEF5
        EDDEFCDEC5DEFBE0C7DEF9DCC2DEF5D3B4DEFEF9F3DEFAE2C4DEECC193DEC37D
        4880FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CA8554D0FFFF
        FFDBFDF3E9DEFDF3EADEFCF2E8DEFAEFE3DEFAF2E7DEEABB88DECF85559CB469
        3D0AFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C77947AACC86
        55CECC8857DECB8856DBCC8856DBCB8757DBCA8350D0C479426EB2673C08FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
      }
      OnClick = MenuItemKopiujClick
    end
  end
end
