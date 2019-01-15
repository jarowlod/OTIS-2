object AlerterConfig: TAlerterConfig
  Left = 333
  Height = 493
  Top = 237
  Width = 818
  Caption = 'AlerterConfig'
  ClientHeight = 493
  ClientWidth = 818
  OnCreate = FormCreate
  LCLVersion = '6.6'
  object Panel5: TPanel
    Left = 0
    Height = 50
    Top = 0
    Width = 818
    Align = alTop
    BevelOuter = bvNone
    ClientHeight = 50
    ClientWidth = 818
    Color = clWhite
    ParentColor = False
    TabOrder = 0
    object plGradient2: TplGradient
      Left = 0
      Height = 50
      Top = 0
      Width = 818
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
    object Label1: TLabel
      Left = 64
      Height = 19
      Top = 16
      Width = 251
      Caption = 'Ustawienia modułu alarmowania.'
      Font.CharSet = EASTEUROPE_CHARSET
      Font.Color = 16731983
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
        1754506F727461626C654E6574776F726B477261706869631503000089504E47
        0D0A1A0A0000000D49484452000000100000001008060000001FF3FF61000000
        0467414D410000AFC837058AE90000001974455874536F667477617265004164
        6F626520496D616765526561647971C9653C000002A74944415438CB95925B48
        D36118C685AE82826E0A821D6DFB5B6E2D4FA985459AB5B28BA0A88CF04282A8
        0B233148C5B26645782A47A6094B4971289B9339E7D40DE9346613358F9B3A9B
        5BDA0E364F34B5914FDF028751665D3CF07DF03EBFEF7DDFEF090210F43F1A69
        A2548372AECF501AACF0DF373628A9ED2625154A8CDB4C4A6E9E551501777322
        5AF2D8BE0D019616EA3931DA8615D41C79F5BB4DBD1FFAC7EC157D111FF21C56
        D3BA0062E48EAAA945674F1A965C5A2C3B5B31DB950E57533C06CAC3A0CC65E5
        AED6FEC97CD6DA7100EEA17C7C73A931D77D1E9E3709702A787034C6C0A1390A
        B58865FA0D408C3B89DAA78CC958B0D661C9FE1273C624CCBC8DC7B4EE20DC9A
        48B85402B8B427D155CCF10500A32A8A4B8C5364D61577FF1DF8668DF86AB90F
        B75E08A7EE30269B633056BB1776191FCE46D245EB09743C085E0E0086E55CAD
        BBEF1C961D12782732E135A562B1FF0C5CAFE2315A1F8EA14A1E3E9451B04A43
        7E8E31A53E8EC66C962D00E8ABE24CCE5BAE61DE22C2FB1A3E7AEB433158178D
        3122A7261AC6120EBA9FEC82BD960377DB314CC8E2507793290B003A9F06578C
        A8E2E031E760A0E13454F762A1131F81B6808D8F32013CAD61E813B3619130E1
        684944CF331E6AAE3384BF2CF175315BDF238D205D6443714B00AFB5105F7A33
        A1C9E7A3B3888199668A0058641F2440B7D99EB5BF1638B43D649B0D55E130BC
        B880715D06BCE3228CA82EA224652B7477776041C985ADE110A43798837F04F8
        4502D2A02BDE87B6C258283279D09725A0F4D2163C4ADA8C6E310D166914AAAE
        D227D605F825CF6609E5594CE849E2EC8653F8FC4E0883640F3EA977A3B74C80
        8ACBF4CEBF025625CD608AA4E90CE80A78305747C15C1989A6AC1094A6D044FF
        04F0AB3A8DB14972859E539E4A778A5368D325C9B47671328DB5B6E607EA5FBE
        1E9C48E7760000000049454E44AE426082
      }
      Stretch = True
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Height = 443
    Top = 50
    Width = 818
    ActivePage = TabSheet2
    Align = alClient
    TabIndex = 1
    TabOrder = 1
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'Lokalizacje'
      ClientHeight = 415
      ClientWidth = 810
      object RxDBGrid4: TRxDBGrid
        Left = 0
        Height = 415
        Top = 0
        Width = 375
        ColumnDefValues.BlobText = '(blob)'
        TitleButtons = True
        AutoSort = True
        Columns = <        
          item
            Title.Alignment = taCenter
            Title.Orientation = toHorizontal
            Title.Caption = 'IP'
            Width = 85
            FieldName = 'IP'
            EditButtons = <>
            Filter.DropDownRows = 0
            Filter.EmptyValue = '(Empty)'
            Filter.NotEmptyValue = '(Not empty)'
            Filter.AllValue = '(All values)'
            Filter.EmptyFont.Style = [fsItalic]
            Filter.ItemIndex = -1
            Filter.Style = rxfstManualEdit
            Footer.ValueType = fvtCount
            Footers = <>
          end        
          item
            Title.Alignment = taCenter
            Title.Orientation = toHorizontal
            Title.Caption = 'Lokalizacja'
            Width = 200
            FieldName = 'Lokalizacja'
            EditButtons = <>
            Filter.DropDownRows = 0
            Filter.EmptyValue = '(Empty)'
            Filter.NotEmptyValue = '(Not empty)'
            Filter.AllValue = '(All values)'
            Filter.EmptyFont.Style = [fsItalic]
            Filter.ItemIndex = -1
            Filter.Style = rxfstManualEdit
            Footers = <>
          end        
          item
            Title.Alignment = taCenter
            Title.Orientation = toHorizontal
            Title.Caption = 'Rodzaj'
            Width = 50
            FieldName = 'Rodzaj'
            EditButtons = <>
            Filter.DropDownRows = 0
            Filter.EmptyValue = '(Empty)'
            Filter.NotEmptyValue = '(Not empty)'
            Filter.AllValue = '(All values)'
            Filter.EmptyFont.Style = [fsItalic]
            Filter.ItemIndex = -1
            Filter.Style = rxfstDialog
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
        OptionsRx = [rdgFooterRows, rdgFilter, rdgCaseInsensitiveSort, rdgWordWrap]
        FooterColor = clSilver
        FooterRowCount = 1
        Align = alLeft
        AlternateColor = 16055807
        AutoAdvance = aaNone
        AutoEdit = False
        Color = clWindow
        DrawFullLine = False
        FocusColor = clHighlight
        FixedHotColor = clNone
        SelectedColor = clHighlight
        GridLineStyle = psSolid
        DataSource = DSAlerterLok
        DefaultRowHeight = 19
        FixedColor = clNone
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgHeaderHotTracking, dgHeaderPushedLook, dgDisableDelete, dgDisableInsert, dgTruncCellHints, dgCellEllipsis]
        ReadOnly = True
        TabOrder = 0
        TitleFont.CharSet = EASTEUROPE_CHARSET
        TitleFont.Pitch = fpVariable
        TitleFont.Quality = fqDraft
        TitleStyle = tsNative
      end
      object DBNavigator1: TDBNavigator
        Left = 384
        Height = 30
        Top = 376
        Width = 256
        BevelOuter = bvNone
        ChildSizing.EnlargeHorizontal = crsScaleChilds
        ChildSizing.EnlargeVertical = crsScaleChilds
        ChildSizing.ShrinkHorizontal = crsScaleChilds
        ChildSizing.ShrinkVertical = crsScaleChilds
        ChildSizing.Layout = cclLeftToRightThenTopToBottom
        ChildSizing.ControlsPerLine = 100
        ClientHeight = 30
        ClientWidth = 256
        DataSource = DSAlerterLok
        Options = []
        TabOrder = 1
        VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
      end
      object DBEdit1: TDBEdit
        Left = 384
        Height = 23
        Top = 32
        Width = 224
        DataField = 'IP'
        DataSource = DSAlerterLok
        CharCase = ecNormal
        MaxLength = 0
        TabOrder = 2
      end
      object DBEdit2: TDBEdit
        Left = 384
        Height = 23
        Top = 80
        Width = 416
        DataField = 'Lokalizacja'
        DataSource = DSAlerterLok
        Anchors = [akTop, akLeft, akRight]
        CharCase = ecNormal
        MaxLength = 0
        TabOrder = 3
      end
      object DBComboBox1: TDBComboBox
        Left = 384
        Height = 23
        Top = 128
        Width = 132
        AutoDropDown = True
        DataField = 'Rodzaj'
        DataSource = DSAlerterLok
        ItemHeight = 15
        Items.Strings = (
          'Serwer'
          'Client'
        )
        MaxLength = 0
        Style = csDropDownList
        TabOrder = 4
      end
      object Label2: TLabel
        Left = 384
        Height = 15
        Top = 12
        Width = 10
        Caption = 'IP'
        ParentColor = False
      end
      object Label3: TLabel
        Left = 384
        Height = 15
        Top = 62
        Width = 57
        Caption = 'Lokalizacja'
        ParentColor = False
      end
      object Label4: TLabel
        Left = 384
        Height = 15
        Top = 112
        Width = 35
        Caption = 'Rodzaj'
        ParentColor = False
      end
      object btnDodajKolejnyTerminOceny: TSpeedButton
        Left = 608
        Height = 23
        Hint = 'Get IP adres.'
        Top = 32
        Width = 24
        Flat = True
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000064000000640000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00196B3788196B37F2196B37FF196B37F2196B
          3788FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00196B3784288C53FF64BA8DFF95D2B2FF64BA8DFF288C
          53FF196B378CFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF001B6C39F762BA8BFF60BA87FFFFFFFFFF60B987FF67BC
          8FFF196B37F7FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00317B4CFF9CD4B6FFFFFFFFFFFFFFFFFFFFFFFFFF95D2
          B2FF196B37FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF0044875DF790D3B1FF92D6B1FFFFFFFFFF65BC8CFF67BC
          8FFF196B37F7FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00518F688061AB81FF95D4B4FFBAE6D0FF6ABB8FFF2D8F
          57FF196B378CFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0059946F7C58946EF24F8E66FF408459F22E78
          497CFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        }
        OnClick = btnDodajKolejnyTerminOcenyClick
        ShowHint = True
        ParentShowHint = False
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Połączenia'
      ClientHeight = 415
      ClientWidth = 810
      object RxDBGrid5: TRxDBGrid
        Left = 0
        Height = 415
        Top = 0
        Width = 375
        ColumnDefValues.BlobText = '(blob)'
        TitleButtons = True
        AutoSort = True
        Columns = <        
          item
            Title.Alignment = taCenter
            Title.Orientation = toHorizontal
            Title.Caption = 'IP_serwer'
            Width = 85
            FieldName = 'IP_serwer'
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
            Title.Caption = 'Lok_serwer'
            Width = 250
            FieldName = 'Lok_serwer'
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
        FooterOptions.Color = clSilver
        FooterOptions.RowCount = 1
        FooterOptions.Style = tsNative
        FooterOptions.DrawFullLine = False
        SearchOptions.QuickSearchOptions = [loCaseInsensitive, loPartialKey]
        SearchOptions.FromStart = False
        OptionsRx = [rdgFilter, rdgCaseInsensitiveSort, rdgWordWrap]
        FooterColor = clSilver
        FooterRowCount = 1
        Align = alLeft
        AlternateColor = 16055807
        AutoAdvance = aaNone
        AutoEdit = False
        Color = clWindow
        DrawFullLine = False
        FocusColor = clHighlight
        FixedHotColor = clNone
        SelectedColor = clHighlight
        GridLineStyle = psSolid
        DataSource = DSAlerterBind
        DefaultRowHeight = 19
        FixedColor = clNone
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgHeaderHotTracking, dgHeaderPushedLook, dgDisableDelete, dgDisableInsert, dgTruncCellHints, dgCellEllipsis]
        ReadOnly = True
        TabOrder = 0
        TitleFont.CharSet = EASTEUROPE_CHARSET
        TitleFont.Pitch = fpVariable
        TitleFont.Quality = fqDraft
        TitleStyle = tsNative
      end
    end
  end
  object ZQAlerterLok: TZQuery
    Connection = DM.ZConnection1
    Filtered = True
    SQL.Strings = (
      'SELECT '
      'ID,'
      'IP,'
      'Lokalizacja, '
      'Rodzaj'
      'FROM alerter'
      'ORDER BY Lokalizacja'
    )
    Params = <>
    Left = 204
    Top = 300
  end
  object DSAlerterLok: TDataSource
    DataSet = ZQAlerterLok
    Left = 204
    Top = 356
  end
  object ZQAlerterBind: TZQuery
    Connection = DM.ZConnection1
    Filtered = True
    SQL.Strings = (
      'SELECT '
      'a.ID_client,'
      'a.ID_serwer,'
      'b1.IP as IP_client,'
      'b1.Lokalizacja as Lok_client,'
      'b2.IP as IP_serwer,'
      'b2.Lokalizacja as Lok_serwer'
      'FROM alerter_bind a'
      'JOIN alerter b1 ON (b1.ID = a.ID_client)'
      'JOIN alerter b2 ON (b2.ID = a.ID_serwer)'
      'WHERE a.ID_client = :ID_client'
    )
    Params = <    
      item
        DataType = ftUnknown
        Name = 'ID_client'
        ParamType = ptUnknown
      end>
    Left = 360
    Top = 300
    ParamData = <    
      item
        DataType = ftUnknown
        Name = 'ID_client'
        ParamType = ptUnknown
      end>
  end
  object DSAlerterBind: TDataSource
    DataSet = ZQAlerterBind
    Left = 360
    Top = 356
  end
end
