object KwatSprzetRTV: TKwatSprzetRTV
  Left = 334
  Height = 683
  Top = 226
  Width = 1071
  Caption = 'Sprzęt RTV'
  ClientHeight = 683
  ClientWidth = 1071
  Position = poScreenCenter
  LCLVersion = '6.6'
  object Panel5: TPanel
    Left = 0
    Height = 50
    Top = 0
    Width = 1071
    Align = alTop
    BevelOuter = bvNone
    ClientHeight = 50
    ClientWidth = 1071
    Color = clWhite
    ParentColor = False
    TabOrder = 0
    object plGradient2: TplGradient
      Left = 0
      Height = 50
      Top = 0
      Width = 1071
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
    object lblNaglowek: TLabel
      Left = 64
      Height = 19
      Top = 16
      Width = 87
      Caption = 'Sprzęt RTV'
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
      Left = 4
      Height = 50
      Top = 0
      Width = 50
      AntialiasingMode = amOn
      Picture.Data = {
        1754506F727461626C654E6574776F726B477261706869636402000089504E47
        0D0A1A0A0000000D49484452000000100000001008060000001FF3FF61000000
        0467414D410000AFC837058AE90000001974455874536F667477617265004164
        6F626520496D616765526561647971C9653C000001F64944415438CB9D93BD6B
        544110C07FFBEE5DD4BC603E3418929C5D2C4548B45114D2681ACBFC030AD7E9
        BF2069220A26982A07A92CB4B39260A369048D16B647F0AB3341F325DEE5BD99
        DDB17897F3E54314875D6677197E33B333E3CC8C7ABD6E2104420878EFF1DEA3
        AA6D5DDC22D2D69393932E06F0DE333838CCE6F6369841BEC00C03CCAC7DC68C
        DEDE1E16179F01D0066C6E6D71EBE12BFE45EE57CF9365D96F80AAB65CC270E5
        345D9D1D54FA138E1E89D9114334201EBCC1EBE5F75830D23405200210913C4C
        C039476347F9BAB94323F598817A23D340AAB98D197B231011C26E7CCEE19CE3
        47430996D2939489E3125130AC0508160E022CE408578034334F2681A4B38352
        292272B90F0B870028A4E09CCB2180394723F5B8C8F27720EC4F21CB32A25204
        C097CF9FFE5A85525C3A08E828C7DCBD790EEF8D72B9CCDAEA2A49D771CC8C8D
        8D6F0C9C1AA0D96CB67E3E1C003C585A7A79A5D0657D22F2626868E886AAB2B2
        B2B2A0AAE322B25EE8CAA7006EB77C45999999B9ADAAD72F5EBA3CDEDDDDCB93
        C78F9AAA7A677A7AFADE7EDB3D80B9B9B97E11591B193943DF89937875882A49
        728C8F1FEA2C2FBFF9393B3BDB5504C4C54B9AA663954A8589896BA82A668699
        11451163A367595FFF9E54ABD5ABF3F3F3CF0F8D00606A6AEA9D888CEE9FC2D6
        64BEADD56A17FE98C2FFC82FF6B36226A604F6E80000000049454E44AE426082
      }
      Proportional = True
      Stretch = True
    end
    object GroupBox1: TGroupBox
      Left = 200
      Height = 50
      Top = 0
      Width = 871
      Align = alCustom
      Anchors = [akTop, akLeft, akRight]
      Caption = 'Dane osadzonego'
      ClientHeight = 30
      ClientWidth = 867
      TabOrder = 0
      object lblNazwisko: TLabel
        Left = 16
        Height = 19
        Top = 0
        Width = 110
        Caption = 'Nazwisko Imię'
        Font.CharSet = EASTEUROPE_CHARSET
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Quality = fqDraft
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lblKlasyf: TLabel
        AnchorSideLeft.Control = lblNazwisko
        AnchorSideLeft.Side = asrBottom
        Left = 176
        Height = 18
        Top = 1
        Width = 42
        BorderSpacing.Left = 50
        Caption = 'Klasyf'
        Font.CharSet = EASTEUROPE_CHARSET
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Quality = fqDraft
        ParentColor = False
        ParentFont = False
      end
      object lblPoc: TLabel
        AnchorSideLeft.Control = lblKlasyf
        AnchorSideLeft.Side = asrBottom
        Left = 268
        Height = 18
        Top = 1
        Width = 35
        BorderSpacing.Left = 50
        Caption = 'POC'
        Font.CharSet = EASTEUROPE_CHARSET
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Quality = fqDraft
        ParentColor = False
        ParentFont = False
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Height = 633
    Top = 50
    Width = 1071
    Align = alClient
    BevelOuter = bvNone
    ClientHeight = 633
    ClientWidth = 1071
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 5
      Height = 200
      Top = 0
      Width = 1066
      ActivePage = TabSheet3
      Align = alTop
      BorderSpacing.Left = 5
      TabHeight = 30
      TabIndex = 2
      TabOrder = 0
      TabWidth = 150
      object TabSheet1: TTabSheet
        Caption = 'Stan - Magazyn'
        ClientHeight = 162
        ClientWidth = 1058
        object RxDBGrid2: TRxDBGrid
          Left = 0
          Height = 162
          Top = 0
          Width = 1058
          ColumnDefValues.BlobText = '(blob)'
          TitleButtons = True
          AutoSort = True
          Columns = <          
            item
              Font.Color = clMaroon
              Title.Alignment = taCenter
              Title.Orientation = toHorizontal
              Title.Caption = 'Data_przyjecia_ZK'
              Width = 120
              FieldName = 'Data_przyjecia_ZK'
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
              Title.Caption = 'typ'
              Width = 150
              FieldName = 'typ'
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
              Title.Caption = 'producent'
              Width = 150
              FieldName = 'producent'
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
              Title.Caption = 'model'
              Width = 150
              FieldName = 'model'
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
              Title.Caption = 'Serial'
              Width = 150
              FieldName = 'Serial'
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
              Title.Caption = 'Uwagi'
              Width = 150
              FieldName = 'Uwagi'
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
          FooterOptions.RowCount = 1
          FooterOptions.Style = tsNative
          FooterOptions.DrawFullLine = False
          SearchOptions.QuickSearchOptions = [loCaseInsensitive, loPartialKey]
          SearchOptions.FromStart = False
          OptionsRx = [rdgAllowDialogFind, rdgAllowQuickSearch, rdgAllowQuickFilter, rdgAllowFilterForm, rdgAllowSortForm, rdgAllowToolMenu, rdgCaseInsensitiveSort, rdgWordWrap]
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
          DataSource = DSOsMagazyn
          DefaultRowHeight = 22
          FixedColor = clNone
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgHeaderHotTracking, dgHeaderPushedLook, dgAnyButtonCanSelect, dgDisableDelete, dgDisableInsert, dgCellHints, dgTruncCellHints, dgCellEllipsis, dgDblClickAutoSize, dgDisplayMemoText]
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 0
          TitleStyle = tsNative
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Stan - Cela'
        ClientHeight = 162
        ClientWidth = 1058
        object RxDBGrid1: TRxDBGrid
          Left = 0
          Height = 162
          Top = 0
          Width = 1058
          ColumnDefValues.BlobText = '(blob)'
          TitleButtons = True
          AutoSort = True
          Columns = <          
            item
              Font.Color = clMaroon
              Title.Alignment = taCenter
              Title.Orientation = toHorizontal
              Title.Caption = 'Data_wydania_Cela'
              Width = 120
              FieldName = 'Data_wydania_Cela'
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
              Title.Caption = 'typ'
              Width = 150
              FieldName = 'typ'
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
              Title.Caption = 'producent'
              Width = 150
              FieldName = 'producent'
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
              Title.Caption = 'model'
              Width = 150
              FieldName = 'model'
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
              Title.Caption = 'Serial'
              Width = 150
              FieldName = 'Serial'
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
              Title.Caption = 'Uwagi'
              Width = 150
              FieldName = 'Uwagi'
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
          FooterOptions.RowCount = 1
          FooterOptions.Style = tsNative
          FooterOptions.DrawFullLine = False
          SearchOptions.QuickSearchOptions = [loCaseInsensitive, loPartialKey]
          SearchOptions.FromStart = False
          OptionsRx = [rdgAllowDialogFind, rdgAllowQuickSearch, rdgAllowQuickFilter, rdgAllowFilterForm, rdgAllowSortForm, rdgAllowToolMenu, rdgCaseInsensitiveSort, rdgWordWrap]
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
          DataSource = DSOsCela
          DefaultRowHeight = 22
          FixedColor = clNone
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgHeaderHotTracking, dgHeaderPushedLook, dgAnyButtonCanSelect, dgDisableDelete, dgDisableInsert, dgCellHints, dgTruncCellHints, dgCellEllipsis, dgDblClickAutoSize, dgDisplayMemoText]
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 0
          TitleStyle = tsNative
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Zdane na zewnątrz'
        ClientHeight = 162
        ClientWidth = 1058
        object RxDBGrid3: TRxDBGrid
          Left = 0
          Height = 162
          Top = 0
          Width = 1058
          ColumnDefValues.BlobText = '(blob)'
          TitleButtons = True
          AutoSort = True
          Columns = <          
            item
              Font.Color = clMaroon
              Title.Alignment = taCenter
              Title.Orientation = toHorizontal
              Title.Caption = 'Data_wydania_ZK'
              Width = 120
              FieldName = 'Data_wydania_ZK'
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
              Title.Caption = 'typ'
              Width = 150
              FieldName = 'typ'
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
              Title.Caption = 'producent'
              Width = 150
              FieldName = 'producent'
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
              Title.Caption = 'model'
              Width = 150
              FieldName = 'model'
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
              Title.Caption = 'Serial'
              Width = 150
              FieldName = 'Serial'
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
              Title.Caption = 'Uwagi'
              Width = 150
              FieldName = 'Uwagi'
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
          FooterOptions.RowCount = 1
          FooterOptions.Style = tsNative
          FooterOptions.DrawFullLine = False
          SearchOptions.QuickSearchOptions = [loCaseInsensitive, loPartialKey]
          SearchOptions.FromStart = False
          OptionsRx = [rdgAllowDialogFind, rdgAllowQuickSearch, rdgAllowQuickFilter, rdgAllowFilterForm, rdgAllowSortForm, rdgAllowToolMenu, rdgCaseInsensitiveSort, rdgWordWrap]
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
          DataSource = DSOsWydane
          DefaultRowHeight = 22
          FixedColor = clNone
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgHeaderHotTracking, dgHeaderPushedLook, dgAnyButtonCanSelect, dgDisableDelete, dgDisableInsert, dgCellHints, dgTruncCellHints, dgCellEllipsis, dgDblClickAutoSize, dgDisplayMemoText]
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 0
          TitleStyle = tsNative
        end
      end
    end
    object Panel2: TPanel
      Left = 0
      Height = 428
      Top = 205
      Width = 1071
      Align = alClient
      BevelOuter = bvNone
      ClientHeight = 428
      ClientWidth = 1071
      TabOrder = 1
      object lblWCeli: TLabel
        Left = 0
        Height = 21
        Top = 0
        Width = 1071
        Align = alTop
        Alignment = taCenter
        Caption = 'Sprzęt w celi mieszkalnej'
        Color = clSkyBlue
        Font.CharSet = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Pitch = fpVariable
        Font.Quality = fqDraft
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object PageControl2: TPageControl
        Left = 5
        Height = 407
        Top = 21
        Width = 1066
        ActivePage = TabSheet6
        Align = alClient
        BorderSpacing.Left = 5
        TabHeight = 30
        TabIndex = 2
        TabOrder = 0
        TabWidth = 150
        object TabSheet4: TTabSheet
          Caption = 'Stan - Magazyn'
          ClientHeight = 369
          ClientWidth = 1058
          object RxDBGrid4: TRxDBGrid
            Left = 0
            Height = 369
            Top = 0
            Width = 1058
            ColumnDefValues.BlobText = '(blob)'
            TitleButtons = True
            AutoSort = True
            Columns = <            
              item
                Font.Color = clMaroon
                Title.Alignment = taCenter
                Title.Orientation = toHorizontal
                Title.Caption = 'Data_przyjecia_ZK'
                Width = 120
                FieldName = 'Data_przyjecia_ZK'
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
                Width = 150
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
                Title.Caption = 'typ'
                Width = 150
                FieldName = 'typ'
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
                Title.Caption = 'producent'
                Width = 150
                FieldName = 'producent'
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
                Title.Caption = 'model'
                Width = 150
                FieldName = 'model'
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
                Title.Caption = 'Serial'
                Width = 150
                FieldName = 'Serial'
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
                Title.Caption = 'Uwagi'
                Width = 150
                FieldName = 'Uwagi'
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
            FooterOptions.RowCount = 1
            FooterOptions.Style = tsNative
            FooterOptions.DrawFullLine = False
            SearchOptions.QuickSearchOptions = [loCaseInsensitive, loPartialKey]
            SearchOptions.FromStart = False
            OptionsRx = [rdgAllowDialogFind, rdgAllowQuickSearch, rdgAllowQuickFilter, rdgAllowFilterForm, rdgAllowSortForm, rdgAllowToolMenu, rdgCaseInsensitiveSort, rdgWordWrap]
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
            DataSource = DSpocMagazyn
            DefaultRowHeight = 22
            FixedColor = clNone
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgHeaderHotTracking, dgHeaderPushedLook, dgAnyButtonCanSelect, dgDisableDelete, dgDisableInsert, dgCellHints, dgTruncCellHints, dgCellEllipsis, dgDblClickAutoSize, dgDisplayMemoText]
            ParentShowHint = False
            ReadOnly = True
            ShowHint = True
            TabOrder = 0
            TitleStyle = tsNative
          end
        end
        object TabSheet5: TTabSheet
          Caption = 'Stan - Cela'
          ClientHeight = 369
          ClientWidth = 1058
          object RxDBGrid5: TRxDBGrid
            Left = 0
            Height = 369
            Top = 0
            Width = 1058
            ColumnDefValues.BlobText = '(blob)'
            TitleButtons = True
            AutoSort = True
            Columns = <            
              item
                Font.Color = clMaroon
                Title.Alignment = taCenter
                Title.Orientation = toHorizontal
                Title.Caption = 'Data_wydania_Cela'
                Width = 120
                FieldName = 'Data_wydania_Cela'
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
                Width = 150
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
                Title.Caption = 'typ'
                Width = 150
                FieldName = 'typ'
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
                Title.Caption = 'producent'
                Width = 150
                FieldName = 'producent'
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
                Title.Caption = 'model'
                Width = 150
                FieldName = 'model'
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
                Title.Caption = 'Serial'
                Width = 150
                FieldName = 'Serial'
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
                Title.Caption = 'Uwagi'
                Width = 150
                FieldName = 'Uwagi'
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
            FooterOptions.RowCount = 1
            FooterOptions.Style = tsNative
            FooterOptions.DrawFullLine = False
            SearchOptions.QuickSearchOptions = [loCaseInsensitive, loPartialKey]
            SearchOptions.FromStart = False
            OptionsRx = [rdgAllowDialogFind, rdgAllowQuickSearch, rdgAllowQuickFilter, rdgAllowFilterForm, rdgAllowSortForm, rdgAllowToolMenu, rdgCaseInsensitiveSort, rdgWordWrap]
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
            DataSource = DSpocCela
            DefaultRowHeight = 22
            FixedColor = clNone
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgHeaderHotTracking, dgHeaderPushedLook, dgAnyButtonCanSelect, dgDisableDelete, dgDisableInsert, dgCellHints, dgTruncCellHints, dgCellEllipsis, dgDblClickAutoSize, dgDisplayMemoText]
            ParentShowHint = False
            ReadOnly = True
            ShowHint = True
            TabOrder = 0
            TitleStyle = tsNative
          end
        end
        object TabSheet6: TTabSheet
          Caption = 'Zdane na zewnątrz'
          ClientHeight = 369
          ClientWidth = 1058
          object RxDBGrid6: TRxDBGrid
            Left = 0
            Height = 369
            Top = 0
            Width = 1058
            ColumnDefValues.BlobText = '(blob)'
            TitleButtons = True
            AutoSort = True
            Columns = <            
              item
                Font.Color = clMaroon
                Title.Alignment = taCenter
                Title.Orientation = toHorizontal
                Title.Caption = 'Data_wydania_ZK'
                Width = 120
                FieldName = 'Data_wydania_ZK'
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
                Width = 150
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
                Title.Caption = 'typ'
                Width = 150
                FieldName = 'typ'
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
                Title.Caption = 'producent'
                Width = 150
                FieldName = 'producent'
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
                Title.Caption = 'model'
                Width = 150
                FieldName = 'model'
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
                Title.Caption = 'Serial'
                Width = 150
                FieldName = 'Serial'
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
                Title.Caption = 'Uwagi'
                Width = 150
                FieldName = 'Uwagi'
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
            FooterOptions.RowCount = 1
            FooterOptions.Style = tsNative
            FooterOptions.DrawFullLine = False
            SearchOptions.QuickSearchOptions = [loCaseInsensitive, loPartialKey]
            SearchOptions.FromStart = False
            OptionsRx = [rdgAllowDialogFind, rdgAllowQuickSearch, rdgAllowQuickFilter, rdgAllowFilterForm, rdgAllowSortForm, rdgAllowToolMenu, rdgCaseInsensitiveSort, rdgWordWrap]
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
            DataSource = DSpocWydane
            DefaultRowHeight = 22
            FixedColor = clNone
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgHeaderHotTracking, dgHeaderPushedLook, dgAnyButtonCanSelect, dgDisableDelete, dgDisableInsert, dgCellHints, dgTruncCellHints, dgCellEllipsis, dgDblClickAutoSize, dgDisplayMemoText]
            ParentShowHint = False
            ReadOnly = True
            ShowHint = True
            TabOrder = 0
            TitleStyle = tsNative
          end
        end
      end
    end
    object Splitter1: TSplitter
      Cursor = crVSplit
      Left = 0
      Height = 5
      Top = 200
      Width = 1071
      Align = alTop
      ResizeAnchor = akTop
    end
  end
  object DSOsMagazyn: TDataSource
    DataSet = ZQOsMagazyn
    Left = 312
    Top = 208
  end
  object DSOsCela: TDataSource
    DataSet = ZQOsCela
    Left = 520
    Top = 208
  end
  object DSOsWydane: TDataSource
    DataSet = ZQOsWydane
    Left = 744
    Top = 208
  end
  object ZQOsMagazyn: TZReadOnlyQuery
    Connection = DM.ZConnection1
    SQL.Strings = (
      'SELECT * FROM view_sprzet_magazyn'
      'WHERE (IDO=:ido)AND(Magazyn=-1)'
      'ORDER BY Data_przyjecia_ZK'
    )
    Params = <    
      item
        DataType = ftUnknown
        Name = 'ido'
        ParamType = ptUnknown
      end>
    Left = 312
    Top = 152
    ParamData = <    
      item
        DataType = ftUnknown
        Name = 'ido'
        ParamType = ptUnknown
      end>
  end
  object ZQOsCela: TZReadOnlyQuery
    Connection = DM.ZConnection1
    SQL.Strings = (
      'SELECT * FROM view_sprzet_magazyn'
      'WHERE (IDO=:ido)AND(Cela=-1)'
      'ORDER BY Data_wydania_Cela'
    )
    Params = <    
      item
        DataType = ftUnknown
        Name = 'ido'
        ParamType = ptUnknown
      end>
    Left = 520
    Top = 152
    ParamData = <    
      item
        DataType = ftUnknown
        Name = 'ido'
        ParamType = ptUnknown
      end>
  end
  object ZQOsWydane: TZReadOnlyQuery
    Connection = DM.ZConnection1
    SQL.Strings = (
      'SELECT * FROM view_sprzet_magazyn'
      'WHERE (IDO=:ido)AND(Cela=0)AND(Magazyn=0)'
      'ORDER BY Data_wydania_ZK'
    )
    Params = <    
      item
        DataType = ftUnknown
        Name = 'ido'
        ParamType = ptUnknown
      end>
    Left = 744
    Top = 152
    ParamData = <    
      item
        DataType = ftUnknown
        Name = 'ido'
        ParamType = ptUnknown
      end>
  end
  object ZQpocMagazyn: TZReadOnlyQuery
    Connection = DM.ZConnection1
    SQL.Strings = (
      'SELECT m.*, o.NAZWISKO FROM view_sprzet_magazyn m '
      'LEFT JOIN osadzeni o ON (o.IDO=m.IDO)'
      'WHERE (POC=:poc)AND(Magazyn=-1)'
      'ORDER BY Data_przyjecia_ZK'
    )
    Params = <    
      item
        DataType = ftUnknown
        Name = 'poc'
        ParamType = ptUnknown
      end>
    Left = 312
    Top = 424
    ParamData = <    
      item
        DataType = ftUnknown
        Name = 'poc'
        ParamType = ptUnknown
      end>
  end
  object ZQpocCela: TZReadOnlyQuery
    Connection = DM.ZConnection1
    SQL.Strings = (
      'SELECT m.*, o.NAZWISKO FROM view_sprzet_magazyn m '
      'LEFT JOIN osadzeni o ON (o.IDO=m.IDO)'
      'WHERE (POC=:poc)AND(Cela=-1)'
      'ORDER BY Data_wydania_Cela'
    )
    Params = <    
      item
        DataType = ftUnknown
        Name = 'poc'
        ParamType = ptUnknown
      end>
    Left = 520
    Top = 424
    ParamData = <    
      item
        DataType = ftUnknown
        Name = 'poc'
        ParamType = ptUnknown
      end>
  end
  object ZQpocWydane: TZReadOnlyQuery
    Connection = DM.ZConnection1
    SQL.Strings = (
      'SELECT m.*, o.NAZWISKO FROM view_sprzet_magazyn m '
      'LEFT JOIN osadzeni o ON (o.IDO=m.IDO)'
      'WHERE (POC=:poc)AND(Cela=0)AND(Magazyn=0)'
      'ORDER BY Data_wydania_ZK'
    )
    Params = <    
      item
        DataType = ftUnknown
        Name = 'poc'
        ParamType = ptUnknown
      end>
    Left = 744
    Top = 424
    ParamData = <    
      item
        DataType = ftUnknown
        Name = 'poc'
        ParamType = ptUnknown
      end>
  end
  object DSpocMagazyn: TDataSource
    DataSet = ZQpocMagazyn
    Left = 312
    Top = 480
  end
  object DSpocCela: TDataSource
    DataSet = ZQpocCela
    Left = 520
    Top = 480
  end
  object DSpocWydane: TDataSource
    DataSet = ZQpocWydane
    Left = 744
    Top = 480
  end
end
