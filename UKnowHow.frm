object KnowHow: TKnowHow
  Left = 394
  Height = 554
  Top = 225
  Width = 917
  AllowDropFiles = True
  Caption = 'KnowHow'
  ClientHeight = 554
  ClientWidth = 917
  OnCreate = FormCreate
  OnDropFiles = FormDropFiles
  LCLVersion = '6.3'
  object Panel1: TPanel
    Left = 0
    Height = 80
    Top = 0
    Width = 917
    Align = alTop
    ClientHeight = 80
    ClientWidth = 917
    TabOrder = 0
    object plGradient2: TplGradient
      Left = 1
      Height = 78
      Top = 1
      Width = 915
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
    object Edit1: TEdit
      Left = 8
      Height = 29
      Top = 40
      Width = 384
      Font.Height = 22
      OnChange = Edit1Change
      ParentFont = False
      TabOrder = 0
      TextHint = 'Wyszukaj ...'
    end
    object Image1: TImage
      Left = 392
      Height = 16
      Top = 48
      Width = 16
      AntialiasingMode = amOn
      AutoSize = True
      Center = True
      Picture.Data = {
        1754506F727461626C654E6574776F726B47726170686963D802000089504E47
        0D0A1A0A0000000D49484452000000100000001008060000001FF3FF61000002
        9F4944415478DA8DD25B4893611CC7F1DFFB6EBA4D37D2D2DC6607D1F0001A81
        A99169C442ECC2843C81032FE62952894253D03031D3323422955C124A6491D4
        12A59415A13741921D844541CD5CB9766807E78EEFBBB7297561B3D8F7E2B9F8
        5F7C784E047ED7D13C90CE166CABE3840B8A0992E72640B1098F7D626BB0A75D
        5A51F00EFF88585BEA2BAFD488D2F6DF10A624C2CBE681A16958ED14AC061B18
        FD574430C6CAEADAA25B9B02E5D256495276A6F240810406AD194EBB1351E121
        08E2B2E0F400AA452774F36F21A4F5B9350DA5537E405565B742D6519BCF2648
        582D76F0B841F0D21412A205B0B8687C595EC5AB051F3C3F3BD7D65696E60734
        B6DC74D5B75705EB4C6E902C022C8281C1E242AA900F079BC01BB5199F97DD50
        4DCDAEF25DDAF8D6AEDAEF1B8086A63E4767E729EEB71537688200870D38DC80
        E6A7036E370586F18156020BCA19B8963E26F50C347ED800D49DEEB15DBF7626
        D44A7941D30C563C5E9024099BC7039DC905ADCE0192CBC3F31185913668E206
        875B2C1B804399D5F28713BD1591613CD8291F40F95E80F6C2EAA0A05EB280CF
        176071C98427BDF251C5447BA9DF1D24C61745671D4ED50C0E36AE0F7EB8BCB0
        B9E9F59D80CD81DEE84077F37D4882C6A44D23937737FD073131C70FA6A5EF9D
        3977BE9C959C1C03B36F666380D9672A3C1A9AC691380B8A45FD5835E8FA132E
        30357EC05A62F1319245921785A2ED19C25DE208AD5A63369AA8E9B2FCD4D893
        29A3B2A8922E98E7A7F17EF8F250B61C157EC0FF7ADDB2E3D3BEEAAE3D446838
        B4CA01CC8D4FCAF3EE30550103F7F24084440A167364D29D9C3016965F2AF1E2
        A9FA76E9984B1610B056FF5110822D3CD589C2D88410911E36B50EE30AE241C0
        C09FFA72D83325B95416970F5C7DBC3BB023FCDDA50C8C1B49B144612F3CFB0B
        6D301BD048E5C7F50000000049454E44AE426082
      }
      Proportional = True
      Stretch = True
    end
    object Label1: TLabel
      Left = 8
      Height = 21
      Top = 8
      Width = 191
      Caption = 'Baza wiedzy praktycznej.'
      Font.Color = clGray
      Font.Height = 22
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object DateTimePicker1: TDateTimePicker
      Left = 472
      Height = 23
      Top = 24
      Width = 83
      CenturyFrom = 1941
      MaxDate = 2958465
      MinDate = -53780
      TabOrder = 1
      TrailingSeparator = False
      TextForNullDate = 'NULL'
      LeadingZeros = True
      Kind = dtkDate
      TimeFormat = tf24
      TimeDisplay = tdHMS
      DateMode = dmComboBox
      Date = 43156
      Time = 0.585062534722965
      UseDefaultSeparators = True
      HideDateTimeParts = []
      MonthNames = 'Long'
    end
    object DateTimePicker2: TDateTimePicker
      Left = 472
      Height = 23
      Top = 48
      Width = 83
      CenturyFrom = 1941
      MaxDate = 2958465
      MinDate = -53780
      TabOrder = 2
      TrailingSeparator = False
      TextForNullDate = 'NULL'
      LeadingZeros = True
      Kind = dtkDate
      TimeFormat = tf24
      TimeDisplay = tdHMS
      DateMode = dmComboBox
      Date = 43156
      Time = 0.585192708334944
      UseDefaultSeparators = True
      HideDateTimeParts = []
      MonthNames = 'Long'
    end
    object Label2: TLabel
      Left = 448
      Height = 15
      Top = 32
      Width = 17
      Caption = 'od:'
      ParentColor = False
    end
    object Label3: TLabel
      Left = 448
      Height = 15
      Top = 56
      Width = 17
      Caption = 'do:'
      ParentColor = False
    end
    object CheckBox1: TCheckBox
      Left = 448
      Height = 19
      Top = 1
      Width = 121
      Caption = 'W przedziale czasu:'
      TabOrder = 3
    end
    object ComboBox1: TComboBox
      Left = 584
      Height = 23
      Top = 46
      Width = 100
      ItemHeight = 15
      TabOrder = 4
      Text = 'ComboBox1'
    end
    object Label4: TLabel
      Left = 584
      Height = 15
      Top = 27
      Width = 53
      Caption = 'Kategoria:'
      ParentColor = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Height = 474
    Top = 80
    Width = 432
    Align = alLeft
    Caption = 'Panel2'
    ClientHeight = 474
    ClientWidth = 432
    TabOrder = 1
    object RxDBGrid1: TRxDBGrid
      Left = 1
      Height = 422
      Top = 1
      Width = 430
      ColumnDefValues.BlobText = '(blob)'
      TitleButtons = False
      AutoSort = True
      Columns = <      
        item
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = 'Nazwa'
          Width = 200
          FieldName = 'Nazwa'
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
          Title.Caption = 'Kategoria'
          Width = 100
          FieldName = 'Kategoria'
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
          Title.Caption = 'DataDodania'
          Width = 90
          FieldName = 'DataDodania'
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
      FooterOptions.DrawFullLine = False
      SearchOptions.QuickSearchOptions = [loCaseInsensitive, loPartialKey]
      SearchOptions.FromStart = False
      OptionsRx = [rdgAllowColumnsForm, rdgAllowDialogFind, rdgAllowQuickFilter]
      Align = alClient
      Color = clWindow
      DrawFullLine = False
      FocusColor = clRed
      SelectedColor = clHighlight
      GridLineStyle = psSolid
      DataSource = DSKnowHow
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColumnMove, dgColLines, dgRowLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleStyle = tsNative
    end
    object Panel4: TPanel
      Left = 1
      Height = 50
      Top = 423
      Width = 430
      Align = alBottom
      ClientHeight = 50
      ClientWidth = 430
      TabOrder = 1
      object BitBtn1: TBitBtn
        Left = 8
        Height = 30
        Top = 8
        Width = 75
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
        TabOrder = 0
      end
      object BitBtn2: TBitBtn
        Left = 88
        Height = 30
        Top = 8
        Width = 96
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
        TabOrder = 1
      end
      object BitBtn3: TBitBtn
        Left = 344
        Height = 30
        Hint = 'Tylko twórca może usunąć pozycję'
        Top = 8
        Width = 75
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
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
    end
  end
  object Panel3: TPanel
    Left = 437
    Height = 474
    Top = 80
    Width = 480
    Align = alClient
    ClientHeight = 474
    ClientWidth = 480
    TabOrder = 2
    object DBText1: TDBText
      Left = 1
      Height = 23
      Top = 1
      Width = 478
      Align = alTop
      Alignment = taCenter
      Color = 13822463
      DataField = 'Nazwa'
      DataSource = DSKnowHow
      Font.CharSet = EASTEUROPE_CHARSET
      Font.Height = -19
      Font.Name = 'Georgia'
      Font.Pitch = fpVariable
      Font.Quality = fqDraft
      ParentColor = False
      ParentFont = False
      Transparent = False
      WordWrap = True
    end
    object RxDBGrid2: TRxDBGrid
      Left = 1
      Height = 177
      Top = 296
      Width = 478
      ColumnDefValues.BlobText = '(blob)'
      TitleButtons = False
      AutoSort = True
      Columns = <      
        item
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = 'FileName'
          Width = 220
          FieldName = 'FileName'
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
          Title.Caption = 'DataDodania'
          Width = 90
          FieldName = 'DataDodania'
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
          Title.Caption = 'User'
          Width = 120
          FieldName = 'User'
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
      FooterOptions.DrawFullLine = False
      SearchOptions.QuickSearchOptions = [loCaseInsensitive, loPartialKey]
      SearchOptions.FromStart = False
      OptionsRx = [rdgAllowColumnsForm, rdgAllowDialogFind, rdgAllowQuickFilter]
      Align = alBottom
      Color = clWindow
      DrawFullLine = False
      FocusColor = clRed
      SelectedColor = clHighlight
      GridLineStyle = psSolid
      DataSource = DSKnowHowFiles
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColumnMove, dgColLines, dgRowLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTruncCellHints, dgCellEllipsis]
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 0
      TitleStyle = tsNative
      OnDblClick = RxDBGrid2DblClick
    end
    object lblTags: TLabel
      Left = 1
      Height = 15
      Top = 24
      Width = 478
      Align = alTop
      Caption = 'lbl2'
      Font.Color = clGray
      ParentColor = False
      ParentFont = False
      WordWrap = True
    end
    object DBRichMemo1: TDBRichMemo
      Left = 1
      Height = 257
      Top = 39
      Width = 478
      Align = alClient
      DataField = 'Opis'
      DataSource = DSKnowHow
      ReadOnly = True
      ScrollBars = ssAutoBoth
      TabOrder = 1
    end
  end
  object Splitter1: TSplitter
    Left = 432
    Height = 474
    Top = 80
    Width = 5
  end
  object DSKnowHow: TDataSource
    DataSet = ZQKnowHow
    OnDataChange = DSKnowHowDataChange
    Left = 129
    Top = 196
  end
  object DSKnowHowFiles: TDataSource
    DataSet = ZQKnowHowFiles
    Left = 672
    Top = 440
  end
  object ZQKnowHow: TZQuery
    Connection = DM.ZConnection1
    SQL.Strings = (
      'SELECT'
      'k.ID,'
      'k.Nazwa,'
      'k.Opis,'
      'k.Kategoria,'
      'k.DataDodania,'
      'k.`User`'
      'FROM know_how k'
      'LEFT JOIN know_how_tags t ON (t.ID_Know_How=k.ID)'
      'LEFT JOIN know_how_files f ON (f.ID_Know_How=k.ID)'
      'WHERE (k.Nazwa LIKE :szkaj)or(t.Tag LIKE :szukaj)or(f.FileName LIKE :szukaj)'
      'GROUP BY ID'
    )
    Params = <    
      item
        DataType = ftUnknown
        Name = 'szkaj'
        ParamType = ptUnknown
      end    
      item
        DataType = ftUnknown
        Name = 'szukaj'
        ParamType = ptUnknown
      end>
    Left = 129
    Top = 256
    ParamData = <    
      item
        DataType = ftUnknown
        Name = 'szkaj'
        ParamType = ptUnknown
      end    
      item
        DataType = ftUnknown
        Name = 'szukaj'
        ParamType = ptUnknown
      end>
  end
  object ZQKnowHowFiles: TZQuery
    Connection = DM.ZConnection1
    SQL.Strings = (
      'SELECT *'
      'FROM know_how_files'
      'WHERE ID_Know_How=:id_know_how'
    )
    Params = <    
      item
        DataType = ftUnknown
        Name = 'id_know_how'
        ParamType = ptUnknown
      end>
    Left = 672
    Top = 496
    ParamData = <    
      item
        DataType = ftUnknown
        Name = 'id_know_how'
        ParamType = ptUnknown
      end>
  end
end
