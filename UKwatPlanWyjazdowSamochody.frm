object KwatPlanWyjazdowSamochody: TKwatPlanWyjazdowSamochody
  Left = 334
  Height = 541
  Top = 226
  Width = 736
  Caption = 'Samochody'
  ClientHeight = 541
  ClientWidth = 736
  OnCreate = FormCreate
  Position = poScreenCenter
  LCLVersion = '6.6'
  object Panel5: TPanel
    Left = 0
    Height = 50
    Top = 0
    Width = 736
    Align = alTop
    BevelOuter = bvNone
    ClientHeight = 50
    ClientWidth = 736
    Color = clWhite
    ParentColor = False
    TabOrder = 0
    object plGradient2: TplGradient
      Left = 0
      Height = 50
      Top = 0
      Width = 736
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
      Width = 92
      Caption = 'Samochody'
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
        1754506F727461626C654E6574776F726B47726170686963A502000089504E47
        0D0A1A0A0000000D49484452000000100000001008060000001FF3FF61000000
        0467414D410000AFC837058AE90000001974455874536F667477617265004164
        6F626520496D616765526561647971C9653C000002374944415438CBDD92ED4B
        536118C6CF1FD0A720E8452228C8230A2E320D6B0E3398E5CBA8287AA16C9CE3
        42A7C9322A96E4C6DA39B2931BE5489699964CCB9A2E97CDB9182D190845E964
        CDB9148369B8F4437DB03EC4D5730E15832284BEF5C0C5F376DFBFFBE67A1E0A
        00F52FA2FE23404953680D91771F3792509A82C9BD8D8164E1657FB2E0A2F773
        7EBD6729EF6CFF8BED558F947F03C479770CDEB1247C631FF1F4F502065E2DC0
        43E41A9D87E08A229BBDFFED8F0092BC4A6509C176A70FA77466B407E650D7D4
        8D6AB3132A8D11E6BE1930E739ACCFABC06F0092BC96B4FDD2D0FB16750D16D4
        F04ED806DF8335DC43296340B1BA1117BAA6A0D671C829AB459AE21C361F7244
        37A96E6E950024D9C5B926F13CB224556EF6CC82EF9F81F1E134F4DD71D4DF8D
        A1B67D120D3D7174041268F327C008416C2CB58F4A0062D8577F78110E72210C
        CCE22A69F7CA8377B8E49C82AE3306EDED282A5B23D0B4B4A2A6E5242A9BCB71
        82536207CB226DFF8DD514711BC3E38BB0763CC11E65198ACB0F432F74A267E4
        03BA82F35255A3F3160CBDA7E199B0E3CD9C0FD6E12A1CB16621E7CC1607252B
        3A8AACDC42D0199990CBE5502814A033B391917F00F43639D265BB71DC540477
        D80677E4BA6822043F0BAB5F83DCEA755F7EB949D3F434C330D06AB520EB70AA
        D3257A190627DA903A1E8FDB45005201BB884244CF888EA502766A372C5B7C6A
        703EE919C10D55FCEC607945DF95049A0E0AE9B8E663A4CAE22CEEC9B9B0E23F
        4F8279A24F62DB3F665E3CFF0E880AB26477DD818D0000000049454E44AE4260
        82
      }
      Stretch = True
    end
  end
  object RxDBGrid1: TRxDBGrid
    Left = 0
    Height = 491
    Top = 50
    Width = 320
    ColumnDefValues.BlobText = '(blob)'
    TitleButtons = True
    AutoSort = True
    Columns = <    
      item
        Title.Alignment = taCenter
        Title.Orientation = toHorizontal
        Title.Caption = 'Nazwa'
        Width = 250
        FieldName = 'Nazwa'
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
        Title.Caption = 'stan'
        FieldName = 'stan'
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
    FooterOptions.RowCount = 1
    FooterOptions.Style = tsNative
    FooterOptions.DrawFullLine = False
    SearchOptions.QuickSearchOptions = [loCaseInsensitive, loPartialKey]
    SearchOptions.FromStart = False
    OptionsRx = [rdgAllowDialogFind, rdgFooterRows, rdgAllowQuickSearch, rdgAllowQuickFilter, rdgAllowFilterForm, rdgAllowSortForm, rdgAllowToolMenu, rdgCaseInsensitiveSort, rdgWordWrap]
    FooterRowCount = 1
    Align = alClient
    AlternateColor = 15268863
    AutoAdvance = aaNone
    AutoEdit = False
    Color = clWindow
    DrawFullLine = False
    FocusColor = clHighlight
    FixedHotColor = clNone
    SelectedColor = clHighlight
    GridLineStyle = psSolid
    DataSource = DSSamochody
    DefaultRowHeight = 22
    FixedColor = clNone
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgHeaderHotTracking, dgHeaderPushedLook, dgAnyButtonCanSelect, dgDisableDelete, dgDisableInsert, dgCellHints, dgTruncCellHints, dgCellEllipsis, dgDblClickAutoSize]
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 1
    TitleStyle = tsNative
  end
  object Panel1: TPanel
    Left = 320
    Height = 491
    Top = 50
    Width = 416
    Align = alRight
    ClientHeight = 491
    ClientWidth = 416
    TabOrder = 2
    object Panel2: TPanel
      Left = 1
      Height = 50
      Top = 440
      Width = 414
      Align = alBottom
      ClientHeight = 50
      ClientWidth = 414
      TabOrder = 0
      object btnNowy: TBitBtn
        Left = 8
        Height = 30
        Top = 8
        Width = 80
        Caption = 'Nowy'
        Images = DM.ImageList1
        ImageIndex = 0
        OnClick = btnNowyClick
        TabOrder = 0
      end
      object btnZapisz: TBitBtn
        Left = 96
        Height = 30
        Top = 8
        Width = 80
        Caption = 'Zapisz'
        Images = DM.ImageList1
        ImageIndex = 39
        OnClick = btnZapiszClick
        TabOrder = 1
      end
      object btnAnuluj: TBitBtn
        Left = 184
        Height = 30
        Top = 8
        Width = 80
        Cancel = True
        DefaultCaption = True
        Kind = bkCancel
        OnClick = btnAnulujClick
        TabOrder = 2
      end
    end
    object DBEdit1: TDBEdit
      Left = 16
      Height = 23
      Top = 40
      Width = 384
      DataField = 'Nazwa'
      DataSource = DSSamochody
      CharCase = ecNormal
      MaxLength = 50
      TabOrder = 1
      OnChange = DBEdit1Change
    end
    object DBComboBox1: TDBComboBox
      Left = 352
      Height = 23
      Hint = 'A - aktualny (na stanie)'#13#10'U - uprzedni (wycofany)'
      Top = 88
      Width = 48
      AutoDropDown = True
      DataField = 'stan'
      DataSource = DSSamochody
      ItemHeight = 15
      Items.Strings = (
        'A'
        'U'
      )
      MaxLength = 0
      ParentShowHint = False
      ShowHint = True
      Style = csDropDownList
      TabOrder = 2
    end
    object Label2: TLabel
      AnchorSideLeft.Control = DBComboBox1
      AnchorSideLeft.Side = asrBottom
      AnchorSideTop.Control = DBComboBox1
      AnchorSideTop.Side = asrCenter
      AnchorSideRight.Control = DBComboBox1
      Left = 315
      Height = 15
      Top = 92
      Width = 26
      Anchors = [akTop, akRight]
      BorderSpacing.Right = 11
      Caption = 'Stan:'
      ParentColor = False
    end
    object Label3: TLabel
      Left = 16
      Height = 15
      Top = 21
      Width = 83
      Caption = 'Nazwa pojazdu:'
      ParentColor = False
    end
    object btnColor: TColorButton
      Left = 112
      Height = 25
      Top = 88
      Width = 75
      BorderWidth = 2
      ButtonColorSize = 16
      ButtonColor = clBlack
      OnClick = btnColorClick
      OnColorChanged = btnColorColorChanged
    end
    object Label4: TLabel
      Left = 16
      Height = 15
      Top = 92
      Width = 89
      Caption = 'Kolor przewodni:'
      ParentColor = False
    end
    object BGRAPanel1: TBGRAPanel
      Left = 16
      Height = 210
      Top = 120
      Width = 171
      Caption = '7:00 - 9:00'
      ClientHeight = 210
      ClientWidth = 171
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 3
      Wordwrap = True
      CaptionAlignment = taLeftJustify
      CaptionLayout = tlTop
      CaptionOffsetX = 10
      CaptionOffsetY = 4
      CaptionShadow = True
      Gradient.StartColor = clSkyBlue
      Gradient.StartColorOpacity = 255
      Gradient.DrawMode = dmSet
      Gradient.EndColor = 15269887
      Gradient.EndColorOpacity = 255
      Gradient.ColorCorrection = True
      Gradient.GradientType = gtLinear
      Gradient.Point2YPercent = 100
      Gradient.Sinus = False
      object BGRAPanel2: TBGRAPanel
        Left = 1
        Height = 208
        Top = 1
        Width = 5
        Align = alLeft
        BevelOuter = bvNone
        Color = 11541510
        DoubleBuffered = True
        ParentColor = False
        ParentDoubleBuffered = False
        TabOrder = 0
        BackgroundStyle = bpsColor
        Gradient.StartColor = clWhite
        Gradient.StartColorOpacity = 255
        Gradient.DrawMode = dmSet
        Gradient.EndColor = clMaroon
        Gradient.EndColorOpacity = 255
        Gradient.ColorCorrection = True
        Gradient.GradientType = gtLinear
        Gradient.Point2YPercent = 100
        Gradient.Sinus = False
      end
      object lblNazwa: TBCLabel
        Left = 8
        Height = 80
        Top = 24
        Width = 160
        AutoSize = False
        Background.Color = clBlack
        Background.ColorOpacity = 255
        Background.Gradient1.StartColor = clWhite
        Background.Gradient1.StartColorOpacity = 255
        Background.Gradient1.DrawMode = dmSet
        Background.Gradient1.EndColor = clBlack
        Background.Gradient1.EndColorOpacity = 255
        Background.Gradient1.ColorCorrection = True
        Background.Gradient1.GradientType = gtLinear
        Background.Gradient1.Point2YPercent = 100
        Background.Gradient1.Sinus = False
        Background.Gradient2.StartColor = clWhite
        Background.Gradient2.StartColorOpacity = 255
        Background.Gradient2.DrawMode = dmSet
        Background.Gradient2.EndColor = clBlack
        Background.Gradient2.EndColorOpacity = 255
        Background.Gradient2.ColorCorrection = True
        Background.Gradient2.GradientType = gtLinear
        Background.Gradient2.Point2YPercent = 100
        Background.Gradient2.Sinus = False
        Background.Gradient1EndPercent = 35
        Background.Style = bbsClear
        Border.Color = clBlack
        Border.ColorOpacity = 255
        Border.LightColor = clWhite
        Border.LightOpacity = 255
        Border.LightWidth = 0
        Border.Style = bboNone
        Border.Width = 1
        Caption = 'lblNazwa'
        FontEx.Color = clDefault
        FontEx.EndEllipsis = False
        FontEx.FontQuality = fqSystemClearType
        FontEx.Height = 0
        FontEx.SingleLine = False
        FontEx.Shadow = False
        FontEx.ShadowColor = clBlack
        FontEx.ShadowColorOpacity = 255
        FontEx.ShadowRadius = 5
        FontEx.ShadowOffsetX = 5
        FontEx.ShadowOffsetY = 5
        FontEx.Style = []
        FontEx.TextAlignment = bcaCenterTop
        FontEx.WordBreak = True
        Rounding.RoundX = 1
        Rounding.RoundY = 1
        Rounding.RoundOptions = []
      end
    end
  end
  object DSSamochody: TDataSource
    DataSet = ZQSamochody
    OnStateChange = DSSamochodyStateChange
    OnDataChange = DSSamochodyDataChange
    Left = 188
    Top = 248
  end
  object ZQSamochody: TZQuery
    Connection = DM.ZConnection1
    SQL.Strings = (
      'SELECT *'
      'FROM kwat_samochody'
    )
    Params = <>
    Left = 56
    Top = 248
  end
end
