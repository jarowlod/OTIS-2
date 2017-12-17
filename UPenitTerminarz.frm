object PenitTerminarz: TPenitTerminarz
  Left = 180
  Height = 743
  Top = 178
  Width = 1182
  Caption = 'Terminarz Penitencjarny'
  ClientHeight = 743
  ClientWidth = 1182
  OnClose = FormClose
  OnCreate = FormCreate
  Position = poScreenCenter
  LCLVersion = '6.3'
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
    ActivePage = TabSheet1
    Align = alClient
    Images = DM.ImageList1
    TabHeight = 25
    TabIndex = 0
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Kanlendarz'
      ClientHeight = 660
      ClientWidth = 1174
      ImageIndex = 16
      OnShow = TabSheet1Show
      object YearPlanner1: TYearPlanner
        Left = 0
        Height = 660
        Top = 0
        Width = 798
        Align = alClient
        DayFont.Color = 3355443
        DayFont.Height = -11
        DayFont.Name = 'Arial'
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
        StretchImages = True
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
          Height = 660
          Top = 0
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
          PopupMenu = PopupMenu2
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
      ClientHeight = 935
      ClientWidth = 1912
      ImageIndex = 24
      object Panel2: TPanel
        Left = 0
        Height = 660
        Top = 0
        Width = 456
        Align = alClient
        BevelOuter = bvNone
        ClientHeight = 660
        ClientWidth = 456
        TabOrder = 0
        object Panel4: TPanel
          Left = 0
          Height = 50
          Top = 610
          Width = 456
          Align = alBottom
          ClientHeight = 50
          ClientWidth = 456
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
            Left = 168
            Height = 15
            Top = 6
            Width = 38
            Caption = 'lblProg'
            Font.Color = clBlue
            ParentColor = False
            ParentFont = False
          end
        end
        object RxDBGrid1: TRxDBGrid
          Left = 0
          Height = 610
          Top = 0
          Width = 456
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
              Filter.AllValue = '(All values)'
              Filter.EmptyFont.Style = [fsItalic]
              Filter.ItemIndex = -1
              Footers = <>
            end          
            item
              Title.Alignment = taCenter
              Title.Orientation = toHorizontal
              Title.Caption = 'Zatrudnienie'
              Width = 150
              FieldName = 'Zatrudnienie'
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
              Font.Color = clMaroon
              Title.Alignment = taCenter
              Title.Orientation = toHorizontal
              Title.Caption = 'URODZ'
              Width = 70
              FieldName = 'URODZ'
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
              Font.Color = clMaroon
              Title.Alignment = taCenter
              Title.Orientation = toHorizontal
              Title.Caption = 'PRZYJ'
              Width = 70
              FieldName = 'PRZYJ'
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
              Title.Caption = 'STATUS'
              Width = 50
              FieldName = 'STATUS'
              EditButtons = <>
              Filter.DropDownRows = 0
              Filter.EmptyValue = '(Empty)'
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
          PopupMenu = PopupMenu1
          ReadOnly = True
          ShowHint = True
          TabOrder = 1
          TitleStyle = tsNative
        end
      end
      object Panel3: TPanel
        Left = 461
        Height = 660
        Top = 0
        Width = 713
        Align = alRight
        BevelOuter = bvNone
        Color = clForm
        ParentColor = False
        TabOrder = 1
      end
      object Splitter1: TSplitter
        Left = 456
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
      'osadzeni.IDO,'
      'NAZWISKO,'
      'IMIE,'
      'CONCAT_WS('' '',NAZWISKO, IMIE) as NazwiskoImie,'
      'OJCIEC,'
      'URODZ,'
      'PRZYJ,'
      'KLASYF,'
      'osadzeni.POC,'
      'STATUS,'
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
      'typ_cel.ID'
      'FROM osadzeni'
      'LEFT OUTER JOIN os_info ON (osadzeni.IDO = os_info.IDO)'
      'INNER JOIN typ_cel ON (osadzeni.POC = typ_cel.POC)'
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
  object PopupMenu1: TPopupMenu
    Images = DM.ImageList1
    OnPopup = PopupMenu1Popup
    Left = 280
    Top = 292
    object MenuItem1: TMenuItem
      Caption = 'Drukuj wykaz osadzonych ...'
      Bitmap.Data = {
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
      ImageIndex = 4
      OnClick = MenuItem1Click
    end
    object MenuItem2: TMenuItem
      Caption = 'Drukuj starszych celi ...'
      Bitmap.Data = {
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
      ImageIndex = 4
      OnClick = MenuItem2Click
    end
    object MenuItem7: TMenuItem
      Caption = 'Drukuj wykaz zatrudnionych ...'
      Bitmap.Data = {
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
      ImageIndex = 4
      OnClick = MenuItem7Click
    end
    object MenuItem11: TMenuItem
      Caption = 'Kopiuj do schowka wykaz os.'
      Bitmap.Data = {
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
      ImageIndex = 32
      OnClick = MenuItem11Click
    end
    object MenuItem4: TMenuItem
      Caption = '-'
    end
    object MenuItem3: TMenuItem
      Caption = 'Filtr - brak wywiadu'
      Bitmap.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000064000000640000000000000000000000000000000000
        000000000000000000000000000000000000B46822FFB05C189AA553192B0000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000D0933CFFE8A527FFAD570FFFA855
        19C7000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000CD903FFFEAAF30FFBD660EFFB562
        17FF000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000D09446FFE9B23EFFC06B14FFBA67
        1DFF000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000D2994AFFECB849FFC6711BFFBE6B
        1FFF000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000D59C4EFFEEBF53FFCB7820FFC26F
        22FF000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000D8A253FFF1C45FFFCE7E24FFC77A
        27FF000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000DAA558FFF2C866FFD1842AFFCB7F
        2CFF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000C87A278AEAC681FFEFC261FFDA983AFFCB78
        24FFCB842E8A0000000000000000000000000000000000000000000000000000
        00000000000000000000C9781A4EE9C588FFF3CF76FFEFC264FFE7B358FFD17D
        26FFD58C33FFCE872E4E00000000000000000000000000000000000000000000
        000000000000CD7D1C33E5BB7CFFF8DB8FFFEEC463FFEFC76CFFF2C96CFFDC93
        37FFD5852CFFD9983CFFD1872F33000000000000000000000000000000000000
        0000D4801211E0AB58FCF8DE91FFF1C55DFFF2C666FFF1C363FFF4CB6AFFE8AF
        44FFD9851DFFDF9331FFDF9B38F5D88E2A0B0000000000000000000000000000
        0000DFA54FD5FBEEC3FFFAE8B9FFF7E8C6FFF5EEE0FFF3F0EAFFF1EDE9FFEEE9
        DBFFDAA964FFD6A259FFE0AB5DFFDEA042D60000000000000000DB98311EDFA5
        479AFEFEFAFFFFFFFFFFF6F4F3FFF2F3F4FFEEE9DFFFE7D5AAFFE2CFA1FFE6E2
        D7FFD9C9A8FFCFB278FFCAB796FFD3C4ADFFDDA0439ADE99331EE2A642E7E7B7
        5BFFE5B24EFFDB931AFFDC981EFFDD971EFFDD971EFFDC961AFFDD951BFFDF99
        20FFE09D29FFE19F2AFFE2A029FFE0AA43FFE2AF52FFE1A742E7E5AE463DE5AB
        4170E8B24FACEDBE5ECEEEC266F4EEC265F3EFC264F3F3CA73F3F3CB75F3EFC2
        66F3EEC265F3EEC366F4EDBD5FCEEBB552ACE7AC4470E6AE463D
      }
      ImageIndex = 33
      OnClick = MenuItem3Click
    end
    object MenuItem5: TMenuItem
      Caption = 'Filtr - brak akt arch.'
      Bitmap.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000064000000640000000000000000000000000000000000
        000000000000000000000000000000000000B46822FFB05C189AA553192B0000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000D0933CFFE8A527FFAD570FFFA855
        19C7000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000CD903FFFEAAF30FFBD660EFFB562
        17FF000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000D09446FFE9B23EFFC06B14FFBA67
        1DFF000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000D2994AFFECB849FFC6711BFFBE6B
        1FFF000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000D59C4EFFEEBF53FFCB7820FFC26F
        22FF000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000D8A253FFF1C45FFFCE7E24FFC77A
        27FF000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000DAA558FFF2C866FFD1842AFFCB7F
        2CFF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000C87A278AEAC681FFEFC261FFDA983AFFCB78
        24FFCB842E8A0000000000000000000000000000000000000000000000000000
        00000000000000000000C9781A4EE9C588FFF3CF76FFEFC264FFE7B358FFD17D
        26FFD58C33FFCE872E4E00000000000000000000000000000000000000000000
        000000000000CD7D1C33E5BB7CFFF8DB8FFFEEC463FFEFC76CFFF2C96CFFDC93
        37FFD5852CFFD9983CFFD1872F33000000000000000000000000000000000000
        0000D4801211E0AB58FCF8DE91FFF1C55DFFF2C666FFF1C363FFF4CB6AFFE8AF
        44FFD9851DFFDF9331FFDF9B38F5D88E2A0B0000000000000000000000000000
        0000DFA54FD5FBEEC3FFFAE8B9FFF7E8C6FFF5EEE0FFF3F0EAFFF1EDE9FFEEE9
        DBFFDAA964FFD6A259FFE0AB5DFFDEA042D60000000000000000DB98311EDFA5
        479AFEFEFAFFFFFFFFFFF6F4F3FFF2F3F4FFEEE9DFFFE7D5AAFFE2CFA1FFE6E2
        D7FFD9C9A8FFCFB278FFCAB796FFD3C4ADFFDDA0439ADE99331EE2A642E7E7B7
        5BFFE5B24EFFDB931AFFDC981EFFDD971EFFDD971EFFDC961AFFDD951BFFDF99
        20FFE09D29FFE19F2AFFE2A029FFE0AA43FFE2AF52FFE1A742E7E5AE463DE5AB
        4170E8B24FACEDBE5ECEEEC266F4EEC265F3EFC264F3F3CA73F3F3CB75F3EFC2
        66F3EEC265F3EEC366F4EDBD5FCEEBB552ACE7AC4470E6AE463D
      }
      ImageIndex = 33
      OnClick = MenuItem5Click
    end
    object MenuItem6: TMenuItem
      Caption = 'Wszyscy'
      Bitmap.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000064000000640000000000000000000000000000000000
        000000000000000000000000000000000000B46822FFB05C189AA553192B0000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000D0933CFFE8A527FFAD570FFFA855
        19C7000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000CD903FFFEAAF30FFBD660EFFB562
        17FF000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000D09446FFE9B23EFFC06B14FFBA67
        1DFF000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000D2994AFFECB849FFC6711BFFBE6B
        1FFF000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000D59C4EFFEEBF53FFCB7820FFC26F
        22FF000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000D8A253FFF1C45FFFCE7E24FFC77A
        27FF000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000DAA558FFF2C866FFD1842AFFCB7F
        2CFF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000C87A278AEAC681FFEFC261FFDA983AFFCB78
        24FFCB842E8A0000000000000000000000000000000000000000000000000000
        00000000000000000000C9781A4EE9C588FFF3CF76FFEFC264FFE7B358FFD17D
        26FFD58C33FFCE872E4E00000000000000000000000000000000000000000000
        000000000000CD7D1C33E5BB7CFFF8DB8FFFEEC463FFEFC76CFFF2C96CFFDC93
        37FFD5852CFFD9983CFFD1872F33000000000000000000000000000000000000
        0000D4801211E0AB58FCF8DE91FFF1C55DFFF2C666FFF1C363FFF4CB6AFFE8AF
        44FFD9851DFFDF9331FFDF9B38F5D88E2A0B0000000000000000000000000000
        0000DFA54FD5FBEEC3FFFAE8B9FFF7E8C6FFF5EEE0FFF3F0EAFFF1EDE9FFEEE9
        DBFFDAA964FFD6A259FFE0AB5DFFDEA042D60000000000000000DB98311EDFA5
        479AFEFEFAFFFFFFFFFFF6F4F3FFF2F3F4FFEEE9DFFFE7D5AAFFE2CFA1FFE6E2
        D7FFD9C9A8FFCFB278FFCAB796FFD3C4ADFFDDA0439ADE99331EE2A642E7E7B7
        5BFFE5B24EFFDB931AFFDC981EFFDD971EFFDD971EFFDC961AFFDD951BFFDF99
        20FFE09D29FFE19F2AFFE2A029FFE0AA43FFE2AF52FFE1A742E7E5AE463DE5AB
        4170E8B24FACEDBE5ECEEEC266F4EEC265F3EFC264F3F3CA73F3F3CB75F3EFC2
        66F3EEC265F3EEC366F4EDBD5FCEEBB552ACE7AC4470E6AE463D
      }
      ImageIndex = 33
      OnClick = MenuItem6Click
    end
    object MenuItem10: TMenuItem
      Caption = '-'
    end
    object MenuItem8: TMenuItem
      Caption = 'Koszyk'
      Bitmap.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        200000000000000400006400000064000000000000000000000000000000B362
        0E01AC5F10D8AD5F10FFAD5E10A6000000000000000000000000000000000000
        00000000000000000000B16415B6B06113FFAF6111C0AE5F1153CB893F10CC8B
        428FBE701BDBB5681617C27520FFD08C433C0000000000000000000000000000
        000000000000E0A7663AC1751BD7B86A1814C47823FFC67E2AE7FBD29F01FACF
        9A62EEB66AD7F8C27522F8CA8CE6EEBE83030000000000000000000000000000
        000000000000FFDEB003FED08EA6FBC87D1EEDB76FFFEFBE80D0000000000000
        0000F5C88A85D3923BFFD3983FFBB96E0AC4AF5E00CEB36400CFB36400CFB364
        00CFAC5900CEBE721BC4D1913EFFD2923BFFE3B069C9FBD59F3A000000000000
        0000C27208FFC17102FFBE6C00FFB86700FFB86700FFB86700FFB86700FFB867
        00FFB86700FFB86700FFB86700FFB86700FFB86700FFB86700FF000000000000
        0000C57A1AFFAE620A3400000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000CD8228FFAB5D0EFFA35509FFA5570AFFA5560AFFA6570AFFA6570CFFA556
        0AFFA6570CFFA5560BFFA5570BFFA6580CFFA6570CFFA6580AFF000000000000
        0000D38A2FFFB96C1BFF0000000000000000B66A1AFF0000000000000000B669
        1AFF0000000000000000B46917FF0000000000000000B46917FF000000000000
        0000D89138FFC2761FFFC17620FFC88027FFC27622FFC67C26FFC67D26FFC277
        23FFC87F27FFC87F27FFC47923FFC88027FFC0741DFFC0731DFF000000000000
        0000DE9A41FFD99847FF0000000000000000CF8529FF0000000000000000CF84
        28FF0000000000000000CD8329FF0000000000000000DFA65DFF000000000000
        0000E2A047FFEDB86EFF0000000000000000EBAC5DFF0000000000000000E7A6
        52FF0000000000000000F1B96DFF0000000000000000F0BA76FF000000000000
        0000EAAC54FFF8C57BFFFCC67CFFF6C177FFFFC87EFFF7C279FFFAC479FFFFCA
        80FFFAC478FFFCC77CFFFCC77BFFF6C177FFFCC77DFFFDC87CFF000000000000
        0000F0B761FFFCCC86FF0000000000000000FFD189FF0000000000000000FFD0
        88FF0000000000000000FFD48FFF0000000000000000FECB7FFF00000000E5A4
        4428F8CB84FFFCD190FFFCD190FFFCD190FFFCD190FFFCD190FFFCD190FFFCD1
        90FFFCD190FFFCD190FFFCD190FFFCD190FFFCD190FFFCD190FFEEB05569F6C7
        78F1F9CB82F20000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000F9C063D3F9C4
        6BFFEFAF4E1B0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000
      }
      ImageIndex = 30
      object MenuItemDoKoszyka: TMenuItem
        Caption = 'Dodaj do koszyka:'
        Bitmap.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000064000000640000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000001E0000003300000033000000330000001E000000008C898700908D
          8B000000001A00000033000000330000001A908D8B008E8888009A858A000000
          001D008D54AC009E5EFF009D5DFF009E5EFF008C55AC0000001E8B8886000000
          00334542439A514F4FFF514F4FFF44424399000000330000003300000033008C
          51A600A669FF00BA86FF77DFC4FF00BA86FF00A66AFF008C55AC868381008A87
          85FF5D5B5AFF8A8887FF8A8887FF5D5B5AFF8A8785FF898382FF968185FF009F
          59FF00C08BFF00BB82FFFFFFFFFF00BB82FF00C08CFF009E5EFFC4C2C000C9C7
          C5FF6C6968FFCCCAC9FFCCCAC9FF6D6968FFC9C8C5FFC8C3C2FFD6C2C7FF009B
          55FF74E5CBFFFFFFFFFFFFFFFFFFFFFFFFFF77E5CCFF009C5CFFC0BEBC00C5C3
          C1007C79777F817E7DFF817E7DFF7D7A787CC8C6C400C7C2C100D5C2C500009B
          55FF00CC96FF00C88FFFFFFFFFFF00C88FFF00CC98FF009D5DFFC0BEBC00C5C4
          C200000000220000003300000033000000330000003300000033000000330084
          479900AE6EFF00D39CFF74EDD3FF00D39DFF00AE72FF009F6097BEBCBA000000
          002172706EBA9B9896FF919292FF909191FF8F9090FF8F8F8FFF948F91FF9F8D
          94FF379470FF009851FF009851FF009B57FF009F5E9000A16100000000228B89
          87B9A8A7A5FFF0EFEEFFB7B6B5FFEDECEBFFB6B5B3FFEDECEBFFB7B4B4FFF1EB
          ECFFBFB3B6FFFAE9EEFFEFDCE2FFAE9298FF00A15A0000A25D00ADAAA8BDB9B7
          B4FFEAE9E8FFB0B1B0FFE2E1E0FFADACABFFE2E1E0FFADACABFFE2E1E0FFADAC
          ABFFE3E1E0FFAEABABFFE3DFDEFF9C9292FFA7969900AC979B00A19D9BFFE7E6
          E4FFADACABFFDCDAD8FFA8A6A5FFDCDAD8FFA8A6A5FFDCDAD8FFA8A6A5FFDCDA
          D8FFA8A6A5FFDBD9D7FFE2E1E0FF969290FFA0989400A69A9400A4A2A0FFF3F3
          F2FFD1CFCDFF9F9E9CFFD4D1CFFF9F9F9CFFD4D1CFFF9F9F9CFFD4D1CFFF9F9F
          9CFFD3D1CFFF9E9E9BFFE6E3E2FF99928EFFA79A90002476C000AAA6A4FFFAF9
          F8FFF7F7F6FFF8F7F6FFF8F7F6FFF8F7F7FFF8F7F6FFF8F7F7FFF8F7F6FFF8F7
          F6FFF7F6F6FFF7F6F5FFE9E6E3FF9F938AFF0000003300000033AEACAAB0ADAB
          A8FFABA9A7FFABA9A7FFABA9A7FFABA9A7FFABA9A7FFABA9A7FFABA9A7FFABA9
          A7FFA9A7A5FFD4D2D1FFF3EDE8FF4685B7FF327BBAFF3179B9FFB0AEAC00B0AE
          AC00B0AEAC00B0AEAC00B0AEAC00B0AEAC00B0AEAC00B0AEAC00B0AEAC00AFAD
          AB00AEACAA00BEBBB8FFE7DED8FF2E7ABBFF71E2FFFF3177B8FFB0AEAC00B1AF
          AD00B1AFAD00B1AFAD00B1AFAD00B1AFAD00B1AFAD00B1AFAD00B1AFAD00B1AF
          AD00AFADAB00C1BEBA00C9C0B8FF3D83BDFF357BBAFF327AB8EF
        }
        ImageIndex = 35
        OnClick = MenuItemDoKoszykaClick
      end
      object MenuItem12: TMenuItem
        Caption = '-'
      end
      object MenuItem13: TMenuItem
        Caption = 'Nowy koszyk ...'
        Bitmap.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000064000000640000000000000000000000000000000000
          000000000000000000000B9D25480FAD319812B035E913B637F413B637F412B0
          35E90FAD31980B9D254800000000000000000000000000000000000000000000
          0000099A22060D9E27BA19C140FF1FCE4CFF24DC58FF27DD5CFF27DD5CFF24DC
          58FF1FCE4CFF19C140FF0D9E27BA099A22060000000000000000000000000B93
          1E050DA128EA1ED04EFF22D555FF21D355FF03B82CFF00A712FF00A712FF03B8
          2CFF21D355FF22D555FF1ED04EFF0DA128EA0B931E0500000000000000000B94
          1DBA1ECE4DFF21D354FF1FCC4DFF0FCC45FF00AD13FFFFFFFFFFFFFFFFFF00AD
          13FF0FCC45FF1FCC4DFF21D354FF1ECE4DFF0B941DBA000000000B85114617BA
          3FFF21DA5AFF1ECC51FF20D053FF0DC742FF00BE25FFFFFFFFFFFFFFFFFF00BE
          25FF0DC742FF20D053FF1ECC51FF21DA5AFF17BA3FFF0B851146088F189A17D1
          51FF20D45FFF0BCC4AFF04CA43FF00C133FF00BC22FFFFFFFFFFFFFFFFFF00BD
          27FF00C23BFF10CA4BFF0ECC4CFF20D45FFF17D151FF088F189A1C972CE933E6
          7AFF00B62DFF00AD13FF00AD13FF00AD13FF00AD13FFFFFFFFFFFFFFFFFF00AD
          13FF00BD27FF00BD23FF00AD13FF00B62DFF33E67AFF1C982EE929A03CF781FC
          C3FF00AF21FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF00AF21FF81FCC4FF299D3BF71B9130F785FD
          CCFF2AC262FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF2AC262FF85FDCCFF1B912EF71F882AE97BFA
          C3FF3CD07DFF71C780FF1EBF59FF21C05BFF0ABA4DFFFFFFFFFFFFFFFFFF10BC
          51FF22C05CFF1EBF59FF71C780FF3CD07DFF7BFAC3FF1F882AE90373019A8AE5
          B9FF65EAB0FF50DF97FF56DF9CFF41DB8DFF22C05CFFFFFFFFFFFFFFFFFF22C0
          5CFF49DC93FF56DF9CFF50DF97FF65EAB0FF8AE5B9FF0373019A005F00464EB0
          68FFAFFFEAFF5EE0A1FF56E19FFF45DE97FF66D589FFFFFFFFFFFFFFFFFF23C0
          5BFF50E09EFF56E19FFF5EE0A1FFAFFFEAFF4EB068FF005F004600000000005C
          00BA7BDCA8FFB6FFEFFF76E5B5FF51DFA3FF66D589FFFFFFFFFFFFFFFFFF24BF
          59FF56E2A8FF76E5B5FFB6FFEFFF7BDCA8FF005C00BA00000000000000000068
          0005006500EA6DD6A3FFB7FFF5FFAAF7E3FF70E0B0FF22C05CFF22C05CFF74E2
          B3FFABF7E4FFB7FFF5FF6DD6A3FF006500EA0068000500000000000000000000
          0000005E0006005800BA38A75EFF7FE1B8FFA9FFECFFB9FFFBFFB9FFFBFFA9FF
          ECFF7FE1B8FF38A75EFF005800BA005E00060000000000000000000000000000
          00000000000000000000004E0048006800980F701FE91E812EF41E812EF40F70
          1FE900680098004E004800000000000000000000000000000000
        }
        ImageIndex = 31
        OnClick = MenuItem13Click
      end
      object MenuItem14: TMenuItem
        Caption = 'Koszyki ...'
        Bitmap.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000064000000640000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00D69E72C4D3996EF4D19668FFCE9263FFC787
          56FFC38452FFC38452FFC38452FFC38452FFC38452FFBB7742B0FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00D7A175FFF8F2EDFFF7F0EAFFF6EDE6FFF1E4
          DBFFF0E2D8FFF0E2D8FFF0E2D8FFF0E2D8FFF0E2D8FFC58A5DFDFFFFFF00FFFF
          FF00FFFFFF00D69E72B1D3996EDCE1AE87FFFAF4F0FFEACBB2FFEACCB3FFE8C7
          ACFFE8C7ACFFE8C7ACFFE8C8B0FFE8C8AEFFF0E2D8FFC48654FFFFFFFF00FFFF
          FF00FFFFFF00D7A175E6F8F2EDE6E3B18CFFFAF6F1FFEAC9AEFFFFFFFFFFE8C7
          ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E5DBFFC68655FFFFFFFF00D69E
          729DD3996EC3E0AC85FAF7ECE5FAE5B48FFFFAF6F2FFE9C6AAFFE9C6ACFFE8C7
          ACFFE8C7ACFFE9C9B0FFE8C8B0FFE8CCB5FFF2E7DEFFC88A59FFFFFFFF00D7A1
          75CCF8F2EDCCE5B693FAFAF5F0FAE7B794FFFBF7F4FFE9C3A6FFFFFFFFFFE8C7
          ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F1EBFFCB8F5FFFFFFFFF00E1AE
          87CCFAF4F0CCE5B692FAF9F3EDFAE9BA98FFFBF7F4FFE9C3A6FFE9C3A6FFE9C3
          A6FFE9C3A6FFE9C3A6FFE9C3A6FFE9C3A6FFFBF7F4FFCE9364FFFFFFFF00E3B1
          8CCCFAF6F1CCE7B896FAFBF8F5FAEBBD9BFFFBF7F4FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF7F4FFD1976AFFFFFFFF00E5B4
          8FCCFAF6F2CCE9BB99FAFAF3EEFAECBF9EFFFBF7F4FF9CD5A5FF98D3A1FF8BCB
          93FF82C689FF7EC384FF7AC180FF76BE7CFFFBF7F4FFD49B6FFFFFFFFF00E7B7
          94CCFBF7F4CCEBBD9CFAFBF8F5FAEFC6A8FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7
          F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFD7A074F8FFFFFF00E9BA
          98CCFBF7F4CCECBF9FFAFAF3EEFAC9CBA4FCE6C3A2FEEDC09FFFEBBE9DFFE7B7
          93FFE4B28CFFE2AF88FFE0AC84FFDDA980FFDCA57DFFDAA37ACAFFFFFF00EBBD
          9BCCFBF7F4CCF0CAAEF6FBF8F5FAFBF8F5FAFBF8F5FAFBF8F5FAFBF8F5FAFBF8
          F5FAFBF7F4FAF8EFE9FAFBF7F4E6D7A074E0FFFFFF00FFFFFF00FFFFFF00ECBF
          9ECCFBF7F4CCC6CBA4E3E1C4A2F5E5C19EFAE3BF9BFADFB892FADCB38BFADAB0
          87FAE2B28DFADCA87FFADCA57DE6DAA37AB6FFFFFF00FFFFFF00FFFFFF00EEC1
          A1BCFBF7F4CCFBF7F4CCFBF7F4CCFBF7F4CCFBF7F4CCFBF7F4CCFBF7F4CCFBF7
          F4CCFBF7F4CCD7A074C6FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFC2
          A365EFC1A2B6EDC09FCCEBBE9DCCE7B793CCE4B28CCCE2AF88CCE0AC84CCDDA9
          80CCDCA57DCCDAA37AA2FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
        }
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
  object PopupMenu2: TPopupMenu
    Images = DM.ImageList1
    Left = 920
    Top = 248
    object MenuDrukujWykazKal: TMenuItem
      Caption = 'Drukuj wykaz ...'
      Bitmap.Data = {
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
      ImageIndex = 4
      OnClick = MenuDrukujWykazKalClick
    end
    object MenuWykazDoSchowkaKal: TMenuItem
      Caption = 'Kopiuj do schowka'
      Bitmap.Data = {
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
