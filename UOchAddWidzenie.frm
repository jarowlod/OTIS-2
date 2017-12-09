object OchAddWidzenie: TOchAddWidzenie
  Left = 407
  Height = 568
  Top = 229
  Width = 748
  Caption = 'Dodaj widzenie'
  ClientHeight = 568
  ClientWidth = 748
  OnCreate = FormCreate
  OnShow = FormShow
  Position = poOwnerFormCenter
  LCLVersion = '6.3'
  object Panel2: TPanel
    Left = 0
    Height = 40
    Top = 528
    Width = 748
    Align = alBottom
    BevelOuter = bvNone
    ClientHeight = 40
    ClientWidth = 748
    TabOrder = 0
    object btnOK: TBitBtn
      Left = 531
      Height = 30
      Top = 8
      Width = 100
      Anchors = [akTop, akRight]
      DefaultCaption = True
      Kind = bkOK
      ModalResult = 1
      TabOrder = 0
    end
    object btnAnuluj: TBitBtn
      Left = 642
      Height = 30
      Top = 8
      Width = 100
      Anchors = [akTop, akRight]
      Cancel = True
      DefaultCaption = True
      Kind = bkCancel
      ModalResult = 2
      TabOrder = 1
    end
  end
  object Panel1: TPanel
    Left = 0
    Height = 218
    Top = 0
    Width = 748
    Align = alTop
    ClientHeight = 218
    ClientWidth = 748
    TabOrder = 1
    object Label1: TLabel
      Left = 15
      Height = 15
      Top = 59
      Width = 205
      Caption = 'Czas trwania widzenia (regulaminowe):'
      ParentColor = False
    end
    object Label2: TLabel
      Left = 15
      Height = 15
      Top = 156
      Width = 147
      Caption = 'Sposób udzielenia widzenia:'
      ParentColor = False
    end
    object cbSposob: TComboBox
      Left = 168
      Height = 23
      Top = 152
      Width = 312
      DropDownCount = 10
      ItemHeight = 15
      ItemIndex = 0
      Items.Strings = (
        'K - UMOŻLIWIAJĄCE BEZPOŚREDNI KONTAKT'
        'BO - BEZ DOZORU'
        'OP - W ODDZIELNYM POMIESZCZENIU BEZ DOZORU'
        'BK - UNIEMOŻLIWIAJĄCE BEZPOŚREDNI KONTAKT'
      )
      Style = csDropDownList
      TabOrder = 0
      Text = 'K - UMOŻLIWIAJĄCE BEZPOŚREDNI KONTAKT'
    end
    object Label3: TLabel
      Left = 15
      Height = 15
      Top = 188
      Width = 36
      Caption = 'Uwagi:'
      ParentColor = False
    end
    object edUwagi: TEdit
      Left = 56
      Height = 23
      Top = 185
      Width = 424
      TabOrder = 1
    end
    object SpinEdit1: TSpinEdit
      Left = 224
      Height = 23
      Top = 56
      Width = 50
      MaxValue = 180
      TabOrder = 2
    end
    object SpinEdit2: TSpinEdit
      Left = 224
      Height = 23
      Top = 80
      Width = 50
      MaxValue = 180
      TabOrder = 3
    end
    object btnRejestrProsb: TBitBtn
      Left = 590
      Height = 30
      Top = 184
      Width = 152
      Anchors = [akRight, akBottom]
      Caption = 'Rejestr próśb'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000064000000640000000000000000000000000000000000
        00009F804BFF977641FF977641FF977641FF977641FF977641FF977641FF9776
        41FF977641FF977641FF977641FF987343FF987343FF00000000000000000000
        0000A07F50FFFFFFFFFFF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8C6524FF00000000000000000000
        0000AC8755FFE7FCFFFF0087FAFFBBE4ECFFCB8C69FFBB8767FFBA8867FFB886
        65FFB78566FFB37B5AFFD2AD9CFFF5F7F0FF8C6524FF00000000000000000000
        0000AF9162FFFFFFFFFFFEF6F1FFFDF6F1FFFAF9F5FFFAFBF9FFFAFBF9FFFBFC
        F7FFF7FBF2FFF8F9F5FFFFFFFEFFF1EBE4FF8C6524FF00000000000000000000
        0000BB9869FFD9F4FFFF0087FAFFBAE2E9FFCF906CFFBF8969FFC08C6CFFC08B
        6CFFC28C6EFFBD825FFFD7B39FFFF5F3EDFF8C6524FF00000000000000000000
        0000B09465FFFFFFFFFFFEF6F1FFFEF6F2FFFBF9F4FFF8FBF8FFFBFDFAFFFBFB
        FAFFFFFEFFFFFEFCFBFFFFFFFFFFF1ECE3FF8C6524FF00000000000000000000
        0000B99867FFD8F5FFFF0087FAFFBAE2E8FFCE8E6BFFBE8869FFC38B6EFFC591
        6CFFC59172FFBF8362FFD5B09AFFF6F6F0FF8C6524FF00000000000000000000
        0000B0946BFFFFFFFFFFFEF6EFFFFBF6F0FFF9F9F4FFFCFAFCFFFEFFFEFFFFFF
        FFFFFFFFFFFFF8F6F3FFF9F7F3FFF2EDE6FF8C6524FF00000000000000000000
        0000B9A17DFFE3F7FFFF0087FAFFBFEAEDFFD1916FFFBF8B6CFFC28C6EFFC08C
        6EFFBB8764FFAE7554FFC6A38DFFECE4D9FF8C6524FF00000000000000000000
        0000BCA686FFFFFFFFFFFFFFFEFFFFFFFCFFFFFFFFFFFEFFFFFFFFFFFFFFFAFE
        F8FFF6F8F4FFEDEBE5FFEAE3DCFFD8CDB7FF8C6524FF00000000000000000000
        0000CCB390FFE1F3FBFF0087FAFFBEE8F3FFD09171FFC08C6AFFBF8A67FFBB86
        64FFA66C44FF985427FFAB7A56FFC3B08EFF8C6524FF00000000000000000000
        0000C8B595FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFF8FFF9FAF8FFE4DD
        D2FFD3C6A9FFF6F7F3FFE8E4D5FFB79D73FF8C6524FF00000000000000000000
        0000CFB69AFFDFF3F9FF0087FAFFC0EAF1FFCA8C67FFB2795AFFB67B5CFF985E
        37FFCCB99CFFFFFFFFFFCFBAA0FFA07D46FF8F68290A00000000000000000000
        0000C7B79AFFFFFFFFFFFFFFFFFFFFFDF7FFFCFDFBFFEFF1EDFFEEE9DDFFD4C5
        A9FFBCAC89FFD7C9B5FF997335FF000000000000000000000000000000000000
        0000CBBDA1FFFFFFFFFFFFFFFFFFF9F7F7FFF0E7DEFFDFD7C7FFD8C5B0FFC1AA
        85FFAA9161FFA17E47FF00000000000000000000000000000000000000000000
        0000C3B191FECCBBA0F8C9B79BF3C6B295F3C5B293F3C1AB86F3BFA67DF3AA91
        61FF936C32FF0000000000000000000000000000000000000000
      }
      OnClick = btnRejestrProsbClick
      TabOrder = 4
    end
    object Panel3: TPanel
      Left = 1
      Height = 39
      Top = 1
      Width = 746
      Align = alTop
      BevelOuter = bvNone
      ClientHeight = 39
      ClientWidth = 746
      Color = clWhite
      ParentColor = False
      TabOrder = 5
      object lblNazwisko: TLabel
        Left = 15
        Height = 18
        Top = 8
        Width = 122
        Caption = 'Nazwisko Imię'
        Font.CharSet = EASTEUROPE_CHARSET
        Font.Height = -16
        Font.Name = 'Georgia'
        Font.Pitch = fpVariable
        Font.Quality = fqDraft
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lblKlasyf: TLabel
        AnchorSideLeft.Control = lblNazwisko
        AnchorSideLeft.Side = asrBottom
        Left = 187
        Height = 18
        Top = 8
        Width = 44
        BorderSpacing.Left = 50
        Caption = 'Klasyf'
        Font.CharSet = EASTEUROPE_CHARSET
        Font.Height = -16
        Font.Name = 'Georgia'
        Font.Pitch = fpVariable
        Font.Quality = fqDraft
        ParentColor = False
        ParentFont = False
      end
      object lblPoc: TLabel
        AnchorSideLeft.Control = lblKlasyf
        AnchorSideLeft.Side = asrBottom
        Left = 281
        Height = 18
        Top = 8
        Width = 32
        BorderSpacing.Left = 50
        Caption = 'POC'
        Font.CharSet = EASTEUROPE_CHARSET
        Font.Height = -16
        Font.Name = 'Georgia'
        Font.Pitch = fpVariable
        Font.Quality = fqDraft
        ParentColor = False
        ParentFont = False
      end
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Height = 310
    Top = 218
    Width = 748
    ActivePage = TabSheetOsoby
    Align = alClient
    Images = DM.ImageList1
    TabHeight = 25
    TabIndex = 0
    TabOrder = 2
    object TabSheetOsoby: TTabSheet
      Caption = 'Osoby uprawnione do widzenia'
      ImageIndex = 8
    end
    object TabSheetWidzenia: TTabSheet
      Caption = 'Widzenia'
      ClientHeight = 277
      ClientWidth = 740
      ImageIndex = 21
      object RxDBGrid2: TRxDBGrid
        Left = 0
        Height = 277
        Top = 0
        Width = 740
        ColumnDefValues.BlobText = '(blob)'
        TitleButtons = True
        AutoSort = True
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
        FooterOptions.Style = tsNative
        FooterOptions.DrawFullLine = False
        SearchOptions.QuickSearchOptions = [loCaseInsensitive, loPartialKey]
        SearchOptions.FromStart = False
        OptionsRx = [rdgAllowSortForm, rdgCaseInsensitiveSort, rdgWordWrap, rdgDisableWordWrapTitles]
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
        DefaultRowHeight = 24
        FixedColor = clNone
        FixedCols = 0
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgHeaderHotTracking, dgHeaderPushedLook, dgAnyButtonCanSelect, dgDisableDelete, dgDisableInsert, dgCellHints, dgTruncCellHints, dgCellEllipsis]
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 0
        TitleStyle = tsNative
      end
    end
    object TabSheetWykazy: TTabSheet
      Caption = 'Wykazy'
      ClientHeight = 277
      ClientWidth = 740
      ImageIndex = 26
      object RxDBGrid1: TRxDBGrid
        Left = 0
        Height = 277
        Top = 0
        Width = 740
        ColumnDefValues.BlobText = '(blob)'
        TitleButtons = True
        AutoSort = True
        Columns = <        
          item
            Title.Alignment = taCenter
            Title.Orientation = toHorizontal
            Title.Caption = 'Kategoria'
            Width = 150
            FieldName = 'Opis'
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
          end        
          item
            Title.Alignment = taCenter
            Title.Orientation = toHorizontal
            Title.Caption = 'Użytkownik'
            Width = 100
            FieldName = 'user_dodania'
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
            Title.Caption = 'Data'
            Width = 90
            FieldName = 'data_dodania'
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
        FooterOptions.Style = tsNative
        FooterOptions.DrawFullLine = False
        SearchOptions.QuickSearchOptions = [loCaseInsensitive, loPartialKey]
        SearchOptions.FromStart = False
        OptionsRx = [rdgAllowSortForm, rdgCaseInsensitiveSort, rdgWordWrap, rdgDisableWordWrapTitles]
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
        DataSource = DSRejWyk
        DefaultRowHeight = 24
        FixedColor = clNone
        FixedCols = 0
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgHeaderHotTracking, dgHeaderPushedLook, dgAnyButtonCanSelect, dgDisableDelete, dgDisableInsert, dgCellHints, dgTruncCellHints, dgCellEllipsis]
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 0
        TitleStyle = tsNative
      end
    end
    object TabSheetUwagi: TTabSheet
      Caption = 'Uwagi i Polecenia'
      ClientHeight = 277
      ClientWidth = 740
      ImageIndex = 28
      object Panel4: TPanel
        Left = 0
        Height = 24
        Top = 0
        Width = 740
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Uwagi Ochrony'
        ClientHeight = 24
        ClientWidth = 740
        TabOrder = 0
        object DBText4: TDBText
          Left = 697
          Height = 24
          Top = 0
          Width = 43
          Align = alRight
          DataField = 'Data'
          DataSource = DSUwagi
          ParentColor = False
        end
      end
      object PanelCenter: TPanel
        Left = 0
        Height = 253
        Top = 24
        Width = 740
        Align = alClient
        BevelOuter = bvNone
        ClientHeight = 253
        ClientWidth = 740
        TabOrder = 1
        object PanelKierownika: TPanel
          AnchorSideLeft.Control = PanelCenter
          AnchorSideTop.Control = PanelCenter
          AnchorSideTop.Side = asrCenter
          AnchorSideRight.Control = PanelCenter
          AnchorSideRight.Side = asrBottom
          Left = 0
          Height = 24
          Top = 114
          Width = 740
          Anchors = [akTop, akLeft, akRight]
          BevelOuter = bvNone
          Caption = 'Uwagi Kierownika'
          ClientHeight = 24
          ClientWidth = 740
          Color = 8684799
          ParentColor = False
          TabOrder = 0
          object DBText9: TDBText
            Left = 697
            Height = 24
            Top = 0
            Width = 43
            Align = alRight
            DataField = 'Data'
            DataSource = DSUwagiKierownika
            ParentColor = False
          end
        end
        object DBMemoUwagiOch: TDBMemo
          AnchorSideLeft.Control = PanelCenter
          AnchorSideTop.Control = PanelCenter
          AnchorSideRight.Control = PanelCenter
          AnchorSideRight.Side = asrBottom
          AnchorSideBottom.Control = PanelKierownika
          Left = 0
          Height = 114
          Top = 0
          Width = 740
          Align = alCustom
          Anchors = [akTop, akLeft, akRight, akBottom]
          DataField = 'UWAGI'
          DataSource = DSUwagi
          ScrollBars = ssAutoBoth
          TabOrder = 1
        end
        object DBMemoUwagiKier: TDBMemo
          AnchorSideLeft.Control = PanelCenter
          AnchorSideTop.Control = PanelKierownika
          AnchorSideTop.Side = asrBottom
          AnchorSideRight.Control = PanelCenter
          AnchorSideRight.Side = asrBottom
          AnchorSideBottom.Control = PanelCenter
          AnchorSideBottom.Side = asrBottom
          Left = 0
          Height = 115
          Top = 138
          Width = 740
          Align = alCustom
          Anchors = [akTop, akLeft, akRight, akBottom]
          Color = 15790335
          DataField = 'UWAGI'
          DataSource = DSUwagiKierownika
          ReadOnly = True
          ScrollBars = ssAutoBoth
          TabOrder = 2
        end
      end
    end
  end
  object DSRejWyk: TDataSource
    DataSet = ZQRejWyk
    Left = 304
    Top = 344
  end
  object ZQRejWyk: TZQuery
    Connection = DM.ZConnection1
    ReadOnly = True
    SQL.Strings = (
      'SELECT'
      'kat.Opis,'
      'wyk.Uwagi,'
      'wyk.IDO,'
      'wyk.Kategoria,'
      'wyk.data_dodania,'
      'wyk.user_dodania'
      'FROM uwagi_wykazy as wyk'
      'JOIN katalog_wykazow as kat ON kat.ID = wyk.Kategoria'
      'WHERE wyk.IDO = :ido'
    )
    Params = <    
      item
        DataType = ftUnknown
        Name = 'ido'
        ParamType = ptUnknown
      end>
    Left = 304
    Top = 288
    ParamData = <    
      item
        DataType = ftUnknown
        Name = 'ido'
        ParamType = ptUnknown
      end>
  end
  object ZQUwagi: TZQuery
    Connection = DM.ZConnection1
    SQL.Strings = (
      'SELECT'
      'IDO,'
      'UWAGI,'
      'Data'
      'FROM uwagi'
      'WHERE IDO = :ido'
    )
    Params = <    
      item
        DataType = ftUnknown
        Name = 'ido'
        ParamType = ptUnknown
      end>
    Left = 416
    Top = 288
    ParamData = <    
      item
        DataType = ftUnknown
        Name = 'ido'
        ParamType = ptUnknown
      end>
  end
  object DSUwagi: TDataSource
    DataSet = ZQUwagi
    Left = 416
    Top = 344
  end
  object ZQUwagiKierownika: TZQuery
    Connection = DM.ZConnection1
    ReadOnly = True
    SQL.Strings = (
      'SELECT'
      'IDO,'
      'UWAGI,'
      'Data'
      'FROM uwagi_kierownika'
      'WHERE IDO = :ido'
    )
    Params = <    
      item
        DataType = ftUnknown
        Name = 'ido'
        ParamType = ptUnknown
      end>
    Left = 416
    Top = 408
    ParamData = <    
      item
        DataType = ftUnknown
        Name = 'ido'
        ParamType = ptUnknown
      end>
  end
  object DSUwagiKierownika: TDataSource
    DataSet = ZQUwagiKierownika
    Left = 416
    Top = 464
  end
end
