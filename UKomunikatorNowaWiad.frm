object KomunikatorNowaWiad: TKomunikatorNowaWiad
  Left = 407
  Height = 658
  Top = 238
  Width = 1039
  Caption = 'Nowa wiadomość'
  ClientHeight = 658
  ClientWidth = 1039
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  Position = poOwnerFormCenter
  ShowHint = True
  LCLVersion = '6.3'
  object Panel1: TPanel
    Left = 0
    Height = 558
    Top = 50
    Width = 359
    Align = alLeft
    BevelOuter = bvNone
    ClientHeight = 558
    ClientWidth = 359
    TabOrder = 0
    object Panel8: TPanel
      Left = 0
      Height = 558
      Top = 0
      Width = 359
      Align = alClient
      BevelOuter = bvNone
      ClientHeight = 558
      ClientWidth = 359
      TabOrder = 0
      object RxDBGridUsers: TRxDBGrid
        Left = 0
        Height = 371
        Top = 40
        Width = 359
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
        TabOrder = 0
        TitleStyle = tsNative
        OnDblClick = btnDodajClick
      end
      object Panel9: TPanel
        Left = 0
        Height = 40
        Top = 0
        Width = 359
        Align = alTop
        BevelOuter = bvNone
        ClientHeight = 40
        ClientWidth = 359
        TabOrder = 1
        object edZnajdz: TEdit
          Left = 24
          Height = 23
          Top = 7
          Width = 327
          Anchors = [akTop, akLeft, akRight]
          OnChange = edZnajdzChange
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
      object RxDBGridGrupy: TRxDBGrid
        Left = 0
        Height = 142
        Top = 416
        Width = 359
        ColumnDefValues.BlobText = '(blob)'
        TitleButtons = True
        AutoSort = True
        Columns = <        
          item
            Title.Alignment = taCenter
            Title.Orientation = toHorizontal
            Title.Caption = 'Nazwa Grupy'
            Width = 300
            FieldName = 'Nazwa'
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
        OnDataHintShow = RxDBGridGrupyDataHintShow
        Align = alBottom
        AlternateColor = 16055807
        AutoAdvance = aaNone
        AutoEdit = False
        Color = clWindow
        DrawFullLine = False
        FocusColor = clHighlight
        FixedHotColor = clNone
        SelectedColor = clHighlight
        GridLineStyle = psSolid
        DataSource = DSGrupy
        DefaultRowHeight = 22
        FixedColor = clNone
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgHeaderHotTracking, dgHeaderPushedLook, dgAnyButtonCanSelect, dgDisableDelete, dgDisableInsert, dgCellHints, dgCellEllipsis]
        ParentShowHint = False
        PopupMenu = PopupMenu1
        ReadOnly = True
        ShowHint = True
        TabOrder = 2
        TitleStyle = tsNative
        OnDblClick = RxDBGridGrupyDblClick
      end
      object Splitter2: TSplitter
        Cursor = crVSplit
        Left = 0
        Height = 5
        Top = 411
        Width = 359
        Align = alBottom
        ResizeAnchor = akBottom
      end
    end
  end
  object Panel2: TPanel
    Left = 364
    Height = 558
    Top = 50
    Width = 675
    Align = alClient
    BevelOuter = bvNone
    ClientHeight = 558
    ClientWidth = 675
    TabOrder = 1
    object Panel3: TPanel
      Left = 0
      Height = 178
      Top = 0
      Width = 675
      Align = alTop
      BevelOuter = bvNone
      ClientHeight = 178
      ClientWidth = 675
      TabOrder = 0
      object RxDBGridOdbiorcy: TRxDBGrid
        Left = 34
        Height = 139
        Top = 0
        Width = 641
        ColumnDefValues.BlobText = '(blob)'
        TitleButtons = True
        AutoSort = True
        Columns = <        
          item
            Title.Alignment = taCenter
            Title.Orientation = toHorizontal
            Title.Caption = 'Nazwisko Imie'
            Width = 200
            FieldName = 'NazwiskoImie'
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
            Width = 120
            FieldName = 'user'
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
        DataSource = DSOdbiorcy
        DefaultRowHeight = 22
        FixedColor = clNone
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgHeaderHotTracking, dgHeaderPushedLook, dgAnyButtonCanSelect, dgDisableDelete, dgDisableInsert, dgCellHints, dgCellEllipsis]
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 0
        TitleStyle = tsNative
        OnDblClick = btnUsunClick
      end
      object Panel6: TPanel
        Left = 0
        Height = 39
        Top = 139
        Width = 675
        Align = alBottom
        ClientHeight = 39
        ClientWidth = 675
        ParentColor = False
        TabOrder = 1
        object Label2: TLabel
          Left = 8
          Height = 15
          Top = 11
          Width = 39
          Caption = 'Temat:'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object edTemat: TEdit
          Left = 56
          Height = 23
          Top = 7
          Width = 612
          Anchors = [akTop, akLeft, akRight]
          TabOrder = 0
        end
      end
      object Panel7: TPanel
        Left = 0
        Height = 139
        Top = 0
        Width = 34
        Align = alLeft
        ClientHeight = 139
        ClientWidth = 34
        TabOrder = 2
        object btnDodaj: TBitBtn
          Left = 0
          Height = 30
          Top = 40
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
          OnClick = btnDodajClick
          TabOrder = 0
        end
        object btnUsun: TBitBtn
          Left = 0
          Height = 30
          Top = 72
          Width = 32
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000064000000640000000000000000000000000000000000
            00000000000000000000000000000000000000000000E56508FFE46A0CFF0000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000E6670AFFE5801AFFE57816FF0000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000E76907FFED9A2EFFF0B03EFFE26E10FF0000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000E96F08FFEEA139FFF8CB5DFFE99B36FFDC700EFF0000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000ED7709FFEFAE4AFFF9D06FFFF7C054FFDF9737FFD77821FFE082
            25FFDC781FFFDC7819FFDB7213FFDA6B0FFFDA680AFFD35008FF000000000000
            0000EE7F0AFFF4BB5FFFFAD885FFF7C765FFF6C059FFEDAF4AFFEAAA41FFE7A5
            35FFE89E2BFFE79321FFE48919FFE28211FFE37D0AFFCB4B00FF00000000F188
            0CFFF6C671FFFCE19FFFF9CE7AFFF7CA6DFFF6C361FFF6C055FFF6BA4AFFF4B3
            3EFFF3AA33FFF1A329FFF09A1FFFEF9217FFEE8B0FFFCE4E02FFF39714FFF9DC
            9BFFFEEFD0FFFAD788FFF9D383FFF8CF77FFF7C869FFF5C15BFFF4BB51FFF2B6
            45FFF1AC39FFF0A530FFEE9D26FFED941CFFEF9115FFD05406FFF2950EFFF8CF
            87FFFFF9ECFFFCE1ACFFF9D583FFF8D27FFFF7CB72FFF6C563FFF4BD54FFF3B5
            44FFF2AF3BFFF0A632FFEF9F26FFED951DFFF09718FFD65908FF00000000F386
            01FFF5C170FFFFFAECFFFCE2ADFFF9D17DFFF8CF7AFFF7C868FFF6C56AFFF4C2
            61FFF3BB53FFF2B447FFF0AE3DFFEFA532FFF09F20FFDA6009FF000000000000
            0000F17D00FFF5BB68FFFFFAEBFFFBE1ADFFF9CE70FFF8CC70FFFBE7B6FFFAEA
            BEFFF9E2ABFFF8DE9CFFF6D88AFFF6D47FFFF6C34EFFD96209FF000000000000
            000000000000EF7800FFF2B35CFFFEF8E4FFFCE7BFFFF8D17CFFF2A73FFBF1A1
            37FFF0A031FFEF9A2BFFED9125FFEC8821FFEC8A21FFDF640FFF000000000000
            00000000000000000000EE7000FFF1AC50FFFEFDF1FFF9D593FFEA7803FF0000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000ED6F00FFF1AA55FFFAE39FFFED8F1BFF0000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000ED7104FFEEA031FFED9525FF0000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000EF8307FFED820BFF0000
            0000000000000000000000000000000000000000000000000000
          }
          OnClick = btnUsunClick
          TabOrder = 1
        end
        object btnZapiszGrupe: TBitBtn
          Left = 0
          Height = 30
          Top = 104
          Width = 32
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000064000000640000000000000000000000C1761BFFC275
            19FFBD6B13FFB96504FFB96504FFB96504FFBA6504FFBA6504FFBA6504FFBA65
            04FFBA6504FFBA6504FFBA6504FFBC690AFFB96A15FFC3791FFFD5933DFFEFB7
            36FFCDC6C0FFE9F8FFFFDBE5F6FFDBE8F8FFDBE8F8FFDBE8F9FFDBE8F8FFDAE7
            F8FFDBE7F8FFD8E4F5FFE9F6FFFFCDC6C0FFEAA714FFC0761DFFCD9551FFE8AE
            3CFFDCD7D4FFECE8E9FFADA0A2FFA79B9EFF9E9395FF94898CFF8A8185FF8379
            7CFF7B7276FF685F64FFECE8E9FFDCD7D4FFE59E20FFC77B25FFD09653FFEAB4
            47FFDCD7D4FFEFF0EFFFDFDEDCFFE1E0DFFFE0DFDEFFDFE0DDFFE0DFDDFFDFDE
            DDFFDFE0DEFFDBD9D9FFEDEDEDFFDCD7D4FFE7A62BFFC9802BFFD49B58FFEBB9
            50FFDCD7D4FFECE8E9FFA99D9FFFA4999EFF9A9194FF92888BFF897F85FF8279
            7CFF7A7177FF655C62FFECE8E9FFDCD7D4FFE8AC37FFCC8531FFD69E5BFFEDBD
            5AFFDCD7D4FFFFFFFFFFFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFDCD7D4FFEAB340FFD08B34FFD9A45EFFF0C2
            63FFDCD7D4FFECE8E9FFA99D9FFFA4999EFF9A9194FF92888BFF897F85FF8279
            7CFF7A7177FF655C62FFECE8E9FFDCD7D4FFEDB749FFD2903AFFD8A35CFFF0C6
            6DFFDCD7D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFDCD7D4FFEEBD54FFD7963EFFDEAC69FFF9D2
            81FFC1975CFF9A7B60FF95775EFF97795DFF97795DFF97795DFF97795DFF9779
            5CFF97795CFF95775EFF9A7A5EFFC19A64FFF7CA6BFFD99B44FFDDAB67FFF6D5
            8BFFFFD056FFC0A887FFC8C5C9FFCEC6BFFFCDC6C0FFCDC6C0FFCDC6BFFFD6D0
            CAFFD6D3D0FFCFCED4FFC0A888FFFFD25DFFF3CC75FFDCA148FFDCA966FFF6D9
            93FFFBC85DFFC2B4A2FFD7DEEBFFDDDDDDFFDCDDDEFFDCDBDDFFE7E8EAFFC8BA
            A7FFA29692FFC2B4A2FFC6BCA9FFFBCB63FFF3D07EFFE0A74CFFE5B973FFF6DA
            97FFFBCC62FFC8BAA7FFDDE0E9FFE1DFDDFFE0DFDEFFDFDDDCFFEFF3F9FF9F88
            6FFFE5AF47FF9E9189FFC7BDB2FFFDCF6AFFF5D484FFE3AC51FFE9BC75FFF8DD
            9EFFFDCF69FFCEC0AFFFE3E7EFFFE7E5E3FFE6E5E4FFE5E4E2FFF1F6FFFFBAA3
            86FFFFE873FFB5AB9EFFCAC0B8FFFFD26EFFF9DA8EFFE7B25BFFEAC079FFF8E0
            9BFFFBD165FFD3C4AFFFEAEEF6FFECEBE8FFECEBE9FFEBE9E6FFFBFFFFFFA28E
            78FFDEAF4FFFA89C95FFD1C7B9FFFFDA78FFF5D889FFE2A442FFECC47EFFFEF4
            D5FFFFE290FFDCD7D4FFF5FFFFFFF6FEFFFFF6FEFFFFF6FDFFFFFFFFFFFFDFDD
            DCFFC8BAA7FFDFDDDCFFE5E4E2FFFFDE88FFE4AA45FFDD973419ECC681FFF0CA
            82FFF4CA7DFFE8C788FFEFCF94FFEED192F1EDCF92FFEED092FFEED093FFF2D3
            96FFF7D79BFFF6D69BFFE6C48AFFEBB552FFE19E351100000000
          }
          OnClick = btnZapiszGrupeClick
          TabOrder = 2
        end
        object btnKosz: TBitBtn
          Left = 0
          Height = 30
          Hint = 'Wyczyść listę odbiorców.'
          Top = 7
          Width = 32
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000064000000640000000000000000000000000000000000
            0000382D3380686164EC716A6BFF716A6BFF716A6BFF716A6BFF716A6BFF716A
            6BFF716A6BFF716A6BFF686164F1382D33800000000000000000000000000000
            00006C6065EDA2AFA5FFA2AFA5FFA2AFA5FFA2AFA5FFA2AFA5FFA2AFA5FFA2AF
            A5FFA2AFA5FFA2AFA5FFA2AFA5FF6C6065EA0000000000000000000000000000
            0000837B7FFFC9C5C7FF008036FF278E52FF36945CFFA9BEAFFF9BB9A5FF0080
            36FF008036FF008036FFC9C5C7FF837B7FFF0000000000000000000000007D72
            7773A19B9CFFE8E6E6FF049042FF48A872FFE0DFDDFFE0DFDDFFE0DFDDFFE0DF
            DDFF64B286FF049042FFE8E6E6FFA19B9CFF7D72774400000000000000006356
            5C89C9C5C7FFF0EEEDFF84D6AFFF26A863FFE1E8E3FFF0EEEDFFF0EEEDFFE1E8
            E3FF17A359FF84D6AFFFF0EEEDFFC9C5C7FF63565C6900000000000000006356
            5CB5E8E6E6FFFCFBF9FFEDF5F0FFFCFBF9FFEDF5F0FFFCFBF9FFFCFBF9FFDDF1
            E6FFEDF5F0FFDFF1E6FFFCFBF9FFE8E6E6FF63565C9E00000000000000006C60
            65E0FFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFF0BAF60FFB3E6CCFFB3E6CCFF0BAF
            60FFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFF6C6065CF0000000000000000837B
            7FF8F0EEEDFFF0EEEDFFF0EEEDFFF0EEEDFF23AD6CFF64B286FF64B286FF15A9
            63FFE0E8E3FFF0EEEDFFF0EEEDFFF0EEEDFF837B7FEE00000000000000009F95
            98FFDDDCDAFFDDDCDAFFDDDCDAFFDDDCDAFFDDDCDAFF019750FF019750FFDDDC
            DAFFDDDCDAFFDDDCDAFFDDDCDAFFDDDCDAFF9F9598FF0000000000000000AAA2
            A5FFCBC8C7FFCBC8C7FFCBC8C7FFCBC8C7FFCBC8C7FFCBC8C7FFCBC8C7FFCBC8
            C7FFCBC8C7FFCBC8C7FFCBC8C7FFCBC8C7FFAAA2A5FF0000000008610DEF0A79
            1CFF0A791CFF0A791CFF0A791CFF0A791CFF0A791CFF0A791CFF0A791CFF0A79
            1CFF0A791CFF0A791CFF0A791CFF0A791CFF0A791CFF036008EF1F8B36FF35C0
            64FF35C064FF35C064FF35C064FF35C064FF35C064FF35C064FF35C064FF35C0
            64FF35C064FF35C064FF35C064FF35C064FF35C064FF0D8326FF229B45FF41D4
            8EFF41D48EFF41D48EFF41D48EFF41D48EFF41D48EFF41D48EFF41D48EFF41D4
            8EFF41D48EFF41D48EFF41D48EFF41D48EFF41D48EFF0E9437FF1E933AEF239E
            4DFF1C9646FF1A9040FF178B3CFF168739FF158638FF158638FF158638FF1586
            38FF16883AFF178B3CFF1A9041FF1C9646FF1F9C4BFF129033EF000000000768
            0EAF096F15FF086A14FF086512FF076311FF076211FF076211FF076211FF0762
            11FF076412FF086713FF096B14FF096F15FF076B0FBF00000000000000000000
            00000A74179A0A7417D00A7417F30A7417FF0A7417FF0A7417FF0A7417FF0A74
            17FF0A7417FF0A7417ED0A7417C50A74178F0000000000000000
          }
          OnClick = btnKoszClick
          TabOrder = 3
        end
      end
    end
    object Splitter3: TSplitter
      Cursor = crVSplit
      Left = 0
      Height = 5
      Top = 178
      Width = 675
      Align = alTop
      ResizeAnchor = akTop
    end
    object PanelRichMemoEdytor: TPanel
      Left = 0
      Height = 375
      Top = 183
      Width = 675
      Align = alClient
      BevelOuter = bvNone
      ClientHeight = 375
      ClientWidth = 675
      TabOrder = 2
      object Panel11: TPanel
        Left = 0
        Height = 0
        Top = 0
        Width = 675
        Align = alTop
        AutoSize = True
        BevelOuter = bvLowered
        TabOrder = 0
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Height = 50
    Top = 608
    Width = 1039
    Align = alBottom
    BevelOuter = bvNone
    ClientHeight = 50
    ClientWidth = 1039
    TabOrder = 2
    object btnOK: TBitBtn
      Left = 790
      Height = 30
      Top = 16
      Width = 107
      Anchors = [akTop, akRight]
      DefaultCaption = True
      Kind = bkOK
      ModalResult = 1
      OnClick = btnOKClick
      TabOrder = 0
    end
    object btnCancel: TBitBtn
      Left = 918
      Height = 30
      Top = 16
      Width = 107
      Anchors = [akTop, akRight]
      Cancel = True
      DefaultCaption = True
      Kind = bkCancel
      ModalResult = 2
      TabOrder = 1
    end
  end
  object Panel5: TPanel
    Left = 0
    Height = 50
    Top = 0
    Width = 1039
    Align = alTop
    ClientHeight = 50
    ClientWidth = 1039
    Color = clWhite
    ParentColor = False
    TabOrder = 3
    object Label1: TLabel
      Left = 64
      Height = 19
      Top = 16
      Width = 136
      Caption = 'Nowa wiadomość'
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
        1754506F727461626C654E6574776F726B477261706869632403000089504E47
        0D0A1A0A0000000D494844520000002000000020080300000044A48AC6000000
        0373424954080808DBE14FE00000000970485973000007A3000007A301302FB2
        C50000001974455874536F667477617265007777772E696E6B73636170652E6F
        72679BEE3C1A00000135504C5445FFFFFF80D58071C68E76C48971C68072C386
        70C18970C28572C48572C285E7E1D7E6E2D5E6E1D6E2DDD5E2DCD471C48671C3
        8771C38571C38671C48571C38771C38671C38672C38670C386DCD6CEE0DAD17A
        C58C71C386ABCDAD71C38674C48971C38672C38673C48775C48976C48A7AC78E
        84C69386CC9887C99589C7968BCE9C8CCE9D91D0A196CDA09BCAA2A0CBA5A1D0
        A7A1D7AFADCEAEBDD7BBC1D1BBCCD3C2D1DDC9DCD6CDDCD7CDDDD7CEDDD8CEDE
        D8CEDED8CFDED9CFDFD9D0E0DAD0E0DAD1E0DBD1E0E1D3E1DBD2E1DCD2E2DCD3
        E2DDD2E2E1D5E3DED4E4DFD4E4DFD5E4E2D6E5E0D6E6E0D7E6E1D6E6E1D7E7E2
        D8E8E3D7E8E3D8E8E3D9E8E4D8E9E5D9EAE5D9EAE6DAEBE6DAEBE7DBECE7DBEC
        E8DBECE8DCEDE8DCEDE9DCEEE9DDEEEADDEEF8F1EFEBDEF6FBF7F7FBF8F8FCF9
        FFFFFF6310B0810000002074524E530006090D12262932415C5F6870727C8190
        999CB0C5D0D1D3DCE8ECEDF2F2FBFE10987E49000001354944415438CBA5D359
        53C2301486E1E0BEE38EBB414594E2BE1C5B6B1171C18D5683202E2C52FCFF3F
        C1263098D0841BBE8BDC3CEF4C673A7310EA78C323ED368450B2F4A35E710121
        B0BE95FE61CE7B01980585E7756001E839A9673DAA07002F12CF001740C6E7F7
        20049016B97C0B2D015C97392F25C11740A2D8F42F0B24015C7C36BC700ED200
        8C77E66F3A2802D3CE7B9E7B3614C1A54388937DF51E4B1ADC90FFA58E773737
        B6F74EB8E0EC81F3BB7DCCB67ED80C0C9B73B24335429FE5466039BC1F518A56
        E8BBDACB821411B6454973D957C6699016FD718D0BA611E84FA293538CE355B7
        F6EBBA95085E42A6DDE2E40AE3704C3BA8695A14E359343AE6DB22F78949D925
        04A9C4AA2C189005819027E138F509F931F585EA7F124F752BCE2D109CC37865
        66B0DD49F6F477757ED76C7FC6E3BF51F56FBC6E0000000049454E44AE426082
      }
    end
  end
  object Splitter1: TSplitter
    Left = 359
    Height = 558
    Top = 50
    Width = 5
  end
  object ZQUzytkownicy: TZQuery
    Connection = DM.ZConnection1
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
    Left = 80
    Top = 312
    ParamData = <    
      item
        DataType = ftUnknown
        Name = 'nazwisko'
        ParamType = ptUnknown
      end>
  end
  object DSUzytkownicy: TDataSource
    DataSet = ZQUzytkownicy
    Left = 80
    Top = 375
  end
  object DSOdbiorcy: TDataSource
    DataSet = memOdbiorcy
    Left = 632
    Top = 144
  end
  object memOdbiorcy: TMemDataset
    Active = True
    FieldDefs = <    
      item
        Name = 'NazwiskoImie'
        DataType = ftString
        Size = 60
      end    
      item
        Name = 'user'
        DataType = ftString
        Size = 45
      end>
    Left = 632
    Top = 72
  end
  object ZQTresc: TZQuery
    Connection = DM.ZConnection1
    SQL.Strings = (
      'SELECT'
      'ID,'
      'dataNadania,'
      'nadawca,'
      'temat,'
      'komunikat'
      'FROM kom_tresc'
      'LIMIT 1'
    )
    Params = <>
    Left = 412
    Top = 303
  end
  object ZQOdbiorcy: TZQuery
    Connection = DM.ZConnection1
    SQL.Strings = (
      'SELECT'
      'ID,'
      'odbiorca,'
      'dataOdebrania,'
      'ID_tresc'
      'FROM kom_odbiorcy'
      'LIMIT 1'
    )
    Params = <>
    MasterFields = 'ID'
    MasterSource = DSTresc
    LinkedFields = 'ID_tresc'
    Left = 504
    Top = 303
  end
  object DSTresc: TDataSource
    DataSet = ZQTresc
    Left = 412
    Top = 368
  end
  object ZQGrupy: TZQuery
    Connection = DM.ZConnection1
    SQL.Strings = (
      'SELECT'
      'ID,'
      'user,'
      'Nazwa,'
      'odbiorcy'
      'FROM kom_grupy'
      'WHERE user=:user'
    )
    Params = <    
      item
        DataType = ftUnknown
        Name = 'user'
        ParamType = ptUnknown
      end>
    Left = 80
    Top = 496
    ParamData = <    
      item
        DataType = ftUnknown
        Name = 'user'
        ParamType = ptUnknown
      end>
  end
  object DSGrupy: TDataSource
    DataSet = ZQGrupy
    Left = 80
    Top = 559
  end
  object PopupMenu1: TPopupMenu
    Left = 252
    Top = 515
    object MenuItem3: TMenuItem
      Caption = 'Wyślij do grupy'
      Bitmap.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000064000000640000000000000000000000000000000000
        0000AC4F12C90000000000000000000000000000000000000000000000000000
        0000A6440A2FB4611FFFB85E10F6B85F11FFAA4C11D800000000000000000000
        0000B75D15FFB25415CA00000000000000000000000000000000000000000000
        000099300034DEAC53FFF0AA13FFECA40FFFAE5111E400000000000000000000
        0000CF8F4BFFE5B157FFAB4404E4000000000000000000000000000000000000
        00009A310032D69D4CFFE59B15FFE29512FFAB4D11E300000000000000000000
        0000CC8850FFFDE070FFDB8D1AFFB45316DFB558181900000000000000000000
        0000A0380032D9A455FFEAA51EFFE7A119FFAA5011E300000000000000000000
        0000D08D51FFF6DA78FFF1BD35FFE3A134FFB95C18F5B85C1927000000000000
        0000A73E0032DCAB60FFEDB12DFFEAAB27FFB05516E300000000000000000000
        0000D49254FFF8DF85FFEBB63BFFF3C94FFFECB342FFBE6319FFBB5E1A480000
        0000AB420032DFB068FFF0BB3DFFEDB335FFB85C18E300000000000000000000
        0000D89957FFFAE492FFEEBF4AFFEDC257FFF5CD5AFFEEBC4BFFC9701CFFBF61
        194BB64E051CE0B270FFF2C44BFFF0BD44FFBB621DE300000000000000000000
        0000DC9E59FFFBE99DFFF0C557FFF1CA63FFF1C95FFFF3CD5CFFF9D86CFFD287
        37FFBA5705A2E3B673F2F3CB57FFF1C651FFC16A1FE300000000000000000000
        0000E0A35CFFFBEDA8FFF1CD63FFF3D270FFF1CB63FFF6D878FFF6DE93FFD48A
        39E0BF5C0559E4BB79FFF5D366FFF3CE5FFFC77021E300000000000000000000
        0000E2A95FFFFDF1AFFFF4D46FFFF5D36EFFF8E794FFF3D894FFD07A1CF8CC75
        1D04C5670B21E8C180FFF6D874FFF5D46DFFCC7524E300000000000000000000
        0000E5AF62FFFEF5B9FFF4D773FFFDECA3FFF4DDA0FFD68722DFD58022190000
        0000CB6E0A32EAC686FFF7DF80FFF6DB79FFD07F27E300000000000000000000
        0000EAB565FFFEF5B8FFFBED9FFFF1D38FFFDE9025E400000000000000000000
        0000D1770D32ECC989FFF9E48BFFF8DF83FFD5862AE300000000000000000000
        0000ECBB64FFFFFFEAFFF3D58CFFDF961FDD0000000000000000000000000000
        0000D77F1032EECE8EFFFAE995FFFAE58FFFD98F2FE300000000000000000000
        0000F0C875FFF8E9BAFFE59E1ECC000000000000000000000000000000000000
        0000DB891432F1D291FFFBE892FFFAE78DFFDE9631E300000000000000000000
        0000EEB942FFEAB036CA00000000000000000000000000000000000000000000
        0000DF911534F4DCA2FFFFFFE5FFFFFFDDFFE2A03CE400000000000000000000
        0000EEBB44C90000000000000000000000000000000000000000000000000000
        0000E7A7322FEAB550FFEDBF6BF6ECBD6BFFE5A436D800000000
      }
      OnClick = RxDBGridGrupyDblClick
    end
    object MenuItem1: TMenuItem
      Caption = 'Zapisz nową grupę'
      Bitmap.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000064000000640000000000000000000000C1761BFFC275
        19FFBD6B13FFB96504FFB96504FFB96504FFBA6504FFBA6504FFBA6504FFBA65
        04FFBA6504FFBA6504FFBA6504FFBC690AFFB96A15FFC3791FFFD5933DFFEFB7
        36FFCDC6C0FFE9F8FFFFDBE5F6FFDBE8F8FFDBE8F8FFDBE8F9FFDBE8F8FFDAE7
        F8FFDBE7F8FFD8E4F5FFE9F6FFFFCDC6C0FFEAA714FFC0761DFFCD9551FFE8AE
        3CFFDCD7D4FFECE8E9FFADA0A2FFA79B9EFF9E9395FF94898CFF8A8185FF8379
        7CFF7B7276FF685F64FFECE8E9FFDCD7D4FFE59E20FFC77B25FFD09653FFEAB4
        47FFDCD7D4FFEFF0EFFFDFDEDCFFE1E0DFFFE0DFDEFFDFE0DDFFE0DFDDFFDFDE
        DDFFDFE0DEFFDBD9D9FFEDEDEDFFDCD7D4FFE7A62BFFC9802BFFD49B58FFEBB9
        50FFDCD7D4FFECE8E9FFA99D9FFFA4999EFF9A9194FF92888BFF897F85FF8279
        7CFF7A7177FF655C62FFECE8E9FFDCD7D4FFE8AC37FFCC8531FFD69E5BFFEDBD
        5AFFDCD7D4FFFFFFFFFFFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFDCD7D4FFEAB340FFD08B34FFD9A45EFFF0C2
        63FFDCD7D4FFECE8E9FFA99D9FFFA4999EFF9A9194FF92888BFF897F85FF8279
        7CFF7A7177FF655C62FFECE8E9FFDCD7D4FFEDB749FFD2903AFFD8A35CFFF0C6
        6DFFDCD7D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFDCD7D4FFEEBD54FFD7963EFFDEAC69FFF9D2
        81FFC1975CFF9A7B60FF95775EFF97795DFF97795DFF97795DFF97795DFF9779
        5CFF97795CFF95775EFF9A7A5EFFC19A64FFF7CA6BFFD99B44FFDDAB67FFF6D5
        8BFFFFD056FFC0A887FFC8C5C9FFCEC6BFFFCDC6C0FFCDC6C0FFCDC6BFFFD6D0
        CAFFD6D3D0FFCFCED4FFC0A888FFFFD25DFFF3CC75FFDCA148FFDCA966FFF6D9
        93FFFBC85DFFC2B4A2FFD7DEEBFFDDDDDDFFDCDDDEFFDCDBDDFFE7E8EAFFC8BA
        A7FFA29692FFC2B4A2FFC6BCA9FFFBCB63FFF3D07EFFE0A74CFFE5B973FFF6DA
        97FFFBCC62FFC8BAA7FFDDE0E9FFE1DFDDFFE0DFDEFFDFDDDCFFEFF3F9FF9F88
        6FFFE5AF47FF9E9189FFC7BDB2FFFDCF6AFFF5D484FFE3AC51FFE9BC75FFF8DD
        9EFFFDCF69FFCEC0AFFFE3E7EFFFE7E5E3FFE6E5E4FFE5E4E2FFF1F6FFFFBAA3
        86FFFFE873FFB5AB9EFFCAC0B8FFFFD26EFFF9DA8EFFE7B25BFFEAC079FFF8E0
        9BFFFBD165FFD3C4AFFFEAEEF6FFECEBE8FFECEBE9FFEBE9E6FFFBFFFFFFA28E
        78FFDEAF4FFFA89C95FFD1C7B9FFFFDA78FFF5D889FFE2A442FFECC47EFFFEF4
        D5FFFFE290FFDCD7D4FFF5FFFFFFF6FEFFFFF6FEFFFFF6FDFFFFFFFFFFFFDFDD
        DCFFC8BAA7FFDFDDDCFFE5E4E2FFFFDE88FFE4AA45FFDD973419ECC681FFF0CA
        82FFF4CA7DFFE8C788FFEFCF94FFEED192F1EDCF92FFEED092FFEED093FFF2D3
        96FFF7D79BFFF6D69BFFE6C48AFFEBB552FFE19E351100000000
      }
      OnClick = btnZapiszGrupeClick
    end
    object MenuItem2: TMenuItem
      Caption = 'Usuń'
      Bitmap.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000064000000640000000000000000000000000000000000
        0000382D3380686164EC716A6BFF716A6BFF716A6BFF716A6BFF716A6BFF716A
        6BFF716A6BFF716A6BFF686164F1382D33800000000000000000000000000000
        00006C6065EDA2AFA5FFA2AFA5FFA2AFA5FFA2AFA5FFA2AFA5FFA2AFA5FFA2AF
        A5FFA2AFA5FFA2AFA5FFA2AFA5FF6C6065EA0000000000000000000000000000
        0000837B7FFFC9C5C7FF008036FF278E52FF36945CFFA9BEAFFF9BB9A5FF0080
        36FF008036FF008036FFC9C5C7FF837B7FFF0000000000000000000000007D72
        7773A19B9CFFE8E6E6FF049042FF48A872FFE0DFDDFFE0DFDDFFE0DFDDFFE0DF
        DDFF64B286FF049042FFE8E6E6FFA19B9CFF7D72774400000000000000006356
        5C89C9C5C7FFF0EEEDFF84D6AFFF26A863FFE1E8E3FFF0EEEDFFF0EEEDFFE1E8
        E3FF17A359FF84D6AFFFF0EEEDFFC9C5C7FF63565C6900000000000000006356
        5CB5E8E6E6FFFCFBF9FFEDF5F0FFFCFBF9FFEDF5F0FFFCFBF9FFFCFBF9FFDDF1
        E6FFEDF5F0FFDFF1E6FFFCFBF9FFE8E6E6FF63565C9E00000000000000006C60
        65E0FFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFF0BAF60FFB3E6CCFFB3E6CCFF0BAF
        60FFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFF6C6065CF0000000000000000837B
        7FF8F0EEEDFFF0EEEDFFF0EEEDFFF0EEEDFF23AD6CFF64B286FF64B286FF15A9
        63FFE0E8E3FFF0EEEDFFF0EEEDFFF0EEEDFF837B7FEE00000000000000009F95
        98FFDDDCDAFFDDDCDAFFDDDCDAFFDDDCDAFFDDDCDAFF019750FF019750FFDDDC
        DAFFDDDCDAFFDDDCDAFFDDDCDAFFDDDCDAFF9F9598FF0000000000000000AAA2
        A5FFCBC8C7FFCBC8C7FFCBC8C7FFCBC8C7FFCBC8C7FFCBC8C7FFCBC8C7FFCBC8
        C7FFCBC8C7FFCBC8C7FFCBC8C7FFCBC8C7FFAAA2A5FF0000000008610DEF0A79
        1CFF0A791CFF0A791CFF0A791CFF0A791CFF0A791CFF0A791CFF0A791CFF0A79
        1CFF0A791CFF0A791CFF0A791CFF0A791CFF0A791CFF036008EF1F8B36FF35C0
        64FF35C064FF35C064FF35C064FF35C064FF35C064FF35C064FF35C064FF35C0
        64FF35C064FF35C064FF35C064FF35C064FF35C064FF0D8326FF229B45FF41D4
        8EFF41D48EFF41D48EFF41D48EFF41D48EFF41D48EFF41D48EFF41D48EFF41D4
        8EFF41D48EFF41D48EFF41D48EFF41D48EFF41D48EFF0E9437FF1E933AEF239E
        4DFF1C9646FF1A9040FF178B3CFF168739FF158638FF158638FF158638FF1586
        38FF16883AFF178B3CFF1A9041FF1C9646FF1F9C4BFF129033EF000000000768
        0EAF096F15FF086A14FF086512FF076311FF076211FF076211FF076211FF0762
        11FF076412FF086713FF096B14FF096F15FF076B0FBF00000000000000000000
        00000A74179A0A7417D00A7417F30A7417FF0A7417FF0A7417FF0A7417FF0A74
        17FF0A7417FF0A7417ED0A7417C50A74178F0000000000000000
      }
      OnClick = MenuItem2Click
    end
  end
end
