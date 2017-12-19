object KoszykDostep: TKoszykDostep
  Left = 407
  Height = 550
  Top = 229
  Width = 970
  Caption = 'Koszyk - współdzielenie'
  ClientHeight = 550
  ClientWidth = 970
  Position = poScreenCenter
  LCLVersion = '6.3'
  object Panel5: TPanel
    Left = 0
    Height = 50
    Top = 0
    Width = 970
    Align = alTop
    ClientHeight = 50
    ClientWidth = 970
    Color = clWhite
    ParentColor = False
    TabOrder = 0
    object Label1: TLabel
      Left = 64
      Height = 19
      Top = 16
      Width = 195
      Caption = 'Koszyk - współdzielenie :'
      Font.CharSet = EASTEUROPE_CHARSET
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Pitch = fpVariable
      Font.Quality = fqDraft
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Image1: TImage
      Left = 16
      Height = 32
      Top = 9
      Width = 32
      Picture.Data = {
        1754506F727461626C654E6574776F726B47726170686963A202000089504E47
        0D0A1A0A0000000D49484452000000100000001008060000001FF3FF61000002
        694944415478DA9D925B4853611CC0FFDFD9E99CB5CDD51C636AB7079129481A
        6544255D08D6C597CC5E841EAC880C7A30BA88654225A82F514642D0850C7D91
        D02E86419061502E53339A11AC34B679895C639E6DE7EC9C7FDFBE0353841ED6
        F770F8F13FDFF9FD6F871C7B1D1F33F250F873565AFDE4A0CD0F691E72B8FB77
        75AED3D864E20DE47289684D5B907CEC79E4CFDFE9B27B2D029FEEF7BA2079AA
        5E8430CF6181BA4D3C8B358F225E28228C9B46106B8B75BEFE19B1A650E7068F
        86294145D70CBAB2AD40080F8A2283282E07458E017006108565109315E00D1C
        20BD9B9065100401907A5202F78349746599E1E65E3B8B1DE99AC5F60A07E3F2
        8E203EAECC667CBAEF0FB6BA57303EFF32B450C1AE3B3E143405FA4EBA58ACA0
        7118BD173730CEBF368CE397742EB83A84DEFA8D7A928EEF0B822D37C631E89F
        A125218826111449063E39547A439513C01B05762F916491072942DBC345432C
        6A19C35F9301F0DF72B358CEA95E0CDCDEAF7335E5369D9DD5CF70BAAD2CC529
        41FE95210C7CF381128B01E13866A713054AA021024719514F49924BA0A89145
        15E4D4BDC5D0D4748974AFFCC37FFD07C6336F50A619344505BABFF4052DEFE6
        1B7B067D75BC0009CF97C07B29249940E053EF613E8EABB233A5DC75F66D2A6D
        61FD5ADBE0E6BCAC1A72FF93421415AB46829173668BE980D30803D188B4A67E
        77A6BA345BB70F0DBE30B6CFC5D4DAF05C78C22672A36447B367A581230D5FFD
        E1322516DD6ECAC898CA755A4B5F9D2D1E582A38D1F963EBF38F1377D5F968A9
        D96A9915056E8A95683DFA94706ADC4B3B72D1E976861E1EAAFC57CF8EE33DBD
        9A8AFB34C07EBA9ED6BF84740216A753B2CD0000000049454E44AE426082
      }
      Stretch = True
    end
    object DBNazwaKoszyka: TDBText
      AnchorSideLeft.Control = Label1
      AnchorSideLeft.Side = asrBottom
      AnchorSideTop.Control = Label1
      AnchorSideTop.Side = asrCenter
      Left = 279
      Height = 19
      Top = 16
      Width = 143
      BorderSpacing.Left = 20
      DataSource = DM.DSKoszyk_sl
      Font.CharSet = EASTEUROPE_CHARSET
      Font.Color = clTeal
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
    Height = 500
    Top = 50
    Width = 419
    Align = alLeft
    BevelOuter = bvNone
    ClientHeight = 500
    ClientWidth = 419
    TabOrder = 1
    object Panel9: TPanel
      Left = 0
      Height = 40
      Top = 0
      Width = 419
      Align = alTop
      BevelOuter = bvNone
      ClientHeight = 40
      ClientWidth = 419
      ParentFont = False
      TabOrder = 0
      object Edit2: TEdit
        Left = 24
        Height = 23
        Top = 7
        Width = 387
        Anchors = [akTop, akLeft, akRight]
        OnChange = Edit2Change
        TabOrder = 0
      end
      object Image2: TImage
        Left = 6
        Height = 16
        Top = 11
        Width = 16
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
    end
    object RxDBGrid1: TRxDBGrid
      Left = 0
      Height = 460
      Top = 40
      Width = 419
      ColumnDefValues.BlobText = '(blob)'
      TitleButtons = True
      AutoSort = True
      Columns = <      
        item
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = 'Nazwisko Imię'
          Width = 140
          FieldName = 'Full_name'
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
          Title.Caption = 'login'
          Width = 100
          FieldName = 'user'
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
          Title.Caption = 'dział'
          Width = 80
          FieldName = 'dzial'
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
          Title.Caption = 'logowanie'
          FieldName = 'Last'
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
      AutoEdit = False
      Color = clWindow
      DrawFullLine = False
      FocusColor = clHighlight
      FixedHotColor = clNone
      SelectedColor = clHighlight
      GridLineStyle = psSolid
      DataSource = DSUzytkownicy
      DefaultRowHeight = 22
      FixedColor = clNone
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgHeaderHotTracking, dgHeaderPushedLook, dgAnyButtonCanSelect, dgDisableDelete, dgDisableInsert, dgCellHints, dgCellEllipsis]
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 1
      TitleStyle = tsNative
      OnDblClick = btnUdostepnijClick
    end
  end
  object Splitter1: TSplitter
    Left = 419
    Height = 500
    Top = 50
    Width = 5
  end
  object Panel2: TPanel
    Left = 424
    Height = 500
    Top = 50
    Width = 546
    Align = alClient
    BevelOuter = bvNone
    ClientHeight = 500
    ClientWidth = 546
    TabOrder = 3
    object Panel4: TPanel
      Left = 0
      Height = 500
      Top = 0
      Width = 50
      Align = alLeft
      BevelOuter = bvNone
      ClientHeight = 500
      ClientWidth = 50
      TabOrder = 0
      object Image3: TImage
        Left = 16
        Height = 16
        Top = 11
        Width = 16
        Picture.Data = {
          1754506F727461626C654E6574776F726B47726170686963A603000089504E47
          0D0A1A0A0000000D49484452000000100000001008060000001FF3FF61000003
          6D4944415478DA85925B6C544518C7FF3367CE6DCFD94BCF6E77B7BBD26E2BBD
          2C5DBB7DB0B425921AD40422B44663AC4008C64BD4078C26223EA00FC644C590
          08266C441FBCFB606A62304008262AB6414D6B35B2B66CA541690BA5A7ED5EBA
          F7739C5689F1896F329379F8BEDFFCE7FF7D24F8C4D9EEB977EE3A8F7FA3EEC5
          D1F5B5B56A7F7DC8F9A4A688E1B04FB10A654B302D242FE6AC6394928F7FDC6E
          E46FE413F7CEAF6C66570F2D7CDABF3FF4CCF00BA188F7B548D48BE67A0D1E89
          4262144185A246002A450BEF4FAD98A9E5EAFD63FDC6376B00FDD99122F3D448
          2C39550874DDAAF863016812012881A132180E06C68B5581A0C525A2D70D242E
          ACE0EBBF8A9B46078C1122EF399351EE68D75D950ABC5E199A4AD11654719B47
          C0F4D5022ECD17E10D3AD01CD660F3E5E2E0AD3E8A033FA44BB359AB86487BCF
          64D4BE0DBA2112288C602397EE35D348BCFDDD67F6A279846AEE19C1E978AE7E
          4BC7A3BB07229AC0011107859AAFE2E0CFE9C789B0E77486F4B4EB12A9C2AB8B
          A8F72A88B9809FBEFD7364FA727AF74262F31FAB7F6D3E3C195FD7E03EFF709F
          5FB66CA053068EFE929E23D879321B18B85DEBF189E808CB08D8369CD5328653
          CBF6C9317358656CEBC4C158760D7268CA6E690DC2B21528DCE0E91437B161DF
          597BFB431BE1348BB8F09BF9FBE44231717171E957EEE378FEF8E605DC24C8CD
          12D6E2439F17D9EB71B4A81D5D7ADBDE4623121F6CB81B1F98E740C8CBB12F10
          BB1614FC628F28A9C0D5E027F9FBCEED5AADF38CDDA32F2553A7B6AC6BDCF448
          DB8324A3E411D2DDFC55051A3FF75F49E40879A56EC6DEB65427281244B707E2
          E55654D252677EDB89F15588F079B449A7F6470F74F7F6CAFE3AD06A052A2F8E
          CA61BC7569284BF0E686C7D03A771C2D1697E380E4F04048FA72A5E9CC7B9085
          C3B293858AA5DCBEC1F59D83C178132673B3D0840A9AD45A0C4D7CCF01EF763A
          609A8BD89196A0F0DE085C09E37BC9099671206ADC82BE402346E92C660B2628
          2B62A5701D8D861FC9F199EC3F261E8BF7425D1CC69D4540E1735BA41004918F
          B0046289A882C1C5EF12AB20339141F6F47CC17FAF53B104ADF45F178EC4FAA0
          9687D05536E02B0372898300910A605505940B2C272D58D770A0F2F4E4EBC2AB
          B56F50377BFEFF6D3CDAAE425676412F3F8595E52858A98A0CE5087A05F32C01
          46BFACBE3495BA91EE38D1D5FD373A4F2A20C27B38EB0000000049454E44AE42
          6082
        }
      end
      object btnUdostepnij: TBitBtn
        AnchorSideTop.Control = Panel4
        AnchorSideTop.Side = asrCenter
        Left = 8
        Height = 30
        Top = 235
        Width = 32
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000064000000640000000000000000000000000000000000
          00000000000000000000000000000000000000000000C05500FFC05500FF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000BF5400FFD47A0BFFC055
          00FF000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000BE5100FFF4BA23FFD577
          08FFC9681AFF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000BE5100FFE69101FFF0AD
          15FFD47608FFC96819FF00000000000000000000000000000000CA6713FFC45E
          06FFC45E07FFC55F08FFC56009FFC5600AFFC5610BFFCA6709FFE99300FFE18B
          00FFF0A90EFFD0730AFFC96818FF000000000000000000000000DC8C25FFFFE7
          67FFFFD555FFFDCD47FFFCC63EFFF8BC33FFF5B427FFF3AB1CFFED9F12FFE995
          05FFE48C00FFED9E02FFCE720CFFC96817FF0000000000000000DE9128FFFFE6
          76FFFAD063FFF8CD56FFF7CA4DFFF6C443FFF4BD39FFF2B32FFFEFA824FFEEA4
          1AFFEC9C0EFFE68F02FFEF9B00FFD27C16FFC76312FF00000000E3982EFFFFEB
          83FFFBDA6FFFF9D365FFF9CF5CFFF7C952FFF6C749FFF5BF40FFF3B635FFF1B0
          2CFFEFA921FFEDA418FFE68A00FFF6BF29FFEDBD65FFC96511FFE9A231FFFFF0
          8EFFFDE17AFFFCDC72FFFBD769FFF9D260FFF8CB55FFF7C84EFFF5C547FFF4BD
          3CFFF3B534FFEFA71BFFF2B62BFFF5D675FFDD963BFFC5600DFFEDAC38FFFFF4
          9DFFFEE789FFFEE380FFFDE07AFFFBDC71FFFBD769FFFAD261FFF7CD55FFF6C9
          51FFF5BD36FFF2BD38FFFCDC6EFFDE922CFFC45D0BFF00000000F1BC5AFFFFFF
          FAFFFFFFE3FFFFFFE0FFFFFEDDFFFFFCD8FFFFFDD9FFFFF7C7FFFBD463FFF8C9
          47FFF7D474FFFEE68CFFE3931FFFC45D0DFF0000000000000000EEA42AFFEEB1
          44FFEDAB3EFFECAA3DFFEBA83CFFEAA83DFFE8A037FFE7A33BFFFDDE67FFFDE9
          A2FFFFF3B1FFE59F2EFFC25809FF000000000000000000000000000000000000
          00000000000000000000000000000000000000000000ECA01AFFFFFBC8FFFFFC
          CCFFE5A540FFC15707FF00000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000F3B83BFFFFFEC8FFE5A6
          3FFFC15605FF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000F8BE33FFE4A541FFC155
          05FF000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000DA8A26FFC15708FF0000
          0000000000000000000000000000000000000000000000000000
        }
        OnClick = btnUdostepnijClick
        TabOrder = 0
      end
    end
    object Panel6: TPanel
      Left = 50
      Height = 500
      Top = 0
      Width = 496
      Align = alClient
      BevelOuter = bvNone
      ClientHeight = 500
      ClientWidth = 496
      TabOrder = 1
      object Panel3: TPanel
        Left = 0
        Height = 42
        Top = 0
        Width = 496
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Użytkownicy z dostępem do tego koszyka:'
        Color = 10485759
        Font.Color = clRed
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 0
      end
      object RxDBGrid2: TRxDBGrid
        Left = 0
        Height = 458
        Top = 42
        Width = 496
        ColumnDefValues.BlobText = '(blob)'
        TitleButtons = True
        AutoSort = True
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
        AutoEdit = False
        Color = clWindow
        DrawFullLine = False
        FocusColor = clHighlight
        FixedHotColor = clNone
        SelectedColor = clHighlight
        GridLineStyle = psSolid
        DataSource = DSUzytkownicy
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
  end
  object ZQUzytkownicy: TZQuery
    Connection = DM.ZConnection1
    ReadOnly = True
    SQL.Strings = (
      'SELECT'
      'user,'
      'Full_name,'
      'dzial,'
      'Last'
      'FROM uprawnienia'
      'WHERE Full_name LIKE :nazwisko'
    )
    Params = <    
      item
        DataType = ftUnknown
        Name = 'nazwisko'
        ParamType = ptUnknown
      end>
    Left = 108
    Top = 340
    ParamData = <    
      item
        DataType = ftUnknown
        Name = 'nazwisko'
        ParamType = ptUnknown
      end>
  end
  object DSUzytkownicy: TDataSource
    DataSet = ZQUzytkownicy
    Left = 108
    Top = 403
  end
  object ZQKoszykDostep: TZQuery
    Connection = DM.ZConnection1
    SQL.Strings = (
      'SELECT'
      'user,'
      'Full_name'
      'FROM koszyk_usr'
      'WHERE '
      '  ID_koszyka = :id_koszyka'
    )
    Params = <    
      item
        DataType = ftUnknown
        Name = 'id_koszyka'
        ParamType = ptUnknown
      end>
    Left = 648
    Top = 340
    ParamData = <    
      item
        DataType = ftUnknown
        Name = 'id_koszyka'
        ParamType = ptUnknown
      end>
  end
  object DSKoszykDostep: TDataSource
    DataSet = ZQKoszykDostep
    Left = 648
    Top = 403
  end
end
