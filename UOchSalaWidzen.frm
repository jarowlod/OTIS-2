object OchSalaWidzen: TOchSalaWidzen
  Left = 404
  Height = 856
  Top = 224
  Width = 1278
  HorzScrollBar.Increment = 40
  HorzScrollBar.Page = 402
  HorzScrollBar.Smooth = True
  HorzScrollBar.Tracking = True
  VertScrollBar.Increment = 30
  VertScrollBar.Page = 306
  VertScrollBar.Smooth = True
  VertScrollBar.Tracking = True
  AutoScroll = True
  Caption = 'Sala widzeń'
  ClientHeight = 856
  ClientWidth = 1278
  Color = 16771022
  OnClose = FormClose
  OnCreate = FormCreate
  Position = poScreenCenter
  LCLVersion = '6.3'
  object PageControl1: TPageControl
    Left = 0
    Height = 856
    Top = 0
    Width = 1278
    ActivePage = TabSheetPoczekalnia
    Align = alClient
    Images = DM.ImageList1
    TabHeight = 30
    TabIndex = 2
    TabOrder = 0
    object TabSheetSalaWidzen: TTabSheet
      Caption = 'Sala widzeń'
      ClientHeight = 818
      ClientWidth = 1270
      ImageIndex = 21
      object PanelSala: TPanel
        Left = 0
        Height = 818
        Top = 0
        Width = 1270
        Align = alClient
        BevelOuter = bvNone
        ClientHeight = 818
        ClientWidth = 1270
        Color = 16771022
        ParentColor = False
        TabOrder = 0
        object BCPanel1: TBCPanel
          Left = 0
          Height = 818
          Top = 0
          Width = 1270
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
            AnchorSideLeft.Control = PanelBezdozor
            AnchorSideTop.Control = PanelBezdozor
            AnchorSideTop.Side = asrBottom
            Left = 552
            Height = 61
            Top = 180
            Width = 136
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
            BorderSpacing.Top = 10
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
      ClientWidth = 1270
      ImageIndex = 37
      object PanelPleksa: TPanel
        Left = 0
        Height = 818
        Top = 0
        Width = 1270
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
      ClientWidth = 1270
      ImageIndex = 6
      OnShow = TabSheetPoczekalniaShow
      object RxDBGrid1: TRxDBGrid
        Left = 0
        Height = 600
        Top = 0
        Width = 1270
        ColumnDefValues.BlobText = '(blob)'
        TitleButtons = True
        AutoSort = True
        Columns = <        
          item
            Font.Color = clMaroon
            Title.Alignment = taCenter
            Title.Orientation = toHorizontal
            Title.Caption = 'Data oczekiwania'
            Width = 115
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
            Alignment = taCenter
            Font.Color = clBlue
            Title.Alignment = taCenter
            Title.Orientation = toHorizontal
            Title.Caption = 'Czas Widzenia'
            Width = 60
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
            Alignment = taCenter
            Title.Alignment = taCenter
            Title.Orientation = toHorizontal
            Title.Caption = 'Czas reg.'
            Width = 60
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
            Alignment = taCenter
            Title.Alignment = taCenter
            Title.Orientation = toHorizontal
            Title.Caption = 'Czas dod.'
            Width = 60
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
            Alignment = taCenter
            Title.Alignment = taCenter
            Title.Orientation = toHorizontal
            Title.Caption = 'Sposób'
            Width = 60
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
            Alignment = taCenter
            Title.Alignment = taCenter
            Title.Orientation = toHorizontal
            Title.Caption = 'Dodatkowe'
            Width = 70
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
            Title.Caption = 'Uwagi do dodatkowego'
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
            Width = 200
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
            Width = 120
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
            Alignment = taCenter
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
          end        
          item
            Alignment = taCenter
            Font.Color = clGreen
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
        PopupMenu = PopupMenuPoczekalnia
        ReadOnly = True
        ShowHint = True
        TabOrder = 0
        TitleStyle = tsNative
      end
      object Panel1: TPanel
        Left = 0
        Height = 218
        Top = 600
        Width = 1270
        Align = alBottom
        ClientHeight = 218
        ClientWidth = 1270
        TabOrder = 1
        object btnWybranyDoWidzenia: TBitBtn
          Left = 168
          Height = 30
          Top = 176
          Width = 174
          Caption = 'Przypisz do stolika'
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000064000000640000000000000000000000000000000000
            00009E4309FEAD540BF8A74800FE993900D80000000000000000000000000000
            00000000000000000000000000008B2B0036953600C100000000000000000000
            0000BA7027FFFDC230FFE88E00FFAC4C07E60000000000000000000000000000
            0000000000000000000089260029AA5519FF9A3D08F400000000000000000000
            0000B86B28FFEFB437FFDE8A0BFFAD500AE40000000000000000000000000000
            0000000000008922003AAC5C23FFEFB12FFFA14101E200000000000000000000
            0000BE7030FFF3BC46FFE49515FFB1550FE40000000000000000000000000000
            00008F260056B86F32FFEBAD2FFFE6950FFFA24205E300000000000000000000
            0000C27634FFF6C451FFE79F1FFFB95D12E4000000000000000000000000952D
            0068BF7838FFF0B73EFFE49613FFE49A1DFFA94C0DE300000000000000000000
            0000C77B38FFF6CB5CFFEAA728FFBE6416E40000000000000000992F0097CC8F
            49FFF4BD41FFE39A1EFFE49C28FFE7A527FFAF500EE300000000000000000000
            0000CB823BFFF7D267FFEEB031FFC56D19D900000000A03700A4D4984CFFF4C2
            47FFE7A329FFE7A631FFE7A62FFFEDAC31FFB75810E300000000000000000000
            0000D08840FFFAD772FFF0B73CFFC9721ACDA74001BEE6BC79FFFACE53FFE9A8
            2AFFEBB03BFFEAAE38FFE9AD37FFEDB43AFFBC6014E300000000000000000000
            0000D68E43FFFADA7DFFF1C046FFCF7A1FCCAA400060DDA966FFFCE89FFFEEB8
            3FFFEBB23BFFECB543FFECB541FFEFB943FFC46818E300000000000000000000
            0000DA9445FFFCE188FFF4C651FFD38424E200000000AF45005DD4944BFFFFF1
            B8FFF0BF4DFFEDB542FFEEBB4CFFF1C24DFFCA721AE300000000000000000000
            0000DD9A48FFFEE68FFFF7CE5CFFD88B27E40000000000000000BD570057D99A
            4FFFFFF4C1FFF3C759FFEFBB4AFFF3C558FFCF791EE300000000000000000000
            0000E2A04CFFFFE997FFF9D363FFDA902BE4000000000000000000000000C766
            043ADA9C49FFFBEBB6FFF7CF69FFF4C854FFD48221E300000000000000000000
            0000E5A74FFFFFEEA1FFFAD96EFFE0972EE40000000000000000000000000000
            0000D0710938DD9B3FFFFFF2C8FFFBDB7BFFD98717E300000000000000000000
            0000E8AD52FFFFEE9DFFFCDA69FFE39F2FE40000000000000000000000000000
            000000000000D578092BE2A340FFFFF8D0FFE3A43FE200000000000000000000
            0000EDB85BFFFFFFEAFFFFF9C1FFE9AD41E60000000000000000000000000000
            00000000000000000000D980091AE7A93EFFE7A93BF400000000000000000000
            0000EAAA34FEEEBE61F8EFBD60FEE9A935D80000000000000000000000000000
            0000000000000000000000000000E2972136E8A52BC100000000
          }
          OnClick = btnWybranyDoWidzeniaClick
          TabOrder = 0
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
        object Panel3: TPanel
          Left = 568
          Height = 216
          Top = 1
          Width = 701
          Align = alRight
          Anchors = [akTop, akLeft, akRight, akBottom]
          BevelOuter = bvLowered
          ClientHeight = 216
          ClientWidth = 701
          Color = clBtnFace
          ParentColor = False
          TabOrder = 1
          object Label1: TLabel
            Left = 1
            Height = 24
            Top = 1
            Width = 699
            Align = alTop
            Alignment = taCenter
            AutoSize = False
            Caption = 'Osoby odwiedzające'
            Layout = tlCenter
            ParentColor = False
          end
          object RxDBGrid2: TRxDBGrid
            Left = 1
            Height = 190
            Top = 25
            Width = 699
            ColumnDefValues.BlobText = '(blob)'
            TitleButtons = True
            AutoSort = True
            Columns = <            
              item
                Title.Alignment = taCenter
                Title.Orientation = toHorizontal
                Title.Caption = 'Nazwisko'
                Width = 120
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
                Width = 120
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
                Alignment = taCenter
                Title.Alignment = taCenter
                Title.Orientation = toHorizontal
                Title.Caption = 'Pokrewieństwo'
                Width = 120
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
                Width = 300
                FieldName = 'Uwagi'
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
            AlternateColor = 16055807
            AutoAdvance = aaNone
            AutoEdit = False
            Color = clWindow
            DrawFullLine = False
            FocusColor = clHighlight
            FixedHotColor = clNone
            SelectedColor = clHighlight
            GridLineStyle = psSolid
            DataSource = DSOsoby
            DefaultRowHeight = 0
            FixedColor = clNone
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgHeaderPushedLook, dgAnyButtonCanSelect, dgDisableDelete, dgDisableInsert, dgTruncCellHints, dgCellEllipsis]
            ParentShowHint = False
            ReadOnly = True
            ShowHint = True
            TabOrder = 0
            TitleStyle = tsNative
          end
        end
        object DBlblNazwisko: TDBText
          AnchorSideTop.Control = Label2
          AnchorSideTop.Side = asrCenter
          Left = 232
          Height = 22
          Top = 28
          Width = 138
          DataField = 'Nazwisko'
          DataSource = DSWidzenia
          Font.CharSet = EASTEUROPE_CHARSET
          Font.Color = clMaroon
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Quality = fqDraft
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object DBlblImie: TDBText
          AnchorSideTop.Control = Label3
          AnchorSideTop.Side = asrCenter
          Left = 232
          Height = 22
          Top = 51
          Width = 88
          DataField = 'Imie'
          DataSource = DSWidzenia
          Font.CharSet = EASTEUROPE_CHARSET
          Font.Color = clMaroon
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Quality = fqDraft
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object DBlblOjciec: TDBText
          AnchorSideTop.Control = Label4
          AnchorSideTop.Side = asrCenter
          Left = 232
          Height = 16
          Top = 77
          Width = 74
          DataField = 'Ojciec'
          DataSource = DSWidzenia
          Font.CharSet = EASTEUROPE_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Quality = fqDraft
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object DBlblPOC: TDBText
          Left = 232
          Height = 15
          Top = 104
          Width = 53
          DataField = 'POC'
          DataSource = DSWidzenia
          Font.Color = clMaroon
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object DBlblKlasyf: TDBText
          Left = 232
          Height = 15
          Top = 120
          Width = 63
          DataField = 'Klasyf'
          DataSource = DSWidzenia
          Font.Color = clMaroon
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object DBlblIDO: TDBText
          Left = 232
          Height = 15
          Top = 8
          Width = 48
          DataField = 'IDO'
          DataSource = DSWidzenia
          Font.Color = clMaroon
          ParentColor = False
          ParentFont = False
        end
        object lblCelaTA: TLabel
          AnchorSideLeft.Side = asrBottom
          Left = 304
          Height = 16
          Top = 103
          Width = 49
          BorderSpacing.Left = 10
          Caption = 'Cela TA'
          Font.CharSet = EASTEUROPE_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Quality = fqDraft
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Visible = False
        end
        object lblCelaOchronna: TLabel
          AnchorSideLeft.Control = DBcbGR
          AnchorSideLeft.Side = asrBottom
          AnchorSideTop.Control = DBcbGR
          AnchorSideTop.Side = asrCenter
          Left = 314
          Height = 15
          Top = 144
          Width = 79
          BorderSpacing.Left = 10
          Caption = 'Cela Ochronna'
          Font.Color = clRed
          ParentColor = False
          ParentFont = False
          Visible = False
        end
        object DBcbGR: TDBCheckBox
          Left = 232
          Height = 23
          Top = 140
          Width = 72
          Caption = 'Grypsuje'
          DataField = 'GR'
          DataSource = DSWidzenia
          ReadOnly = True
          TabOrder = 2
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object Label2: TLabel
          Left = 168
          Height = 15
          Top = 32
          Width = 53
          Caption = 'Nazwisko:'
          ParentColor = False
        end
        object Label3: TLabel
          Left = 195
          Height = 15
          Top = 55
          Width = 26
          Caption = 'Imię:'
          ParentColor = False
        end
        object Label4: TLabel
          Left = 185
          Height = 15
          Top = 78
          Width = 36
          Caption = 'Ojciec:'
          ParentColor = False
        end
        object Label5: TLabel
          Left = 194
          Height = 15
          Top = 104
          Width = 27
          Caption = 'POC:'
          ParentColor = False
        end
        object Label6: TLabel
          Left = 157
          Height = 15
          Top = 120
          Width = 64
          Caption = 'Klasyfikacja:'
          ParentColor = False
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
      'w.Nadzor,'
      'o.Nazwisko, '
      'o.Imie,'
      'o.Ojciec,'
      'o.POC,'
      'o.Klasyf,'
      'inf.GR'
      'FROM '
      '  widzenia w, '
      '  osadzeni o'
      'LEFT JOIN os_info inf ON (inf.IDO=o.IDO)'
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
  object TimerAutoUpdate: TTimer
    Enabled = False
    Interval = 60000
    OnTimer = TimerAutoUpdateTimer
    Left = 1068
    Top = 384
  end
  object DSOsoby: TDataSource
    DataSet = ZQOsoby
    Left = 699
    Top = 560
  end
  object ZQOsoby: TZQuery
    Connection = DM.ZConnection1
    ReadOnly = True
    SQL.Strings = (
      'SELECT'
      'w.ID_widzenia, '
      'w.ID_uprawnione, '
      'u.Nazwisko, '
      'u.Imie, '
      'u.Pokrew, '
      'u.Uwagi '
      'FROM widzenia_upr w'
      'LEFT JOIN uprawnione u ON (w.ID_uprawnione = u.ID)'
      'WHERE ID_widzenia = :id_widzenia'
    )
    Params = <    
      item
        DataType = ftUnknown
        Name = 'id_widzenia'
        ParamType = ptUnknown
      end>
    Left = 624
    Top = 560
    ParamData = <    
      item
        DataType = ftUnknown
        Name = 'id_widzenia'
        ParamType = ptUnknown
      end>
  end
  object PopupMenuPoczekalnia: TPopupMenu
    Images = DM.ImageList1
    Left = 296
    Top = 176
    object miModyfikuj: TMenuItem
      Caption = 'Modyfikuj ...'
      Bitmap.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        20000000000000040000640000006400000000000000000000000A2B9500021C
        80FB0024973C1A66D8451766D121000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000092A927B0000
        58FF4E9FDFFF4CBFF8FF1467D4FF0B30ADB20000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000A81338AAD
        DCFFC3FFFFFF95EBFFFF58D0FDFF0773D9FF0C33AFD400000000000000000000
        00000000000000000000000000000000000000000000000000000E42B14692BA
        E5FFFFFFFFFF79DFFFFF0EA4EEFF0B6DD5FF0E7FE0FF1046BBDA000000000000
        0000000000000000000000000000000000000000000000000000000000001C4A
        BCB7DBFFFFFF06DFFAFF00C3FCFF119EEAFF1272D7FF0D80E1FF134BC0D30000
        0000000000000000000000000000000000000000000000000000000000000016
        A8B535B9E4FF0AFFFFFF00D8F6FF00C8FEFF119CEAFF1271D6FF0D7FDFFF154D
        C2DA000000000000000000000000000000000000000000000000000000000000
        00000B2EB4DA3AD2ECFF12FFFFFF00D9F6FF00C8FEFF119CEAFF1271D5FF0D80
        DEFF1550C4D30000000000000000000000000000000000000000000000000000
        000000000000102DB6D339D4EDFF12FFFFFF00D8F6FF00C8FEFF119CEAFF1271
        D5FF0D7FDFFF1651C9DA00000000000000000000000000000000000000000000
        000000000000000000001233B8DA3AD1ECFF0CFFFDFF00D9F6FF00C8FEFF119C
        EAFF126FD5FF0C80DFFF1A5BCBD3000000000000000000000000000000000000
        00000000000000000000000000001637BDD359F0F6FF07FFFBFF00D8F6FF00C8
        FEFF119CEAFF1371D6FF0B7FE3FF0047CADA0000000000000000000000000000
        000000000000000000000000000000000000294CC4DA67F6F8FF03FFFAFF00D8
        F6FF00C8FEFF0EA9F7FF0052BEFF627590FF5684D3D300000000000000000000
        000000000000000000000000000000000000000000002D4FC8D368F8F9FF05FF
        FAFF00E6FFFF00A4E9FF627992FFFFFFE9FF7976B8FF0032CBCB000000000000
        00000000000000000000000000000000000000000000000000002E53CADA66FF
        FFFF00E9E1FF639AA3FFFFFFFCFF6B6FAAFF0000DDFF0D27EFFF000000000000
        0000000000000000000000000000000000000000000000000000000000001E59
        CFD380B6BCFFFFFFFCFF6D7CADFF0000DAFF0007FFFF0D26E8FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00004474E3DA84A6BCFF0C6CE2FF1458FFFF0B21EDFF1130E026000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000953D0C43FADF7F92982EDEE103AEA1F00000000
      }
      ImageIndex = 39
      OnClick = miModyfikujClick
    end
    object miUsunZPoczekalni: TMenuItem
      Caption = 'Usuń z poczekalni ...'
      Bitmap.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000064000000640000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000606BCD60A10
        D6E10408CFE10509D0E10508CFE10409CFE10408CEE10407CDE10306CCE10305
        CBE10205CAE10303CAE10202C7E10502C5E10200C7E10200B6D61820D4FF2C4A
        F2FF1930EEFF1C31EEFF172DEEFF1629EEFF1328EDFF1223EDFF101FEDFF0F1B
        ECFF0D16ECFF0C12ECFF0B0EEBFF0A0BEAFF0A07ECFF0301CDFF4A53F2F24674
        FFFF2148FFFF2A50FFFF294BFFFF2646FFFF2341FFFF203DFFFF1D38FFFF1B35
        FFFF182DFFFF1628FFFF1421FFFF121CFFFF1118FFFF0705EBF27173F7F381A0
        FFFF4668FFFF3256FFFF2649FFFF2445FFFF2140FFFF1D3BFFFF1A36FFFF1732
        FFFF142EFFFF122AFFFF0F25FFFF0D1DFFFF0E1EFFFF0002F1F3696DFDF28EB0
        FFFF7493FFFF7594FFFF6989FFFF5578FFFF476BFFFF3F60FFFF3252FFFF2E4D
        FFFF2B49FFFF2944FFFF2541FFFF223AFFFF223CFFFF141BFDF27176FFFFA6C4
        FFFF91ACFFFF94B1FFFF96AFFFFF95B0FFFF94B0FFFF93B0FFFF93ACFFFF90AA
        FFFF8EA6FFFF8CA4FFFF8A9FFFFF869CFFFF88A6FFFF6168FFFF524CFFD66C6E
        FFE16765FFE16766FFE16766FFE16766FFE16766FFE16565FFE16564FFE16664
        FFE16464FFE16465FFE16562FFE16462FFE16868FFE1504BFFD6000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000
      }
      ImageIndex = 44
      OnClick = miUsunZPoczekalniClick
    end
    object MenuItem2: TMenuItem
      Caption = '-'
    end
    object miRejestrWidzen: TMenuItem
      Caption = 'Rejestr widzeń ...'
      ImageIndex = 26
      OnClick = miRejestrWidzenClick
    end
    object MenuItem1: TMenuItem
      Caption = '-'
    end
    object miRefresh: TMenuItem
      Caption = 'Odśwież'
      Bitmap.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000064000000640000000000000000000000000000000000
        00000000000000000000DB730D83D16108C3B75400FFB85500FFB65300FFD05F
        06C3D86F0C8300000000000000000000000000000000D9710BFF000000000000
        000000000000D16008FFE39200FFE49600FFE19300FFED9E00FFF9A200FFFDB0
        0DFFFFBB17FFD56908FFD86F0AFF00000000D9700AFFEC951CFF000000000000
        0000B55200FFE79B00FFE29300FFDE8F00FFE39000FFFAA500FFF8A708FFF9B0
        1AFFFCB221FFFFC737FFF6AB28FFD46502FFF6AF2DFFED9621FF00000000C858
        09FFE89C00FFDF8F00FFE39200FFF0A100FFF19005FFEF8F05FFEC8600FFFFC1
        29FFFFBE2EFFFFC845FFFFCE50FFFFD964FFFFDC6DFFF3A224FFA24000FFE291
        00FFE19300FFE39200FFF2A300FFC35508FFC25202FFD2670AFFD06508FFD164
        07FFFFD965FFFFC945FFFFD058FFFFD767FFFFDC71FFF4A629FFA74200FFEA9C
        00FFEC9C00FFF0A100FFC35508FF00000000000000000000000000000000F1A8
        3EFFFFE393FFFFD055FFFFD563FFFFDE78FFFFE486FFF8AE2DFFB35000FFDE81
        00FFDB7D00FFDD8000FFC65908FF000000000000000000000000DE7508FFFFCF
        56FFFFEBA7FFFFF2C9FFFFEBA7FFFFDF7DFFFFE78DFFFCB52EFF000000000000
        000000000000000000000000000000000000000000000000000000000000DD73
        06FFDB6E00FFED900DFFEF8E0AFFFDC552FFFCC24FFFFECB56FFD47314FFDA7E
        21FFD97D21FFB24300FFC24F00FFE17803FFE0780AFF00000000000000000000
        0000000000000000000000000000000000000000000000000000B75300FFEA99
        00FFF39A00FFFFD858FFFFEA9AFFFFF2C9FFFFDA52FFE0790CFF000000000000
        000000000000F19718FFEF900FFFFFB71EFFFFB61DFFFEBD2CFFBC5700FFF5A0
        00FFF8A303FFFCAD10FFF9A814FFFFB517FFD36503FF00000000000000000000
        000000000000EF8E0AFFFFED97FFFFEB9DFFFFF2C9FFFFB61FFFC65C00FFFBA6
        00FFF8A308FFFBB321FFFAB525FFFFCF4CFFDE740FFFE4810BFFEE9618FFEC90
        14FFEF8E0AFFFFED97FFFFE386FFFFE9A7FFFFF6EAFFFFB921FFC95F00FFFBA9
        04FFFCAE10FFFEB825FFFEB729FFFFC53FFFFFD44EFFFFD75DFFFFD359FFFFCD
        50FFFFE383FFFFE385FFFFE17EFFFFF6EAFFFFD053FF00000000D16500FFFEAE
        12FFC75905FFD66B08FFFFC834FFFFC53DFFFFC948FFFFD35EFFFFD765FFFFDC
        79FFFFDC71FFFFE8A0FFFFF6EAFFFFD053FF0000000000000000D46800FFCB60
        07FF0000000000000000D56805FFFFD456FFFFD24EFFFFD45EFFFFDB68FFFFDF
        72FFFFE79CFFFFF6EAFFFFD156FF000000000000000000000000DC750DFF0000
        0000000000000000000000000000ED8D1383EA8911C3F09212FFF8AA29FFF8A3
        18FFFDAA15C3FFD0538300000000000000000000000000000000
      }
      ImageIndex = 45
      OnClick = miRefreshClick
    end
  end
end
