object PenitNoeNetTest: TPenitNoeNetTest
  Left = 334
  Height = 641
  Top = 226
  Width = 1024
  Caption = 'NoeNet - sprawdzanie poprwaności danych'
  ClientHeight = 641
  ClientWidth = 1024
  OnCreate = FormCreate
  LCLVersion = '6.6'
  object Panel2: TPanel
    Left = 0
    Height = 48
    Top = 0
    Width = 1024
    Align = alTop
    BevelOuter = bvNone
    ClientHeight = 48
    ClientWidth = 1024
    Color = clWhite
    ParentColor = False
    TabOrder = 0
    object plGradient3: TplGradient
      Left = 0
      Height = 48
      Top = 0
      Width = 1024
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
    object Label8: TLabel
      Left = 16
      Height = 23
      Top = 10
      Width = 398
      Caption = 'Kreator sprawdzania poprawności danych w NoeNet'
      Font.Height = 24
      ParentColor = False
      ParentFont = False
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Height = 593
    Top = 48
    Width = 1024
    ActivePage = TabSheet3
    Align = alClient
    TabIndex = 2
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Sesje'
      ClientHeight = 565
      ClientWidth = 1016
      object Panel1: TPanel
        AnchorSideRight.Control = Panel3
        Left = 0
        Height = 520
        Top = 45
        Width = 1016
        Align = alClient
        Anchors = [akTop, akLeft, akBottom]
        BevelOuter = bvNone
        ClientHeight = 520
        ClientWidth = 1016
        TabOrder = 0
        object RxDBGrid2: TRxDBGrid
          Left = 0
          Height = 520
          Top = 0
          Width = 96
          ColumnDefValues.BlobText = '(blob)'
          TitleButtons = True
          AutoSort = True
          Columns = <          
            item
              Title.Alignment = taCenter
              Title.Orientation = toHorizontal
              Title.Caption = 'Nr Sesji'
              Width = 55
              FieldName = 'ID_Sesji'
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
          Align = alLeft
          AlternateColor = 14022911
          AutoAdvance = aaNone
          Color = clWindow
          DrawFullLine = False
          FocusColor = clHighlight
          FixedHotColor = clNone
          SelectedColor = clHighlight
          GridLineStyle = psSolid
          DataSource = DSSesje
          DefaultRowHeight = 0
          FixedColor = clNone
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgHeaderHotTracking, dgHeaderPushedLook, dgAnyButtonCanSelect, dgDisableDelete, dgDisableInsert, dgCellHints, dgTruncCellHints, dgCellEllipsis]
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 0
          TitleStyle = tsNative
          OnDblClick = RxDBGrid2DblClick
        end
        object PageControl2: TPageControl
          Left = 96
          Height = 520
          Top = 0
          Width = 920
          ActivePage = TabSheet5
          Align = alClient
          TabIndex = 1
          TabOrder = 1
          object TabSheet4: TTabSheet
            Caption = 'Wykaz nieprawidłowości'
            ClientHeight = 492
            ClientWidth = 912
            object RxDBGrid1: TRxDBGrid
              Left = 0
              Height = 468
              Top = 0
              Width = 912
              ColumnDefValues.BlobText = '(blob)'
              TitleButtons = True
              AutoSort = True
              Columns = <              
                item
                  Title.Alignment = taCenter
                  Title.Orientation = toHorizontal
                  Title.Caption = 'data_wpisu'
                  Width = 80
                  FieldName = 'data_wpisu'
                  EditButtons = <>
                  Filter.DropDownRows = 0
                  Filter.EmptyValue = '(Empty)'
                  Filter.NotEmptyValue = '(Not empty)'
                  Filter.AllValue = '(All values)'
                  Filter.EmptyFont.Style = [fsItalic]
                  Filter.ItemIndex = -1
                  Footer.FieldName = 'data_wpisu'
                  Footer.ValueType = fvtCount
                  Footers = <>
                end              
                item
                  Title.Alignment = taCenter
                  Title.Orientation = toHorizontal
                  Title.Caption = 'Wychowawca'
                  Width = 100
                  FieldName = 'Wychowawca'
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
                  Title.Caption = 'Opis'
                  Width = 200
                  FieldName = 'Opis'
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
                  Width = 100
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
                  Width = 100
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
                  Title.Caption = 'OJCIEC'
                  Width = 100
                  FieldName = 'OJCIEC'
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
                end              
                item
                  Alignment = taCenter
                  Title.Alignment = taCenter
                  Title.Orientation = toHorizontal
                  Title.Caption = 'KLASYF'
                  Width = 50
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
                  Title.Alignment = taCenter
                  Title.Orientation = toHorizontal
                  Title.Caption = 'Sprawdzający'
                  Width = 100
                  FieldName = 'user'
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
              Align = alCustom
              AlternateColor = 14022911
              Anchors = [akTop, akLeft, akRight, akBottom]
              AutoAdvance = aaNone
              Color = clWindow
              DrawFullLine = False
              FocusColor = clHighlight
              FixedHotColor = clNone
              SelectedColor = clHighlight
              GridLineStyle = psSolid
              DataSource = DSBledy
              DefaultRowHeight = 19
              FixedColor = clNone
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgHeaderHotTracking, dgHeaderPushedLook, dgAnyButtonCanSelect, dgDisableDelete, dgDisableInsert, dgCellHints, dgTruncCellHints, dgCellEllipsis]
              ParentShowHint = False
              ReadOnly = True
              ShowHint = True
              TabOrder = 0
              TitleStyle = tsNative
            end
            object DBNavigator1: TDBNavigator
              AnchorSideTop.Control = RxDBGrid1
              AnchorSideTop.Side = asrBottom
              AnchorSideRight.Control = RxDBGrid1
              AnchorSideRight.Side = asrBottom
              Left = 640
              Height = 25
              Top = 468
              Width = 272
              Align = alCustom
              Anchors = [akTop, akRight]
              BevelOuter = bvNone
              ChildSizing.EnlargeHorizontal = crsScaleChilds
              ChildSizing.EnlargeVertical = crsScaleChilds
              ChildSizing.ShrinkHorizontal = crsScaleChilds
              ChildSizing.ShrinkVertical = crsScaleChilds
              ChildSizing.Layout = cclLeftToRightThenTopToBottom
              ChildSizing.ControlsPerLine = 100
              ClientHeight = 25
              ClientWidth = 272
              DataSource = DSBledy
              Options = []
              TabOrder = 1
            end
          end
          object TabSheet5: TTabSheet
            Caption = 'W/g wychowawcy'
            ClientHeight = 492
            ClientWidth = 912
            object RxDBGrid3: TRxDBGrid
              Left = 0
              Height = 492
              Top = 0
              Width = 136
              ColumnDefValues.BlobText = '(blob)'
              TitleButtons = True
              AutoSort = True
              Columns = <              
                item
                  Title.Alignment = taCenter
                  Title.Orientation = toHorizontal
                  Title.Caption = 'Wychowawca'
                  Width = 100
                  FieldName = 'Wychowawca'
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
              Align = alLeft
              AlternateColor = 14022911
              AutoAdvance = aaNone
              Color = clWindow
              DrawFullLine = False
              FocusColor = clHighlight
              FixedHotColor = clNone
              SelectedColor = clHighlight
              GridLineStyle = psSolid
              DataSource = DSWychowawcy
              DefaultRowHeight = 19
              FixedColor = clNone
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgHeaderHotTracking, dgHeaderPushedLook, dgAnyButtonCanSelect, dgDisableDelete, dgDisableInsert, dgCellHints, dgTruncCellHints, dgCellEllipsis]
              ParentShowHint = False
              ReadOnly = True
              ShowHint = True
              TabOrder = 0
              TitleStyle = tsNative
            end
            object RxDBGrid4: TRxDBGrid
              Left = 136
              Height = 492
              Top = 0
              Width = 776
              ColumnDefValues.BlobText = '(blob)'
              TitleButtons = True
              AutoSort = True
              Columns = <              
                item
                  Title.Alignment = taCenter
                  Title.Orientation = toHorizontal
                  Title.Caption = 'data_wpisu'
                  Width = 80
                  FieldName = 'data_wpisu'
                  EditButtons = <>
                  Filter.DropDownRows = 0
                  Filter.EmptyValue = '(Empty)'
                  Filter.NotEmptyValue = '(Not empty)'
                  Filter.AllValue = '(All values)'
                  Filter.EmptyFont.Style = [fsItalic]
                  Filter.ItemIndex = -1
                  Footer.FieldName = 'data_wpisu'
                  Footer.ValueType = fvtCount
                  Footers = <>
                end              
                item
                  Title.Alignment = taCenter
                  Title.Orientation = toHorizontal
                  Title.Caption = 'Opis'
                  Width = 200
                  FieldName = 'Opis'
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
                  Width = 100
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
                  Width = 100
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
                  Title.Caption = 'OJCIEC'
                  Width = 100
                  FieldName = 'OJCIEC'
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
                end              
                item
                  Alignment = taCenter
                  Title.Alignment = taCenter
                  Title.Orientation = toHorizontal
                  Title.Caption = 'KLASYF'
                  Width = 50
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
                  Title.Alignment = taCenter
                  Title.Orientation = toHorizontal
                  Title.Caption = 'Sprawdzający'
                  Width = 100
                  FieldName = 'user'
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
              DataSource = DSBledyGrup
              DefaultRowHeight = 19
              FixedColor = clNone
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgHeaderHotTracking, dgHeaderPushedLook, dgAnyButtonCanSelect, dgDisableDelete, dgDisableInsert, dgCellHints, dgTruncCellHints, dgCellEllipsis]
              ParentShowHint = False
              ReadOnly = True
              ShowHint = True
              TabOrder = 1
              TitleStyle = tsNative
            end
          end
        end
      end
      object Panel3: TPanel
        Left = 0
        Height = 45
        Top = 0
        Width = 1016
        Align = alTop
        BevelOuter = bvNone
        ClientHeight = 45
        ClientWidth = 1016
        Color = clBtnFace
        ParentColor = False
        TabOrder = 1
        object btnUstawIDSesji: TBitBtn
          Left = 440
          Height = 30
          Top = 8
          Width = 184
          Caption = 'Ustaw ID Sesji na wybranej'
          OnClick = btnUstawIDSesjiClick
          TabOrder = 0
        end
        object btnWyslijAll: TBitBtn
          Left = 8
          Height = 30
          Hint = 'Uruchamia edytor z projektem wiadomości skierowanej do wszystkich którzy mają błędy do poprawienia.'
          Top = 8
          Width = 232
          Caption = 'Wyślij komunikaty do wszyskich ...'
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000064000000640000000000000000000000C37D36D5DE9E
            38F5D69234F3D59234F3D69234F3D69234F3D69234F3D69234F3D69234F3D692
            34F3D69234F3D69234F3D59234F3D69335F3DE9D37F5B2601CD5D29C51FACB77
            10FFE3A027FFEAA826FFE5A025FFE5A125FFE5A125FFE5A125FFE5A125FFE5A1
            25FFE5A125FFE5A025FFEBA826FFE5A125FFCC7E20FFC07018FAE1B462F3D17A
            00FFB66110FFCB7A0DFFE0970FFFD98E0EFFD78B0EFFD88C0EFFD88C0EFFD78B
            0EFFD98E0EFFE0970FFFCA7A0DFFB25C0DFFD4860DFFD28315F3DFB163F3DF92
            06FFDF991BFFBE6C16FFB86513FFE39A1DFFE59E1DFFDC9319FFDC9319FFE59E
            1DFFE49A1DFFB86613FFBB6815FFDF971AFFE49E19FFD0811CF3E3B66CF3DF97
            16FFE3A029FFE9A827FFD38E28FFAF560CFFD28414FFEEAD30FFEEAD30FFD386
            15FFAB520AFFD28A28FFEAA929FFE49F28FFE4A228FFD48B26F3E5BB73F3E2A0
            25FFE5AA3CFFECB33DFFD7890EFFB97532FFB37343FFBC6500FFBC6600FFB375
            43FFB56D31FFCC7807FFEEB43EFFE6AA3AFFE6AB38FFD7922FF3E5BE7BF3ECB1
            3CFFEFB542FFC46F06FFC79670FFF9FCFAFFFEFFFFFFC59064FFC8966AFFFCFF
            FFFFFCFFFDFFC18E6BFFB85E00FFEDB13CFFEEBD4EFFDC9937F3F0D18FF3E5A6
            33FFB26821FFDBC2B1FFFFFFFFFFF4F2EDFFF3F0EBFFFCFFFFFFFAFFFFFFF3F0
            EBFFF3F2EDFFFFFFFFFFE1CFBEFFBA702AFFE8AF41FFE6AB48F3D9A25AF6C66F
            08FFBF9F72FFF1FFFFFFF3E9DBFFE3D7C5FFE5D6C6FFE5D7C5FFE5D7C5FFE6D7
            C7FFE5D7C6FFE3D5C4FFFFFFFFFFA09192FFC6781BFFD99539F6DCAE72FFFFE0
            89FFCFAE77FFEBF1FFFFF5F0E7FFE8E0D5FFE8E2D5FFE8E2D5FFE8E2D6FFE8E2
            D6FFE8E3D5FFE6E0D3FFFFFFFFFFB3A49DFFF7CE65FFD79239FFD99A3F2BF6D4
            99E9D7C3A5FFECEEF7FFF3EEE1FFE7DDD1FFE8DED2FFE8DED2FFE8E0D3FFE9E0
            D2FFE9DFD1FFE7DDD0FFFFFFFFFFBBAAA1FFE09E34E0D68E302B000000000000
            0000BCA089BAFBFEFFFFF8F6EBFFEAE3DAFFECE4DEFFECE5E0FFECE4DFFFEBE1
            DBFFEAE2DDFFEBE3DBFFFFFFFFFFBDB1B0FF0000000000000000000000000000
            0000A49CAC2FCDC4C6C9D1C3B9F2E0DCDEFFDACEC1FFD2C5B5FFC7BDB1FFC4BA
            B1FFC3B3A5FFAF9A93F19F939AC8A0939BC10000000000000000000000000000
            00000000000000000000C18B4A0FF0BE62BAF8E7C0FFFBDD8BFFFDDD84FFF9D6
            7AFFEFA82DBACB9A5B0E00000000000000000000000000000000000000000000
            000000000000000000000000000000000000E9B25062FBE7BEFFF5D27FFFE5A2
            3262000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000F1CB88A9EEC673A90000
            0000000000000000000000000000000000000000000000000000
          }
          OnClick = btnWyslijAllClick
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
        end
        object lblNrSesji: TLabel
          Left = 248
          Height = 21
          Top = 10
          Width = 66
          Caption = 'Nr Sesji: '
          Font.CharSet = EASTEUROPE_CHARSET
          Font.Color = clBlue
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Pitch = fpVariable
          Font.Quality = fqDraft
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Analizator'
      ClientHeight = 565
      ClientWidth = 1016
      object cmbOpis: TComboBox
        Left = 8
        Height = 23
        Top = 42
        Width = 1000
        Anchors = [akTop, akLeft, akRight]
        AutoComplete = True
        AutoCompleteText = [cbactEnabled, cbactRetainPrefixCase, cbactSearchAscending]
        DropDownCount = 15
        ItemHeight = 15
        Items.Strings = (
          'Uruchom nagrodę.'
          'Uruchom Karę.'
          'Nagrody do zaopiniowania.'
          'Kary do zaopiniowania.'
          'Terminy na czerwono.'
          'Terminy WPZ + przepustki do akceptacji.'
          'Przeterminowany termin oceny.'
          'Brak terminu oceny okresowej.'
          'Przeterminowany termin weryfikacji potrzeb.'
          'Brak terminu weryfikacji potrzeb.'
          'Przeterminowane: PRAWO DO ŁĄCZENIA WIDZEŃ DO DNIA'
          'Przeterminowany: TERMIN PRZYJĘCIA DO ODDZIAŁU TERAPEUTYCZNEGO'
          'Przeterminowany: TERMIN OCENY WERYFIKACJI IPO'
          'Przeterminowany: TERMIN REALIZACJI PRZEZ SKAZANEGO ZADANIA WYNIKAJĄCEGO Z IPO'
          'Brak Poziomu wykształcenia, Typu szkoły.'
          'Przeterminowany termin udokumentowania wykształcenia.'
          'Brak terminu udokumentowania wykształcenia.'
          'Wykształcenie udokumentowane ale nie potwierdzone.'
          'Zatrudnienie do zaopiniowania.'
          'Brak dodanej pomocy postpenitencjarnej (wywiad środowiskowy).'
          'Konflikt palenia.'
          'Cela przejściowa ponad 14 dni.'
        )
        TabOrder = 0
      end
      object btnAnaliza: TBitBtn
        Left = 8
        Height = 30
        Top = 8
        Width = 123
        Caption = 'Analiza'
        Images = DM.ImageList1
        ImageIndex = 40
        OnClick = btnAnalizaClick
        TabOrder = 1
      end
      object Memo1: TMemo
        Left = 8
        Height = 488
        Top = 72
        Width = 1000
        Anchors = [akTop, akLeft, akRight, akBottom]
        ScrollBars = ssAutoBoth
        TabOrder = 2
      end
      object Label1: TLabel
        Left = 136
        Height = 15
        Top = 0
        Width = 399
        Caption = 'Pierwszy wiersz jest nagłówkiem, pierwsza kolumna musi był numerem IDO.'
        ParentColor = False
      end
      object cbIDO_2Kolumna: TCheckBox
        Left = 136
        Height = 19
        Top = 16
        Width = 284
        Caption = 'IDO jest w drugiej kolumnie. (np. analizator penit.)'
        TabOrder = 3
      end
      object ProgressBar1: TProgressBar
        Left = 600
        Height = 20
        Top = 8
        Width = 408
        Step = 1
        TabOrder = 4
        Visible = False
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Alimenty'
      ClientHeight = 565
      ClientWidth = 1016
      object btnAnalizaAlimenty: TBitBtn
        Left = 8
        Height = 30
        Top = 8
        Width = 123
        Caption = 'Dodaj alimenty'
        Images = DM.ImageList1
        ImageIndex = 40
        OnClick = btnAnalizaAlimentyClick
        TabOrder = 0
      end
      object memAlimenty: TMemo
        Left = 8
        Height = 138
        Top = 40
        Width = 1000
        Anchors = [akTop, akLeft, akRight]
        ScrollBars = ssAutoBoth
        TabOrder = 1
        WordWrap = False
      end
      object RxDBGrid5: TRxDBGrid
        Left = 8
        Height = 364
        Top = 192
        Width = 840
        ColumnDefValues.BlobText = '(blob)'
        TitleButtons = True
        AutoSort = True
        Columns = <        
          item
            Title.Alignment = taCenter
            Title.Orientation = toHorizontal
            Title.Caption = 'memNazwiskoImie'
            Width = 200
            FieldName = 'memNazwiskoImie'
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
            Title.Caption = 'memIDO'
            Width = 100
            FieldName = 'memIDO'
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
            Title.Caption = 'memZadluzenie'
            Width = 100
            FieldName = 'memZadluzenie'
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
            Title.Caption = 'memRata'
            Width = 100
            FieldName = 'memRata'
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
            Title.Caption = 'memWplacil'
            Width = 100
            FieldName = 'memWplacil'
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
        AlternateColor = 14022911
        AutoAdvance = aaNone
        Color = clWindow
        DrawFullLine = False
        FocusColor = clHighlight
        FixedHotColor = clNone
        SelectedColor = clHighlight
        GridLineStyle = psSolid
        DataSource = DSAlimenty
        DefaultRowHeight = 19
        FixedColor = clNone
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgHeaderHotTracking, dgHeaderPushedLook, dgAnyButtonCanSelect, dgDisableDelete, dgDisableInsert, dgCellHints, dgTruncCellHints, dgCellEllipsis]
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 2
        TitleStyle = tsNative
      end
      object Label2: TLabel
        Left = 160
        Height = 15
        Top = 8
        Width = 556
        Caption = 'Wklejamy zawartość wydruku XPS, z programu Depozytowego dotyczącego zobowiązań alimentacyjnych.'
        Color = clDefault
        Font.Color = clGray
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label6: TLabel
        Left = 856
        Height = 128
        Top = 256
        Width = 152
        AutoSize = False
        Caption = 'Aktualizacja wprowadza informację do os_info (nadpisuje), oraz dopisuje do aktualnie zatrudnionych jeśli nie mają wprowadzonej informacji o alimentacji.'
        ParentColor = False
        WordWrap = True
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Zobowiązania'
      ClientHeight = 565
      ClientWidth = 1016
      object memZobowiazania: TMemo
        Left = 8
        Height = 282
        Top = 40
        Width = 1000
        Anchors = [akTop, akLeft, akRight]
        ScrollBars = ssAutoBoth
        TabOrder = 0
        WordWrap = False
      end
      object btnAnalizaZobowiazania: TBitBtn
        Left = 8
        Height = 30
        Top = 8
        Width = 163
        Caption = 'Dodaj zobowiązania'
        Images = DM.ImageList1
        ImageIndex = 40
        OnClick = btnAnalizaZobowiazaniaClick
        TabOrder = 1
      end
      object Label3: TLabel
        Left = 192
        Height = 15
        Top = 8
        Width = 440
        Caption = 'Wyszukiwarka Penitencjarna -> Zobowiązania -> Zaznaczamy, Wyszukaj w/g braku.'
        Color = clDefault
        Font.Color = clGray
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'Zatrudnienie'
      ClientHeight = 565
      ClientWidth = 1016
      object Label4: TLabel
        Left = 208
        Height = 15
        Top = 16
        Width = 264
        Caption = 'Różnice w zatrudnieniu pomiędzy NoeNET a OTIS.'
        ParentColor = False
      end
      object memZat: TMemo
        Left = 8
        Height = 146
        Top = 80
        Width = 998
        Anchors = [akTop, akLeft, akRight]
        ScrollBars = ssAutoBoth
        TabOrder = 0
        WordWrap = False
      end
      object Label5: TLabel
        Left = 8
        Height = 15
        Top = 56
        Width = 620
        Caption = 'Wyszukiwarka penitencjarna -> Rejestr Zatrudnienia -> Status zatrudnienia (PWZ – POZOSTAJĄCY W ZATRUDNIENIU)'
        Font.Color = clGray
        ParentColor = False
        ParentFont = False
      end
      object btnZatRoznice: TBitBtn
        Left = 8
        Height = 30
        Top = 8
        Width = 163
        Caption = 'Zbadaj różnice'
        Images = DM.ImageList1
        ImageIndex = 40
        OnClick = btnZatRozniceClick
        TabOrder = 1
      end
      object memZatRoznice: TMemo
        Left = 8
        Height = 280
        Top = 240
        Width = 998
        Anchors = [akTop, akLeft, akRight, akBottom]
        ScrollBars = ssAutoBoth
        TabOrder = 2
        WordWrap = False
      end
      object btnWyslijDoZatrudnienia: TBitBtn
        Left = 8
        Height = 30
        Hint = 'Uruchamia edytor z projektem wiadomości.'
        Top = 528
        Width = 232
        Caption = 'Wyślij komunikat do zatrudnienia...'
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000064000000640000000000000000000000C37D36D5DE9E
          38F5D69234F3D59234F3D69234F3D69234F3D69234F3D69234F3D69234F3D692
          34F3D69234F3D69234F3D59234F3D69335F3DE9D37F5B2601CD5D29C51FACB77
          10FFE3A027FFEAA826FFE5A025FFE5A125FFE5A125FFE5A125FFE5A125FFE5A1
          25FFE5A125FFE5A025FFEBA826FFE5A125FFCC7E20FFC07018FAE1B462F3D17A
          00FFB66110FFCB7A0DFFE0970FFFD98E0EFFD78B0EFFD88C0EFFD88C0EFFD78B
          0EFFD98E0EFFE0970FFFCA7A0DFFB25C0DFFD4860DFFD28315F3DFB163F3DF92
          06FFDF991BFFBE6C16FFB86513FFE39A1DFFE59E1DFFDC9319FFDC9319FFE59E
          1DFFE49A1DFFB86613FFBB6815FFDF971AFFE49E19FFD0811CF3E3B66CF3DF97
          16FFE3A029FFE9A827FFD38E28FFAF560CFFD28414FFEEAD30FFEEAD30FFD386
          15FFAB520AFFD28A28FFEAA929FFE49F28FFE4A228FFD48B26F3E5BB73F3E2A0
          25FFE5AA3CFFECB33DFFD7890EFFB97532FFB37343FFBC6500FFBC6600FFB375
          43FFB56D31FFCC7807FFEEB43EFFE6AA3AFFE6AB38FFD7922FF3E5BE7BF3ECB1
          3CFFEFB542FFC46F06FFC79670FFF9FCFAFFFEFFFFFFC59064FFC8966AFFFCFF
          FFFFFCFFFDFFC18E6BFFB85E00FFEDB13CFFEEBD4EFFDC9937F3F0D18FF3E5A6
          33FFB26821FFDBC2B1FFFFFFFFFFF4F2EDFFF3F0EBFFFCFFFFFFFAFFFFFFF3F0
          EBFFF3F2EDFFFFFFFFFFE1CFBEFFBA702AFFE8AF41FFE6AB48F3D9A25AF6C66F
          08FFBF9F72FFF1FFFFFFF3E9DBFFE3D7C5FFE5D6C6FFE5D7C5FFE5D7C5FFE6D7
          C7FFE5D7C6FFE3D5C4FFFFFFFFFFA09192FFC6781BFFD99539F6DCAE72FFFFE0
          89FFCFAE77FFEBF1FFFFF5F0E7FFE8E0D5FFE8E2D5FFE8E2D5FFE8E2D6FFE8E2
          D6FFE8E3D5FFE6E0D3FFFFFFFFFFB3A49DFFF7CE65FFD79239FFD99A3F2BF6D4
          99E9D7C3A5FFECEEF7FFF3EEE1FFE7DDD1FFE8DED2FFE8DED2FFE8E0D3FFE9E0
          D2FFE9DFD1FFE7DDD0FFFFFFFFFFBBAAA1FFE09E34E0D68E302B000000000000
          0000BCA089BAFBFEFFFFF8F6EBFFEAE3DAFFECE4DEFFECE5E0FFECE4DFFFEBE1
          DBFFEAE2DDFFEBE3DBFFFFFFFFFFBDB1B0FF0000000000000000000000000000
          0000A49CAC2FCDC4C6C9D1C3B9F2E0DCDEFFDACEC1FFD2C5B5FFC7BDB1FFC4BA
          B1FFC3B3A5FFAF9A93F19F939AC8A0939BC10000000000000000000000000000
          00000000000000000000C18B4A0FF0BE62BAF8E7C0FFFBDD8BFFFDDD84FFF9D6
          7AFFEFA82DBACB9A5B0E00000000000000000000000000000000000000000000
          000000000000000000000000000000000000E9B25062FBE7BEFFF5D27FFFE5A2
          3262000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000F1CB88A9EEC673A90000
          0000000000000000000000000000000000000000000000000000
        }
        OnClick = btnWyslijDoZatrudnieniaClick
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
      end
    end
  end
  object ZQSesje: TZQuery
    Connection = DM.ZConnection1
    SQL.Strings = (
      'SELECT DISTINCT ID_Sesji FROM wykaz_bledow'
      'ORDER BY ID_Sesji DESC'
    )
    Params = <>
    Left = 605
    Top = 13
  end
  object DSSesje: TDataSource
    DataSet = ZQSesje
    OnDataChange = DSSesjeDataChange
    Left = 664
    Top = 13
  end
  object DSBledy: TDataSource
    DataSet = ZQBledy
    Left = 664
    Top = 72
  end
  object ZQBledy: TZQuery
    Connection = DM.ZConnection1
    SQL.Strings = (
      'SELECT * FROM wykaz_bledow'
      'WHERE ID_Sesji=:ID_Sesji'
    )
    Params = <    
      item
        DataType = ftUnknown
        Name = 'ID_Sesji'
        ParamType = ptUnknown
      end>
    Left = 605
    Top = 72
    ParamData = <    
      item
        DataType = ftUnknown
        Name = 'ID_Sesji'
        ParamType = ptUnknown
      end>
  end
  object DSWychowawcy: TDataSource
    DataSet = ZQWychowawcy
    Left = 704
    Top = 128
  end
  object DSBledyGrup: TDataSource
    DataSet = ZQBledyGrup
    Left = 704
    Top = 184
  end
  object ZQWychowawcy: TZQuery
    Connection = DM.ZConnection1
    SQL.Strings = (
      'SELECT Wychowawca, ID_Sesji FROM wykaz_bledow'
      'WHERE ID_Sesji=:ID_Sesji AND Wychowawca IS NOT NULL'
      'GROUP BY Wychowawca, ID_Sesji'
    )
    Params = <    
      item
        DataType = ftUnknown
        Name = 'ID_Sesji'
        ParamType = ptUnknown
      end>
    Left = 605
    Top = 128
    ParamData = <    
      item
        DataType = ftUnknown
        Name = 'ID_Sesji'
        ParamType = ptUnknown
      end>
  end
  object ZQBledyGrup: TZQuery
    Connection = DM.ZConnection1
    SQL.Strings = (
      'SELECT * FROM wykaz_bledow'
      'WHERE ID_Sesji=:ID_Sesji'
    )
    Params = <    
      item
        DataType = ftUnknown
        Name = 'ID_Sesji'
        ParamType = ptUnknown
      end>
    MasterFields = 'Wychowawca'
    MasterSource = DSWychowawcy
    LinkedFields = 'Wychowawca'
    Left = 605
    Top = 184
    ParamData = <    
      item
        DataType = ftUnknown
        Name = 'ID_Sesji'
        ParamType = ptUnknown
      end>
  end
  object DSAlimenty: TDataSource
    DataSet = RxMemAlimenty
    Left = 888
    Top = 268
  end
  object RxMemAlimenty: TRxMemoryData
    Active = True
    FieldDefs = <    
      item
        Name = 'memNazwiskoImie'
        DataType = ftString
        Precision = -1
        Size = 100
      end    
      item
        Name = 'memIDO'
        DataType = ftInteger
        Precision = -1
      end    
      item
        Name = 'memZadluzenie'
        DataType = ftString
        Precision = -1
        Size = 100
      end    
      item
        Name = 'memRata'
        DataType = ftString
        Precision = -1
        Size = 100
      end    
      item
        Name = 'memWplacil'
        DataType = ftString
        Precision = -1
        Size = 100
      end>
    PacketRecords = 0
    Left = 784
    Top = 268
    object RxMemAlimentymemNazwiskoImie: TStringField
      FieldKind = fkData
      FieldName = 'memNazwiskoImie'
      Index = 0
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
      Size = 100
    end
    object RxMemAlimentymemIDO: TLongintField
      FieldKind = fkData
      FieldName = 'memIDO'
      Index = 1
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
    end
    object RxMemAlimentymemZadluzenie: TStringField
      FieldKind = fkData
      FieldName = 'memZadluzenie'
      Index = 2
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
      Size = 100
    end
    object RxMemAlimentymemRata: TStringField
      FieldKind = fkData
      FieldName = 'memRata'
      Index = 3
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
      Size = 100
    end
    object RxMemAlimentymemWplacil: TStringField
      FieldKind = fkData
      FieldName = 'memWplacil'
      Index = 4
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
      Size = 100
    end
  end
end
