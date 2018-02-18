object ViewOsobyBliskie: TViewOsobyBliskie
  Left = 407
  Height = 478
  Top = 238
  Width = 771
  Align = alClient
  BorderStyle = bsNone
  Caption = 'ViewOsobyBliskie'
  ClientHeight = 478
  ClientWidth = 771
  OnClose = FormClose
  OnCreate = FormCreate
  LCLVersion = '6.3'
  object RxDBGrid4: TRxDBGrid
    Left = 48
    Height = 478
    Top = 0
    Width = 723
    ColumnDefValues.BlobText = '(blob)'
    TitleButtons = True
    AutoSort = True
    Columns = <    
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
        Footer.ValueType = fvtCount
        Footers = <>
      end    
      item
        Title.Alignment = taCenter
        Title.Orientation = toHorizontal
        Title.Caption = 'Imię'
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
        Title.Caption = 'Adres'
        Width = 200
        FieldName = 'Adres'
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
        Title.Caption = 'Pokrewieństwo'
        Width = 100
        FieldName = 'Pokrew'
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
        Title.Caption = 'Uwagi'
        Width = 100
        FieldName = 'uwagi'
        EditButtons = <>
        Filter.DropDownRows = 0
        Filter.EmptyValue = '(Empty)'
        Filter.AllValue = '(All values)'
        Filter.EmptyFont.Style = [fsItalic]
        Filter.ItemIndex = -1
        Footers = <>
      end    
      item
        ButtonStyle = cbsCheckboxColumn
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
    DataSource = DSUprawnione
    DefaultRowHeight = 19
    FixedColor = clNone
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgHeaderHotTracking, dgHeaderPushedLook, dgDisableDelete, dgDisableInsert, dgTruncCellHints, dgCellEllipsis]
    ReadOnly = True
    TabOrder = 0
    TitleFont.CharSet = EASTEUROPE_CHARSET
    TitleFont.Pitch = fpVariable
    TitleFont.Quality = fqDraft
    TitleStyle = tsNative
    OnPrepareCanvas = RxDBGrid4PrepareCanvas
  end
  object Panel6: TPanel
    Left = 0
    Height = 478
    Top = 0
    Width = 48
    Align = alLeft
    BevelOuter = bvNone
    ClientHeight = 478
    ClientWidth = 48
    TabOrder = 1
    object btnDopiszOsobe: TBitBtn
      Left = 0
      Height = 46
      Hint = 'Dopisz osobę ...'
      Top = 40
      Width = 48
      Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000064000000640000000000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0080C86D0E87C1704287C3
        716A87C1704280C86D0EFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF0087C3781187C370A186C371FE86C371FF86C3
        71FF86C371FF86C371FE87C4709F80BF7010FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00EFEFEF1FF2F2EE3BF3F3E715FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0088C1712D86C371E786C371FF86C371FF86C371FF86C3
        71FF86C371FF86C371FF86C371FF86C370E589C17029FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF05F1EF
        EC5EF1EFEC94F1F1EDC2F1F0ECF0F1F0ECFFF1F0ECFFF1F0ECFFF1F0ECE8F1F0
        ECBBF1F1EB8EEBEEE54D86C471CE86C371FF86C371FF86C371FF87C473FFC3E1
        B9FF86C372FF86C371FF86C371FF86C371FF86C272CAAAAA5503FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F1F1EE49F1F0ECD8F1F0
        ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0
        ECFFF1F0ECFFC3DDB7FF86C371FF86C371FF86C371FF86C371FF8EC77AFFFFFF
        FFFF8AC575FF86C371FF86C371FF86C371FF86C371FF85C2706DFFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00F1F1EA25F1EFEDB4F1F0ECFFF1F0ECFFF1F0
        ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0
        ECFFF1F0ECFFA5D095FF86C371FF86C371FF86C371FF86C371FF8EC77AFFFFFF
        FFFF8AC575FF86C371FF86C371FF86C371FF86C371FF85C471B0FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00815E544993786FC1E6E2DEEBF1F0ECFFF1F0ECFFF1F0
        ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0
        ECFFF1F0ECFF8FC77CFF86C371FF8AC575FFBFDFB4FFC3E1B8FFC7E3BDFFFFFF
        FFFFC5E2BBFFC3E1B8FFBEDFB3FF89C474FF86C371FF86C371E3FFFFFF00FFFF
        FF00FFFFFF00815E5641806055F7806055FF806155F3A79288BFEDEAE6F4F1F0
        ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0
        ECFFF1F0ECFF8DC679FF86C371FF8EC77AFFCAE5C1FFCEE7C6FFD1E8C9FFFFFF
        FFFFD0E7C7FFCEE7C6FFCAE5C1FF8DC679FF86C371FF86C371E9FFFFFF00FFFF
        FF00805E5726806055F4806055FF806055FF806055FF806055FF816156EAB4A1
        99C1F0EEEAFCF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0
        ECFFC8BCB5CB86AD6DF486C371FF86C371FF86C371FF86C371FF8EC77AFFFFFF
        FFFF8AC575FF86C371FF86C371FF86C371FF86C371FF86C371B7FFFFFF00FFFF
        FF00806055BA806055FF806055FF806055FF806055FF806055FF806055FF8060
        55FFAF9D93C0F1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFBAAA
        A2C3806055FF839063FF86C371FF86C371FF86C371FF86C371FF8EC77AFFFFFF
        FFFF8AC575FF86C371FF86C371FF86C371FF86C371FF86C2717AFFFFFF008160
        5455806055FF806055FF806055FF806055FF806055FF806055FF806055FF8060
        55FF816156F0F1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFF8B6E
        64CC806055FF806456FF85B56DFF86C371FF86C371FF86C371FF88C474FFCFE7
        C6FF87C372FF86C371FF86C371FF86C371FF87C371D88EC67109FFFFFF008060
        55D0806055FF806055FF806055FF806055FF806055FF806055FF806055FF8060
        55FF806055FFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFF886B
        61D0806055FF806055FF81775BFF86BE70FF86C371FF86C371FF86C371FF86C3
        71FF86C371FF86C371FF86C371FF86C371F184C27136FFFFFF00836255278060
        55FF806055FF806055FF806055FF806055FF806055FF806055FF806055FF8060
        55FF86675DD5F1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFA38E
        84BF806055FF806055FF806055FF816C59FF84AA6AFF86C371FF86C371FF86C3
        71FF86C371FF86C371FF86C271BD88C46F1EFFFFFF00FFFFFF008160547F8060
        55FF806055FF806055FF806055FF806055FF806055FF806055FF806055FF8060
        55FFD5CCC7D5F1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFEDEB
        E6F5816256EB806055FF806055FF806055FF806055FF81705AFF82845FFF8393
        63FF82845FFF81705AFF80625344FFFFFF00FFFFFF00FFFFFF00806055BA8060
        55FF806055FF806055FF806055FF806055FF806055FF806055FF806055FF8566
        5BD7F1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0
        ECFFAD9A92C0806055FF806055FF806055FF806055FF806055FF806055FF8060
        55FF806055FF806055FF80605572FFFFFF00FFFFFF00FFFFFF00805F55D38060
        55FF806055FF806055FF806055FF806055FF806055FF806055FF806055FFB5A3
        9BC2F1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0
        ECFFEDEBE6F5836359E0806055FF806055FF806055FF806055FF806055FF8060
        55FF806055FF806055FF805F5593FFFFFF00FFFFFF00FFFFFF00805F55EB8060
        55FF806055FF806055FF806055FF806055FF806055FF806055FF826258E2EEED
        E8F9F1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0
        ECFFF1F0ECFFE8E5E0ED816155F8806055FF806055FF806055FF806055FF8060
        55FF806055FF806055FF806055B4FFFFFF00FFFFFF00FFFFFF00806055F78060
        55FF806055FF806055FF806055FF806055FF806055FF806055FF977E75C2F1F0
        ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0
        ECFFF1F0ECFFF1F0ECFF83645ADE806055FF806055FF806055FF806055FF8060
        55FF806055FF806055FF806155B1FFFFFF00FFFFFF00FFFFFF00806055DC8060
        55FF806055FF806055FF806055FF806055FF806055FF806055FF977E75C2F1F0
        ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0
        ECFFF1F0ECFFF1F0ECFF83645ADE806055FF806055FF806055FF806055FF8060
        55FF806055FF806055FF805F569BFFFFFF00FFFFFF00FFFFFF00806055BD8060
        55FF806055FF806055FF806055FF806055FF806055FF806055FF826359DFF0EF
        EBFDF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0
        ECFFF1F0ECFFE2DCD7E3806155FB806055FF806055FF806055FF806055FF8060
        55FF806055FF806055FF805F5683FFFFFF00FFFFFF00FFFFFF008060568F8060
        55FF806055FF806055FF806055FF806055FF806055FF806055FF806055FFE6E2
        DDEAF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0
        ECFFF1F0ECFFBFB0A9C6806055FF806055FF806055FF806055FF806055FF8060
        55FF806055FF806055FF80605548FFFFFF00FFFFFF00FFFFFF008260543D8060
        55FF806055FF806055FF806055FF806055FF806055FF806055FF806055FFE5E2
        DDEAF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0
        ECFFF1F0ECFFBFB0A9C6806055FF806055FF806055FF806055FF806055FF8060
        55FF806055FF806055F580606008FFFFFF00FFFFFF00FFFFFF00808080028060
        55E7806055FF806055FF806055FF806055FF806055FF806055FF806055FFE5E2
        DDEAF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0
        ECFFF1F0ECFFBFB0A9C6806055FF806055FF806055FF806055FF806055FF8060
        55FF806055FF806056AAFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008161
        5671806055FF806055FF806055FF806055FF806055FF806055FF806055FFDFDA
        D5E2F1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0
        ECFFF1F0ECFFB7A7A0C3806055FF806055FF806055FF806055FF806055FF8060
        55FF806055FD8063572CFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009966
        6605806055D9806055FF806055FF806055FF806055FF806055FF806055FFB7A6
        9EC2F1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0
        ECFFF1F0ECFF92776DC5806055FF806055FF806055FF806055FF806055FF8060
        55FF806055A5FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF0080605440805F55FB806055FF806055FF806055FF806055FF806055FF8161
        56EADAD3CDDAF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0
        ECFFBDACA5C4806155FB806055FF806055FF806055FF806055FF806055FF8060
        55E186615515FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF0081605665806055FF806055FF806055FF806055FF806055FF8060
        55FF816156EDAA968CBFCCC1BBCEEAE7E2F1F1F0ECFFE3DFD9E6C3B5AFC89B83
        7AC1816055FE806055FF806055FF806055FF806055FF806055FF806055F7825F
        5533FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF008060567A806055FE806055FF806055FF806055FF8060
        55FF806055FF806055FF806055FF816055FE816155EF806055FF806055FF8060
        55FF806055FF806055FF806055FF806055FF806055FF806055F181605545FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF008161544F806055F1806055FF806055FF8060
        55FF806055FF806055FF806055FF806055FF806055FF806055FF806055FF8060
        55FF806055FF806055FF806055FF806055FF806055E08063572CFFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0080605820806054A0806055FC8060
        55FF806055FF806055FF806055FF806055FF806055FF806055FF806055FF8060
        55FF806055FF806055FF805F55F3805F557E8B5D5D0BFFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0080605328805F
        548E806055DA806055FF806055FF806055FF806055FF806055FF806055FF8060
        55FF806055C9815F547385645917FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF0083605325815E54498161565F816156718160555D805F563E855C
        5219FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
      }
      OnClick = btnDopiszOsobeClick
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
    object btnModyfikujOsobe: TBitBtn
      Left = 0
      Height = 46
      Hint = 'Modyfikuj dane osoby uprawnionej do widzeń.'
      Top = 88
      Width = 48
      Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000064000000640000000000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF005D5D5D995F5F5F56FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF005F5F5F46606162FA98A6B2A9B2C5D54FB6C8DB0EFFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF05F1F1EA24FFFFDF08FFFFFF00FFFF
        FF00FFFFFF00AEBFCD98AEC0D2C7B1C4D6FFA0BDD7E32D8FE09200AAFF03FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F2EE
        EA3DF2F0EC76F1EFECA4F0F0ECD2F1F0ECFAF1F0ECFFF1F0ECFCF1F0ECD6F1F0
        EBA8F0F0EC7AD8E5EE75C7DCEDFCA4C1DCBC288DE0E0258CE1FF258CE1A400AA
        FF03FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F1F1EA24F1F0EDB5F1F0
        ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0
        ECFFF1F0ECFFF0EFECFFB7D6EDF72BA0F3E4248FE4C4258CE1FF258CE1FF258C
        E1A400AAFF03FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00E8E8E80BF2F0EC86F1F0ECF9F1F0ECFFF1F0
        ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0
        ECFFF1F0ECFFF1F0ECFF8CC7EFFF219CF2FF229DF2FE2A92E4C9258CE1FF258C
        E1FF258CE1A400AAFF03FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00836053259E877DB0EDEBE6F5F1F0ECFFF1F0ECFFF1F0
        ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0
        ECFFF1F0ECFFF1F0ECFFF1F0ECFF7CC1EFFF219CF2FF229CF1FE2B8CDBD2258C
        E1FF258CE1FF258CE1A400AAFF03FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF0080605820806055E2806055FF816257E8B7A69EC2F0EEEAFCF1F0
        ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0
        ECFFF1F0ECFFF1F0ECFFE9E6E1F1A58E86C04A82AFF9219CF2FF229BF0FF298C
        DCD1258CE1FF258CE1FF258CE1A400AAFF03FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00875A5A11806055DD806055FF806055FF806055FF806055FF846559DCC6BA
        B3CAF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0
        ECFFEAE7E1F2A69087C1806056F1806055FF806055FF4B82ADFF219CF2FF229B
        F0FF278EE0CB258CE1FF258CE1FF2980D68F5555AA03FFFFFF00FFFFFF00FFFF
        FF0080605497806055FF806055FF806055FF806055FF806055FF806055FF8060
        55FFAB978FC0F1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFE2DC
        D7E4816257E7806055FF806055FF806055FF806055FF806055FF4B82ADFF219C
        F2FF229CF1FE248FE4C42886DCCE3E4AA7F54048A3A45555AA03FFFFFF008260
        5735806055FD806055FF806055FF806055FF806055FF806055FF806055FF8060
        55FF806056F4E9E5E1EEF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFAA95
        8DC0806055FF806055FF806055FF806055FF806055FF806055FF806055FF4B82
        ADFF219CF2FF2B92E3DC414EAFC04047A3FF4047A3FF4047A497FFFFFF00805F
        55BB806055FF806055FF806055FF806055FF806055FF806055FF806055FF8060
        55FF806055FFDDD6D1DEF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFA18A
        81C0806055FF806055FF806055FF806055FF806055FF806055FF806055FF8060
        55FF5577A0FF4B5DD5FD4A5AD7FD414AACC44047A3FF3F47A3E1805D51168060
        55FC806055FF806055FF806055FF806055FF806055FF806055FF806055FF8060
        55FF806155F5E6E3DFECF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFB5A3
        9CC1806055FF806055FF806055FF806055FF806055FF806055FF806055FF8060
        55FF806055FF625D9EFF4A5AD7FF4A5AD7FD424BAEBE4148A247816155698060
        55FF806055FF806055FF806055FF806055FF806055FF806055FF806055FF8060
        55FFAD9991C0F1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF0EF
        EBFD846459DD806055FF806055FF806055FF806055FF806055FF806055FF8060
        55FF806055FF806055FF5D5CABC54A5AD7D9495BD746FFFFFF00806155B18060
        55FF806055FF806055FF806055FF806055FF806055FF806055FF806055FF8061
        55F5EAE7E2F1F1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0
        ECFFBDADA7C5806055FF806055FF806055FF806055FF806055FF806055FF8060
        55FF806055FF806055FF805F55C3FFFFFF00FFFFFF00FFFFFF00806055CC8060
        55FF806055FF806055FF806055FF806055FF806055FF806055FF806055FF967B
        72C3F1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0
        ECFFF0EFEBFD846459DD806055FF806055FF806055FF806055FF806055FF8060
        55FF806055FF806055FF805F55E3FFFFFF00FFFFFF00FFFFFF00806055E48060
        55FF806055FF806055FF806055FF806055FF806055FF806055FF816055FCDBD4
        CFDCF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0
        ECFFF1F0ECFFE6E1DDE9826258E6806055FF806055FF806055FF806055FF8060
        55FF806055FF806055FF806055FD80555506FFFFFF00FFFFFF00806055F98060
        55FF806055FF806055FF806055FF806055FF806055FF806055FF896B61CFF1F0
        ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0
        ECFFF1F0ECFFF1F0ECFF977D74C2806055FF806055FF806055FF806055FF8060
        55FF806055FF806055FF806055FF8866550FFFFFFF00FFFFFF00806055E58060
        55FF806055FF806055FF806055FF806055FF806055FF806055FF8B6E64CCF1F0
        ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0
        ECFFF1F0ECFFF1F0ECFF988075C2806055FF806055FF806055FF806055FF8060
        55FF806055FF806055FF806055F9FFFFFF00FFFFFF00FFFFFF00806055C78060
        55FF806055FF806055FF806055FF806055FF806055FF806055FF846459DDF1F0
        ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0
        ECFFF1F0ECFFF1F0ECFF8B6E64CC806055FF806055FF806055FF806055FF8060
        55FF806055FF806055FF806055E4FFFFFF00FFFFFF00FFFFFF00806055A28060
        55FF806055FF806055FF806055FF806055FF806055FF806055FF806055FFDBD4
        D0DDF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0
        ECFFF1F0ECFFE9E5E1EE816055FE806055FF806055FF806055FF806055FF8060
        55FF806055FF806055FF806055B8FFFFFF00FFFFFF00FFFFFF00816054558060
        55FF806055FF806055FF806055FF806055FF806055FF806055FF806055FFD8D0
        CBD9F1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0
        ECFFF1F0ECFFE5E2DDEA806055FF806055FF806055FF806055FF806055FF8060
        55FF806055FF806055FF8160556FFFFFFF00FFFFFF00FFFFFF0080664D0A8060
        55F5806055FF806055FF806055FF806055FF806055FF806055FF806055FFD8D0
        CBD9F1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0
        ECFFF1F0ECFFE5E2DDEA806055FF806055FF806055FF806055FF806055FF8060
        55FF806055FF806055FF83605325FFFFFF00FFFFFF00FFFFFF00FFFFFF008060
        549A806055FF806055FF806055FF806055FF806055FF806055FF806055FFD8D0
        CBD8F1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0
        ECFFF1F0ECFFE6E1DDE9806055FF806055FF806055FF806055FF806055FF8060
        55FF806055FF805F55B3FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00855C
        5219806055F4806055FF806055FF806055FF806055FF806055FF806055FFB7A6
        9EC2F1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0
        ECFFF1F0ECFFC8BCB5CB806055FF806055FF806055FF806055FF806055FF8060
        55FF806055FE8262572FFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF008061547C806055FF806055FF806055FF806055FF806055FF806055FF8566
        5BD7EBE8E3F2F1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0
        ECFFEFEDE9FA8B6F64CB806055FF806055FF806055FF806055FF806055FF8060
        55FF805F5596FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF0080808002806055B2806055FF806055FF806055FF806055FF806055FF8060
        55FF86675DD5E3DFD9E5F1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFF1F0ECFFE7E3
        DFED8C7065CA806055FF806055FF806055FF806055FF806055FF806055FF8060
        55C780555506FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF008B5D5D0B806055CD806055FF806055FF806055FF806055FF8060
        55FF806055FF806055FF816157E78F7169C8A38C83BF90756BC6826258E28060
        55FF806055FF806055FF806055FF806055FF806055FF806055FF806055D98062
        581AFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0089624E0D806055AC806055FF806055FF806055FF8060
        55FF806055FF806055FF806055FF806055FF806055FF806055FF806055FF8060
        55FF806055FF806055FF806055FF806055FF806055FF806055C080635512FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0080605572806055F1806055FF8060
        55FF806055FF806055FF806055FF806055FF806055FF806055FF806055FF8060
        55FF806055FF806055FF806055FF806055F68060548280555506FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00865E5113805F548B8060
        55F4806055FF806055FF806055FF806055FF806055FF806055FF806055FF8060
        55FF806055FF806055F4806054A0805E551EFFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00926D
        490780605548805F5593805F55BB806155CE806055E1805F55D3806055B48060
        54948161544F80606008FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
      }
      OnClick = btnModyfikujOsobeClick
      TabOrder = 1
    end
    object btnImortOsob: TBitBtn
      Left = 0
      Height = 46
      Hint = 'Import osób z NoeNET (xml) ...'
      Top = 160
      Width = 48
      Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000064000000640000000000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0099CC660583C5
        752399CC6605FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0086C4715F86C272CA86C371F886C3
        71FF86C371F886C272CA85C3725EFFFFFF00FFFFFF00FFFFFF00806055908060
        559080605590806055908060559080605590806055909671637CCC978790CC97
        8790CC978790CC978790CC978790CC978790CC978790CC978790CC978790CC97
        8790CC978790CC978790C49B849793BA75DE86C371FF86C371FF86C371FF86C3
        71FF86C371FF86C371FF86C371FF94B975DCC59B8596CA988543806055FF8060
        55FF806055FF806055FF806055FF806055FF806055FF916C60C2CB9786FFCB97
        86FFCB9786FFCB9786FFCB9786FFCB9786FFCB9786FFCB9786FFCB9786FFCB97
        86FFCB9786FFCB9786FF9EB378FF86C371FF86C371FF86C371FF86C371FFA1D0
        91FF86C371FF86C371FF86C371FF86C371FFA0B379FFCC978678806055DA8060
        55FF806055FF806055FF806055FF806055FF806055FF8A675CC8CB9786FFCB97
        86FFCB9786FFCB9786FFCB9786FFCB9786FFCB9786FFCB9786FFCB9786FFCB97
        86FFCB9786FFB6A480FF86C371FF86C371FF86C371FF86C371FF8DC779FFFFFF
        FFFF89C575FF86C371FF86C371FF86C371FF86C371FFA6B07C8A806154918060
        55FF806055FF806055FF806055FF806055FF806055FF806055EFCA9786FDCB97
        86FFCB9786FFCB9786FFCB9786FFCB9786FFCB9786FFCB9786FFCB9786FFCB97
        86FFCB9786FF9EB478FF86C371FF86C371FF86C371FF86C371FF8EC77AFFFFFF
        FFFF8AC575FF86C371FF86C371FF86C371FF86C371FF89C071AB89624E0D8060
        55C2806055FF806055FF806055FF806055FF806055FF806055FFAA7E6FC5CB97
        86FFCB9786FFCB9786FFCB9786FFCB9786FFCB9786FFCB9786FFCB9786FFCB97
        86FFCB9786FF8FBD74FF86C371FF86C371FF9DCE8CFFA1D090FFA6D397FFFFFF
        FFFFA3D294FFA1D090FF9DCE8CFF86C371FF86C371FF85C371D6FFFFFF008066
        4D0A80605695806055FD806055FF806055FF806055FF806055FF806155FBAA7E
        70C6CB9786FFCB9786FFCB9786FFCB9786FFCB9786FFCB9786FFCB9786FFCB97
        86FFCB9786FF88C272FF86C371FF91C97EFFECF6E9FFF0F8EEFFF1F8EFFFFFFF
        FFFFF1F8EEFFF0F8EEFFECF6E9FF8FC87CFF86C371FF86C371F1FFFFFF00FFFF
        FF00FFFFFF0080605738806055D2806055FF806055FF806055FF806055FF8060
        55FD8E695EC4C29180E5CB9786FFCB9786FFCB9786FFCB9786FFCB9786FFCB97
        86FFCB9786FF95BA76FF86C371FF86C371FF86C371FF86C371FF8EC77AFFFFFF
        FFFF8AC575FF86C371FF86C371FF86C371FF86C371FF85C370C3FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0099666605805F548B806055FF806055FF806055FF8060
        55FF806055FF806055F7957062C0C69483F0CB9786FFCB9786FFCB9786FFCB97
        86FFCB9786FFA4B07AFF86C371FF86C371FF86C371FF86C371FF8EC77AFFFFFF
        FFFF8AC575FF86C371FF86C371FF86C371FF86C371FF86C2708FFFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00AA555503805F55D3806055FF806055FF8060
        55FF806055FF806055FF806055FF816155F0A0776AC1CB9786FFCB9786FFCB97
        86FFCB9786FFC39C84FF8AC172FF86C371FF86C371FF86C371FF8AC576FFEDF6
        EAFF88C473FF86C371FF86C371FF86C371FF86C371F184C1721DFFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0080605488806055FF806055FF8060
        55FF806055FF806055FF806055FF806055FF806055FFA1786BC1CB9786FFCB97
        86FFCB9786FFCB9786FFAFA97DFF86C371FF86C371FF86C371FF86C371FF87C4
        73FF86C371FF86C371FF86C371FF86C371FF85C37062FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00805F548E806055FF806055FF8060
        55FF806055FF806055FF806055FF806055FF806055FF89675AC9CB9786FFCB97
        86FFCB9786FFCB9786FFCB9786FFB3A67FFF8AC073FB86C371FF86C371FF86C3
        71FF86C371FF86C371FF86C371EA87C37255FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF0080625334806055F6806055FF806055FF8060
        55FF806055FF806055FF806055FF806055FF806055FF87655ACCCB9786FFCB97
        86FFCB9786FFCB9786FFCB9786FFCB9786FFC39A84CD87C4716C86C371A286C2
        72CA86C371A287C4716C86C26D15FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00806055BD806055FF806055FF806055FF8060
        55FF806055FF806055FF806055FF806055FF806055FF916C60C2CB9786FFCB97
        86FFCB9786FFCB9786FFCB9786FFCB9786FFCB9786E3D595800CFFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00805E5536806055FF806055FF806055FF806055FF8060
        55FF806055FF806055FF806055FF806055FF806055EFC59382F0CB9786FFCB97
        86FFCB9786FFCB9786FFCB9786FFCB9786FFCB9786FFCC968586FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00806055B4806055FF806055FF806055FF806055FF8060
        55FF806055FF806055FF806055FF806055FF9B7467B0CB9786FFCB9786FFCB97
        86FFCB9786FFCB9786FFCB9786FFCB9786FFCB9786FFCB9786F2D2968711FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF008061552A806055FF806055FF806055FF806055FF806055FF8060
        55FF806055FF806055FF806055FF806055F9C59282DACB9786FFCB9786FFCB97
        86FFCB9786FFCB9786FFCB9786FFCB9786FFCB9786FFCB9786FFCC968681FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF0080605738806055FF806055FF806055FF806055FF806055FF8060
        55FF806055FF806055FF806055FF88655AC9CB9786FFCB9786FFCB9786FFCB97
        86FFCB9786FFCB9786FFCB9786FFCB9786FFCB9786FFCB9786FFCB9786F2CC96
        8650FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF008064521C806055FA806055FF806055FF806055FF806055FF8060
        55FF806055FF806055FF806055FFB98A7BD6CB9786FFCB9786FFCB9786FFCB97
        86FFCB9786FFCB9786FFCB9786FFCB9786FFCB9786FFCB9786FFCB9786FFCB97
        86ECFF808002FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00806055B0806055FF806055FF806055FF806055FF8060
        55FF806055FF806055FF806055FFC99585F8CB9786FFCB9786FFCB9786FFCB97
        86FFCB9786FFCB9786FFCB9786FFCB9786FFCB9786FFCB9786FFCB9786FFCB97
        86FFBF9F8008FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00806055A8806055FF806055FF806055FF806055FF8060
        55FF806055FF806055FF806055FFC99585F7CB9786FFCB9786FFCB9786FFCB97
        86FFCB9786FFCB9786FFCB9786FFCB9786FFCB9786FFCB9786FFCB9786FFCB97
        86FFDB929207FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00806055A8806055FF806055FF806055FF806055FF8060
        55FF806055FF806055FF806055FFB28576CDCB9786FFCB9786FFCB9786FFCB97
        86FFCB9786FFCB9786FFCB9786FFCB9786FFCB9786FFCB9786FFCB9786FFCB97
        86CBFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0080605680806055FF806055FF806055FF806055FF8060
        55FF806055FF806055FF806055FF936E61C0CB9786FFCB9786FFCB9786FFCB97
        86FFCB9786FFCB9786FFCB9786FFCB9786FFCB9786FFCB9786FFCB9786FFCC96
        8681FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0080605328806055FF806055FF806055FF806055FF8060
        55FF806055FF806055FF806055FF936E62C1CB9786FFCB9786FFCB9786FFCB97
        86FFCB9786FFCB9786FFCB9786FFCB9786FFCB9786FFCB9786FFCB9786FFCB97
        8580FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF0080605695806055FF806055FF806055FF8060
        55FF806055FF806055FF806055FF936E62C0CB9786FFCB9786FFCB9786FFCB97
        86FFCB9786FFCB9786FFCB9786FFCB9786FFCB9786FFCB9786FFCB9786FFCB97
        8580FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008160567D805F55E3806055FF8060
        55FF806055FF806055FF806055CAAE81738ECB9786FFCB9786FFCB9786FFCB97
        86FFCB9786FFCB9786FFCB9786FFCB9786FFCB9786FFCB9786FFCB9786FFCB97
        8580FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008062581A8161
        544F815F54438461581DFFFFFF00CB96864ECB9786FFCB9786FFCB9786FFCB97
        86FFCB9786FFCB9786FFCB9786FFCB9786FFCB9786FFCB9786FFCB9786FFCB98
        855EFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00D1A28B0BCB9786F2CB9786FFCB9786FFCB97
        86FFCB9786FFCB9786FFCB9786FFCB9786FFCB9786FFCB9786FFCB9786F7CE92
        8615FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CD968438CB9786F0CB9786FFCB97
        86FFCB9786FFCB9786FFCB9786FFCB9786FFCB9786FFCB9786F5CA988543FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C998882FCB978693CA97
        87C7CB9786F6CB9786FFCB9786F8CB9786CACA978696CC998637FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00BF808004CC998323CC999905FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
      }
      OnClick = btnImortOsobClick
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
  end
  object ZQUprawnione: TZQuery
    Connection = DM.ZConnection1
    ReadOnly = True
    SQL.Strings = (
      'SELECT '
      'ID,'
      'IDO,'
      'Nazwisko, '
      'Imie,'
      'Adres, '
      'Pokrew, '
      'Skreslona,'
      'uwagi'
      'FROM uprawnione'
      'WHERE (IDO=:ido)'
      'ORDER BY Nazwisko'
    )
    Params = <    
      item
        DataType = ftUnknown
        Name = 'ido'
        ParamType = ptUnknown
      end>
    Left = 232
    Top = 112
    ParamData = <    
      item
        DataType = ftUnknown
        Name = 'ido'
        ParamType = ptUnknown
      end>
  end
  object DSUprawnione: TDataSource
    DataSet = ZQUprawnione
    Left = 232
    Top = 184
  end
end
