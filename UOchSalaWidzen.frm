object OchSalaWidzen: TOchSalaWidzen
  Left = 396
  Height = 856
  Top = 222
  Width = 1195
  HorzScrollBar.Increment = 41
  HorzScrollBar.Page = 411
  HorzScrollBar.Smooth = True
  HorzScrollBar.Tracking = True
  VertScrollBar.Increment = 30
  VertScrollBar.Page = 306
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
    ActivePage = TabSheetPoczekalnia
    Align = alClient
    Images = DM.ImageList1
    TabHeight = 30
    TabIndex = 2
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
          Left = 168
          Height = 30
          Top = 176
          Width = 174
          Caption = 'przypisz do stolika'
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
          Left = 416
          Height = 216
          Top = 1
          Width = 770
          Align = alRight
          Anchors = [akTop, akLeft, akRight, akBottom]
          BevelOuter = bvLowered
          ClientHeight = 216
          ClientWidth = 770
          Color = clBtnFace
          ParentColor = False
          TabOrder = 1
          object Label1: TLabel
            Left = 1
            Height = 24
            Top = 1
            Width = 768
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
            Width = 768
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
          Left = 168
          Height = 15
          Top = 32
          Width = 83
          DataField = 'Nazwisko'
          DataSource = DSWidzenia
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object DBlblImie: TDBText
          Left = 168
          Height = 15
          Top = 48
          Width = 55
          DataField = 'Imie'
          DataSource = DSWidzenia
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object DBlblOjciec: TDBText
          Left = 168
          Height = 15
          Top = 64
          Width = 61
          DataField = 'Ojciec'
          DataSource = DSWidzenia
          ParentColor = False
        end
        object DBlblPOC: TDBText
          Left = 168
          Height = 15
          Top = 88
          Width = 52
          DataField = 'POC'
          DataSource = DSWidzenia
          ParentColor = False
        end
        object DBlblKlasyf: TDBText
          Left = 168
          Height = 15
          Top = 104
          Width = 59
          DataField = 'Klasyf'
          DataSource = DSWidzenia
          ParentColor = False
        end
        object DBlblIDO: TDBText
          Left = 168
          Height = 15
          Top = 8
          Width = 48
          DataField = 'IDO'
          DataSource = DSWidzenia
          ParentColor = False
        end
        object lblCelaTA: TLabel
          AnchorSideLeft.Side = asrBottom
          Left = 344
          Height = 19
          Top = 8
          Width = 58
          BorderSpacing.Left = 10
          Caption = 'Cela TA'
          Font.CharSet = EASTEUROPE_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Quality = fqDraft
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Visible = False
        end
        object lblCelaOchronna: TLabel
          AnchorSideLeft.Control = DBCheckBox6
          AnchorSideLeft.Side = asrBottom
          AnchorSideTop.Control = DBCheckBox6
          AnchorSideTop.Side = asrCenter
          Left = 250
          Height = 15
          Top = 132
          Width = 79
          BorderSpacing.Left = 10
          Caption = 'Cela Ochronna'
          Font.Color = clRed
          ParentColor = False
          ParentFont = False
          Visible = False
        end
        object DBCheckBox6: TDBCheckBox
          Left = 168
          Height = 23
          Top = 128
          Width = 72
          Caption = 'Grypsuje'
          DataField = 'GR'
          ReadOnly = True
          TabOrder = 2
          ValueChecked = '1'
          ValueUnchecked = '0'
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
end
