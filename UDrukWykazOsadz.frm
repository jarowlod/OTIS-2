object DrukWykazOsadz: TDrukWykazOsadz
  Left = 392
  Height = 577
  Top = 237
  Width = 999
  Caption = 'Drukuj Wykaz osadzonych'
  ClientHeight = 577
  ClientWidth = 999
  OnCreate = FormCreate
  Position = poOwnerFormCenter
  LCLVersion = '6.3'
  object Panel1: TPanel
    Left = 0
    Height = 577
    Top = 0
    Width = 464
    Align = alClient
    ClientHeight = 577
    ClientWidth = 464
    TabOrder = 0
    object Panel4: TPanel
      Left = 1
      Height = 63
      Top = 1
      Width = 462
      Align = alTop
      BevelOuter = bvNone
      ClientHeight = 63
      ClientWidth = 462
      Color = 16632718
      ParentColor = False
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Height = 15
        Top = 8
        Width = 160
        Caption = 'Wyszukaj (Nazwisko lub POC):'
        ParentColor = False
      end
      object edWyszukaj: TEdit
        Left = 8
        Height = 30
        Top = 24
        Width = 447
        Anchors = [akTop, akLeft, akRight]
        AutoSelect = False
        CharCase = ecUppercase
        Font.CharSet = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Quality = fqDraft
        OnChange = edWyszukajChange
        OnKeyPress = edWyszukajKeyPress
        ParentFont = False
        TabOrder = 0
      end
    end
    object RxDBGrid1: TRxDBGrid
      Left = 1
      Height = 512
      Top = 64
      Width = 462
      ColumnDefValues.BlobText = '(blob)'
      TitleButtons = True
      AutoSort = True
      Columns = <      
        item
          Title.Alignment = taCenter
          Title.Font.Style = [fsBold]
          Title.Orientation = toHorizontal
          Title.Caption = 'Nazwisko'
          Width = 120
          FieldName = 'NAZWISKO'
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
          Title.Font.Style = [fsBold]
          Title.Orientation = toHorizontal
          Title.Caption = 'Imię'
          Width = 120
          FieldName = 'IMIE'
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
          Title.Font.Style = [fsBold]
          Title.Orientation = toHorizontal
          Title.Caption = 'Imię ojca'
          Width = 120
          FieldName = 'OJCIEC'
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
          Title.Font.Style = [fsBold]
          Title.Orientation = toHorizontal
          Title.Caption = 'POC'
          Width = 65
          FieldName = 'POC'
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
      OptionsRx = [rdgAllowDialogFind, rdgAllowQuickSearch, rdgAllowQuickFilter, rdgAllowFilterForm, rdgAllowSortForm, rdgAllowToolMenu, rdgCaseInsensitiveSort, rdgWordWrap]
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
      DataSource = DSOs
      DefaultRowHeight = 24
      FixedColor = clNone
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgHeaderHotTracking, dgHeaderPushedLook, dgDisableDelete, dgDisableInsert, dgTruncCellHints, dgCellEllipsis]
      ReadOnly = True
      TabOrder = 1
      TitleStyle = tsNative
      OnDblClick = btnDodajClick
      OnKeyPress = edWyszukajKeyPress
    end
  end
  object Panel2: TPanel
    Left = 464
    Height = 577
    Top = 0
    Width = 58
    Align = alRight
    ClientHeight = 577
    ClientWidth = 58
    TabOrder = 1
    object btnDodaj: TBitBtn
      Left = 8
      Height = 30
      Hint = 'Dodaj pozycję'
      Top = 152
      Width = 43
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
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
    object btnUsun: TBitBtn
      Left = 8
      Height = 30
      Hint = 'Usuń pozycję'
      Top = 200
      Width = 43
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
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
    object btnClear: TBitBtn
      Left = 8
      Height = 30
      Hint = 'Nowy wykaz'
      Top = 232
      Width = 43
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000064000000640000000000000000000000000000000000
        000080581AFBA07F4DF899763EF399763FF399763FF399763FF399763FF39976
        3FF399763FF399763FF3987441F2997544FF77490BD600000000000000000000
        0000A08052FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8B642CE100000000000000000000
        0000A68556FFFFFFFFFFF5F4ECFFF3F1E8FFF3F1E9FFF3F1E9FFF2F0E7FFEFE8
        DEFFEEE9E0FFEFEBE2FFF6F3EDFFF0EBE2FF8B5F1DE100000000000000000000
        0000AD9164FFFFFFFFFFF6F4EFFFF5F2EFFFF5F2EFFFF5F2EFFFF5F2EFFFF6F5
        EDFFF3F4E8FFF3F0EAFFFCFCF9FFEFE9E0FF8B601FE100000000000000000000
        0000B39669FFFFFFFFFFF6F4EFFFF5F2EDFFF5F2EDFFF5F2EDFFF5F3EEFFF5F2
        EEFFF7F3EFFFF5F2EDFFFDFDFAFFEFE8E0FF8B601FE100000000000000000000
        0000B19667FFFFFFFFFFF6F4EFFFF5F2EDFFF5F2EDFFF5F2EDFFF7F6EFFFF6F1
        EEFFFCF6F4FFFAF3F2FFFEFBFDFFEFE9DFFF8B601EE100000000000000000000
        0000B19666FFFFFFFFFFF6F4EFFFF5F2EDFFF4F1ECFFF4F0ECFFF9F3F2FFFBFA
        F0FFFBF9F5FFFBF4F3FFFCF7F3FFEFEAE3FF8B6020E100000000000000000000
        0000B0956DFFFFFFFFFFF7F4EDFFF4F1ECFFF6F2EDFFF9F2F2FFFAFAF4FFFBFD
        F6FFFCFAF9FFF4EFE7FFF5F1ECFFF0EAE2FF8C6121E100000000000000000000
        0000B19E7CFFFFFFFFFFFCFEF8FFF9F9F0FFFBFAF9FFFAF9FCFFFBFCFBFFFAFA
        FCFFF3F1E9FFEAE5DDFFECE7E0FFE6D8CBFF8C6321E100000000000000000000
        0000BDA787FFFFFFFFFFFDFEFCFFFAFBF8FFFAFAFCFFFAFBFEFFFCFBF9FFF5F2
        EAFFF0EEE7FFE9E2DAFFE6DDD4FFD6CBB4FF8D6424E100000000000000000000
        0000C5B190FFFFFFFFFFFCFDFDFFFAF9F9FFFAFBFDFFFBFDFAFFF9F7F0FFF3EE
        E4FFDDD4C5FFD4BEABFFD0BCA1FFBEA784FF8D6525E100000000000000000000
        0000C7B596FFFFFFFFFFF8FDFDFFFAFBFBFFFBFDFAFFF6F7EBFFF3F1E9FFE3D9
        CAFFC9B493FFEBE3DCFFE1D9C6FFB79D73FF916628E400000000000000000000
        0000C8B599FFFFFFFFFFFBFDFFFFFDFDFDFFF6F7F2FFEDE7E0FFEFE4DDFFD1BE
        A6FFCDB99AFFFFFFFFFFCFBBA1FFA17D47CF8F68290D00000000000000000000
        0000C9B89BFFFFFFFFFFFCFFFFFFFCF8F3FFF4EBE5FFE5DFD7FFE3D6C6FFCDB6
        96FFBCAA89FFD6C8B4FF9A7437D7000000000000000000000000000000000000
        0000CBBDA2FFFFFFFFFFFFFFFFFFFAF7F6FFF0E8DFFFDFD7C7FFD8C6B1FFC1AA
        85FF9F824CFFA17E48D100000000000000000000000000000000000000000000
        0000C3B191FBCDBBA1F8CAB89CF3C6B396F3C5B294F3C2AB87F3BFA67EF3AA91
        61FF936D33CA0000000000000000000000000000000000000000
      }
      OnClick = btnClearClick
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object btnDrukuj: TBitBtn
      Left = 8
      Height = 30
      Hint = 'Drukuj'
      Top = 280
      Width = 43
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
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
    end
    object btnKopiujDoSchowka: TBitBtn
      Left = 8
      Height = 30
      Hint = 'Kopiuj do schowka'
      Top = 312
      Width = 43
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000064000000640000000000000000000000000000000000
        00000000000000000000000000000000000079480AFD99753DFF936E36FF936E
        36FF936E36FF956E37FF936E37FF936E37FF9B783FFF653300FF000000000000
        000000000000000000000000000000000000C3AF8FFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA98953FF000000000000
        000000000000000000000000000000000000C3AF8FFFFFFFFFFFEFEBE1FFF1EC
        E4FFF1ECE8FFF1EDE2FFEEEADDFFEDE8DFFFFFFFFFFF9A753DFF000000000000
        000000000000000000000000000000000000C6B290FFFFFFFFFFF2EFE7FFF3F0
        EAFFF3F0EAFFF3F0EAFFF7F1EDFFF3F1EAFFFFFFFFFF9A753DFF8E6529FDB698
        70FFB09267FFB09267FFB09369FFA68252FFC1AC8AFFFFFFFFFFF2EFE7FFF3F0
        EAFFF3F2EBFFF6F2ECFFFAF3F1FFF9F2EDFFFFFFFFFF9A753DFFCBB899FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFBAA27BFFFFFFFFFFF2EEE6FFF2ED
        E8FFF6EFECFFF9F8F1FFFBFBF6FFF5EFE9FFFFFFFFFF9C7742FFC4AF8EFFFFFF
        FFFFEFEAE3FFF1ECE7FFF2F0E9FFEDEADDFFBFA984FFFFFFFFFFF6F3EAFFFAF7
        F3FFF9F8F8FFF9FBFAFFF7F5F2FFEBE3D9FFF6F6F4FF9A733AFFC4AF8CFFFFFF
        FFFFF2EDE7FFF3F0EAFFF3F2ECFFF3EDE7FFC2AD8FFFFFFFFFFFF8FAF5FFF9F9
        FBFFFBFBFDFFF8F7F1FFEEEDE6FFE4DBD3FFE8DFD4FF926C2FFFC4AF8CFFFFFF
        FFFFF2EDE7FFF3F0E8FFF7F3EDFFF6F1EBFFC7B292FFFFFFFFFFF8F8F8FFF9FB
        FBFFF9FAF3FFF1EEE3FFDED2C3FFC7B095FFC9B493FF8C6324FFC2AD8AFFFFFF
        FFFFF3EBE6FFF6F0EBFFF9F4F3FFFAF9F1FFC8B599FFFFFFFFFFF8FAFBFFF9FA
        F6FFF2ECE2FFE4D9CAFFD0BFA7FFECE3DCFFB5966BFF815309FFC7B699EFFFFF
        FFFFF7F7EEFFFBF9F9FFFBFBFDFFF6F6F2FFC9B99DFFFFFFFFFFFAFAF7FFF2ED
        E5FFE3D9D0FFD1BDA2FFC5AE90FFEAE6E1FFB89E73FF00000000CAB99CEFFFFF
        FFFFF8F8F7FFF9F9FFFFFCFDFCFFEFEBDFFFC9B798FFFFFFFFFFF9F8F6FFEAE0
        D5FFD6CBB5FFC7AF8BFF9B783AFF9F7F4CFF0000000000000000CEBEA2EFFFFF
        FFFFF8F8FAFFFAFAF7FFFBFAF3FFC9B499FFC5B090FFC0A584FFC0A584FFC0A5
        84FFB79B70FFA78954FF8A6220FF000000000000000000000000D1BFA6FFFFFF
        FFFFF9FBF9FFF2EEEAFFEBE3DAFFCAB598FFF1EAE5FFB6996CFF9C773BFF0000
        0000000000000000000000000000000000000000000000000000D4C9B3FFFFFF
        FFFFFCFAF5FFEDE6DCFFDCD0C1FFC0A780FFA98C59FF926929FF000000000000
        0000000000000000000000000000000000000000000000000000C6B293FFE9E2
        D7F4D6C6B3FFC9BA9CFFBCA37CFFA3854EFA926C2BFF00000000000000000000
        0000000000000000000000000000000000000000000000000000
      }
      OnClick = btnKopiujDoSchowkaClick
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
    end
  end
  object Panel3: TPanel
    Left = 522
    Height = 577
    Top = 0
    Width = 477
    Align = alRight
    ClientHeight = 577
    ClientWidth = 477
    TabOrder = 2
    object Panel5: TPanel
      Left = 1
      Height = 63
      Top = 1
      Width = 475
      Align = alTop
      BevelOuter = bvNone
      ClientHeight = 63
      ClientWidth = 475
      Color = clWhite
      ParentColor = False
      TabOrder = 0
      object Label2: TLabel
        Left = 10
        Height = 43
        Top = 10
        Width = 455
        Align = alClient
        Alignment = taCenter
        BorderSpacing.Around = 10
        Caption = 'WYKAZ OSADZONYCH DOPROWADZANYCH GRUPOWO'
        Font.CharSet = EASTEUROPE_CHARSET
        Font.Height = -16
        Font.Name = 'Georgia'
        Font.Pitch = fpVariable
        Font.Quality = fqDraft
        ParentColor = False
        ParentFont = False
        WordWrap = True
      end
    end
    object RxDBGrid2: TRxDBGrid
      Left = 1
      Height = 512
      Top = 64
      Width = 475
      ColumnDefValues.BlobText = '(blob)'
      TitleButtons = True
      AutoSort = True
      Columns = <      
        item
          Title.Alignment = taCenter
          Title.Font.Style = [fsBold]
          Title.Orientation = toHorizontal
          Title.Caption = 'Nazwisko'
          Width = 120
          FieldName = 'NAZWISKO'
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
          Title.Font.Style = [fsBold]
          Title.Orientation = toHorizontal
          Title.Caption = 'Imię'
          Width = 120
          FieldName = 'IMIE'
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
          Title.Font.Style = [fsBold]
          Title.Orientation = toHorizontal
          Title.Caption = 'Imię ojca'
          Width = 120
          FieldName = 'OJCIEC'
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
          Title.Font.Style = [fsBold]
          Title.Orientation = toHorizontal
          Title.Caption = 'POC'
          Width = 65
          FieldName = 'POC'
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
      OptionsRx = [rdgAllowDialogFind, rdgAllowQuickSearch, rdgAllowQuickFilter, rdgAllowFilterForm, rdgAllowSortForm, rdgAllowToolMenu, rdgCaseInsensitiveSort, rdgWordWrap]
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
      DataSource = DSWykaz
      DefaultRowHeight = 24
      FixedColor = clNone
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgHeaderHotTracking, dgHeaderPushedLook, dgDisableDelete, dgDisableInsert, dgTruncCellHints, dgCellEllipsis]
      ReadOnly = True
      TabOrder = 1
      TitleStyle = tsNative
      OnDblClick = btnUsunClick
    end
  end
  object ZQOs: TZQuery
    Connection = DM.ZConnection1
    SQL.Strings = (
      'SELECT'
      'IDO,'
      'Nazwisko,'
      'Imie,'
      'Ojcec,'
      'POC'
      'FROM osadzeni'
      'WHERE '
      '  (Nazwisko LIKE :edWyszukaj) or'
      '  (POC LIKE :edWyszukaj)'
    )
    Params = <    
      item
        DataType = ftUnknown
        Name = 'edWyszukaj'
        ParamType = ptUnknown
      end>
    Left = 280
    Top = 8
    ParamData = <    
      item
        DataType = ftUnknown
        Name = 'edWyszukaj'
        ParamType = ptUnknown
      end>
  end
  object DSOs: TDataSource
    DataSet = ZQOs
    Left = 344
    Top = 8
  end
  object MemWykaz: TMemDataset
    FieldDefs = <    
      item
        Name = 'IDO'
        DataType = ftInteger
      end    
      item
        Name = 'Nazwisko'
        DataType = ftString
        Size = 100
      end    
      item
        Name = 'Imie'
        DataType = ftString
        Size = 100
      end    
      item
        Name = 'Ojciec'
        DataType = ftString
        Size = 100
      end    
      item
        Name = 'POC'
        DataType = ftString
        Size = 10
      end>
    Left = 782
    Top = 29
  end
  object DSWykaz: TDataSource
    DataSet = MemWykaz
    Left = 848
    Top = 29
  end
  object frReport1: TfrReport
    Dataset = frDBDataSet1
    InitialZoom = pzDefault
    Options = [roSaveAndRestoreBookmarks]
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    DataType = dtDataSet
    Left = 782
    Top = 178
  end
  object frDBDataSet1: TfrDBDataSet
    DataSet = MemWykaz
    DataSource = DSWykaz
    Left = 782
    Top = 240
  end
end
