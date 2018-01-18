object OchSalaWidzen: TOchSalaWidzen
  Left = 258
  Height = 856
  Top = 114
  Width = 1195
  HorzScrollBar.Increment = 109
  HorzScrollBar.Page = 1096
  HorzScrollBar.Smooth = True
  HorzScrollBar.Tracking = True
  VertScrollBar.Increment = 28
  VertScrollBar.Page = 289
  VertScrollBar.Smooth = True
  VertScrollBar.Tracking = True
  AutoScroll = True
  Caption = 'Sala widzeń'
  ClientHeight = 856
  ClientWidth = 1195
  Color = 16771022
  OnClose = FormClose
  OnCreate = FormCreate
  Position = poScreenCenter
  LCLVersion = '6.3'
  object PageControl1: TPageControl
    Left = 0
    Height = 856
    Top = 0
    Width = 1195
    ActivePage = TabSheetSalaWidzen
    Align = alClient
    Images = DM.ImageList1
    TabHeight = 30
    TabIndex = 0
    TabOrder = 0
    object TabSheetSalaWidzen: TTabSheet
      Caption = 'Sala widzeń'
      ClientHeight = 818
      ClientWidth = 1187
      ImageIndex = 21
      object PanelSala: TPanel
        Left = 0
        Height = 818
        Top = 0
        Width = 1187
        Align = alClient
        BevelOuter = bvNone
        ClientHeight = 818
        ClientWidth = 1187
        Color = 16771022
        ParentColor = False
        TabOrder = 0
        object BCPanel1: TBCPanel
          Left = 0
          Height = 818
          Top = 0
          Width = 1187
          Align = alClient
          Background.Color = clWhite
          Background.ColorOpacity = 255
          Background.Gradient1.StartColor = 16769702
          Background.Gradient1.StartColorOpacity = 255
          Background.Gradient1.DrawMode = dmSet
          Background.Gradient1.EndColor = 11425536
          Background.Gradient1.EndColorOpacity = 255
          Background.Gradient1.ColorCorrection = False
          Background.Gradient1.GradientType = gtLinear
          Background.Gradient1.Point1XPercent = 0
          Background.Gradient1.Point1YPercent = 0
          Background.Gradient1.Point2XPercent = 100
          Background.Gradient1.Point2YPercent = 100
          Background.Gradient1.Sinus = False
          Background.Gradient2.StartColor = clWhite
          Background.Gradient2.StartColorOpacity = 255
          Background.Gradient2.DrawMode = dmSet
          Background.Gradient2.EndColor = clBlack
          Background.Gradient2.EndColorOpacity = 255
          Background.Gradient2.ColorCorrection = True
          Background.Gradient2.GradientType = gtLinear
          Background.Gradient2.Point1XPercent = 0
          Background.Gradient2.Point1YPercent = 0
          Background.Gradient2.Point2XPercent = 0
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
          Rounding.RoundX = 20
          Rounding.RoundY = 20
          Rounding.RoundOptions = []
          TabOrder = 0
          object lblZegar: TBCLabel
            AnchorSideTop.Control = PanelBezdozor
            AnchorSideTop.Side = asrBottom
            AnchorSideRight.Control = PanelBezdozor
            AnchorSideRight.Side = asrBottom
            Left = 952
            Height = 61
            Top = 190
            Width = 136
            Anchors = [akTop, akRight]
            Background.Color = clBlack
            Background.ColorOpacity = 255
            Background.Gradient1.StartColor = clWhite
            Background.Gradient1.StartColorOpacity = 255
            Background.Gradient1.DrawMode = dmSet
            Background.Gradient1.EndColor = clBlack
            Background.Gradient1.EndColorOpacity = 255
            Background.Gradient1.ColorCorrection = True
            Background.Gradient1.GradientType = gtLinear
            Background.Gradient1.Point1XPercent = 0
            Background.Gradient1.Point1YPercent = 0
            Background.Gradient1.Point2XPercent = 0
            Background.Gradient1.Point2YPercent = 100
            Background.Gradient1.Sinus = False
            Background.Gradient2.StartColor = clWhite
            Background.Gradient2.StartColorOpacity = 255
            Background.Gradient2.DrawMode = dmSet
            Background.Gradient2.EndColor = clBlack
            Background.Gradient2.EndColorOpacity = 255
            Background.Gradient2.ColorCorrection = True
            Background.Gradient2.GradientType = gtLinear
            Background.Gradient2.Point1XPercent = 0
            Background.Gradient2.Point1YPercent = 0
            Background.Gradient2.Point2XPercent = 0
            Background.Gradient2.Point2YPercent = 100
            Background.Gradient2.Sinus = False
            Background.Gradient1EndPercent = 35
            Background.Style = bbsClear
            Border.Color = clBlack
            Border.ColorOpacity = 255
            Border.LightColor = clWhite
            Border.LightOpacity = 255
            Border.LightWidth = 0
            Border.Style = bboSolid
            Border.Width = 1
            BorderSpacing.Top = 20
            Caption = '12:23:10'
            FontEx.Color = clCream
            FontEx.EndEllipsis = False
            FontEx.FontQuality = fqFineAntialiasing
            FontEx.Height = 32
            FontEx.SingleLine = True
            FontEx.Shadow = True
            FontEx.ShadowColor = clBlack
            FontEx.ShadowColorOpacity = 255
            FontEx.ShadowRadius = 5
            FontEx.ShadowOffsetX = 3
            FontEx.ShadowOffsetY = 3
            FontEx.Style = []
            FontEx.TextAlignment = bcaCenter
            FontEx.WordBreak = False
            InnerMargin = 0
            Rounding.RoundX = 1
            Rounding.RoundY = 1
            Rounding.RoundOptions = []
          end
          object PanelBezdozor: TBCPanel
            Left = 552
            Height = 170
            Top = 0
            Width = 536
            Background.Color = clWhite
            Background.ColorOpacity = 255
            Background.Gradient1.StartColor = 15132390
            Background.Gradient1.StartColorOpacity = 255
            Background.Gradient1.DrawMode = dmSet
            Background.Gradient1.EndColor = 7105644
            Background.Gradient1.EndColorOpacity = 255
            Background.Gradient1.ColorCorrection = False
            Background.Gradient1.GradientType = gtLinear
            Background.Gradient1.Point1XPercent = 0
            Background.Gradient1.Point1YPercent = 0
            Background.Gradient1.Point2XPercent = 100
            Background.Gradient1.Point2YPercent = 100
            Background.Gradient1.Sinus = False
            Background.Gradient2.StartColor = clWhite
            Background.Gradient2.StartColorOpacity = 255
            Background.Gradient2.DrawMode = dmSet
            Background.Gradient2.EndColor = clBlack
            Background.Gradient2.EndColorOpacity = 255
            Background.Gradient2.ColorCorrection = True
            Background.Gradient2.GradientType = gtLinear
            Background.Gradient2.Point1XPercent = 0
            Background.Gradient2.Point1YPercent = 0
            Background.Gradient2.Point2XPercent = 0
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
            Border.Style = bboSolid
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
            Rounding.RoundX = 20
            Rounding.RoundY = 20
            Rounding.RoundOptions = [rrTopLeftSquare, rrTopRightSquare, rrBottomRightSquare, rrBottomLeftSquare]
            TabOrder = 0
            object Shape1: TShape
              Left = 0
              Height = 15
              Top = 155
              Width = 536
              Align = alBottom
              Brush.Color = clYellow
              Brush.Style = bsBDiagonal
            end
            object Shape2: TShape
              Left = 0
              Height = 105
              Top = 0
              Width = 15
              Align = alLeft
              BorderSpacing.Bottom = 50
              Brush.Color = clYellow
              Brush.Style = bsBDiagonal
            end
          end
        end
      end
    end
    object TabSheetPleksa: TTabSheet
      Caption = 'Pleksa'
      ClientHeight = 818
      ClientWidth = 1187
      ImageIndex = 37
      object PanelPleksa: TPanel
        Left = 0
        Height = 818
        Top = 0
        Width = 1187
        Align = alClient
        BevelOuter = bvNone
        Color = 13027325
        ParentColor = False
        TabOrder = 0
      end
    end
    object TabSheetPoczekalnia: TTabSheet
      Caption = 'Poczekalnia'
      ClientHeight = 818
      ClientWidth = 1187
      ImageIndex = 6
      OnShow = TabSheetPoczekalniaShow
      object RxDBGrid1: TRxDBGrid
        Left = 0
        Height = 600
        Top = 0
        Width = 1187
        ColumnDefValues.BlobText = '(blob)'
        TitleButtons = True
        AutoSort = True
        Columns = <        
          item
            Title.Alignment = taCenter
            Title.Orientation = toHorizontal
            Title.Caption = 'Data_Oczekuje'
            FieldName = 'Data_Oczekuje'
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
            Title.Caption = 'Czas_Widzenia'
            FieldName = 'Czas_Widzenia'
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
            Title.Caption = 'Czas_reg'
            FieldName = 'Czas_reg'
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
            Title.Caption = 'Czas_dod'
            Width = 50
            FieldName = 'Czas_dod'
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
            Title.Caption = 'Sposob'
            FieldName = 'Sposob'
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
            Title.Caption = 'Dodatkowe'
            FieldName = 'Dodatkowe'
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
            Title.Caption = 'Data_Dod'
            Width = 100
            FieldName = 'Data_Dod'
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
            FieldName = 'Uwagi'
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
            Title.Caption = 'Nazwisko'
            Width = 100
            FieldName = 'Nazwisko'
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
            Title.Caption = 'Imie'
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
            Title.Caption = 'Ojciec'
            Width = 100
            FieldName = 'Ojciec'
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
            Width = 50
            FieldName = 'POC'
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
            Title.Caption = 'Klasyf'
            Width = 50
            FieldName = 'Klasyf'
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
        FooterOptions.Color = clSilver
        FooterOptions.RowCount = 1
        FooterOptions.Style = tsNative
        FooterOptions.DrawFullLine = False
        SearchOptions.QuickSearchOptions = [loCaseInsensitive, loPartialKey]
        SearchOptions.FromStart = False
        OptionsRx = [rdgAllowDialogFind, rdgAllowQuickSearch, rdgAllowQuickFilter, rdgAllowFilterForm, rdgAllowSortForm, rdgAllowToolMenu, rdgCaseInsensitiveSort, rdgWordWrap]
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
        DataSource = DSWidzenia
        DefaultRowHeight = 19
        FixedColor = clNone
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgHeaderHotTracking, dgHeaderPushedLook, dgAnyButtonCanSelect, dgDisableDelete, dgDisableInsert, dgCellHints, dgTruncCellHints, dgCellEllipsis]
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 0
        TitleStyle = tsNative
      end
      object Panel1: TPanel
        Left = 0
        Height = 218
        Top = 600
        Width = 1187
        Align = alBottom
        ClientHeight = 218
        ClientWidth = 1187
        TabOrder = 1
        object btnWybranyDoWidzenia: TBitBtn
          Left = 474
          Height = 30
          Top = 31
          Width = 174
          Caption = 'Wybrany'
          OnClick = btnWybranyDoWidzeniaClick
          TabOrder = 0
        end
        object DBEdit1: TDBEdit
          Left = 160
          Height = 23
          Top = 16
          Width = 128
          DataField = 'Nazwisko'
          DataSource = DSWidzenia
          CharCase = ecNormal
          MaxLength = 0
          TabOrder = 1
        end
        object Image1: TImage
          Left = 8
          Height = 200
          Top = 8
          Width = 146
          Center = True
          Proportional = True
          Stretch = True
        end
      end
    end
  end
  object TimerZegar: TTimer
    OnTimer = TimerZegarTimer
    OnStartTimer = TimerZegarTimer
    Left = 1068
    Top = 309
  end
  object ZQWidzenia: TZQuery
    Connection = DM.ZConnection1
    ReadOnly = True
    SQL.Strings = (
      'SELECT'
      'w.ID, '
      'w.IDO, '
      'w.Data_Oczekuje, '
      'w.Data_Widzenie,'
      'w.Data_Stolik,'
      'w.Czas_Widzenia,'
      'w.Czas_reg,'
      'w.Czas_dod,'
      'w.Etap,'
      'w.Sposob,'
      'w.Dodatkowe, '
      'w.Data_Dod, '
      'w.Uwagi, '
      'o.Nazwisko, '
      'o.Imie,'
      'o.Ojciec,'
      'o.POC,'
      'o.Klasyf '
      'FROM '
      '  widzenia w, '
      '  osadzeni o'
      'WHERE'
      '  (w.Etap=1)and(w.IDO=o.IDO)'
    )
    Params = <>
    Left = 296
    Top = 88
  end
  object DSWidzenia: TDataSource
    DataSet = ZQWidzenia
    OnDataChange = DSWidzeniaDataChange
    Left = 384
    Top = 88
  end
end
