object OchRejestrWidzen: TOchRejestrWidzen
  Left = 334
  Height = 766
  Top = 226
  Width = 1216
  Caption = 'Rejestr widzeń osadzonych'
  ClientHeight = 766
  ClientWidth = 1216
  OnCreate = FormCreate
  Position = poScreenCenter
  LCLVersion = '6.6'
  object Panel1: TPanel
    Left = 0
    Height = 104
    Top = 0
    Width = 1216
    Align = alTop
    ClientHeight = 104
    ClientWidth = 1216
    TabOrder = 0
    object RadioGroup1: TRadioGroup
      Left = 1
      Height = 102
      Top = 1
      Width = 151
      Align = alLeft
      AutoFill = True
      Caption = 'Status widzenia'
      ChildSizing.LeftRightSpacing = 6
      ChildSizing.EnlargeHorizontal = crsHomogenousChildResize
      ChildSizing.EnlargeVertical = crsHomogenousChildResize
      ChildSizing.ShrinkHorizontal = crsScaleChilds
      ChildSizing.ShrinkVertical = crsScaleChilds
      ChildSizing.Layout = cclLeftToRightThenTopToBottom
      ChildSizing.ControlsPerLine = 1
      ClientHeight = 82
      ClientWidth = 147
      ItemIndex = 0
      Items.Strings = (
        'poczekalnia'
        'sala widzeń'
        'zrealizowane'
      )
      OnSelectionChanged = RadioGroup1SelectionChanged
      TabOrder = 0
    end
    object GroupBox1: TGroupBox
      Left = 152
      Height = 102
      Top = 1
      Width = 200
      Align = alLeft
      Caption = 'Kryteria wyszukiwania:'
      ClientHeight = 82
      ClientWidth = 196
      Enabled = False
      TabOrder = 1
      object cbPrzedzialCzasu: TCheckBox
        Left = 8
        Height = 19
        Top = 0
        Width = 170
        Caption = 'Widzenia w przedziale czasu:'
        OnChange = cbPrzedzialCzasuChange
        TabOrder = 0
      end
      object DateTimePicker1: TDateTimePicker
        Left = 8
        Height = 23
        Top = 24
        Width = 83
        CenturyFrom = 1941
        MaxDate = 2958465
        MinDate = -53780
        TabOrder = 1
        Enabled = False
        TrailingSeparator = False
        TextForNullDate = 'NULL'
        LeadingZeros = True
        Kind = dtkDate
        TimeFormat = tf24
        TimeDisplay = tdHMS
        DateMode = dmComboBox
        Date = 42762
        Time = 0.407043831015471
        UseDefaultSeparators = True
        HideDateTimeParts = []
        MonthNames = 'Long'
        OnChange = cbPrzedzialCzasuChange
      end
      object DateTimePicker2: TDateTimePicker
        Left = 104
        Height = 23
        Top = 24
        Width = 83
        CenturyFrom = 1941
        MaxDate = 2958465
        MinDate = -53780
        TabOrder = 2
        Enabled = False
        TrailingSeparator = False
        TextForNullDate = 'NULL'
        LeadingZeros = True
        Kind = dtkDate
        TimeFormat = tf24
        TimeDisplay = tdHMS
        DateMode = dmComboBox
        Date = 42762
        Time = 0.958333333335759
        UseDefaultSeparators = True
        HideDateTimeParts = []
        MonthNames = 'Long'
        OnChange = cbPrzedzialCzasuChange
      end
      object cbUprzedniePobyty: TCheckBox
        Left = 8
        Height = 19
        Top = 56
        Width = 147
        Caption = 'Z uprzednimi pobytami.'
        Enabled = False
        OnChange = cbPrzedzialCzasuChange
        TabOrder = 3
      end
    end
    object GroupBox2: TGroupBox
      Left = 402
      Height = 102
      Top = 1
      Width = 214
      Align = alLeft
      BorderSpacing.Left = 50
      Caption = 'Operacje'
      ClientHeight = 82
      ClientWidth = 210
      TabOrder = 2
      object btnDodaj: TBitBtn
        Left = 8
        Height = 30
        Top = 0
        Width = 91
        Caption = 'Dodaj'
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000064000000640000000000000000000000000000000000
          00000000000000000000000000009F5A00FF9F5A00FF9F5A00FF9F5A00FF9F5A
          00FF9F5A00FFD3B4823D00000000000000000000000000000000000000000000
          00000000000000000000000000009F5A00FFB26203FFB26203FFB26203FFB262
          03FF9F5A00FFD3B3814200000000000000000000000000000000000000000000
          00000000000000000000000000009F5A00FFB96B09FFBB6B09FFB96B09FFB96B
          09FF9F5A00FFD2B4834000000000000000000000000000000000000000000000
          00000000000000000000000000009F5A00FFBD7011FFBE6F11FFBD7011FFBD70
          11FF9F5A00FFD3B5833500000000000000000000000000000000DCAA6238D191
          3649D2953A47CF8F2F46E0AE60469F5A00FFC47718FFC47718FFC27617FFC477
          18FF9F5A00FFCF9B4C73D3943744D2953A47D2943A47D3973B419F5A00FF9F5A
          00FF9F5A00FF9F5A00FF9F5A00FF9F5A00FFC87E1EFFC87E1EFFC87E1EFFC87E
          1EFF9F5A00FF9F5A00FF9F5A00FF9F5A00FF9F5A00FF9F5A00FF9F5A00FFC981
          24FFC98124FFC98124FFC98124FFC98124FFC98124FFC98124FFC98023FFC981
          24FFC98124FFC98124FFC98124FFC98124FFC98124FF9F5A00FF9F5A00FFD48D
          2CFFD8902FFFD1892BFFD1892BFFD1892BFFD0892BFFCE872AFFCE872AFFCE88
          2AFFD1892BFFD1892BFFD1892BFFD48D2CFFD48D2CFF9F5A00FF9F5A00FFDE9B
          39FFDE9B39FFD89434FFD89334FFD89435FFD69133FFD28E31FFD28E31FFD48F
          32FFD89435FFD89434FFD89334FFDC9736FFDE9B39FF9F5A00FF9F5A00FFD997
          39FFD99739FFD99739FFD99739FFD99739FFD99739FFD99739FFD99739FFD997
          39FFD99739FFD99739FFD99739FFD99739FFD99739FF9F5A00FF9F5A00FF9F5A
          00FF9F5A00FF9F5A00FF9F5A00FF9F5A00FFE2A243FFE2A243FFE1A042FFE2A2
          43FF9F5A00FF9F5A00FF9F5A00FF9F5A00FF9F5A00FF9F5A00FF000000000000
          00000000000000000000000000009F5A00FFE7A94DFFE7A94DFFE5A94BFFE7A9
          4DFF9F5A00FFEFE4D13900000000000000000000000000000000000000000000
          00000000000000000000000000009F5A00FFEBB054FFEDB355FFEBB054FFEBB0
          54FF9F5A00FFD4B5863F00000000000000000000000000000000000000000000
          00000000000000000000000000009F5A00FFF7C166FFFAC567FFF7C166FFF7C1
          66FF9F5A00FFD0AF7C4000000000000000000000000000000000000000000000
          00000000000000000000000000009F5A00FFFFD480FFFFD480FFFFD480FFFFD4
          80FF9F5A00FFD1AF7B4400000000000000000000000000000000000000000000
          00000000000000000000000000009F5A00FF9F5A00FF9F5A00FF9F5A00FF9F5A
          00FF9F5A00FFDBC2993300000000000000000000000000000000
        }
        OnClick = btnDodajClick
        TabOrder = 0
      end
      object btnUsun: TBitBtn
        Left = 112
        Height = 30
        Top = 0
        Width = 91
        Caption = 'Usuń'
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000064000000640000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000001D25DAFF1D25
          DAFF1D25DAFF1D25DAFF1D25DAFF1D25DAFF1D25DAFF1D25DAFF1D25DAFF1D25
          DAFF1D25DAFF1D25DAFF1D25DAFF1D25DAFF1D25DAFF1D25DAFF1D25DAFF5A60
          E4FF5A60E4FF5A60E4FF5A60E4FF5A60E4FF5A60E4FF5A60E4FF5A60E4FF5A60
          E4FF5A60E4FF5A60E4FF5A60E4FF5A60E4FF5A60E4FF1D25DAFF1D25DAFF767B
          E8FF767BE8FF767BE8FF767BE8FF767BE8FF767BE8FF767BE8FF767BE8FF767B
          E8FF767BE8FF767BE8FF767BE8FF767BE8FF767BE8FF1D25DAFF1D25DAFF979B
          EEFF979BEEFF979BEEFF979BEEFF979BEEFF979BEEFF979BEEFF979BEEFF979B
          EEFF979BEEFF979BEEFF979BEEFF979BEEFF979BEEFF1D25DAFF1D25DAFFB8BA
          F3FFB8BAF3FFB8BAF3FFB8BAF3FFB8BAF3FFB8BAF3FFB8BAF3FFB8BAF3FFB8BA
          F3FFB8BAF3FFB8BAF3FFB8BAF3FFB8BAF3FFB8BAF3FF1D25DAFF1D25DAFF1D25
          DAFF1D25DAFF1D25DAFF1D25DAFF1D25DAFF1D25DAFF1D25DAFF1D25DAFF1D25
          DAFF1D25DAFF1D25DAFF1D25DAFF1D25DAFF1D25DAFF1D25DAFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000
        }
        OnClick = btnUsunClick
        TabOrder = 1
      end
      object btnModyfikuj: TBitBtn
        Left = 8
        Height = 30
        Top = 40
        Width = 91
        Caption = 'Modyfikuj'
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          20000000000000040000640000006400000000000000000000000A2B95FF021C
          80FB0024973C1A66D8451766D121000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000092A927B0000
          58FF4E9FDFFF4CBFF8FF1467D4FF0B30ADB20000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000A81338AAD
          DCFFC3FFFFFF95EBFFFF58D0FDFF0773D9FF0C33AFD400000000000000000000
          00000000000000000000000000000000000000000000000000000E42B14692BA
          E5FFFFFFFFFF79DFFFFF0EA4EEFF0B6DD5FF0E7FE0FF1046BBDA000000000000
          0000000000000000000000000000000000000000000000000000000000001C4A
          BCB7DBFFFFFF06DFFAFF00C3FCFF119EEAFF1272D7FF0D80E1FF134BC0D30000
          0000000000000000000000000000000000000000000000000000000000000016
          A8B535B9E4FF0AFFFFFF00D8F6FF00C8FEFF119CEAFF1271D6FF0D7FDFFF154D
          C2DA000000000000000000000000000000000000000000000000000000000000
          00000B2EB4DA3AD2ECFF12FFFFFF00D9F6FF00C8FEFF119CEAFF1271D5FF0D80
          DEFF1550C4D30000000000000000000000000000000000000000000000000000
          000000000000102DB6D339D4EDFF12FFFFFF00D8F6FF00C8FEFF119CEAFF1271
          D5FF0D7FDFFF1651C9DA00000000000000000000000000000000000000000000
          000000000000000000001233B8DA3AD1ECFF0CFFFDFF00D9F6FF00C8FEFF119C
          EAFF126FD5FF0C80DFFF1A5BCBD3000000000000000000000000000000000000
          00000000000000000000000000001637BDD359F0F6FF07FFFBFF00D8F6FF00C8
          FEFF119CEAFF1371D6FF0B7FE3FF0047CADA0000000000000000000000000000
          000000000000000000000000000000000000294CC4DA67F6F8FF03FFFAFF00D8
          F6FF00C8FEFF0EA9F7FF0052BEFF627590FF5684D3D300000000000000000000
          000000000000000000000000000000000000000000002D4FC8D368F8F9FF05FF
          FAFF00E6FFFF00A4E9FF627992FFFFFFE9FF7976B8FF0032CBCB000000000000
          00000000000000000000000000000000000000000000000000002E53CADA66FF
          FFFF00E9E1FF639AA3FFFFFFFCFF6B6FAAFF0000DDFF0D27EFFF000000000000
          0000000000000000000000000000000000000000000000000000000000001E59
          CFD380B6BCFFFFFFFCFF6D7CADFF0000DAFF0007FFFF0D26E8FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00004474E3DA84A6BCFF0C6CE2FF1458FFFF0B21EDFF1130E026000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000953D0C43FADF7F92982EDEE103AEA1F00000000
        }
        OnClick = btnModyfikujClick
        TabOrder = 2
      end
      object btnOdswiez: TBitBtn
        Left = 112
        Height = 30
        Top = 40
        Width = 91
        Caption = 'Odśwież'
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000064000000640000000000000000000000000000000000
          00000000000000000000DB730D83D16108C3B75400FFB85500FFB65300FFD05F
          06C3D86F0C8300000000000000000000000000000000D9710BFF000000000000
          000000000000D16008FFE39200FFE49600FFE19300FFED9E00FFF9A200FFFDB0
          0DFFFFBB17FFD56908FFD86F0AFF00000000D9700AFFEC951CFF000000000000
          0000B55200FFE79B00FFE29300FFDE8F00FFE39000FFFAA500FFF8A708FFF9B0
          1AFFFCB221FFFFC737FFF6AB28FFD46502FFF6AF2DFFED9621FF00000000C858
          09FFE89C00FFDF8F00FFE39200FFF0A100FFF19005FFEF8F05FFEC8600FFFFC1
          29FFFFBE2EFFFFC845FFFFCE50FFFFD964FFFFDC6DFFF3A224FFA24000FFE291
          00FFE19300FFE39200FFF2A300FFC35508FFC25202FFD2670AFFD06508FFD164
          07FFFFD965FFFFC945FFFFD058FFFFD767FFFFDC71FFF4A629FFA74200FFEA9C
          00FFEC9C00FFF0A100FFC35508FF00000000000000000000000000000000F1A8
          3EFFFFE393FFFFD055FFFFD563FFFFDE78FFFFE486FFF8AE2DFFB35000FFDE81
          00FFDB7D00FFDD8000FFC65908FF000000000000000000000000DE7508FFFFCF
          56FFFFEBA7FFFFF2C9FFFFEBA7FFFFDF7DFFFFE78DFFFCB52EFF000000000000
          000000000000000000000000000000000000000000000000000000000000DD73
          06FFDB6E00FFED900DFFEF8E0AFFFDC552FFFCC24FFFFECB56FFD47314FFDA7E
          21FFD97D21FFB24300FFC24F00FFE17803FFE0780AFF00000000000000000000
          0000000000000000000000000000000000000000000000000000B75300FFEA99
          00FFF39A00FFFFD858FFFFEA9AFFFFF2C9FFFFDA52FFE0790CFF000000000000
          000000000000F19718FFEF900FFFFFB71EFFFFB61DFFFEBD2CFFBC5700FFF5A0
          00FFF8A303FFFCAD10FFF9A814FFFFB517FFD36503FF00000000000000000000
          000000000000EF8E0AFFFFED97FFFFEB9DFFFFF2C9FFFFB61FFFC65C00FFFBA6
          00FFF8A308FFFBB321FFFAB525FFFFCF4CFFDE740FFFE4810BFFEE9618FFEC90
          14FFEF8E0AFFFFED97FFFFE386FFFFE9A7FFFFF6EAFFFFB921FFC95F00FFFBA9
          04FFFCAE10FFFEB825FFFEB729FFFFC53FFFFFD44EFFFFD75DFFFFD359FFFFCD
          50FFFFE383FFFFE385FFFFE17EFFFFF6EAFFFFD053FF00000000D16500FFFEAE
          12FFC75905FFD66B08FFFFC834FFFFC53DFFFFC948FFFFD35EFFFFD765FFFFDC
          79FFFFDC71FFFFE8A0FFFFF6EAFFFFD053FF0000000000000000D46800FFCB60
          07FF0000000000000000D56805FFFFD456FFFFD24EFFFFD45EFFFFDB68FFFFDF
          72FFFFE79CFFFFF6EAFFFFD156FF000000000000000000000000DC750DFF0000
          0000000000000000000000000000ED8D1383EA8911C3F09212FFF8AA29FFF8A3
          18FFFDAA15C3FFD0538300000000000000000000000000000000
        }
        OnClick = btnOdswiezClick
        TabOrder = 3
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Height = 662
    Top = 104
    Width = 1216
    Align = alClient
    ClientHeight = 662
    ClientWidth = 1216
    TabOrder = 1
    object Panel3: TPanel
      Left = 1
      Height = 148
      Top = 513
      Width = 1214
      Align = alBottom
      BevelOuter = bvNone
      ClientHeight = 148
      ClientWidth = 1214
      TabOrder = 0
      object Label1: TLabel
        Left = 0
        Height = 24
        Top = 0
        Width = 1214
        Align = alTop
        Alignment = taCenter
        AutoSize = False
        Caption = 'Osoby odwiedzające'
        Layout = tlCenter
        ParentColor = False
      end
      object RxDBGrid2: TRxDBGrid
        Left = 0
        Height = 124
        Top = 24
        Width = 1214
        ColumnDefValues.BlobText = '(blob)'
        TitleButtons = True
        AutoSort = True
        Columns = <        
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
            Footer.ValueType = fvtCount
            Footers = <>
          end        
          item
            Title.Alignment = taCenter
            Title.Orientation = toHorizontal
            Title.Caption = 'Imię'
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
            Alignment = taCenter
            Title.Alignment = taCenter
            Title.Orientation = toHorizontal
            Title.Caption = 'Pokrewieństwo'
            Width = 120
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
            Title.Alignment = taCenter
            Title.Orientation = toHorizontal
            Title.Caption = 'Uwagi'
            Width = 300
            FieldName = 'Uwagi'
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
        OptionsRx = [rdgAllowDialogFind, rdgFooterRows, rdgAllowQuickSearch, rdgAllowQuickFilter, rdgAllowFilterForm, rdgAllowSortForm, rdgAllowToolMenu, rdgCaseInsensitiveSort, rdgWordWrap]
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
        DataSource = DSOsoby
        DefaultRowHeight = 0
        FixedColor = clNone
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgHeaderPushedLook, dgAnyButtonCanSelect, dgDisableDelete, dgDisableInsert, dgTruncCellHints, dgCellEllipsis]
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 0
        TitleStyle = tsNative
      end
    end
    object Splitter1: TSplitter
      Cursor = crVSplit
      Left = 1
      Height = 5
      Top = 508
      Width = 1214
      Align = alBottom
      ResizeAnchor = akBottom
    end
    object RxDBGrid1: TRxDBGrid
      Left = 1
      Height = 507
      Top = 1
      Width = 1214
      ColumnDefValues.BlobText = '(blob)'
      TitleButtons = True
      AutoSort = True
      Columns = <      
        item
          Alignment = taCenter
          Font.Color = clBlue
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = 'Pozostało minut'
          Width = 60
          FieldName = 'Pozostalo'
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
          Title.Caption = 'Data w Poczekalni'
          Width = 115
          FieldName = 'Data_Oczekuje'
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
          Title.Caption = 'Data na Sali'
          Width = 115
          FieldName = 'Data_Stolik'
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
          Title.Caption = 'Data Widzenia'
          Width = 115
          FieldName = 'Data_Widzenie'
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
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = 'Czas Widz.'
          Width = 45
          FieldName = 'Czas_Widzenia'
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
          Alignment = taCenter
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = 'Czas reg.'
          Width = 45
          FieldName = 'Czas_reg'
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
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = 'Czas dod.'
          Width = 45
          FieldName = 'Czas_dod'
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
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = 'Spo- sób'
          Width = 45
          FieldName = 'Sposob'
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
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = 'Doda- tkowe'
          Width = 45
          FieldName = 'Dodatkowe'
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
          Title.Caption = 'Uwagi do dodatkowego'
          Width = 100
          FieldName = 'Data_Dod'
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
          Footers = <>
        end      
        item
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = 'Imie'
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
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = 'Ojciec'
          Width = 100
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
          Width = 60
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
          Alignment = taCenter
          Font.Color = clGreen
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = 'Klasyf'
          Width = 60
          FieldName = 'Klasyf'
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
          Title.Caption = 'Uwagi'
          Width = 100
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
          Font.Color = clNavy
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = 'Nadzór'
          Width = 150
          FieldName = 'Nadzor'
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
      OptionsRx = [rdgAllowDialogFind, rdgFooterRows, rdgAllowQuickSearch, rdgAllowQuickFilter, rdgAllowFilterForm, rdgAllowSortForm, rdgAllowToolMenu, rdgCaseInsensitiveSort, rdgWordWrap]
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
      DataSource = DSWidzenia
      DefaultRowHeight = 19
      FixedColor = clNone
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgHeaderHotTracking, dgHeaderPushedLook, dgAnyButtonCanSelect, dgDisableDelete, dgDisableInsert, dgCellHints, dgTruncCellHints, dgCellEllipsis]
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 2
      TitleStyle = tsNative
      OnDblClick = RxDBGrid1DblClick
    end
  end
  object ZQWidzenia: TZQuery
    Connection = DM.ZConnection1
    ReadOnly = True
    SQL.Strings = (
      'SELECT'
      'w.ID, '
      'w.IDO, '
      'w.Data_Oczekuje, '
      'w.Data_Widzenie,'
      'w.Data_Stolik,'
      'w.Czas_Widzenia,'
      'w.Czas_reg,'
      'w.Czas_dod,'
      'w.Etap,'
      'w.Sposob,'
      'w.Dodatkowe, '
      'w.Data_Dod, '
      'w.Uwagi, '
      'w.Nadzor, '
      'o.Nazwisko, '
      'o.Imie,'
      'o.Ojciec,'
      'o.POC,'
      'o.Klasyf '
      'FROM '
      '  widzenia w, '
      '  osadzeni o'
      'WHERE'
      '  (w.IDO = o.IDO)'
    )
    Params = <>
    Left = 269
    Top = 143
    object ZQWidzeniaID: TLargeintField
      FieldKind = fkData
      FieldName = 'ID'
      Index = 0
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = True
    end
    object ZQWidzeniaIDO: TLargeintField
      FieldKind = fkData
      FieldName = 'IDO'
      Index = 1
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = True
    end
    object ZQWidzeniaData_Oczekuje: TDateTimeField
      FieldKind = fkData
      FieldName = 'Data_Oczekuje'
      Index = 2
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
    end
    object ZQWidzeniaData_Widzenie: TDateTimeField
      FieldKind = fkData
      FieldName = 'Data_Widzenie'
      Index = 3
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
    end
    object ZQWidzeniaData_Stolik: TDateTimeField
      FieldKind = fkData
      FieldName = 'Data_Stolik'
      Index = 4
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
    end
    object ZQWidzeniaCzas_Widzenia: TLargeintField
      FieldKind = fkData
      FieldName = 'Czas_Widzenia'
      Index = 5
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = True
    end
    object ZQWidzeniaCzas_reg: TLargeintField
      FieldKind = fkData
      FieldName = 'Czas_reg'
      Index = 6
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
    end
    object ZQWidzeniaCzas_dod: TLargeintField
      FieldKind = fkData
      FieldName = 'Czas_dod'
      Index = 7
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
    end
    object ZQWidzeniaEtap: TLargeintField
      FieldKind = fkData
      FieldName = 'Etap'
      Index = 8
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = True
    end
    object ZQWidzeniaSposob: TStringField
      FieldKind = fkData
      FieldName = 'Sposob'
      Index = 9
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = True
      Size = 40
    end
    object ZQWidzeniaDodatkowe: TStringField
      FieldKind = fkData
      FieldName = 'Dodatkowe'
      Index = 10
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
      Size = 40
    end
    object ZQWidzeniaData_Dod: TStringField
      FieldKind = fkData
      FieldName = 'Data_Dod'
      Index = 11
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
      Size = 400
    end
    object ZQWidzeniaUwagi: TStringField
      FieldKind = fkData
      FieldName = 'Uwagi'
      Index = 12
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
      Size = 400
    end
    object ZQWidzeniaNadzor: TStringField
      FieldKind = fkData
      FieldName = 'Nadzor'
      Index = 13
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
      Size = 180
    end
    object ZQWidzeniaNazwisko: TStringField
      FieldKind = fkData
      FieldName = 'Nazwisko'
      Index = 14
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = True
      Size = 180
    end
    object ZQWidzeniaImie: TStringField
      FieldKind = fkData
      FieldName = 'Imie'
      Index = 15
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = True
      Size = 180
    end
    object ZQWidzeniaOjciec: TStringField
      FieldKind = fkData
      FieldName = 'Ojciec'
      Index = 16
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
      Size = 180
    end
    object ZQWidzeniaPOC: TStringField
      FieldKind = fkData
      FieldName = 'POC'
      Index = 17
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
      Size = 40
    end
    object ZQWidzeniaKlasyf: TStringField
      FieldKind = fkData
      FieldName = 'Klasyf'
      Index = 18
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
      Size = 40
    end
    object ZQWidzeniaPozostalo: TLongintField
      FieldKind = fkCalculated
      FieldName = 'Pozostalo'
      Index = 19
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
      OnGetText = ZQWidzeniaPozostaloGetText
    end
  end
  object ZQOsoby: TZQuery
    Connection = DM.ZConnection1
    ReadOnly = True
    SQL.Strings = (
      'SELECT'
      'w.ID_widzenia, '
      'w.ID_uprawnione, '
      'u.Nazwisko, '
      'u.Imie, '
      'u.Pokrew, '
      'u.Uwagi '
      'FROM widzenia_upr w'
      'LEFT JOIN uprawnione u ON (w.ID_uprawnione = u.ID)'
      'WHERE ID_widzenia=:id_widzenia'
    )
    Params = <    
      item
        DataType = ftUnknown
        Name = 'id_widzenia'
        ParamType = ptUnknown
      end>
    Left = 269
    Top = 448
    ParamData = <    
      item
        DataType = ftUnknown
        Name = 'id_widzenia'
        ParamType = ptUnknown
      end>
  end
  object DSWidzenia: TDataSource
    DataSet = ZQWidzenia
    OnDataChange = DSWidzeniaDataChange
    Left = 344
    Top = 143
  end
  object DSOsoby: TDataSource
    DataSet = ZQOsoby
    Left = 344
    Top = 448
  end
  object ZQWidzeniaArch: TZQuery
    Connection = DM.ZConnection1
    ReadOnly = True
    SQL.Strings = (
      'SELECT'
      'w.ID, '
      'w.IDO, '
      'w.Data_Oczekuje, '
      'w.Data_Widzenie,'
      'w.Data_Stolik,'
      'w.Czas_Widzenia,'
      'w.Czas_reg,'
      'w.Czas_dod,'
      'w.Etap,'
      'w.Sposob,'
      'w.Dodatkowe, '
      'w.Data_Dod, '
      'w.Uwagi, '
      'w.Nadzor, '
      'o.Nazwisko, '
      'o.Imie,'
      'o.Ojciec,'
      'o.POC,'
      'o.Klasyf'
      'FROM '
      '  widzenia w'
      'LEFT JOIN osadzeni o'
      'ON o.IDO = w.IDO'
      'WHERE (Date(w.Data_Widzenie) BETWEEN :data_od AND :data_do)'
      'UNION'
      'SELECT'
      'w.ID, '
      'w.IDO, '
      'w.Data_Oczekuje, '
      'w.Data_Widzenie,'
      'w.Data_Stolik,'
      'w.Czas_Widzenia,'
      'w.Czas_reg,'
      'w.Czas_dod,'
      'w.Etap,'
      'w.Sposob,'
      'w.Dodatkowe, '
      'w.Data_Dod, '
      'w.Uwagi, '
      'w.Nadzor, '
      'o.Nazwisko, '
      'o.Imie,'
      'o.Ojciec,'
      'o.POC,'
      'o.Klasyf'
      'FROM '
      '  arch_widzenia w'
      'LEFT JOIN (SELECT * FROM arch_osadzeni GROUP BY IDO) o'
      'ON o.IDO = w.IDO'
      'WHERE (Date(w.Data_Widzenie) BETWEEN :data_od AND :data_do)'
      'ORDER BY Data_Widzenie DESC'
    )
    Params = <    
      item
        DataType = ftUnknown
        Name = 'data_od'
        ParamType = ptUnknown
      end    
      item
        DataType = ftUnknown
        Name = 'data_do'
        ParamType = ptUnknown
      end>
    Left = 269
    Top = 208
    ParamData = <    
      item
        DataType = ftUnknown
        Name = 'data_od'
        ParamType = ptUnknown
      end    
      item
        DataType = ftUnknown
        Name = 'data_do'
        ParamType = ptUnknown
      end>
  end
  object ZQOsobyArch: TZQuery
    Connection = DM.ZConnection1
    ReadOnly = True
    SQL.Strings = (
      'SELECT'
      'w.ID_widzenia, '
      'w.ID_uprawnione, '
      'u.Nazwisko, '
      'u.Imie, '
      'u.Pokrew, '
      'u.Uwagi '
      'FROM widzenia_upr w'
      'LEFT JOIN uprawnione u ON (w.ID_uprawnione = u.ID)'
      'WHERE ID_widzenia=:id_widzenia'
      ''
      'UNION'
      ''
      'SELECT'
      'w.ID_widzenia, '
      'w.ID_uprawnione, '
      'u.Nazwisko, '
      'u.Imie, '
      'u.Pokrew, '
      'u.Uwagi '
      'FROM arch_widzenia_upr w'
      'LEFT JOIN arch_uprawnione u ON (w.ID_uprawnione = u.ID)'
      'WHERE ID_widzenia=:id_widzenia'
    )
    Params = <    
      item
        DataType = ftUnknown
        Name = 'id_widzenia'
        ParamType = ptUnknown
      end>
    Left = 269
    Top = 520
    ParamData = <    
      item
        DataType = ftUnknown
        Name = 'id_widzenia'
        ParamType = ptUnknown
      end>
  end
end
