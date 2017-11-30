object OchRejestrWykazow: TOchRejestrWykazow
  Left = 396
  Height = 556
  Top = 229
  Width = 1176
  Caption = 'Rejestr Wykazów Ochronnych'
  ClientHeight = 556
  ClientWidth = 1176
  OnCreate = FormCreate
  Position = poOwnerFormCenter
  LCLVersion = '6.3'
  object Panel1: TPanel
    Left = 0
    Height = 82
    Top = 0
    Width = 1176
    Align = alTop
    BevelOuter = bvNone
    ClientHeight = 82
    ClientWidth = 1176
    TabOrder = 0
    object Image1: TImage
      AnchorSideLeft.Control = edWyszukaj
      AnchorSideLeft.Side = asrBottom
      AnchorSideRight.Control = edWyszukaj
      Left = 408
      Height = 23
      Top = 24
      Width = 16
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
    end
    object edWyszukaj: TEdit
      Left = 8
      Height = 23
      Top = 24
      Width = 400
      CharCase = ecUppercase
      Constraints.MaxWidth = 400
      Constraints.MinWidth = 188
      OnChange = edWyszukajChange
      OnKeyPress = edWyszukajKeyPress
      TabOrder = 0
    end
    object Label1: TLabel
      Left = 8
      Height = 15
      Top = 8
      Width = 113
      Caption = 'Wyszukaj (Nazwisko):'
      ParentColor = False
    end
    object ComboBox1: TComboBox
      Left = 8
      Height = 23
      Top = 54
      Width = 400
      DropDownCount = 10
      ItemHeight = 15
      ItemIndex = 0
      Items.Strings = (
        ''
      )
      OnSelect = ComboBox1Select
      Style = csDropDownList
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Height = 438
    Top = 82
    Width = 1176
    Align = alClient
    BevelOuter = bvNone
    ClientHeight = 438
    ClientWidth = 1176
    TabOrder = 1
    object RxDBGrid1: TRxDBGrid
      Left = 0
      Height = 438
      Top = 0
      Width = 1176
      ColumnDefValues.BlobText = '(blob)'
      TitleButtons = True
      AutoSort = True
      Columns = <      
        item
          Alignment = taCenter
          Font.Color = clBlue
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = 'IDO'
          Width = 70
          FieldName = 'IDO'
          EditButtons = <>
          Filter.DropDownRows = 0
          Filter.EmptyValue = '(Empty)'
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
          Width = 100
          FieldName = 'Nazwisko'
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
          Title.Caption = 'Imie'
          Width = 100
          FieldName = 'Imie'
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
          Title.Caption = 'Ojciec'
          Width = 100
          FieldName = 'Ojciec'
          EditButtons = <>
          Filter.DropDownRows = 0
          Filter.EmptyValue = '(Empty)'
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
          Width = 50
          FieldName = 'Klasyf'
          EditButtons = <>
          Filter.DropDownRows = 0
          Filter.EmptyValue = '(Empty)'
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
          Filter.AllValue = '(All values)'
          Filter.EmptyFont.Style = [fsItalic]
          Filter.ItemIndex = -1
          Footers = <>
        end      
        item
          Alignment = taCenter
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = 'Kategoria wykazu'
          Width = 200
          FieldName = 'Opis'
          EditButtons = <>
          Filter.DropDownRows = 0
          Filter.EmptyValue = '(Empty)'
          Filter.AllValue = '(All values)'
          Filter.EmptyFont.Style = [fsItalic]
          Filter.ItemIndex = -1
          Footers = <>
          SortFields = 'Kategoria'
          WordWrap = True
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
          WordWrap = True
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
          Title.Caption = 'Dodano'
          Width = 100
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
      FooterOptions.Active = True
      FooterOptions.Color = clSilver
      FooterOptions.RowCount = 1
      FooterOptions.Style = tsNative
      FooterOptions.DrawFullLine = False
      SearchOptions.QuickSearchOptions = [loCaseInsensitive, loPartialKey]
      SearchOptions.FromStart = False
      OptionsRx = [rdgAllowDialogFind, rdgFooterRows, rdgAllowQuickSearch, rdgAllowQuickFilter, rdgAllowFilterForm, rdgAllowSortForm, rdgAllowToolMenu, rdgCaseInsensitiveSort, rdgDisableWordWrapTitles]
      FooterColor = clSilver
      FooterRowCount = 1
      OnSortChanged = RxDBGrid1SortChanged
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
      DataSource = DSRejWykazow
      DefaultRowHeight = 24
      FixedColor = clNone
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgHeaderHotTracking, dgHeaderPushedLook, dgAnyButtonCanSelect, dgDisableDelete, dgDisableInsert, dgCellHints, dgTruncCellHints, dgCellEllipsis]
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 0
      TitleStyle = tsNative
      OnDblClick = btnModyfikujClick
      OnKeyPress = edWyszukajKeyPress
    end
  end
  object Panel3: TPanel
    Left = 0
    Height = 36
    Top = 520
    Width = 1176
    Align = alBottom
    ClientHeight = 36
    ClientWidth = 1176
    TabOrder = 2
    object btnCopyToClipboard: TBitBtn
      Left = 120
      Height = 30
      Top = 0
      Width = 112
      Caption = 'Do schowka'
      Glyph.Data = {
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
      OnClick = btnCopyToClipboardClick
      TabOrder = 0
    end
    object btnDrukuj: TBitBtn
      Left = 0
      Height = 30
      Top = 0
      Width = 112
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
    object btnUsun: TBitBtn
      Left = 336
      Height = 30
      Top = 0
      Width = 112
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
        00000000000000000000000000000000000000000000000000000606BCD60A10
        D6E10408CFE10509D0E10508CFE10409CFE10408CEE10407CDE10306CCE10305
        CBE10205CAE10303CAE10202C7E10502C5E10200C7E10200B6D61820D4FF2C4A
        F2FF1930EEFF1C31EEFF172DEEFF1629EEFF1328EDFF1223EDFF101FEDFF0F1B
        ECFF0D16ECFF0C12ECFF0B0EEBFF0A0BEAFF0A07ECFF0301CDFF4A53F2F24674
        FFFF2148FFFF2A50FFFF294BFFFF2646FFFF2341FFFF203DFFFF1D38FFFF1B35
        FFFF182DFFFF1628FFFF1421FFFF121CFFFF1118FFFF0705EBF27173F7F381A0
        FFFF4668FFFF3256FFFF2649FFFF2445FFFF2140FFFF1D3BFFFF1A36FFFF1732
        FFFF142EFFFF122AFFFF0F25FFFF0D1DFFFF0E1EFFFF0002F1F3696DFDF28EB0
        FFFF7493FFFF7594FFFF6989FFFF5578FFFF476BFFFF3F60FFFF3252FFFF2E4D
        FFFF2B49FFFF2944FFFF2541FFFF223AFFFF223CFFFF141BFDF27176FFFFA6C4
        FFFF91ACFFFF94B1FFFF96AFFFFF95B0FFFF94B0FFFF93B0FFFF93ACFFFF90AA
        FFFF8EA6FFFF8CA4FFFF8A9FFFFF869CFFFF88A6FFFF6168FFFF524CFFD66C6E
        FFE16765FFE16766FFE16766FFE16766FFE16766FFE16565FFE16564FFE16664
        FFE16464FFE16465FFE16562FFE16462FFE16868FFE1504BFFD6000000000000
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
      TabOrder = 2
    end
    object btnModyfikuj: TBitBtn
      Left = 456
      Height = 30
      Top = 0
      Width = 112
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
      TabOrder = 3
    end
  end
  object ZQRejWykazow: TZQuery
    Connection = DM.ZConnection1
    UpdateObject = ZURejWykazow
    SQL.Strings = (
      'SELECT'
      'wyk.ID,'
      'wyk.IDO,'
      'os.Nazwisko,'
      'os.Imie,'
      'os.Ojciec,'
      'os.Klasyf,'
      'os.POC,'
      'wyk.Uwagi,'
      'wyk.Kategoria,'
      'kat.Opis,'
      'wyk.data_dodania,'
      'wyk.user_dodania'
      'FROM uwagi_wykazy as wyk'
      'RIGHT JOIN osadzeni as os ON os.IDO = wyk.IDO'
      'JOIN katalog_wykazow as kat ON kat.ID = wyk.Kategoria'
    )
    Params = <>
    Left = 290
    Top = 152
  end
  object DSRejWykazow: TDataSource
    DataSet = ZQRejWykazow
    Left = 384
    Top = 152
  end
  object frDBDataSet1: TfrDBDataSet
    DataSet = ZQRejWykazow
    Left = 384
    Top = 240
  end
  object frReport1: TfrReport
    Dataset = frDBDataSet1
    InitialZoom = pzDefault
    Options = [roSaveAndRestoreBookmarks]
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    DataType = dtDataSet
    Left = 290
    Top = 240
  end
  object ZURejWykazow: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM uwagi_wykazy'
      'WHERE'
      '  uwagi_wykazy.ID = :OLD_ID'
    )
    InsertSQL.Strings = (
      'INSERT INTO uwagi_wykazy'
      '  (IDO, Uwagi, Kategoria, data_dodania, user_dodania)'
      'VALUES'
      '  (:IDO, :Uwagi, :Kategoria, :data_dodania, :user_dodania)'
    )
    ModifySQL.Strings = (
      'UPDATE uwagi_wykazy SET'
      '  Uwagi = :Uwagi,'
      '  Kategoria = :Kategoria,'
      '  data_dodania = :data_dodania,'
      '  user_dodania = :user_dodania'
      'WHERE'
      '  uwagi_wykazy.ID = :OLD_ID'
    )
    UseSequenceFieldForRefreshSQL = False
    Left = 496
    Top = 152
    ParamData = <    
      item
        DataType = ftUnknown
        Name = 'Uwagi'
        ParamType = ptUnknown
      end    
      item
        DataType = ftUnknown
        Name = 'Kategoria'
        ParamType = ptUnknown
      end    
      item
        DataType = ftUnknown
        Name = 'data_dodania'
        ParamType = ptUnknown
      end    
      item
        DataType = ftUnknown
        Name = 'user_dodania'
        ParamType = ptUnknown
      end    
      item
        DataType = ftUnknown
        Name = 'OLD_ID'
        ParamType = ptUnknown
      end    
      item
        DataType = ftUnknown
        Name = 'IDO'
        ParamType = ptUnknown
      end>
  end
end
