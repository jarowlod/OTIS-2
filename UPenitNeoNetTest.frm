object PenitNeoNetTest: TPenitNeoNetTest
  Left = 388
  Height = 641
  Top = 232
  Width = 1024
  Caption = 'NeoNet - sprawdzanie poprwaności danych'
  ClientHeight = 641
  ClientWidth = 1024
  OnCreate = FormCreate
  LCLVersion = '6.5'
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
      Caption = 'Kreator sprawdzania poprawności danych w NeoNet'
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
    ActivePage = TabSheet1
    Align = alClient
    TabIndex = 0
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
        object RxDBGrid1: TRxDBGrid
          Left = 96
          Height = 520
          Top = 0
          Width = 920
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
          Align = alClient
          AlternateColor = 14022911
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
          TabOrder = 1
          TitleStyle = tsNative
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
          Left = 488
          Height = 30
          Top = 8
          Width = 184
          Caption = 'Ustaw ID Sesji na wybranej'
          OnClick = btnUstawIDSesjiClick
          TabOrder = 0
        end
        object BitBtn1: TBitBtn
          Left = 8
          Height = 30
          Top = 8
          Width = 195
          Caption = 'Wyślij komunikaty do wszyskich'
          TabOrder = 1
        end
        object DBNavigator1: TDBNavigator
          AnchorSideRight.Control = Panel3
          AnchorSideRight.Side = asrBottom
          AnchorSideBottom.Control = Panel3
          AnchorSideBottom.Side = asrBottom
          Left = 775
          Height = 25
          Top = 20
          Width = 241
          Anchors = [akRight, akBottom]
          BevelOuter = bvNone
          ChildSizing.EnlargeHorizontal = crsScaleChilds
          ChildSizing.EnlargeVertical = crsScaleChilds
          ChildSizing.ShrinkHorizontal = crsScaleChilds
          ChildSizing.ShrinkVertical = crsScaleChilds
          ChildSizing.Layout = cclLeftToRightThenTopToBottom
          ChildSizing.ControlsPerLine = 100
          ClientHeight = 25
          ClientWidth = 241
          DataSource = DSBledy
          Options = []
          TabOrder = 2
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
        AutoCompleteText = [cbactEnabled, cbactEndOfLineComplete, cbactSearchAscending]
        DropDownCount = 10
        ItemHeight = 15
        Items.Strings = (
          'Uruchom nagrodę.'
          'Uruchom Karę.'
          'Nagrody do zaopiniowania.'
          'Kary do zaopiniowania.'
          'Przeterminowany termin oceny.'
          'Przeterminowany termin weryfikacji potrzeb.'
          'Przeterminowany termin udokumentowania wykształcenia.'
          'Przeterminowane: PRAWO DO ŁĄCZENIA WIDZEŃ DO DNIA'
          'Przeterminowany: TERMIN PRZYJĘCIA DO ODDZIAŁU TERAPEUTYCZNEGO'
          'Przeterminowany: TERMIN OCENY WERYFIKACJI IPO'
          'Przeterminowany: TERMIN REALIZACJI PRZEZ SKAZANEGO ZADANIA WYNIKAJĄCEGO Z IPO'
          'Brak Poziomu wykształcenia, Typu szkoły.'
          'Konflikt palenia'
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
        TabOrder = 4
        Visible = False
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
end
