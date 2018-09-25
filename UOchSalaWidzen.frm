object OchSalaWidzen: TOchSalaWidzen
  Left = 388
  Height = 856
  Top = 232
  Width = 1278
  HorzScrollBar.Increment = 109
  HorzScrollBar.Page = 1096
  HorzScrollBar.Smooth = True
  HorzScrollBar.Tracking = True
  VertScrollBar.Increment = 27
  VertScrollBar.Page = 279
  VertScrollBar.Smooth = True
  VertScrollBar.Tracking = True
  AutoScroll = True
  Caption = 'Sala widzeń'
  ClientHeight = 856
  ClientWidth = 1278
  Color = 16771022
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  Position = poScreenCenter
  LCLVersion = '6.5'
  object PageControl1: TPageControl
    Left = 0
    Height = 856
    Top = 0
    Width = 1278
    ActivePage = TabSheetSalaWidzen
    Align = alClient
    Images = DM.ImageList1
    TabHeight = 30
    TabIndex = 0
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
        object BCPanelSala: TBCPanel
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
            AnchorSideLeft.Control = BCPanelBezdozor
            AnchorSideTop.Control = BCPanelBezdozor
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
            Rounding.RoundX = 1
            Rounding.RoundY = 1
            Rounding.RoundOptions = []
          end
          object BCPanelBezdozor: TBCPanel
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
          object BGRACienStolika: TBGRAShape
            Left = 8
            Height = 155
            Top = 8
            Width = 257
            Angle = 45
            BorderColor = clWindowText
            BorderGradient.StartColor = clWhite
            BorderGradient.StartColorOpacity = 255
            BorderGradient.DrawMode = dmSet
            BorderGradient.EndColor = clBlack
            BorderGradient.EndColorOpacity = 255
            BorderGradient.ColorCorrection = True
            BorderGradient.GradientType = gtLinear
            BorderGradient.Point2XPercent = 100
            BorderGradient.Point2YPercent = 100
            BorderGradient.Sinus = False
            BorderStyle = psClear
            FillColor = clBackground
            FillOpacity = 255
            FillGradient.StartColor = clWhite
            FillGradient.StartColorOpacity = 255
            FillGradient.DrawMode = dmSet
            FillGradient.EndColor = clBlack
            FillGradient.EndColorOpacity = 255
            FillGradient.ColorCorrection = False
            FillGradient.GradientType = gtLinear
            FillGradient.Point2YPercent = 100
            FillGradient.Sinus = False
            UseFillGradient = True
            UseBorderGradient = True
            Caption = 'BGRACienStolika'
            RoundRadius = 5
            Visible = False
          end
          object SpeedButton1: TSpeedButton
            Left = 1246
            Height = 24
            Top = 0
            Width = 24
            Anchors = [akTop, akRight]
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000064000000640000000000000000000000FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF0039864003347E3A78FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF004191499C3B8842D2FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF004EA3579066B06EFF61AA68FF3D8B44FF37833EFF327B
              37FF2C7432EA276D2CB7236627701F61231DFFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF005BB4658473BD7CFF96D19FFF94CF9CFF8FCD96FF8ACA91FF85C7
              8BFF7ABE81FF65AD6CFF4B9251FF246829B020632439FFFFFF00FFFFFF00FFFF
              FF00FFFFFF0060BC6C8A79C483FF9ED7A7FF9BD4A4FF97D29FFF92CF9AFF8DCC
              95FF88CA90FF7AC282FF7EC485FF5DA463FF266B2AB02265251DFFFFFF00FFFF
              FF00FFFFFF00FFFFFF0062BE6D937BC785FF77C281FF54AB5EFF4EA357FF499B
              51FF63AC6BFF83C38BFF87C98FFF82C689FF509756FF276D2C70FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF0063C06E9F5FBB6AD2FFFFFF00FFFFFF00FFFF
              FF004B9E538D45964DE186C68EFF88C98FFF6FB376FF2E7633B745964D613F8E
              466139864061347E3A612E76336167C6730364C2707BFFFFFF00FFFFFF00FFFF
              FF00FFFFFF004DA1558347994FED419149F63B8842F835803CE84DA155E84799
              4FF8419149F63B8842ED35803C83FFFFFF00FFFFFF00FFFFFF00FFFFFF001E5F
              217B1B5B1E0354AB5E614EA35761499B516143934B613D8B446154AB5EB780C3
              89FF8DCC95FF83C48AFF3D8B44E137833E8DFFFFFF00FFFFFF00FFFFFF002366
              27D21F61239FFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF005BB4657075BF
              7EFF98D2A1FF94CF9CFF86C78DFF5EA765FF398640FF347E3AFF2E7633FF4990
              4FFF458B4AFF20632493FFFFFF00FFFFFF00FFFFFF00FFFFFF0060BC6C1D5CB6
              67B085C98EFF9BD4A4FF8FCE98FF92CF9AFF8DCC95FF88CA90FF83C68BFF7EC4
              85FF79C17FFF478D4CFF2265258AFFFFFF00FFFFFF00FFFFFF00FFFFFF0062BE
              6D395EB968B079C383FF89CA92FF94D09CFF95D19EFF90CF99FF8CCB94FF87C9
              8FFF80C487FF4E9554FF276D2C84FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF0063C06E1D5FBB6A705BB465B756AD5FEA50A65AFF4B9E53FF45964DFF60A8
              68FF5BA262FF347E3A90FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004799
              4FD24191499CFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004EA3
              5778499B5103FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
            }
            OnClick = SpeedButton1Click
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
        ClientHeight = 818
        ClientWidth = 1270
        Color = 13027325
        ParentColor = False
        TabOrder = 0
        object BCPanelPleksa: TBCPanel
          Left = 16
          Height = 344
          Top = 88
          Width = 816
          Background.Color = clWhite
          Background.ColorOpacity = 255
          Background.Gradient1.StartColor = 15132390
          Background.Gradient1.StartColorOpacity = 255
          Background.Gradient1.DrawMode = dmSet
          Background.Gradient1.EndColor = 7434751
          Background.Gradient1.EndColorOpacity = 255
          Background.Gradient1.ColorCorrection = False
          Background.Gradient1.GradientType = gtLinear
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
          object Shape3: TShape
            Left = 0
            Height = 15
            Top = 100
            Width = 816
            Align = alCustom
            Anchors = [akTop, akLeft, akRight]
            Brush.Color = clYellow
            Brush.Style = bsBDiagonal
          end
          object Shape4: TShape
            Left = 0
            Height = 329
            Top = 0
            Width = 15
            Align = alLeft
            Brush.Color = clYellow
            Brush.Style = bsBDiagonal
          end
          object Shape5: TShape
            Left = 801
            Height = 329
            Top = 0
            Width = 15
            Align = alRight
            Brush.Color = clYellow
            Brush.Style = bsBDiagonal
          end
          object Przegroda1: TShape
            Left = 320
            Height = 344
            Top = 0
            Width = 15
            Align = alCustom
            Anchors = [akTop, akLeft, akBottom]
            Brush.Color = clYellow
            Brush.Style = bsBDiagonal
          end
          object Przegroda2: TShape
            Left = 576
            Height = 344
            Top = 0
            Width = 15
            Align = alCustom
            Anchors = [akTop, akLeft, akBottom]
            Brush.Color = clYellow
            Brush.Style = bsBDiagonal
          end
          object Shape8: TShape
            Left = 0
            Height = 15
            Top = 329
            Width = 816
            Align = alBottom
            Anchors = [akLeft]
            Brush.Color = clYellow
            Brush.Style = bsBDiagonal
          end
          object lblBoks1: TBCLabel
            AnchorSideTop.Side = asrBottom
            Left = 145
            Height = 99
            Top = 1
            Width = 50
            Anchors = []
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
            Caption = '1'
            FontEx.Color = clCream
            FontEx.EndEllipsis = False
            FontEx.FontQuality = fqFineAntialiasing
            FontEx.Height = 62
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
            Rounding.RoundX = 1
            Rounding.RoundY = 1
            Rounding.RoundOptions = []
          end
          object lblBoks2: TBCLabel
            AnchorSideTop.Side = asrBottom
            Left = 440
            Height = 99
            Top = 1
            Width = 50
            Anchors = []
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
            Caption = '2'
            FontEx.Color = clCream
            FontEx.EndEllipsis = False
            FontEx.FontQuality = fqFineAntialiasing
            FontEx.Height = 62
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
            Rounding.RoundX = 1
            Rounding.RoundY = 1
            Rounding.RoundOptions = []
          end
          object lblBoks3: TBCLabel
            AnchorSideTop.Side = asrBottom
            Left = 680
            Height = 99
            Top = 1
            Width = 50
            Anchors = []
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
            Caption = '3'
            FontEx.Color = clCream
            FontEx.EndEllipsis = False
            FontEx.FontQuality = fqFineAntialiasing
            FontEx.Height = 62
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
            Rounding.RoundX = 1
            Rounding.RoundY = 1
            Rounding.RoundOptions = []
          end
        end
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
            Filter.NotEmptyValue = '(Not empty)'
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
            Title.Caption = 'Czas reg.'
            Width = 60
            FieldName = 'Czas_reg'
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
            Title.Caption = 'Czas dod.'
            Width = 60
            FieldName = 'Czas_dod'
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
            Title.Caption = 'Sposób'
            Width = 60
            FieldName = 'Sposob'
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
            Title.Caption = 'Dodatkowe'
            Width = 70
            FieldName = 'Dodatkowe'
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
            Title.Caption = 'Uwagi do dodatkowego'
            Width = 100
            FieldName = 'Data_Dod'
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
            Width = 200
            FieldName = 'Uwagi'
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
            Title.Caption = 'Nazwisko'
            Width = 120
            FieldName = 'Nazwisko'
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
            Title.Caption = 'Imię'
            Width = 100
            FieldName = 'Imie'
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
            Title.Caption = 'Ojciec'
            Width = 100
            FieldName = 'Ojciec'
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
                Title.Caption = 'Imię'
                Width = 120
                FieldName = 'Imie'
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
                Title.Caption = 'Pokrewieństwo'
                Width = 120
                FieldName = 'Pokrew'
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
                Width = 300
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
      'ORDER BY Data_Oczekuje'
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
      ImageIndex = 39
      OnClick = miModyfikujClick
    end
    object miUsunZPoczekalni: TMenuItem
      Caption = 'Usuń z poczekalni ...'
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
      ImageIndex = 45
      OnClick = miRefreshClick
    end
  end
end
