object PenitTerminarz: TPenitTerminarz
  Left = 86
  Height = 743
  Top = 85
  Width = 1182
  Caption = 'Terminarz Penitencjarny'
  ClientHeight = 743
  ClientWidth = 1182
  OnClose = FormClose
  OnCreate = FormCreate
  Position = poScreenCenter
  LCLVersion = '6.6'
  WindowState = wsMaximized
  object Panel1: TPanel
    Left = 0
    Height = 50
    Top = 0
    Width = 1182
    Align = alTop
    ClientHeight = 50
    ClientWidth = 1182
    Color = clWhite
    ParentColor = False
    TabOrder = 0
    object Label1: TLabel
      Left = 64
      Height = 15
      Top = 15
      Width = 56
      Caption = 'Terminarz.'
      ParentColor = False
    end
    object Image1: TImage
      Left = 16
      Height = 32
      Top = 8
      Width = 32
      AutoSize = True
      Picture.Data = {
        1754506F727461626C654E6574776F726B477261706869639203000089504E47
        0D0A1A0A0000000D494844520000002000000020080300000044A48AC6000000
        0373424954080808DBE14FE00000000970485973000007A3000007A301302FB2
        C50000001974455874536F667477617265007777772E696E6B73636170652E6F
        72679BEE3C1A00000186504C5445FFFFFFEA556AEEBBBBEF5060EFEFDFE1F0E1
        C5DCD173C5AD74CBAE37496036495C77C9B075C8B181CDB57DCAB2F156663549
        5E76C9B0EFD3CB77C9B037495E9A4F62B652635C4C5FEEECDEF055654C4B5F64
        4B5F8D4F61524B5FF05565A65063EFDCD2B25162BC5364BF5263D55364DE5564
        76C9B076C9B036495E76C9B077C9B077C9B179CAB17ACAB27CCBB27F6E5D80CC
        B481CBB384CFB885CBB385CFB88ACFB88ED2BE91D0BA92D1BA93D1BB94D5C196
        88779CD4BF9CD8C69ED4BFA2D5C1A59988ACD8C4B0D9C6B1A796B6E2D5BDDDCB
        BFCEB9C1D9C6C4BDAAC4D9C7C6DFCEC8C1AECBEBE1CCCFBBCCE1D1CCEBE2D1CC
        B7D3CDB8D4CEBAD4E4D4D5D0BBD5D0BCD6D1BCD6D1BDD7D2BDD7D2BED7D8C5D7
        DDCCD7EFE8D8D3BFD9D4C1D9D5C1DAD5C1DAD5C2DAD6C2DBD6C3DBD7C4DCD8C5
        DCE6D7DDD8C6DDE6D7DED9C7E0DBCAE0DCCAE1DCCBE1DDCBE2DDCCE2DECDE3DE
        CEE4DFCFE4E0D0E5E1D1E5E8DAE6E2D2E7E3D3E8E4D4E8E4D5E9E5D6EAE6D7EC
        E8DAEEEADDEEEBDEEFEBDEF05565F2FAF8F3FAF84987EF830000002874524E53
        000C0F101011161F2C3850676F758F8F909B9DA1A8AEB2B6B8B8BFC1C2C6C8C9
        CCCDD2D4E3EBF6FC2D35F1FD0000014A49444154384FAD92675383401086CFDE
        7BD7885D394BB037EC622FC19208D628B1C598D82558D07FEE1E627219814F79
        3F3CB3BBF730C7DC2C42905C96658B11951C189453BDA350C4304C05F4550C95
        4A18D4922205A11A5DD71BA0AFD3A9B4C0A09E1469BF42ABCBE56AA685361834
        51827D922294363A2515A1EA4FA7A4274B783DB24890125E8E55550DFB01B767
        809002085ED38202780E001ECF010F9780FB240B3E59962582BD381284936834
        1A59E3797E5E812A1400DCFCBF6299E3B899F815FB1F4EC2C5441F768FADDA0A
        0BDDD8C854A629EC4A92E4DB164571CB4BAAC54E38F40C020A4DC1AF69DADD29
        20A200C203E4EBEF714047B6D53B1CE09880F3AD842543F83AF4AC0FE3322B61
        C510260541E8C725E64FFA20045E820D1C4F9E21BCBF25662476DE9E65B95157
        3D7F4281CDCA6DF61AC75D7319763BF9343BEA1E9ADE81A7FE01632A5E2E0F86
        F6410000000049454E44AE426082
      }
    end
    object Label2: TLabel
      Left = 495
      Height = 15
      Top = 16
      Width = 158
      Caption = 'Wybierz grupę wychowawczą:'
      ParentColor = False
    end
    object cbWychowawcy: TComboBox
      Left = 656
      Height = 23
      Top = 12
      Width = 180
      AutoDropDown = True
      ItemHeight = 15
      OnChange = cbWychowawcyChange
      Style = csDropDownList
      TabOrder = 0
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Height = 693
    Top = 50
    Width = 1182
    ActivePage = TabSheet2
    Align = alClient
    Images = DM.ImageList1
    TabHeight = 25
    TabIndex = 1
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Kanlendarz'
      ClientHeight = 935
      ClientWidth = 1912
      ImageIndex = 16
      OnShow = TabSheet1Show
      object YearPlanner1: TYearPlanner
        Left = 0
        Height = 660
        Top = 0
        Width = 798
        Align = alClient
        DayFont.CharSet = EASTEUROPE_CHARSET
        DayFont.Color = 3355443
        DayFont.Height = -11
        DayFont.Name = 'Arial'
        DayFont.Pitch = fpVariable
        DayFont.Quality = fqCleartype
        GridPen.Color = 13158600
        HeadingColor = clWhite
        Images = ImageList1
        MonthColor = clWhite
        MonthFont.Color = 3355443
        MonthFont.Height = -11
        MonthFont.Name = 'Arial'
        NoDayColor = 15856113
        SelectionColor = 16763541
        SelectionFont.Color = 3355443
        SelectionFont.Height = -11
        SelectionFont.Name = 'Arial'
        Seperator = False
        ShowToday = True
        TextLayout = tlTop
        TodayCircleColour = 13999409
        TodayCircleFilled = True
        TodayFont.Color = clWhite
        TodayFont.Height = -11
        TodayFont.Name = 'Arial'
        WeekendColor = 14671839
        WeekendHeadingColor = 14671839
        WeekendFont.Color = clRed
        WeekendFont.Height = -11
        WeekendFont.Name = 'Arial'
        Year = 2017
        YearColor = 14671839
        YearFont.Color = 3355443
        YearFont.Height = -11
        YearFont.Name = 'Arial'
        OnDrawCell = YearPlanner1DrawCell
        OnSelectionEnd = YearPlanner1SelectionEnd
        OnYearChanged = YearPlanner1YearChanged
      end
      object Panel5: TPanel
        Left = 803
        Height = 660
        Top = 0
        Width = 371
        Align = alRight
        BevelOuter = bvNone
        ClientHeight = 660
        ClientWidth = 371
        TabOrder = 1
        object RxDBGrid2: TRxDBGrid
          Left = 0
          Height = 554
          Top = 64
          Width = 371
          ColumnDefValues.BlobText = '(blob)'
          TitleButtons = True
          AutoSort = True
          Columns = <          
            item
              Title.Alignment = taCenter
              Title.Orientation = toHorizontal
              Title.Caption = 'Termin'
              Width = 70
              FieldName = 'Termin'
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
              Footers = <>
            end          
            item
              Title.Alignment = taCenter
              Title.Orientation = toHorizontal
              Title.Caption = 'NAZWISKO'
              Width = 90
              FieldName = 'NAZWISKO'
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
              Title.Caption = 'IMIE'
              Width = 80
              FieldName = 'IMIE'
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
              Title.Caption = 'POC'
              Width = 45
              FieldName = 'POC'
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
          AlternateColor = 14022911
          AutoAdvance = aaNone
          Color = clWindow
          DrawFullLine = False
          FocusColor = clHighlight
          FixedHotColor = clNone
          SelectedColor = clHighlight
          GridLineStyle = psSolid
          DataSource = DSKalendarz
          DefaultRowHeight = 19
          FixedColor = clNone
          Font.CharSet = EASTEUROPE_CHARSET
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Quality = fqDraft
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgHeaderHotTracking, dgHeaderPushedLook, dgAnyButtonCanSelect, dgDisableDelete, dgDisableInsert, dgCellHints, dgTruncCellHints, dgCellEllipsis]
          ParentFont = False
          ParentShowHint = False
          PopupMenu = PopupMenuKalendarz
          ReadOnly = True
          ShowHint = True
          TabOrder = 0
          TitleFont.CharSet = EASTEUROPE_CHARSET
          TitleFont.Height = -11
          TitleFont.Name = 'Arial'
          TitleFont.Pitch = fpVariable
          TitleFont.Quality = fqDraft
          TitleStyle = tsNative
        end
        object Panel6: TPanel
          Left = 0
          Height = 64
          Top = 0
          Width = 371
          Align = alTop
          BevelOuter = bvNone
          BorderStyle = bsSingle
          ClientHeight = 60
          ClientWidth = 367
          TabOrder = 1
          object cbListTerminy: TCheckListBox
            Left = 0
            Height = 42
            Top = 18
            Width = 367
            Align = alClient
            BorderStyle = bsNone
            Columns = 2
            Items.Strings = (
              'Termin Oceny'
              'Termin WPZ'
              'Termin Postpenitu'
              'Termin Końca kary'
            )
            ItemHeight = 17
            ItemIndex = 0
            MultiSelect = True
            OnClickCheck = cbListTerminyClickCheck
            TabOrder = 0
            Data = {
              0400000001010101
            }
          end
          object Label8: TLabel
            Left = 0
            Height = 18
            Top = 0
            Width = 367
            Align = alTop
            AutoSize = False
            Caption = 'Rodzaj terminu:'
            Color = 16767927
            Layout = tlCenter
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
        end
        object Panel7: TPanel
          Left = 0
          Height = 42
          Top = 618
          Width = 371
          Align = alBottom
          BevelOuter = bvNone
          ClientHeight = 42
          ClientWidth = 371
          Color = clWhite
          ParentColor = False
          TabOrder = 2
          object BCPanel1: TBCPanel
            Left = 8
            Height = 34
            Top = 5
            Width = 16
            Background.Color = clBtnFace
            Background.ColorOpacity = 255
            Background.Gradient1.StartColor = 14540287
            Background.Gradient1.StartColorOpacity = 255
            Background.Gradient1.DrawMode = dmSet
            Background.Gradient1.EndColor = clRed
            Background.Gradient1.EndColorOpacity = 255
            Background.Gradient1.ColorCorrection = False
            Background.Gradient1.GradientType = gtLinear
            Background.Gradient1.Point1XPercent = 100
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
            Background.Gradient1EndPercent = 100
            Background.Style = bbsGradient
            BevelInner = bvNone
            BevelOuter = bvNone
            BevelWidth = 1
            Border.Color = clBlack
            Border.ColorOpacity = 255
            Border.LightColor = clWhite
            Border.LightOpacity = 255
            Border.LightWidth = 0
            Border.Style = bboNone
            Border.Width = 1
            FontEx.Color = clDefault
            FontEx.EndEllipsis = False
            FontEx.FontQuality = fqSystemClearType
            FontEx.Height = 0
            FontEx.SingleLine = True
            FontEx.Shadow = False
            FontEx.ShadowColor = clBlack
            FontEx.ShadowColorOpacity = 255
            FontEx.ShadowRadius = 5
            FontEx.ShadowOffsetX = 5
            FontEx.ShadowOffsetY = 5
            FontEx.Style = []
            FontEx.TextAlignment = bcaCenter
            FontEx.WordBreak = False
            Rounding.RoundX = 1
            Rounding.RoundY = 1
            Rounding.RoundOptions = []
            TabOrder = 0
          end
          object BCPanel2: TBCPanel
            Left = 72
            Height = 34
            Top = 5
            Width = 16
            Background.Color = clBtnFace
            Background.ColorOpacity = 255
            Background.Gradient1.StartColor = 15794162
            Background.Gradient1.StartColorOpacity = 255
            Background.Gradient1.DrawMode = dmSet
            Background.Gradient1.EndColor = 32026
            Background.Gradient1.EndColorOpacity = 255
            Background.Gradient1.ColorCorrection = False
            Background.Gradient1.GradientType = gtLinear
            Background.Gradient1.Point1XPercent = 100
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
            Background.Gradient1EndPercent = 100
            Background.Style = bbsGradient
            BevelInner = bvNone
            BevelOuter = bvNone
            BevelWidth = 1
            Border.Color = clGray
            Border.ColorOpacity = 255
            Border.LightColor = clWhite
            Border.LightOpacity = 255
            Border.LightWidth = 0
            Border.Style = bboNone
            Border.Width = 1
            BorderBCStyle = bpsBorder
            FontEx.Color = clDefault
            FontEx.EndEllipsis = False
            FontEx.FontQuality = fqSystemClearType
            FontEx.Height = 0
            FontEx.SingleLine = True
            FontEx.Shadow = False
            FontEx.ShadowColor = clBlack
            FontEx.ShadowColorOpacity = 255
            FontEx.ShadowRadius = 5
            FontEx.ShadowOffsetX = 5
            FontEx.ShadowOffsetY = 5
            FontEx.Style = []
            FontEx.TextAlignment = bcaCenter
            FontEx.WordBreak = False
            Rounding.RoundX = 1
            Rounding.RoundY = 1
            Rounding.RoundOptions = []
            TabOrder = 1
          end
          object BCPanel3: TBCPanel
            Left = 144
            Height = 34
            Top = 5
            Width = 16
            Background.Color = clBtnFace
            Background.ColorOpacity = 255
            Background.Gradient1.StartColor = 16770790
            Background.Gradient1.StartColorOpacity = 255
            Background.Gradient1.DrawMode = dmSet
            Background.Gradient1.EndColor = clBlue
            Background.Gradient1.EndColorOpacity = 255
            Background.Gradient1.ColorCorrection = False
            Background.Gradient1.GradientType = gtLinear
            Background.Gradient1.Point1XPercent = 100
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
            Background.Gradient1EndPercent = 100
            Background.Style = bbsGradient
            BevelInner = bvNone
            BevelOuter = bvNone
            BevelWidth = 1
            Border.Color = clBlack
            Border.ColorOpacity = 255
            Border.LightColor = clWhite
            Border.LightOpacity = 255
            Border.LightWidth = 0
            Border.Style = bboNone
            Border.Width = 1
            FontEx.Color = clDefault
            FontEx.EndEllipsis = False
            FontEx.FontQuality = fqSystemClearType
            FontEx.Height = 0
            FontEx.SingleLine = True
            FontEx.Shadow = False
            FontEx.ShadowColor = clBlack
            FontEx.ShadowColorOpacity = 255
            FontEx.ShadowRadius = 5
            FontEx.ShadowOffsetX = 5
            FontEx.ShadowOffsetY = 5
            FontEx.Style = []
            FontEx.TextAlignment = bcaCenter
            FontEx.WordBreak = False
            Rounding.RoundX = 1
            Rounding.RoundY = 1
            Rounding.RoundOptions = []
            TabOrder = 2
          end
          object BCPanel4: TBCPanel
            Left = 224
            Height = 34
            Top = 5
            Width = 16
            Background.Color = clBtnFace
            Background.ColorOpacity = 255
            Background.Gradient1.StartColor = 16771828
            Background.Gradient1.StartColorOpacity = 255
            Background.Gradient1.DrawMode = dmSet
            Background.Gradient1.EndColor = 13762665
            Background.Gradient1.EndColorOpacity = 255
            Background.Gradient1.ColorCorrection = False
            Background.Gradient1.GradientType = gtLinear
            Background.Gradient1.Point1XPercent = 100
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
            Background.Gradient1EndPercent = 100
            Background.Style = bbsGradient
            BevelInner = bvNone
            BevelOuter = bvNone
            BevelWidth = 1
            Border.Color = clBlack
            Border.ColorOpacity = 255
            Border.LightColor = clWhite
            Border.LightOpacity = 255
            Border.LightWidth = 0
            Border.Style = bboNone
            Border.Width = 1
            FontEx.Color = clDefault
            FontEx.EndEllipsis = False
            FontEx.FontQuality = fqSystemClearType
            FontEx.Height = 0
            FontEx.SingleLine = True
            FontEx.Shadow = False
            FontEx.ShadowColor = clBlack
            FontEx.ShadowColorOpacity = 255
            FontEx.ShadowRadius = 5
            FontEx.ShadowOffsetX = 5
            FontEx.ShadowOffsetY = 5
            FontEx.Style = []
            FontEx.TextAlignment = bcaCenter
            FontEx.WordBreak = False
            Rounding.RoundX = 1
            Rounding.RoundY = 1
            Rounding.RoundOptions = []
            TabOrder = 3
          end
          object Oceny: TLabel
            Left = 24
            Height = 15
            Top = 16
            Width = 34
            Caption = 'Oceny'
            Font.Color = clRed
            ParentColor = False
            ParentFont = False
          end
          object Oceny1: TLabel
            Left = 88
            Height = 15
            Top = 16
            Width = 25
            Caption = 'WPZ'
            Font.Color = 32026
            ParentColor = False
            ParentFont = False
          end
          object Oceny2: TLabel
            Left = 160
            Height = 15
            Top = 16
            Width = 50
            Caption = 'Postpenit'
            Font.Color = clBlue
            ParentColor = False
            ParentFont = False
          end
          object Oceny3: TLabel
            Left = 240
            Height = 15
            Top = 16
            Width = 14
            Caption = 'KK'
            Font.Color = 13762665
            ParentColor = False
            ParentFont = False
          end
        end
      end
      object Splitter2: TSplitter
        Left = 798
        Height = 660
        Top = 0
        Width = 5
        Align = alRight
        ResizeAnchor = akRight
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Terminy'
      ClientHeight = 660
      ClientWidth = 1174
      ImageIndex = 24
      object Panel2: TPanel
        Left = 0
        Height = 660
        Top = 0
        Width = 454
        Align = alClient
        BevelOuter = bvNone
        ClientHeight = 660
        ClientWidth = 454
        TabOrder = 0
        object Panel4: TPanel
          Left = 0
          Height = 50
          Top = 610
          Width = 454
          Align = alBottom
          ClientHeight = 50
          ClientWidth = 454
          Color = clForm
          ParentColor = False
          TabOrder = 0
          object Label3: TLabel
            Left = 8
            Height = 15
            Top = 6
            Width = 68
            Caption = 'Osadzonych:'
            ParentColor = False
          end
          object Label4: TLabel
            Left = 8
            Height = 15
            Top = 24
            Width = 80
            Caption = 'Wolne miejsca:'
            ParentColor = False
          end
          object Label5: TLabel
            Left = 144
            Height = 15
            Top = 6
            Width = 20
            Caption = '"P":'
            ParentColor = False
          end
          object lblOs: TLabel
            Left = 96
            Height = 15
            Top = 6
            Width = 27
            Caption = 'lblOs'
            Font.Color = clBlue
            ParentColor = False
            ParentFont = False
          end
          object lblWolne: TLabel
            Left = 96
            Height = 15
            Top = 24
            Width = 47
            Caption = 'lblWolne'
            Font.Color = clBlue
            ParentColor = False
            ParentFont = False
          end
          object lblProg: TLabel
            AnchorSideLeft.Control = Label5
            AnchorSideLeft.Side = asrBottom
            AnchorSideTop.Control = Label5
            Left = 168
            Height = 15
            Top = 6
            Width = 38
            BorderSpacing.Left = 4
            Caption = 'lblProg'
            Font.Color = clBlue
            ParentColor = False
            ParentFont = False
          end
          object Edit1: TEdit
            Left = 317
            Height = 23
            Top = 0
            Width = 136
            Anchors = [akTop, akRight]
            CharCase = ecUppercase
            OnChange = Edit1Change
            TabOrder = 0
            TextHint = 'Wyszukaj nazwisko'
          end
          object Label6: TLabel
            Left = 216
            Height = 15
            Top = 6
            Width = 18
            Caption = 'GR:'
            ParentColor = False
          end
          object lblGR: TLabel
            AnchorSideLeft.Control = Label6
            AnchorSideLeft.Side = asrBottom
            AnchorSideTop.Control = Label6
            Left = 238
            Height = 15
            Top = 6
            Width = 28
            BorderSpacing.Left = 4
            Caption = 'lblGR'
            Font.Color = clBlue
            ParentColor = False
            ParentFont = False
          end
          object Label7: TLabel
            Left = 153
            Height = 15
            Top = 24
            Width = 81
            Caption = 'Zatrudnionych:'
            ParentColor = False
          end
          object lblZatrudnionych: TLabel
            AnchorSideLeft.Control = Label7
            AnchorSideLeft.Side = asrBottom
            AnchorSideTop.Control = Label7
            Left = 238
            Height = 15
            Top = 24
            Width = 91
            BorderSpacing.Left = 4
            Caption = 'lblZatrudnionych'
            Font.Color = clBlue
            ParentColor = False
            ParentFont = False
          end
        end
        object RxDBGrid1: TRxDBGrid
          Left = 0
          Height = 610
          Top = 0
          Width = 454
          ColumnDefValues.BlobText = '(blob)'
          TitleButtons = True
          AutoSort = True
          OnGetCellProps = RxDBGrid1GetCellProps
          Columns = <          
            item
              Font.Color = clGreen
              Title.Alignment = taCenter
              Title.Orientation = toHorizontal
              Title.Caption = 'POC'
              Width = 50
              FieldName = 'POC'
              EditButtons = <>
              Filter.DropDownRows = 0
              Filter.EmptyValue = '(Empty)'
              Filter.NotEmptyValue = '(Not empty)'
              Filter.AllValue = '(All values)'
              Filter.EmptyFont.Style = [fsItalic]
              Filter.ItemIndex = -1
              Footers = <>
              SortFields = 'ID;NAZWISKO'
            end          
            item
              Title.Alignment = taCenter
              Title.Orientation = toHorizontal
              Title.Caption = 'Nazwisko Imię'
              Width = 180
              FieldName = 'NazwiskoImie'
              EditButtons = <>
              Filter.DropDownRows = 0
              Filter.EmptyValue = '(Empty)'
              Filter.NotEmptyValue = '(Not empty)'
              Filter.AllValue = '(All values)'
              Filter.EmptyFont.Style = [fsItalic]
              Filter.ItemIndex = -1
              Footers = <>
              SortFields = 'NAZWISKO'
            end          
            item
              Alignment = taCenter
              Font.Color = clGreen
              Title.Alignment = taCenter
              Title.Orientation = toHorizontal
              Title.Caption = 'Klasyf.'
              Width = 45
              FieldName = 'KLASYF'
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
              ButtonStyle = cbsCheckboxColumn
              Title.Alignment = taCenter
              Title.Orientation = toHorizontal
              Title.Caption = 'GR'
              Width = 25
              FieldName = 'GR'
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
              ButtonStyle = cbsCheckboxColumn
              Title.Alignment = taCenter
              Title.Orientation = toHorizontal
              Title.Caption = 'Starszy'
              Width = 45
              FieldName = 'Starszy'
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
              Font.Color = clMaroon
              Title.Alignment = taCenter
              Title.Orientation = toHorizontal
              Title.Caption = 'toceny'
              Width = 70
              FieldName = 'toceny'
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
              Font.Color = clMaroon
              Title.Alignment = taCenter
              Title.Orientation = toHorizontal
              Title.Caption = 'twpz'
              Width = 70
              FieldName = 'twpz'
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
              Font.Color = clMaroon
              Title.Alignment = taCenter
              Title.Orientation = toHorizontal
              Title.Caption = 'Koniec Kary'
              Width = 70
              FieldName = 'KoniecKary'
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
              Font.Color = clMaroon
              Title.Alignment = taCenter
              Title.Orientation = toHorizontal
              Title.Caption = 'tpostpenitu'
              Width = 70
              FieldName = 'tpostpenitu'
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
              Font.Color = clMaroon
              Title.Alignment = taCenter
              Title.Orientation = toHorizontal
              Title.Caption = 'tterapii'
              Width = 70
              FieldName = 'tterapii'
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
              Font.Color = clMaroon
              Title.Alignment = taCenter
              Title.Orientation = toHorizontal
              Title.Caption = 'tprzepustki'
              Width = 70
              FieldName = 'tprzepustki'
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
              Title.Hint = 'Przyczyny niezatrudnienia.'
              Title.ShowHint = True
              Title.Caption = 'Zatrudnienie uwagi'
              Width = 150
              FieldName = 'Zatrudnienie'
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
              Alignment = taCenter
              Font.Color = clMaroon
              Title.Alignment = taCenter
              Title.Color = clNone
              Title.Orientation = toHorizontal
              Title.Caption = 'Zatrudniony od'
              Width = 70
              FieldName = 'zat_od'
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
              ButtonStyle = cbsCheckboxColumn
              Title.Alignment = taCenter
              Title.Orientation = toHorizontal
              Title.Hint = 'Alimenty'
              Title.Caption = 'ali- menty'
              Width = 33
              FieldName = 'alimenty'
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
              Title.Caption = 'Alimenty Zadłużenie'
              Width = 70
              FieldName = 'ali_Zadluzenie'
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
              ButtonStyle = cbsCheckboxColumn
              Title.Alignment = taCenter
              Title.Orientation = toHorizontal
              Title.Hint = 'Zobowiazania'
              Title.Caption = 'zobo- wiązania'
              Width = 33
              FieldName = 'zobowiazania'
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
              Font.Color = clMaroon
              Title.Alignment = taCenter
              Title.Orientation = toHorizontal
              Title.Caption = 'URODZ'
              Width = 70
              FieldName = 'URODZ'
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
              Font.Color = clMaroon
              Title.Alignment = taCenter
              Title.Orientation = toHorizontal
              Title.Caption = 'PRZYJ'
              Width = 70
              FieldName = 'PRZYJ'
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
              Title.Caption = 'STATUS'
              Width = 50
              FieldName = 'STATUS'
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
              Title.Caption = 'data autoryzacji'
              Width = 90
              FieldName = 'data_autoryzacji'
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
              ButtonStyle = cbsCheckboxColumn
              Title.Alignment = taCenter
              Title.Orientation = toHorizontal
              Title.Caption = 'Arch'
              Width = 32
              FieldName = 'Arch'
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
              ButtonStyle = cbsCheckboxColumn
              Title.Alignment = taCenter
              Title.Orientation = toHorizontal
              Title.Caption = 'Wywiad'
              Width = 50
              FieldName = 'Wywiad'
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
              Title.Caption = 'ułamek wpz'
              Width = 75
              FieldName = 'ulamek_wpz'
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
              ButtonStyle = cbsCheckboxColumn
              Title.Alignment = taCenter
              Title.Orientation = toHorizontal
              Title.Caption = 'wpz'
              Width = 40
              FieldName = 'wpz_stanowisko'
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
              ButtonStyle = cbsCheckboxColumn
              Title.Alignment = taCenter
              Title.Orientation = toHorizontal
              Title.Caption = 'post_not.'
              Width = 57
              FieldName = 'postpenit_notatka'
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
              Command = rxgcOptimizeColumnsWidth
              ShortCut = 16467
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
          AlternateColor = 14022911
          AutoAdvance = aaNone
          Color = clWindow
          DrawFullLine = False
          FocusColor = clHighlight
          FixedHotColor = clNone
          SelectedColor = clHighlight
          GridLineStyle = psSolid
          DataSource = DSTerminarz
          DefaultRowHeight = 0
          FixedColor = clNone
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgHeaderHotTracking, dgHeaderPushedLook, dgAnyButtonCanSelect, dgDisableDelete, dgDisableInsert, dgCellHints, dgTruncCellHints, dgCellEllipsis]
          ParentShowHint = False
          PopupMenu = PopupMenuTerminy
          ReadOnly = True
          ShowHint = True
          TabOrder = 1
          TitleStyle = tsNative
        end
      end
      object Panel3: TPanel
        Left = 459
        Height = 660
        Top = 0
        Width = 715
        Align = alRight
        BevelOuter = bvNone
        Color = clForm
        ParentColor = False
        TabOrder = 1
      end
      object Splitter1: TSplitter
        Left = 454
        Height = 660
        Top = 0
        Width = 5
        Align = alRight
        ResizeAnchor = akRight
      end
    end
  end
  object ZQTerminarz: TZQuery
    Connection = DM.ZConnection1
    AfterOpen = ZQTerminarzAfterOpen
    AfterClose = ZQTerminarzAfterClose
    CachedUpdates = True
    SQL.Strings = (
      'SELECT'
      'os.IDO,'
      'os.NAZWISKO,'
      'os.IMIE,'
      'CONCAT_WS('' '',os.NAZWISKO, os.IMIE) as NazwiskoImie,'
      'os.OJCIEC,'
      'os.URODZ,'
      'os.PRZYJ,'
      'os.KLASYF,'
      'os.POC,'
      'os.STATUS,'
      'Autoryzacja,'
      'data_autoryzacji,'
      'KoniecKary,'
      'Arch,'
      'Wywiad,'
      'Starszy,'
      'Zatrudnienie,'
      'toceny,'
      'tprzepustki,'
      'tpostpenitu,'
      'tterapii,'
      'twpz,'
      'ulamek_wpz,'
      'wpz_stanowisko,'
      'postpenit_notatka,'
      'GR,'
      'typ_cel.ID,'
      'zat.zat_od,'
      'alimenty,'
      'ali_Zadluzenie,'
      'os_info.zobowiazania'
      'FROM osadzeni os'
      'LEFT OUTER JOIN os_info ON (os.IDO = os_info.IDO)'
      'INNER JOIN typ_cel ON (os.POC = typ_cel.POC)'
      'LEFT OUTER JOIN zat_zatrudnieni zat ON (zat.IDO = os.IDO)and(zat.status_zatrudnienia="zatrudniony")'
    )
    Params = <>
    Left = 456
    Top = 112
    object ZQTerminarzIDO: TLargeintField
      FieldKind = fkData
      FieldName = 'IDO'
      Index = 0
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = True
    end
    object ZQTerminarzNAZWISKO: TStringField
      FieldKind = fkData
      FieldName = 'NAZWISKO'
      Index = 1
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = True
      Size = 180
    end
    object ZQTerminarzIMIE: TStringField
      FieldKind = fkData
      FieldName = 'IMIE'
      Index = 2
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = True
      Size = 180
    end
    object ZQTerminarzNazwiskoImie: TStringField
      FieldKind = fkData
      FieldName = 'NazwiskoImie'
      Index = 3
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
      Size = 364
    end
    object ZQTerminarzOJCIEC: TStringField
      FieldKind = fkData
      FieldName = 'OJCIEC'
      Index = 4
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
      Size = 180
    end
    object ZQTerminarzURODZ: TDateField
      FieldKind = fkData
      FieldName = 'URODZ'
      Index = 5
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
    end
    object ZQTerminarzPRZYJ: TDateField
      FieldKind = fkData
      FieldName = 'PRZYJ'
      Index = 6
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
    end
    object ZQTerminarzKLASYF: TStringField
      FieldKind = fkData
      FieldName = 'KLASYF'
      Index = 7
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
      Size = 40
    end
    object ZQTerminarzPOC: TStringField
      FieldKind = fkData
      FieldName = 'POC'
      Index = 8
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
      Size = 40
    end
    object ZQTerminarzSTATUS: TStringField
      FieldKind = fkData
      FieldName = 'STATUS'
      Index = 9
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
      Size = 40
    end
    object ZQTerminarzAutoryzacja: TStringField
      FieldKind = fkData
      FieldName = 'Autoryzacja'
      Index = 10
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
      Size = 80
    end
    object ZQTerminarzdata_autoryzacji: TDateTimeField
      FieldKind = fkData
      FieldName = 'data_autoryzacji'
      Index = 11
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
    end
    object ZQTerminarzKoniecKary: TDateField
      FieldKind = fkData
      FieldName = 'KoniecKary'
      Index = 12
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
    end
    object ZQTerminarzArch: TSmallintField
      FieldKind = fkData
      FieldName = 'Arch'
      Index = 13
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
    end
    object ZQTerminarzWywiad: TSmallintField
      FieldKind = fkData
      FieldName = 'Wywiad'
      Index = 14
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
    end
    object ZQTerminarzStarszy: TSmallintField
      FieldKind = fkData
      FieldName = 'Starszy'
      Index = 15
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
    end
    object ZQTerminarzZatrudnienie: TStringField
      FieldKind = fkData
      FieldName = 'Zatrudnienie'
      Index = 16
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
      Size = 400
    end
    object ZQTerminarztoceny: TDateField
      FieldKind = fkData
      FieldName = 'toceny'
      Index = 17
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
    end
    object ZQTerminarztprzepustki: TDateField
      FieldKind = fkData
      FieldName = 'tprzepustki'
      Index = 18
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
    end
    object ZQTerminarztpostpenitu: TDateField
      FieldKind = fkData
      FieldName = 'tpostpenitu'
      Index = 19
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
    end
    object ZQTerminarztterapii: TDateField
      FieldKind = fkData
      FieldName = 'tterapii'
      Index = 20
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
    end
    object ZQTerminarztwpz: TDateField
      FieldKind = fkData
      FieldName = 'twpz'
      Index = 21
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
    end
    object ZQTerminarzulamek_wpz: TStringField
      FieldKind = fkData
      FieldName = 'ulamek_wpz'
      Index = 22
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
      Size = 80
    end
    object ZQTerminarzwpz_stanowisko: TSmallintField
      FieldKind = fkData
      FieldName = 'wpz_stanowisko'
      Index = 23
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
    end
    object ZQTerminarzpostpenit_notatka: TSmallintField
      FieldKind = fkData
      FieldName = 'postpenit_notatka'
      Index = 24
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
    end
    object ZQTerminarzGR: TSmallintField
      FieldKind = fkData
      FieldName = 'GR'
      Index = 25
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
    end
    object ZQTerminarzID: TLargeintField
      FieldKind = fkData
      FieldName = 'ID'
      Index = 26
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = True
    end
    object ZQTerminarzzat_od: TDateField
      FieldKind = fkData
      FieldName = 'zat_od'
      Index = 27
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
    end
    object ZQTerminarzalimenty: TSmallintField
      FieldKind = fkData
      FieldName = 'alimenty'
      Index = 28
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
    end
    object ZQTerminarzali_Zadluzenie: TStringField
      Alignment = taRightJustify
      FieldKind = fkData
      FieldName = 'ali_Zadluzenie'
      Index = 29
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = True
      Required = False
      Size = 48
    end
    object ZQTerminarzzobowiazania: TSmallintField
      FieldKind = fkData
      FieldName = 'zobowiazania'
      Index = 30
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
    end
  end
  object DSTerminarz: TDataSource
    DataSet = ZQTerminarz
    OnDataChange = DSTerminarzDataChange
    Left = 532
    Top = 112
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 100
    OnTimer = OnTimerDataChange
    Left = 704
    Top = 80
  end
  object ImageList1: TImageList
    Left = 1064
    Top = 168
    Bitmap = {
      4C69140000001000000010000000000000000000000000000000000000000000
      000000000000000000007291D5D57A94D5D20000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004F77CA45B0E3F4FF90DBF4FF5675CA4200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007A90D4E06BF6FFFF3EEAFFFF608AD3E000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005274CB338EC3EAFF50F4FFFF49F0FFFF55B6E7FF607CCA30000000000000
      00000000000000000000000000000000000000000000000000003B70C81C3065
      C434657CCCD586FBFFFF3FE4FEFF51E5FFFF52EAFFFF5379CBD53866C5343A70
      C81D0000000000000000000000005783D2966786D0BA93A5DADABEC2E7FACACE
      ECFFBAEAF7FF41EBFFFF50E4FEFF50DFFEFF44E2FFFF86DAF6FFC8CFECFFBAC6
      E7F991A8DAD9698BD1BB5686D2967D9DDAFFC5FFFFFF91FFFFFF5AFAFFFF4CF5
      FFFF47EFFFFF4AE4FDFF50E3FEFF52E0FEFF4DDCFEFF4EE2FFFF54E3FFFF63E2
      FFFF81EBFFFFC7FFFFFF799DDAFF537ACD5441B6E4FF3FFFFFFF48EEFDFF4CE6
      FDFF50E6FDFF57E7FEFF57E4FEFF58E1FEFF58DFFEFF59DBFEFF47D4FEFF3FD4
      FFFF38DBFFFF3591E0FF527CCE54000000006071C86B58B3E3FF52FFFFFF5CEC
      FFFF4FE9FDFF43E0FDFF30D9FDFF16CFFDFF07C6FDFF00B8FDFF00B7FFFF00BB
      FFFF0050CBFF1832A96B000000000000000000000000697DCD734BA6DFFF17E9
      FFFF08D6FCFF00CDFBFF00C5FDFF00C3FCFF00BEFDFF00BBFDFF01BFFFFF0A6B
      D9FF0416997300000000000000000000000000000000000000001220A5B102DD
      FCFF00D2FDFF00CCFCFF01C8FCFF01C3FCFF01BDFDFF02BAFFFF02B3FFFF0D1D
      9DAF0000000000000000000000000000000000000000000000002942B3BC11EC
      FFFF00CFFCFF02CAFCFF01C8FDFF01C3FEFF01BAFDFF03B6FEFF04BCFFFF1740
      B3BB0000000000000000000000000000000000000000000000002362C4DD00E3
      FFFF01CEFBFF00D7FFFF00D2FFFF00CDFFFF00C7FFFF03B2FDFF03B9FFFF104F
      C3DA00000000000000000000000000000000000000000419A027258CD6FF02F1
      FFFF00E3FFFF03B2F4FF0B48BDFF0B4ABDFF04A3F6FF01C4FFFF02C3FFFF0E6A
      D5FF0C24A02500000000000000000000000000000000060D9D4821C3EDFF02D9
      FDFF085ECAFF0E1EA29E00000000000000000E22A29E0956CAFF04ADFDFF0D90
      ECFF0D1E9D4600000000000000000000000000000000082CA83E165BBDFF0D34
      B0A20F20A223000000000000000000000000000000000E27A2230D32B0A20B4C
      BDFF0D30A83E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009F5A00FF9F5A00FF9F5A00FF9F5A00FF9F5A
      00FF9F5A00FF9F5A00FF9F5A00FF000000000000000000000000000000000000
      00000000000000000000000000009F5A00FFCE973DFFE6B55BFFE6B55BFFE6B5
      5BFFE6B55BFFCF973DFF9F5A00FF000000000000000000000000000000000000
      00000000000000000000000000009F5A00FFC78B29FFDBA33DFFDAA23EFFDBA3
      3EFFDAA33EFFC78B29FF9F5A00FF000000000000000000000000000000000000
      00000000000000000000000000009F5A00FFBF7D14FFCF8F1EFFCE8F1EFFCF8F
      1EFFCF8F1FFFBF7D15FF9F5A00FF000000000000000000000000000000000000
      00000000000000000000000000009F5A00FFB87404FFC58006FFC68006FFC680
      07FFC68006FFB87404FF9F5A00FF000000000000000000000000000000000000
      0000000000000000000000000000DEA745FFDEA745FFDEA745FFDEA745FFDEA7
      45FFDEA745FFDEA745FFDEA745FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009F5A00FF9F5A00FF9F5A00FF9F5A00FF9F5A
      00FF9F5A00FF9F5A00FF9F5A00FF000000000000000000000000000000000000
      00000000000000000000000000009F5A00FFD39E48FFEDC06DFFEDC06CFFEDBF
      6DFFEDC06DFFD39E48FF9F5A00FF000000000000000000000000000000000000
      00000000000000000000000000009F5A00FFCF9941FFE8B861FFE8B861FFE9B8
      61FFE8B860FFD09940FF9F5A00FF000000000000000000000000000000000000
      00000000000000000000000000009F5A00FFCD9439FFE3B255FFE3B155FFE3B1
      55FFE4B255FFCD9439FF9F5A00FF000000000000000000000000000000000000
      00000000000000000000000000009F5A00FFC98E2EFFDEA744FFDDA745FFDEA7
      45FFDDA745FFC88E2EFF9F5A00FF000000000000000000000000000000000000
      00000000000000000000000000009F5A00FFC58724FFD89E36FFD79D37FFD89E
      36FFD79E36FFC58824FF9F5A00FF000000000000000000000000000000000000
      00000000000000000000000000009F5A00FFC08019FFD19325FFD19325FFD193
      25FFD29325FFC18019FF9F5A00FF000000000000000000000000000000000000
      00000000000000000000000000009F5A00FFBD7A0FFFCC8A17FFCB8A17FFCC8A
      17FFCC8B18FFBD7A10FF9F5A00FF000000000000000000000000000000000000
      00000000000000000000000000009F5A00FFB97506FFC6830AFFC7820AFFC782
      0BFFC7830AFFB97506FF9F5A00FF000000000000000000000000000000000000
      00000000000000000000000000009F5A00FFB77201FFC47D02FFC47D02FFC47D
      02FFC47D02FFB77201FF9F5A00FF000000000000000000000000000000000000
      0000000000000000000000000000DEA745FFDEA745FFDEA745FFDEA745FFDEA7
      45FFDEA745FFDEA745FFDEA745FF000000000000000000000000000000000000
      00000000000000000000000000009F5A00FF9F5A00FF9F5A00FF9F5A00FF9F5A
      00FF9F5A00FF9F5A00FF9F5A00FF000000000000000000000000000000000000
      00000000000000000000000000009F5A00FFD49F4BFFEEC270FFEEC270FFEEC2
      70FFEEC270FFD49F4BFF9F5A00FF000000000000000000000000000000000000
      00000000000000000000000000009F5A00FFD29D47FFECBF6BFFECBF6AFFECBE
      6BFFECBF6BFFD29D47FF9F5A00FF000000000000000000000000000000000000
      00000000000000000000000000009F5A00FFD09A43FFE9BA64FFE9BA64FFEABA
      64FFE9BA63FFD09A42FF9F5A00FF000000000000000000000000000000000000
      00000000000000000000000000009F5A00FFCE973DFFE6B55BFFE6B55CFFE6B5
      5BFFE7B55BFFCF973DFF9F5A00FF000000000000000000000000000000000000
      00000000000000000000000000009F5A00FFCC9337FFE2B052FFE2AF52FFE2AF
      52FFE3B052FFCC9337FF9F5A00FF000000000000000000000000000000000000
      00000000000000000000000000009F5A00FFCA8F30FFDFA948FFDFA948FFDFA9
      48FFDEA948FFC98F30FF9F5A00FF000000000000000000000000000000000000
      00000000000000000000000000009F5A00FFC78B29FFDBA33DFFDAA23EFFDBA3
      3EFFDAA33EFFC68B29FF9F5A00FF000000000000000000000000000000000000
      00000000000000000000000000009F5A00FFC48522FFD69B33FFD69B33FFD69B
      32FFD69C32FFC48621FF9F5A00FF000000000000000000000000000000000000
      00000000000000000000000000009F5A00FFC1811BFFD29528FFD29528FFD295
      28FFD39528FFC2811BFF9F5A00FF000000000000000000000000000000000000
      00000000000000000000000000009F5A00FFBF7D14FFCF8F1EFFCE8F1EFFCF8F
      1EFFCF8F1EFFBF7D14FF9F5A00FF000000000000000000000000000000000000
      00000000000000000000000000009F5A00FFBC790DFFCA8814FFCA8814FFCB88
      14FFCB8915FFBC790EFF9F5A00FF000000000000000000000000000000000000
      00000000000000000000000000009F5A00FFBA7608FFC7840CFFC8830DFFC883
      0DFFC8840CFFBA7608FF9F5A00FF000000000000000000000000000000000000
      00000000000000000000000000009F5A00FFB87303FFC58005FFC57F05FFC57F
      06FFC58005FFB87303FF9F5A00FF000000000000000000000000000000000000
      00000000000000000000000000009F5A00FFB77100FFC37C00FFC37C00FFC37C
      00FFC37C00FFB77100FF9F5A00FF000000000000000000000000000000000000
      0000000000000000000000000000DEA745FFDEA745FFDEA745FFDEA745FFDEA7
      45FFDEA745FFDEA745FFDEA745FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001D25DAEF1D25DAFF1D25DAFF1D25DAFF1D25
      DAFF1D25DAFF1D25DAFF1F27DBFA000000000000000000000000000000000000
      00000000000000000000000000001D25DAF5777BE9FFA7A9F0FFA8ABF0FFA8AB
      F1FFA8ABF1FF7C81EAFF2129DBFF000000000000000000000000000000000000
      00000000000000000000000000001D25DAFF6469E5FF878BEBFF878AEBFF878A
      ECFF878BECFF6469E6FF1D25DAFF000000000000000000000000000000000000
      00000000000000000000000000001F27DAFF484FE1FF5D63E5FF5D63E4FF5D63
      E5FF5C62E4FF464DE1FF1D25DAF5000000000000000000000000000000000000
      00000000000000000000000000001F27DAFA3239DDFF3B41DFFF3B42DFFF3A42
      DFFF3A42DEFF2F37DDFF1D25DAEF000000000000000000000000000000000000
      0000000000000000000000000000DEA745FFDEA745FFDEA745FFDEA745FFDEA7
      45FFDEA745FFDEA745FFDEA745FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001D25DAEF1D25DAFF1D25DAFF1D25DAFF1D25
      DAFF1D25DAFF1D25DAFF1F27DBFA9F5A00FF9F5A00FF9F5A00FF9F5A00FF9F5A
      00FF9F5A00FF9F5A00FF9F5A00FF1D25DAF5777BE9FFA7A9F0FFA8ABF0FFA8AB
      F1FFA8ABF1FF7C81EAFF2129DBFF9F5A00FFCE973DFFE6B55BFFE6B55BFFE6B5
      5BFFE6B55BFFCF973DFF9F5A00FF1D25DAFF6469E5FF878BEBFF878AEBFF878A
      ECFF878BECFF6469E6FF1D25DAFF9F5A00FFC78B29FFDBA33DFFDAA23EFFDBA3
      3EFFDAA33EFFC78B29FF9F5A00FF1F27DAFF484FE1FF5D63E5FF5D63E4FF5D63
      E5FF5C62E4FF464DE1FF1D25DAF59F5A00FFBF7D14FFCF8F1EFFCE8F1EFFCF8F
      1EFFCF8F1FFFBF7D15FF9F5A00FF1F27DAFA3239DDFF3B41DFFF3B42DFFF3A42
      DFFF3A42DEFF2F37DDFF1D25DAEF9F5A00FFB87404FFC58006FFC68006FFC680
      07FFC68006FFB87404FF9F5A00FFDEA745FFDEA745FFDEA745FFDEA745FFDEA7
      45FFDEA745FFDEA745FFDEA745FFDEA745FFDEA745FFDEA745FFDEA745FFDEA7
      45FFDEA745FFDEA745FFDEA745FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009F5A00FF9F5A00FF9F5A00FF9F5A00FF9F5A
      00FF9F5A00FF9F5A00FF9F5A00FF000000000000000000000000000000000000
      00000000000000000000000000009F5A00FFD39E48FFEDC06DFFEDC06CFFEDBF
      6DFFEDC06DFFD39E48FF9F5A00FF000000000000000000000000000000000000
      00000000000000000000000000009F5A00FFCF9941FFE8B861FFE8B861FFE9B8
      61FFE8B860FFD09940FF9F5A00FF000000000000000000000000000000000000
      00000000000000000000000000009F5A00FFCD9439FFE3B255FFE3B155FFE3B1
      55FFE4B255FFCD9439FF9F5A00FF000000000000000000000000000000000000
      00000000000000000000000000009F5A00FFC98E2EFFDEA744FFDDA745FFDEA7
      45FFDDA745FFC88E2EFF9F5A00FF1D25DAEF1D25DAFF1D25DAFF1D25DAFF1D25
      DAFF1D25DAFF1D25DAFF1F27DBFA9F5A00FFC58724FFD89E36FFD79D37FFD89E
      36FFD79E36FFC58824FF9F5A00FF1D25DAF5777BE9FFA7A9F0FFA8ABF0FFA8AB
      F1FFA8ABF1FF7C81EAFF2129DBFF9F5A00FFC08019FFD19325FFD19325FFD193
      25FFD29325FFC18019FF9F5A00FF1D25DAFF6469E5FF878BEBFF878AEBFF878A
      ECFF878BECFF6469E6FF1D25DAFF9F5A00FFBD7A0FFFCC8A17FFCB8A17FFCC8A
      17FFCC8B18FFBD7A10FF9F5A00FF1F27DAFF484FE1FF5D63E5FF5D63E4FF5D63
      E5FF5C62E4FF464DE1FF1D25DAF59F5A00FFB97506FFC6830AFFC7820AFFC782
      0BFFC7830AFFB97506FF9F5A00FF1F27DAFA3239DDFF3B41DFFF3B42DFFF3A42
      DFFF3A42DEFF2F37DDFF1D25DAEF9F5A00FFB77201FFC47D02FFC47D02FFC47D
      02FFC47D02FFB77201FF9F5A00FFDEA745FFDEA745FFDEA745FFDEA745FFDEA7
      45FFDEA745FFDEA745FFDEA745FFDEA745FFDEA745FFDEA745FFDEA745FFDEA7
      45FFDEA745FFDEA745FFDEA745FF000000000000000000000000000000000000
      00000000000000000000000000009F5A00FF9F5A00FF9F5A00FF9F5A00FF9F5A
      00FF9F5A00FF9F5A00FF9F5A00FF000000000000000000000000000000000000
      00000000000000000000000000009F5A00FFD49F4BFFEEC270FFEEC270FFEEC2
      70FFEEC270FFD49F4BFF9F5A00FF000000000000000000000000000000000000
      00000000000000000000000000009F5A00FFD29D47FFECBF6BFFECBF6AFFECBE
      6BFFECBF6BFFD29D47FF9F5A00FF000000000000000000000000000000000000
      00000000000000000000000000009F5A00FFD09A43FFE9BA64FFE9BA64FFEABA
      64FFE9BA63FFD09A42FF9F5A00FF000000000000000000000000000000000000
      00000000000000000000000000009F5A00FFCE973DFFE6B55BFFE6B55CFFE6B5
      5BFFE7B55BFFCF973DFF9F5A00FF000000000000000000000000000000000000
      00000000000000000000000000009F5A00FFCC9337FFE2B052FFE2AF52FFE2AF
      52FFE3B052FFCC9337FF9F5A00FF000000000000000000000000000000000000
      00000000000000000000000000009F5A00FFCA8F30FFDFA948FFDFA948FFDFA9
      48FFDEA948FFC98F30FF9F5A00FF000000000000000000000000000000000000
      00000000000000000000000000009F5A00FFC78B29FFDBA33DFFDAA23EFFDBA3
      3EFFDAA33EFFC68B29FF9F5A00FF000000000000000000000000000000000000
      00000000000000000000000000009F5A00FFC48522FFD69B33FFD69B33FFD69B
      32FFD69C32FFC48621FF9F5A00FF000000000000000000000000000000000000
      00000000000000000000000000009F5A00FFC1811BFFD29528FFD29528FFD295
      28FFD39528FFC2811BFF9F5A00FF1D25DAEF1D25DAFF1D25DAFF1D25DAFF1D25
      DAFF1D25DAFF1D25DAFF1F27DBFA9F5A00FFBF7D14FFCF8F1EFFCE8F1EFFCF8F
      1EFFCF8F1EFFBF7D14FF9F5A00FF1D25DAF5777BE9FFA7A9F0FFA8ABF0FFA8AB
      F1FFA8ABF1FF7C81EAFF2129DBFF9F5A00FFBC790DFFCA8814FFCA8814FFCB88
      14FFCB8915FFBC790EFF9F5A00FF1D25DAFF6469E5FF878BEBFF878AEBFF878A
      ECFF878BECFF6469E6FF1D25DAFF9F5A00FFBA7608FFC7840CFFC8830DFFC883
      0DFFC8840CFFBA7608FF9F5A00FF1F27DAFF484FE1FF5D63E5FF5D63E4FF5D63
      E5FF5C62E4FF464DE1FF1D25DAF59F5A00FFB87303FFC58005FFC57F05FFC57F
      06FFC58005FFB87303FF9F5A00FF1F27DAFA3239DDFF3B41DFFF3B42DFFF3A42
      DFFF3A42DEFF2F37DDFF1D25DAEF9F5A00FFB77100FFC37C00FFC37C00FFC37C
      00FFC37C00FFB77100FF9F5A00FFDEA745FFDEA745FFDEA745FFDEA745FFDEA7
      45FFDEA745FFDEA745FFDEA745FFDEA745FFDEA745FFDEA745FFDEA745FFDEA7
      45FFDEA745FFDEA745FFDEA745FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001D25DAEF3D44DFFF4F55E2FF4F55E2FF4F55
      E2FF4F55E2FF3D44DFFF1D25DAF4000000000000000000000000000000000000
      00000000000000000000000000001D25DAEF7D81EAFFB3B5F3FFB5B7F3FFB5B7
      F3FFB5B7F3FF8387EBFF2129DBFF000000000000000000000000000000000000
      00000000000000000000000000001D25DAEF797DE9FFACAEF1FFAEB1F1FFAEB1
      F2FFAEB1F2FF8186EBFF232BDBFF000000000000000000000000000000000000
      00000000000000000000000000001D25DAFA7579E8FFA2A4EFFFA2A5EFFFA2A5
      F0FFA2A5F0FF777CE9FF1F27DAFF000000000000000000000000000000000000
      00000000000000000000000000001D25DAFF696EE6FF8F92ECFF8F92ECFF8F92
      EDFF8F92EDFF696EE7FF1D25DAFF000000000000000000000000000000000000
      00000000000000000000000000001D25DAFF5E64E4FF7E83EAFF7E82EAFF7E82
      EAFF7E83EBFF5E64E5FF1D25DAFF000000000000000000000000000000000000
      00000000000000000000000000001E26DAFF4E54E2FF676CE6FF676CE5FF676C
      E6FF666BE6FF4D53E2FF1D25DAFA000000000000000000000000000000000000
      00000000000000000000000000001F27DAFF4249E0FF5359E3FF535AE3FF535A
      E3FF5259E2FF3F46E0FF1D25DAEF000000000000000000000000000000000000
      00000000000000000000000000001F27DAFF363DDEFF4147E0FF4148E0FF4148
      E0FF4048DFFF333BDDFF1D25DAEF000000000000000000000000000000000000
      00000000000000000000000000001E26DAF42D34DCFF343BDDFF343BDEFF333B
      DDFF333BDDFF2B33DCFF1D25DAEF000000000000000000000000000000000000
      0000000000000000000000000000DEA745FFDEA745FFDEA745FFDEA745FFDEA7
      45FFDEA745FFDEA745FFDEA745FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001D25DAEF3D44DFFF4F55E2FF4F55E2FF4F55
      E2FF4F55E2FF3D44DFFF1D25DAF4000000000000000000000000000000000000
      00000000000000000000000000001D25DAEF7D81EAFFB3B5F3FFB5B7F3FFB5B7
      F3FFB5B7F3FF8387EBFF2129DBFF000000000000000000000000000000000000
      00000000000000000000000000001D25DAEF797DE9FFACAEF1FFAEB1F1FFAEB1
      F2FFAEB1F2FF8186EBFF232BDBFF000000000000000000000000000000000000
      00000000000000000000000000001D25DAFA7579E8FFA2A4EFFFA2A5EFFFA2A5
      F0FFA2A5F0FF777CE9FF1F27DAFF000000000000000000000000000000000000
      00000000000000000000000000001D25DAFF696EE6FF8F92ECFF8F92ECFF8F92
      EDFF8F92EDFF696EE7FF1D25DAFF000000000000000000000000000000000000
      00000000000000000000000000001D25DAFF5E64E4FF7E83EAFF7E82EAFF7E82
      EAFF7E83EBFF5E64E5FF1D25DAFF9F5A00FF9F5A00FF9F5A00FF9F5A00FF9F5A
      00FF9F5A00FF9F5A00FF9F5A00FF1E26DAFF4E54E2FF676CE6FF676CE5FF676C
      E6FF666BE6FF4D53E2FF1D25DAFA9F5A00FFCE973DFFE6B55BFFE6B55BFFE6B5
      5BFFE6B55BFFCF973DFF9F5A00FF1F27DAFF4249E0FF5359E3FF535AE3FF535A
      E3FF5259E2FF3F46E0FF1D25DAEF9F5A00FFC78B29FFDBA33DFFDAA23EFFDBA3
      3EFFDAA33EFFC78B29FF9F5A00FF1F27DAFF363DDEFF4147E0FF4148E0FF4148
      E0FF4048DFFF333BDDFF1D25DAEF9F5A00FFBF7D14FFCF8F1EFFCE8F1EFFCF8F
      1EFFCF8F1FFFBF7D15FF9F5A00FF1E26DAF42D34DCFF343BDDFF343BDEFF333B
      DDFF333BDDFF2B33DCFF1D25DAEF9F5A00FFB87404FFC58006FFC68006FFC680
      07FFC68006FFB87404FF9F5A00FFDEA745FFDEA745FFDEA745FFDEA745FFDEA7
      45FFDEA745FFDEA745FFDEA745FFDEA745FFDEA745FFDEA745FFDEA745FFDEA7
      45FFDEA745FFDEA745FFDEA745FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001D25DAEF3D44DFFF4F55E2FF4F55E2FF4F55
      E2FF4F55E2FF3D44DFFF1D25DAF49F5A00FF9F5A00FF9F5A00FF9F5A00FF9F5A
      00FF9F5A00FF9F5A00FF9F5A00FF1D25DAEF7D81EAFFB3B5F3FFB5B7F3FFB5B7
      F3FFB5B7F3FF8387EBFF2129DBFF9F5A00FFD39E48FFEDC06DFFEDC06CFFEDBF
      6DFFEDC06DFFD39E48FF9F5A00FF1D25DAEF797DE9FFACAEF1FFAEB1F1FFAEB1
      F2FFAEB1F2FF8186EBFF232BDBFF9F5A00FFCF9941FFE8B861FFE8B861FFE9B8
      61FFE8B860FFD09940FF9F5A00FF1D25DAFA7579E8FFA2A4EFFFA2A5EFFFA2A5
      F0FFA2A5F0FF777CE9FF1F27DAFF9F5A00FFCD9439FFE3B255FFE3B155FFE3B1
      55FFE4B255FFCD9439FF9F5A00FF1D25DAFF696EE6FF8F92ECFF8F92ECFF8F92
      EDFF8F92EDFF696EE7FF1D25DAFF9F5A00FFC98E2EFFDEA744FFDDA745FFDEA7
      45FFDDA745FFC88E2EFF9F5A00FF1D25DAFF5E64E4FF7E83EAFF7E82EAFF7E82
      EAFF7E83EBFF5E64E5FF1D25DAFF9F5A00FFC58724FFD89E36FFD79D37FFD89E
      36FFD79E36FFC58824FF9F5A00FF1E26DAFF4E54E2FF676CE6FF676CE5FF676C
      E6FF666BE6FF4D53E2FF1D25DAFA9F5A00FFC08019FFD19325FFD19325FFD193
      25FFD29325FFC18019FF9F5A00FF1F27DAFF4249E0FF5359E3FF535AE3FF535A
      E3FF5259E2FF3F46E0FF1D25DAEF9F5A00FFBD7A0FFFCC8A17FFCB8A17FFCC8A
      17FFCC8B18FFBD7A10FF9F5A00FF1F27DAFF363DDEFF4147E0FF4148E0FF4148
      E0FF4048DFFF333BDDFF1D25DAEF9F5A00FFB97506FFC6830AFFC7820AFFC782
      0BFFC7830AFFB97506FF9F5A00FF1E26DAF42D34DCFF343BDDFF343BDEFF333B
      DDFF333BDDFF2B33DCFF1D25DAEF9F5A00FFB77201FFC47D02FFC47D02FFC47D
      02FFC47D02FFB77201FF9F5A00FFDEA745FFDEA745FFDEA745FFDEA745FFDEA7
      45FFDEA745FFDEA745FFDEA745FFDEA745FFDEA745FFDEA745FFDEA745FFDEA7
      45FFDEA745FFDEA745FFDEA745FF000000000000000000000000000000000000
      00000000000000000000000000009F5A00FF9F5A00FF9F5A00FF9F5A00FF9F5A
      00FF9F5A00FF9F5A00FF9F5A00FF000000000000000000000000000000000000
      00000000000000000000000000009F5A00FFD49F4BFFEEC270FFEEC270FFEEC2
      70FFEEC270FFD49F4BFF9F5A00FF000000000000000000000000000000000000
      00000000000000000000000000009F5A00FFD29D47FFECBF6BFFECBF6AFFECBE
      6BFFECBF6BFFD29D47FF9F5A00FF000000000000000000000000000000000000
      00000000000000000000000000009F5A00FFD09A43FFE9BA64FFE9BA64FFEABA
      64FFE9BA63FFD09A42FF9F5A00FF000000000000000000000000000000000000
      00000000000000000000000000009F5A00FFCE973DFFE6B55BFFE6B55CFFE6B5
      5BFFE7B55BFFCF973DFF9F5A00FF1D25DAEF3D44DFFF4F55E2FF4F55E2FF4F55
      E2FF4F55E2FF3D44DFFF1D25DAF49F5A00FFCC9337FFE2B052FFE2AF52FFE2AF
      52FFE3B052FFCC9337FF9F5A00FF1D25DAEF7D81EAFFB3B5F3FFB5B7F3FFB5B7
      F3FFB5B7F3FF8387EBFF2129DBFF9F5A00FFCA8F30FFDFA948FFDFA948FFDFA9
      48FFDEA948FFC98F30FF9F5A00FF1D25DAEF797DE9FFACAEF1FFAEB1F1FFAEB1
      F2FFAEB1F2FF8186EBFF232BDBFF9F5A00FFC78B29FFDBA33DFFDAA23EFFDBA3
      3EFFDAA33EFFC68B29FF9F5A00FF1D25DAFA7579E8FFA2A4EFFFA2A5EFFFA2A5
      F0FFA2A5F0FF777CE9FF1F27DAFF9F5A00FFC48522FFD69B33FFD69B33FFD69B
      32FFD69C32FFC48621FF9F5A00FF1D25DAFF696EE6FF8F92ECFF8F92ECFF8F92
      EDFF8F92EDFF696EE7FF1D25DAFF9F5A00FFC1811BFFD29528FFD29528FFD295
      28FFD39528FFC2811BFF9F5A00FF1D25DAFF5E64E4FF7E83EAFF7E82EAFF7E82
      EAFF7E83EBFF5E64E5FF1D25DAFF9F5A00FFBF7D14FFCF8F1EFFCE8F1EFFCF8F
      1EFFCF8F1EFFBF7D14FF9F5A00FF1E26DAFF4E54E2FF676CE6FF676CE5FF676C
      E6FF666BE6FF4D53E2FF1D25DAFA9F5A00FFBC790DFFCA8814FFCA8814FFCB88
      14FFCB8915FFBC790EFF9F5A00FF1F27DAFF4249E0FF5359E3FF535AE3FF535A
      E3FF5259E2FF3F46E0FF1D25DAEF9F5A00FFBA7608FFC7840CFFC8830DFFC883
      0DFFC8840CFFBA7608FF9F5A00FF1F27DAFF363DDEFF4147E0FF4148E0FF4148
      E0FF4048DFFF333BDDFF1D25DAEF9F5A00FFB87303FFC58005FFC57F05FFC57F
      06FFC58005FFB87303FF9F5A00FF1E26DAF42D34DCFF343BDDFF343BDEFF333B
      DDFF333BDDFF2B33DCFF1D25DAEF9F5A00FFB77100FFC37C00FFC37C00FFC37C
      00FFC37C00FFB77100FF9F5A00FFDEA745FFDEA745FFDEA745FFDEA745FFDEA7
      45FFDEA745FFDEA745FFDEA745FFDEA745FFDEA745FFDEA745FFDEA745FFDEA7
      45FFDEA745FFDEA745FFDEA745FF1D25DAEF1D25DAFF1D25DAFF1D25DAFF1D25
      DAFF1D25DAFF1D25DAFF1D25DAEF000000000000000000000000000000000000
      00000000000000000000000000001D25DAEF7D81EAFFB3B5F3FFB3B5F3FFB3B5
      F3FFB3B5F3FF7D81EAFF1E26DAFF000000000000000000000000000000000000
      00000000000000000000000000001D25DAEF7D81EAFFB3B5F3FFB6B8F3FFB6B8
      F3FFB6B8F3FF868AECFF232BDBFF000000000000000000000000000000000000
      00000000000000000000000000001D25DAEF7C80E9FFAFB2F2FFB2B5F2FFB2B5
      F3FFB2B5F3FF8489EBFF232BDBFF000000000000000000000000000000000000
      00000000000000000000000000001D25DAEF7478E8FFA5A7F0FFA7AAF0FFA7AA
      F1FFA7AAF1FF7C81EAFF232BDBFF000000000000000000000000000000000000
      00000000000000000000000000001D25DAFF757AE8FFA0A3EFFFA0A3EFFFA0A3
      F0FFA0A3F0FF757AE8FF1D25DAFF000000000000000000000000000000000000
      00000000000000000000000000001D25DAFF6C70E7FF9396EDFF9396EDFF9396
      EEFF9396EDFF6C70E7FF1D25DAFF000000000000000000000000000000000000
      00000000000000000000000000001D25DAFF6369E5FF878AEBFF878AEBFF878A
      ECFF878AECFF6369E6FF1D25DAFF000000000000000000000000000000000000
      00000000000000000000000000001D25DAFF5B61E4FF7A7FE9FF7A7EE9FF7A7E
      E9FF7A7FEAFF5B61E5FF1D25DAFF000000000000000000000000000000000000
      00000000000000000000000000001D25DAFF5056E2FF6A6FE6FF6A6FE6FF6A6F
      E7FF6A6FE7FF5056E3FF1D25DAFF000000000000000000000000000000000000
      00000000000000000000000000002028DAFF4B51E1FF6065E5FF6065E4FF6066
      E5FF5F64E5FF474DE1FF1D25DAEF000000000000000000000000000000000000
      00000000000000000000000000001F27DAFF3E45DFFF4D53E2FF4D54E2FF4D54
      E2FF4C53E1FF3B42DFFF1D25DAEF000000000000000000000000000000000000
      00000000000000000000000000001F27DAFF3A41DFFF474DE1FF474EE1FF474E
      E1FF464DE0FF373EDEFF1D25DAEF000000000000000000000000000000000000
      00000000000000000000000000001E26DAFF2F35DCFF363CDEFF363DDEFF353D
      DEFF353DDDFF2C34DCFF1D25DAEF000000000000000000000000000000000000
      00000000000000000000000000001E26DAEF2C33DCFF333ADDFF333ADEFF323A
      DDFF323ADDFF2A32DCFF1D25DAEF000000000000000000000000000000000000
      0000000000000000000000000000DEA745FFDEA745FFDEA745FFDEA745FFDEA7
      45FFDEA745FFDEA745FFDEA745FF000000000000000000000000000000000000
      00000000000000000000000000001D25DAEF1D25DAFF1D25DAFF1D25DAFF1D25
      DAFF1D25DAFF1D25DAFF1D25DAEF000000000000000000000000000000000000
      00000000000000000000000000001D25DAEF7D81EAFFB3B5F3FFB3B5F3FFB3B5
      F3FFB3B5F3FF7D81EAFF1E26DAFF000000000000000000000000000000000000
      00000000000000000000000000001D25DAEF7D81EAFFB3B5F3FFB6B8F3FFB6B8
      F3FFB6B8F3FF868AECFF232BDBFF000000000000000000000000000000000000
      00000000000000000000000000001D25DAEF7C80E9FFAFB2F2FFB2B5F2FFB2B5
      F3FFB2B5F3FF8489EBFF232BDBFF000000000000000000000000000000000000
      00000000000000000000000000001D25DAEF7478E8FFA5A7F0FFA7AAF0FFA7AA
      F1FFA7AAF1FF7C81EAFF232BDBFF000000000000000000000000000000000000
      00000000000000000000000000001D25DAFF757AE8FFA0A3EFFFA0A3EFFFA0A3
      F0FFA0A3F0FF757AE8FF1D25DAFF000000000000000000000000000000000000
      00000000000000000000000000001D25DAFF6C70E7FF9396EDFF9396EDFF9396
      EEFF9396EDFF6C70E7FF1D25DAFF000000000000000000000000000000000000
      00000000000000000000000000001D25DAFF6369E5FF878AEBFF878AEBFF878A
      ECFF878AECFF6369E6FF1D25DAFF000000000000000000000000000000000000
      00000000000000000000000000001D25DAFF5B61E4FF7A7FE9FF7A7EE9FF7A7E
      E9FF7A7FEAFF5B61E5FF1D25DAFF000000000000000000000000000000000000
      00000000000000000000000000001D25DAFF5056E2FF6A6FE6FF6A6FE6FF6A6F
      E7FF6A6FE7FF5056E3FF1D25DAFF000000000000000000000000000000000000
      00000000000000000000000000002028DAFF4B51E1FF6065E5FF6065E4FF6066
      E5FF5F64E5FF474DE1FF1D25DAEF9F5A00FF9F5A00FF9F5A00FF9F5A00FF9F5A
      00FF9F5A00FF9F5A00FF9F5A00FF1F27DAFF3E45DFFF4D53E2FF4D54E2FF4D54
      E2FF4C53E1FF3B42DFFF1D25DAEF9F5A00FFCE973DFFE6B55BFFE6B55BFFE6B5
      5BFFE6B55BFFCF973DFF9F5A00FF1F27DAFF3A41DFFF474DE1FF474EE1FF474E
      E1FF464DE0FF373EDEFF1D25DAEF9F5A00FFC78B29FFDBA33DFFDAA23EFFDBA3
      3EFFDAA33EFFC78B29FF9F5A00FF1E26DAFF2F35DCFF363CDEFF363DDEFF353D
      DEFF353DDDFF2C34DCFF1D25DAEF9F5A00FFBF7D14FFCF8F1EFFCE8F1EFFCF8F
      1EFFCF8F1FFFBF7D15FF9F5A00FF1E26DAEF2C33DCFF333ADDFF333ADEFF323A
      DDFF323ADDFF2A32DCFF1D25DAEF9F5A00FFB87404FFC58006FFC68006FFC680
      07FFC68006FFB87404FF9F5A00FFDEA745FFDEA745FFDEA745FFDEA745FFDEA7
      45FFDEA745FFDEA745FFDEA745FFDEA745FFDEA745FFDEA745FFDEA745FFDEA7
      45FFDEA745FFDEA745FFDEA745FF1D25DAEF1D25DAFF1D25DAFF1D25DAFF1D25
      DAFF1D25DAFF1D25DAFF1D25DAEF000000000000000000000000000000000000
      00000000000000000000000000001D25DAEF7D81EAFFB3B5F3FFB3B5F3FFB3B5
      F3FFB3B5F3FF7D81EAFF1E26DAFF000000000000000000000000000000000000
      00000000000000000000000000001D25DAEF7D81EAFFB3B5F3FFB6B8F3FFB6B8
      F3FFB6B8F3FF868AECFF232BDBFF000000000000000000000000000000000000
      00000000000000000000000000001D25DAEF7C80E9FFAFB2F2FFB2B5F2FFB2B5
      F3FFB2B5F3FF8489EBFF232BDBFF000000000000000000000000000000000000
      00000000000000000000000000001D25DAEF7478E8FFA5A7F0FFA7AAF0FFA7AA
      F1FFA7AAF1FF7C81EAFF232BDBFF000000000000000000000000000000000000
      00000000000000000000000000001D25DAFF757AE8FFA0A3EFFFA0A3EFFFA0A3
      F0FFA0A3F0FF757AE8FF1D25DAFF9F5A00FF9F5A00FF9F5A00FF9F5A00FF9F5A
      00FF9F5A00FF9F5A00FF9F5A00FF1D25DAFF6C70E7FF9396EDFF9396EDFF9396
      EEFF9396EDFF6C70E7FF1D25DAFF9F5A00FFD39E48FFEDC06DFFEDC06CFFEDBF
      6DFFEDC06DFFD39E48FF9F5A00FF1D25DAFF6369E5FF878AEBFF878AEBFF878A
      ECFF878AECFF6369E6FF1D25DAFF9F5A00FFCF9941FFE8B861FFE8B861FFE9B8
      61FFE8B860FFD09940FF9F5A00FF1D25DAFF5B61E4FF7A7FE9FF7A7EE9FF7A7E
      E9FF7A7FEAFF5B61E5FF1D25DAFF9F5A00FFCD9439FFE3B255FFE3B155FFE3B1
      55FFE4B255FFCD9439FF9F5A00FF1D25DAFF5056E2FF6A6FE6FF6A6FE6FF6A6F
      E7FF6A6FE7FF5056E3FF1D25DAFF9F5A00FFC98E2EFFDEA744FFDDA745FFDEA7
      45FFDDA745FFC88E2EFF9F5A00FF2028DAFF4B51E1FF6065E5FF6065E4FF6066
      E5FF5F64E5FF474DE1FF1D25DAEF9F5A00FFC58724FFD89E36FFD79D37FFD89E
      36FFD79E36FFC58824FF9F5A00FF1F27DAFF3E45DFFF4D53E2FF4D54E2FF4D54
      E2FF4C53E1FF3B42DFFF1D25DAEF9F5A00FFC08019FFD19325FFD19325FFD193
      25FFD29325FFC18019FF9F5A00FF1F27DAFF3A41DFFF474DE1FF474EE1FF474E
      E1FF464DE0FF373EDEFF1D25DAEF9F5A00FFBD7A0FFFCC8A17FFCB8A17FFCC8A
      17FFCC8B18FFBD7A10FF9F5A00FF1E26DAFF2F35DCFF363CDEFF363DDEFF353D
      DEFF353DDDFF2C34DCFF1D25DAEF9F5A00FFB97506FFC6830AFFC7820AFFC782
      0BFFC7830AFFB97506FF9F5A00FF1E26DAEF2C33DCFF333ADDFF333ADEFF323A
      DDFF323ADDFF2A32DCFF1D25DAEF9F5A00FFB77201FFC47D02FFC47D02FFC47D
      02FFC47D02FFB77201FF9F5A00FFDEA745FFDEA745FFDEA745FFDEA745FFDEA7
      45FFDEA745FFDEA745FFDEA745FFDEA745FFDEA745FFDEA745FFDEA745FFDEA7
      45FFDEA745FFDEA745FFDEA745FF1D25DAEF1D25DAFF1D25DAFF1D25DAFF1D25
      DAFF1D25DAFF1D25DAFF1D25DAEF9F5A00FF9F5A00FF9F5A00FF9F5A00FF9F5A
      00FF9F5A00FF9F5A00FF9F5A00FF1D25DAEF7D81EAFFB3B5F3FFB3B5F3FFB3B5
      F3FFB3B5F3FF7D81EAFF1E26DAFF9F5A00FFD49F4BFFEEC270FFEEC270FFEEC2
      70FFEEC270FFD49F4BFF9F5A00FF1D25DAEF7D81EAFFB3B5F3FFB6B8F3FFB6B8
      F3FFB6B8F3FF868AECFF232BDBFF9F5A00FFD29D47FFECBF6BFFECBF6AFFECBE
      6BFFECBF6BFFD29D47FF9F5A00FF1D25DAEF7C80E9FFAFB2F2FFB2B5F2FFB2B5
      F3FFB2B5F3FF8489EBFF232BDBFF9F5A00FFD09A43FFE9BA64FFE9BA64FFEABA
      64FFE9BA63FFD09A42FF9F5A00FF1D25DAEF7478E8FFA5A7F0FFA7AAF0FFA7AA
      F1FFA7AAF1FF7C81EAFF232BDBFF9F5A00FFCE973DFFE6B55BFFE6B55CFFE6B5
      5BFFE7B55BFFCF973DFF9F5A00FF1D25DAFF757AE8FFA0A3EFFFA0A3EFFFA0A3
      F0FFA0A3F0FF757AE8FF1D25DAFF9F5A00FFCC9337FFE2B052FFE2AF52FFE2AF
      52FFE3B052FFCC9337FF9F5A00FF1D25DAFF6C70E7FF9396EDFF9396EDFF9396
      EEFF9396EDFF6C70E7FF1D25DAFF9F5A00FFCA8F30FFDFA948FFDFA948FFDFA9
      48FFDEA948FFC98F30FF9F5A00FF1D25DAFF6369E5FF878AEBFF878AEBFF878A
      ECFF878AECFF6369E6FF1D25DAFF9F5A00FFC78B29FFDBA33DFFDAA23EFFDBA3
      3EFFDAA33EFFC68B29FF9F5A00FF1D25DAFF5B61E4FF7A7FE9FF7A7EE9FF7A7E
      E9FF7A7FEAFF5B61E5FF1D25DAFF9F5A00FFC48522FFD69B33FFD69B33FFD69B
      32FFD69C32FFC48621FF9F5A00FF1D25DAFF5056E2FF6A6FE6FF6A6FE6FF6A6F
      E7FF6A6FE7FF5056E3FF1D25DAFF9F5A00FFC1811BFFD29528FFD29528FFD295
      28FFD39528FFC2811BFF9F5A00FF2028DAFF4B51E1FF6065E5FF6065E4FF6066
      E5FF5F64E5FF474DE1FF1D25DAEF9F5A00FFBF7D14FFCF8F1EFFCE8F1EFFCF8F
      1EFFCF8F1EFFBF7D14FF9F5A00FF1F27DAFF3E45DFFF4D53E2FF4D54E2FF4D54
      E2FF4C53E1FF3B42DFFF1D25DAEF9F5A00FFBC790DFFCA8814FFCA8814FFCB88
      14FFCB8915FFBC790EFF9F5A00FF1F27DAFF3A41DFFF474DE1FF474EE1FF474E
      E1FF464DE0FF373EDEFF1D25DAEF9F5A00FFBA7608FFC7840CFFC8830DFFC883
      0DFFC8840CFFBA7608FF9F5A00FF1E26DAFF2F35DCFF363CDEFF363DDEFF353D
      DEFF353DDDFF2C34DCFF1D25DAEF9F5A00FFB87303FFC58005FFC57F05FFC57F
      06FFC58005FFB87303FF9F5A00FF1E26DAEF2C33DCFF333ADDFF333ADEFF323A
      DDFF323ADDFF2A32DCFF1D25DAEF9F5A00FFB77100FFC37C00FFC37C00FFC37C
      00FFC37C00FFB77100FF9F5A00FFDEA745FFDEA745FFDEA745FFDEA745FFDEA7
      45FFDEA745FFDEA745FFDEA745FFDEA745FFDEA745FFDEA745FFDEA745FFDEA7
      45FFDEA745FFDEA745FFDEA745FF00000000000000000000000000000000E3D8
      C6E3EFE8DBFFEFE8DBFFEFE8DBFFEFE8DBFFEFE8DBFFEFE8DBFFE3D8C6D30000
      000000000000000000000000000000000000000000000000000000000000E2D6
      C1FFF8F3EAFFF8F3EAFFF8F3EAFFF8F3EAFFF8F3EAFFF8F3EAFFE2D6C1FF0000
      000000000000000000000000000000000000000000000000000000000000DED0
      B8FFF5EDE4FFF5EDE4FFF5EDE4FFF5EDE4FFF5EDE4FFF5EDE4FFDED0B8FF0000
      000000000000000000000000000000000000000000000000000000000000D5C4
      A4FFEFE4D8FFEFE4D8FFEFE4D8FFEFE4D8FFEFE4D8FFEFE4D8FFD5C4A4FF0000
      000000000000000000000000000000000000000000000000000000000000D0BD
      98FFECDFD1FFECDFD1FFECDFD1FFECDFD1FFECDFD1FFECDFD1FFD0BD98FF0000
      0000000000000000000000000000CAC3C5E0B0AFB4D9D8A859D8C9924BE4C4AB
      7FFFDFCAADFFDFCAADFFDFCAADFFDFCAADFFDFCAADFFDFCAADFFC4AB7FFFC992
      4BF0D8A859DFB0AFB4D5CAC2C4E0DEDCDBFFFFFFFFFFE8C070FFE0AC54FFB99D
      6BFFD7BD91FFD7BD91FFD7BD91FFD7BD91FFD7BD91FFD7BD91FFB99D6BFFE0AC
      54FFE8C070FFFFFFFFFFE3DFDFFFD2D0D0FFFCFFFFFFD7A55CFFEDC977FFE9BF
      68FFE9BF68FFE9BF68FFE9BF68FFE9BF68FFE9BF68FFE9BF68FFE9BF68FFEDC9
      77FFD7A55CFFFCFFFFFFD4D1D0FFCDC8C9FFF8FCFFFFCD9753FFEEC670FFEEC7
      71FFEEC771FFEEC771FFEEC771FFEEC771FFEEC771FFEEC771FFEEC771FFEEC6
      70FFCD9753FFF8FCFFFFCECBCCFFBCB9BAFFEEF2F5FFBA7B3EFFE1A942FFE1A8
      42FFE1A842FFE1A842FFE1A842FFE1A842FFE1A842FFE1A842FFE1A842FFE1A9
      42FFBA7B3EFFEEF2F5FFBFBBBCFFB7B3B3FFE6E8E9FFD6C5AFFFBC6B10FFBB6A
      0FFFBB6A0FFFBB6A0FFFBB6A0FFFBB6A0FFFBB6A0FFFBB6A0FFFBB6A0FFFBC6B
      10FFD6C5AFFFE6E8E9FFB8B5B5FFAAA7A7FFD9D7D7FFD9D7D7FFD9D7D7FFD9D7
      D7FFD9D7D7FFD9D7D7FFD9D7D7FFD9D7D7FFD9D7D7FFD9D7D7FFD9D7D7FFD9D7
      D7FF8AC3E9FF004BFBFFABA8A8FFA49FA1FFD1CFCEFFD1CFCEFFD3D2D1FFD2D2
      D3FFD0D0D2FFD0D0D2FFD0D0D2FFD0D0D2FFD0D0D2FFD0D0D2FFD2D2D3FFD3D2
      D1FFBACAD7FF6E9BE3FFA49FA1FF958F8FFFC3C0BFFFC3C0BFFF837D84FFC6A8
      74FFE0CBAEFFE0CBAEFFE0CBAEFFE0CBAEFFE0CBAEFFE0CBAEFFC6A874FF837D
      84FFC3C0BFFFC3C0BFFF999292FF958F8FBF9C9696CB9C9696E469636AF1C4AB
      7FFFEDE1D5FFEDE1D5FFEDE1D5FFEDE1D5FFEDE1D5FFEDE1D5FFC4AB7FFF6963
      6AE99C9696EC9C9696DF999292D300000000000000000000000000000000D7C3
      9BFFECE3D6FFECE3D6FFECE3D6FFECE3D6FFECE3D6FFECE3D6FFD7C39BFF0000
      0000000000000000000000000000E5AE463DE5AB4170E8B24FACEDBE5ECEEEC2
      66F4EEC265F3EFC264F3F3CA73F3F3CB75F3EFC266F3EEC265F3EEC366F4EDBD
      5FCEEBB552ACE7AC4470E6AE463DE2A642E7E7B75BFFE5B24EFFDB931AFFDC98
      1EFFDD971EFFDD971EFFDC961AFFDD951BFFDF9920FFE09D29FFE19F2AFFE2A0
      29FFE0AA43FFE2AF52FFE1A742E7DB98311EDFA5479AFEFEFAFFFFFFFFFFF6F4
      F3FFF2F3F4FFEEE9DFFFE7D5AAFFE2CFA1FFE6E2D7FFD9C9A8FFCFB278FFCAB7
      96FFD3C4ADFFDDA0439ADE99331E0000000000000000DFA54FD5FBEEC3FFFAE8
      B9FFF7E8C6FFF5EEE0FFF3F0EAFFF1EDE9FFEEE9DBFFDAA964FFD6A259FFE0AB
      5DFFDEA042D600000000000000000000000000000000D4801211E0AB58FCF8DE
      91FFF1C55DFFF2C666FFF1C363FFF4CB6AFFE8AF44FFD9851DFFDF9331FFDF9B
      38F5D88E2A0B0000000000000000000000000000000000000000CD7D1C33E5BB
      7CFFF8DB8FFFEEC463FFEFC76CFFF2C96CFFDC9337FFD5852CFFD9983CFFD187
      2F3300000000000000000000000000000000000000000000000000000000C978
      1A4EE9C588FFF3CF76FFEFC264FFE7B358FFD17D26FFD58C33FFCE872E4E0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C87A278AEAC681FFEFC261FFDA983AFFCB7824FFCB842E8A000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DAA558FFF2C866FFD1842AFFCB7F2CFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D8A253FFF1C45FFFCE7E24FFC77A27FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D59C4EFFEEBF53FFCB7820FFC26F22FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D2994AFFECB849FFC6711BFFBE6B1FFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D09446FFE9B23EFFC06B14FFBA671DFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CD903FFFEAAF30FFBD660EFFB56217FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D0933CFFE8A527FFAD570FFFA85519C700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B46822FFB05C189AA553192B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E6AE44740000
      000000000000000000000000000000000000EABC5B9BE8B34CD4E8B34C880000
      00000000000000000000000000000000000000000000E6AE448FEBC05FFFE6AE
      4480000000000000000000000000EABC5BB9F7E4ACDFF7E3A9FFF7E3A9CFE8B3
      4CBE00000000000000000000000000000000E3A84078F6E2ACFFF4D885FFE7B4
      4DFFDD9E3B610000000000000000E6B456EEF4E19CFFF4D680FFF4D680FFDE9F
      3BE9000000000000000000000000DD9E3B80F6E2ACFFF4D785FFF4D680FFF4D6
      80FFE7B44DFFDD9E3B6400000000E3B055FFF3DE97FFF3D37CFFF3D37CFFDB9A
      39FF0000000000000000DB9839A1F6E2ACFFF3D47FFFF3D37CFFF3D37CFFF3D3
      7CFFEFCB6DFFE7B44DFFDD9E3B8DDEA74EFFF1D88DFFF1CD72FFF1CD72FFD58F
      34FF0000000000000000DA9B40CDDDA448E2DFA548FFF3D588FFF1CD72FFF1CD
      72FFDEA445FFDD9F42EAD9983BB1DDA24AFFF0D485FFEFC96CFFEFC96CFFD28B
      32FF00000000000000000000000000000000D28B32FFF2D48BFFEFC96CFFEFC9
      6CFFD28B32FF0000000000000000D79A44FFEECD78FFEDC260FFEDC260FFCB80
      2DFF00000000000000000000000000000000CB802DFFF0D080FFEDC260FFEDC2
      60FFCF852FFF0000000000000000D49542FFECCA6AFFEBBF59FFEBBF59FFC77B
      2BFF00000000000000000000000000000000C77B2BFFEFCD7BFFEBBF59FFEBBF
      59FFC77B2BFF0000000000000000CF8C3CFFE9C05AFFE9B74CFFE9B74CFFC072
      26FF00000000000000000000000000000000C07226FFEDC76FFFE9B74CFFE9B7
      4CFFC47628FF0000000000000000CC8838FFE8BA53FFE8B347FFE8B347FFBC6D
      25FF00000000000000000000000000000000BC6D25FFEBC467FFE8B347FFE8B3
      47FFC07226FF0000000000000000C68033FFE4A938FFE4A938FFE4A938FFB465
      21FFB46321FFB46321FFB46321FFB46321FFB46521FFE9BC59FFE4A938FFE4A9
      38FFB86923FF0000000000000000C47C30FFE2A531FFE2A531FFDEA94CFFDEA9
      4CFFDEA94CFFDEA94CFFDEA94CFFDEA94CFFE2B051FFE6B449FFE2A531FFE2A5
      31FFB46521FF0000000000000000B86C25F3DE9B23FFDE9B23FFDE9B23FFDE9B
      23FFDE9B23FFDE9B23FFDE9B23FFDE9B23FFDE9B23FFDE9B23FFDE9B23FFDE9B
      23FFB26020EB0000000000000000B86C25B7DD971EE8DD971EFFDD971EFFDD97
      1EFFDD971EFFDD971EFFDD971EFFDD971EFFDD971EFFDD971EFFDD971EFFDE9B
      23C0A9581B8A000000000000000000000000AF5C16A1B36016F0B36016FFB360
      16FFB36016FFB36016FFB36016FFB36016FFB36016FFB36016FFB36016F0AF5C
      16BA000000000000000000000000F9C063D3F9C46BFFEFAF4E1B000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EEB05569F6C778F1F9CB82F2000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E5A44428F8CB84FFFCD190FFFCD1
      90FFFCD190FFFCD190FFFCD190FFFCD190FFFCD190FFFCD190FFFCD190FFFCD1
      90FFFCD190FFFCD190FFFCD190FF0000000000000000F0B761FFFCCC86FF0000
      000000000000FFD189FF0000000000000000FFD088FF0000000000000000FFD4
      8FFF0000000000000000FECB7FFF0000000000000000EAAC54FFF8C57BFFFCC6
      7CFFF6C177FFFFC87EFFF7C279FFFAC479FFFFCA80FFFAC478FFFCC77CFFFCC7
      7BFFF6C177FFFCC77DFFFDC87CFF0000000000000000E2A047FFEDB86EFF0000
      000000000000EBAC5DFF0000000000000000E7A652FF0000000000000000F1B9
      6DFF0000000000000000F0BA76FF0000000000000000DE9A41FFD99847FF0000
      000000000000CF8529FF0000000000000000CF8428FF0000000000000000CD83
      29FF0000000000000000DFA65DFF0000000000000000D89138FFC2761FFFC176
      20FFC88027FFC27622FFC67C26FFC67D26FFC27723FFC87F27FFC87F27FFC479
      23FFC88027FFC0741DFFC0731DFF0000000000000000D38A2FFFB96C1BFF0000
      000000000000B66A1AFF0000000000000000B6691AFF0000000000000000B469
      17FF0000000000000000B46917FF0000000000000000CD8228FFAB5D0EFFA355
      09FFA5570AFFA5560AFFA6570AFFA6570CFFA5560AFFA6570CFFA5560BFFA557
      0BFFA6580CFFA6570CFFA6580AFF0000000000000000C57A1AFFAE620A340000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C27208FFC17102FFBE6C
      00FFB86700FFB86700FFB86700FFB86700FFB86700FFB86700FFB86700FFB867
      00FFB86700FFB86700FFB86700FF0000000000000000F5C88A85D3923BFFD398
      3FFBB96E0AC4AF5E00CEB36400CFB36400CFB36400CFAC5900CEBE721BC4D191
      3EFFD2923BFFE3B069C9FBD59F3AFBD29F01FACF9A62EEB66AD7F8C27522F8CA
      8CE6EEBE83030000000000000000000000000000000000000000FFDEB003FED0
      8EA6FBC87D1EEDB76FFFEFBE80D0CB893F10CC8B428FBE701BDBB5681617C275
      20FFD08C433C0000000000000000000000000000000000000000E0A7663AC175
      1BD7B86A1814C47823FFC67E2AE700000000B3620E01AC5F10D8AD5F10FFAD5E
      10A600000000000000000000000000000000000000000000000000000000B164
      15B6B06113FFAF6111C0AE5F1153
    }
  end
  object PopupMenuTerminy: TPopupMenu
    Images = DM.ImageList1
    OnPopup = PopupMenuTerminyPopup
    Left = 280
    Top = 292
    object MenuItem1: TMenuItem
      Caption = 'Drukuj wykaz osadzonych ...'
      ImageIndex = 4
      OnClick = MenuItem1Click
    end
    object MenuItem2: TMenuItem
      Caption = 'Drukuj starszych celi ...'
      ImageIndex = 4
      OnClick = MenuItem2Click
    end
    object MenuItem7: TMenuItem
      Caption = 'Drukuj wykaz zatrudnionych ...'
      ImageIndex = 4
      OnClick = MenuItem7Click
    end
    object MenuItem11: TMenuItem
      Caption = 'Kopiuj do schowka wykaz os.'
      ImageIndex = 32
      OnClick = MenuItem11Click
    end
    object MenuItem4: TMenuItem
      Caption = '-'
    end
    object MenuItem3: TMenuItem
      Caption = 'Filtr - brak wywiadu'
      ImageIndex = 33
      OnClick = MenuItem3Click
    end
    object MenuItem5: TMenuItem
      Caption = 'Filtr - brak akt arch.'
      ImageIndex = 33
      OnClick = MenuItem5Click
    end
    object MenuItem9: TMenuItem
      Caption = 'Filtr - zatrudnieni'
      ImageIndex = 33
      OnClick = MenuItem9Click
    end
    object MenuItem6: TMenuItem
      Caption = 'Wszyscy'
      ImageIndex = 33
      OnClick = MenuItem6Click
    end
    object MenuItem10: TMenuItem
      Caption = '-'
    end
    object MenuItem15: TMenuItem
      Caption = 'Zatrudnienie'
      object miZatZmienOpis: TMenuItem
        Caption = 'Zmień opis na aktualny.'
        OnClick = miZatZmienOpisClick
      end
      object miZatZmienOpisAll: TMenuItem
        Caption = 'Zmień opisy wszystkim zatrudnionym.'
        OnClick = miZatZmienOpisAllClick
      end
    end
    object MenuItem16: TMenuItem
      Caption = '-'
    end
    object MenuItem8: TMenuItem
      Caption = 'Koszyk'
      ImageIndex = 30
      object MenuItemDoKoszyka: TMenuItem
        Caption = 'Dodaj do koszyka:'
        ImageIndex = 35
        OnClick = MenuItemDoKoszykaClick
      end
      object MenuItem12: TMenuItem
        Caption = '-'
      end
      object MenuItem13: TMenuItem
        Caption = 'Nowy koszyk ...'
        ImageIndex = 31
        OnClick = MenuItem13Click
      end
      object MenuItem14: TMenuItem
        Caption = 'Koszyki ...'
        ImageIndex = 26
        OnClick = MenuItem14Click
      end
    end
  end
  object frDBDataSet1: TfrDBDataSet
    DataSet = ZQTerminarz
    Left = 624
    Top = 363
  end
  object frReport1: TfrReport
    Dataset = frDBDataSet1
    InitialZoom = pzDefault
    Options = [roSaveAndRestoreBookmarks]
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    DataType = dtDataSet
    Left = 624
    Top = 312
  end
  object ZQKalendarz: TZQuery
    Connection = DM.ZConnection1
    CachedUpdates = True
    ReadOnly = True
    Params = <>
    Left = 920
    Top = 168
  end
  object DSKalendarz: TDataSource
    DataSet = ZQKalendarz
    Left = 996
    Top = 168
  end
  object ZQZatReport: TZQuery
    Connection = DM.ZConnection1
    SQL.Strings = (
      'SELECT'
      'os.IDO,'
      'CONCAT_WS('' '',os.NAZWISKO, os.IMIE) as NazwiskoImie,'
      'os.OJCIEC,'
      'os.KLASYF,'
      'os.POC,'
      'inf.KoniecKary,'
      'inf.Arch,'
      'inf.Wywiad,'
      'inf.Zatrudnienie,'
      'inf.twpz,'
      'inf.GR,'
      'typ.ID,'
      'zat.status_zatrudnienia,'
      'zat.data_dodania,'
      'zat.zat_od,'
      'zat.zat_do,'
      'zat.powod_wycofania,'
      'sta.nazwa,'
      'sta.system,'
      'sta.forma'
      'FROM osadzeni as os'
      'LEFT OUTER JOIN os_info as inf ON (os.IDO = inf.IDO)'
      'INNER JOIN typ_cel as typ ON (os.POC = typ.POC)'
      ''
      'LEFT OUTER JOIN zat_zatrudnieni as zat ON (zat.IDO = os.IDO)'
      'LEFT OUTER JOIN zat_stanowiska as sta ON (zat.id_stanowiska = sta.id)'
      ''
      'WHERE typ.Wychowawca = :wych'
      ''
      'ORDER BY typ.ID, os.IDO, zat.ID'
    )
    Params = <    
      item
        DataType = ftUnknown
        Name = 'wych'
        ParamType = ptUnknown
      end>
    Left = 712
    Top = 424
    ParamData = <    
      item
        DataType = ftUnknown
        Name = 'wych'
        ParamType = ptUnknown
      end>
  end
  object frDBDataSet2: TfrDBDataSet
    DataSet = ZQZatReport
    Left = 624
    Top = 424
  end
  object PopupMenuKalendarz: TPopupMenu
    Images = DM.ImageList1
    Left = 920
    Top = 248
    object MenuDrukujWykazKal: TMenuItem
      Caption = 'Drukuj wykaz ...'
      ImageIndex = 4
      OnClick = MenuDrukujWykazKalClick
    end
    object MenuWykazDoSchowkaKal: TMenuItem
      Caption = 'Kopiuj do schowka'
      ImageIndex = 32
      OnClick = MenuWykazDoSchowkaKalClick
    end
  end
  object frDBDataSet3: TfrDBDataSet
    DataSet = ZQKalendarz
    Left = 920
    Top = 320
  end
end
