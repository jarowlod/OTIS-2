object AdresyJednostek: TAdresyJednostek
  Left = 396
  Height = 552
  Top = 229
  Width = 920
  BorderStyle = bsDialog
  Caption = 'Adresy'
  ClientHeight = 552
  ClientWidth = 920
  OnCreate = FormCreate
  Position = poOwnerFormCenter
  LCLVersion = '6.3'
  object Panel1: TPanel
    Left = 0
    Height = 46
    Top = 506
    Width = 920
    Align = alBottom
    BevelOuter = bvNone
    ClientHeight = 46
    ClientWidth = 920
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 687
      Height = 30
      Top = 8
      Width = 100
      Anchors = [akTop, akRight]
      Default = True
      DefaultCaption = True
      Kind = bkOK
      ModalResult = 1
      OnClick = BitBtn1Click
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 807
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
  object Panel2: TPanel
    Left = 0
    Height = 66
    Top = 0
    Width = 920
    Align = alTop
    BevelOuter = bvNone
    ClientHeight = 66
    ClientWidth = 920
    Color = 16632718
    ParentColor = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Height = 15
      Top = 8
      Width = 52
      Caption = 'Wyszukaj:'
      ParentColor = False
    end
    object Edit1: TEdit
      Left = 8
      Height = 30
      Top = 24
      Width = 368
      AutoSelect = False
      CharCase = ecUppercase
      Font.CharSet = EASTEUROPE_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Pitch = fpVariable
      Font.Quality = fqDraft
      OnChange = Edit1Change
      ParentFont = False
      TabOrder = 0
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Height = 440
    Top = 66
    Width = 920
    ActivePage = TabSheet1
    Align = alClient
    TabIndex = 0
    TabOrder = 1
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'Adresy Jednostek'
      ClientHeight = 412
      ClientWidth = 912
      object Panel4: TPanel
        Left = 537
        Height = 412
        Top = 0
        Width = 375
        Align = alRight
        BevelOuter = bvNone
        ClientHeight = 412
        ClientWidth = 375
        TabOrder = 0
        object DBMemo1: TDBMemo
          Left = 0
          Height = 192
          Top = 0
          Width = 375
          Align = alTop
          DataField = 'Adres'
          DataSource = DSAdrJednostki
          TabOrder = 0
        end
        object DBNavigator1: TDBNavigator
          Left = 120
          Height = 25
          Top = 200
          Width = 121
          BevelOuter = bvNone
          ChildSizing.EnlargeHorizontal = crsScaleChilds
          ChildSizing.EnlargeVertical = crsScaleChilds
          ChildSizing.ShrinkHorizontal = crsScaleChilds
          ChildSizing.ShrinkVertical = crsScaleChilds
          ChildSizing.Layout = cclLeftToRightThenTopToBottom
          ChildSizing.ControlsPerLine = 100
          ClientHeight = 25
          ClientWidth = 121
          DataSource = DSAdrJednostki
          Options = []
          TabOrder = 1
          VisibleButtons = [nbPost, nbCancel]
        end
        object Label4: TLabel
          Left = 8
          Height = 15
          Top = 296
          Width = 43
          Caption = 'Telefon:'
          ParentColor = False
        end
        object DBEdit3: TDBEdit
          Left = 8
          Height = 23
          Top = 312
          Width = 360
          DataField = 'Telefon'
          DataSource = DSAdrJednostki
          CharCase = ecNormal
          MaxLength = 0
          TabOrder = 2
        end
        object Label5: TLabel
          Left = 8
          Height = 15
          Top = 350
          Width = 20
          Caption = 'Fax:'
          ParentColor = False
        end
        object DBEdit4: TDBEdit
          Left = 8
          Height = 23
          Top = 368
          Width = 360
          DataField = 'Fax'
          DataSource = DSAdrJednostki
          CharCase = ecNormal
          MaxLength = 0
          TabOrder = 3
        end
      end
      object RxDBGrid1: TRxDBGrid
        Left = 0
        Height = 412
        Top = 0
        Width = 537
        ColumnDefValues.BlobText = '(blob)'
        TitleButtons = True
        AutoSort = True
        Columns = <        
          item
            Title.Alignment = taCenter
            Title.Orientation = toHorizontal
            Title.Caption = 'Kod'
            Width = 50
            FieldName = 'Kod'
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
            Title.Caption = 'Jednostka'
            Width = 250
            FieldName = 'Jednostka'
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
        AlternateColor = 16055807
        AutoAdvance = aaNone
        AutoEdit = False
        Color = clWindow
        DrawFullLine = False
        FocusColor = clHighlight
        FixedHotColor = clNone
        SelectedColor = clHighlight
        GridLineStyle = psSolid
        DataSource = DSAdrJednostki
        DefaultRowHeight = 24
        FixedColor = clNone
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgHeaderHotTracking, dgHeaderPushedLook, dgDisableDelete, dgDisableInsert, dgTruncCellHints, dgCellEllipsis]
        ReadOnly = True
        TabOrder = 1
        TitleStyle = tsNative
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Adresy Sądów'
      ClientHeight = 412
      ClientWidth = 912
      object Panel5: TPanel
        Left = 537
        Height = 412
        Top = 0
        Width = 375
        Align = alRight
        BevelOuter = bvNone
        ClientHeight = 412
        ClientWidth = 375
        TabOrder = 0
        object DBMemo2: TDBMemo
          Left = 0
          Height = 192
          Top = 0
          Width = 375
          Align = alTop
          DataField = 'Adres'
          DataSource = DSAdrSady
          TabOrder = 0
        end
        object DBNavigator2: TDBNavigator
          Left = 120
          Height = 25
          Top = 200
          Width = 121
          BevelOuter = bvNone
          ChildSizing.EnlargeHorizontal = crsScaleChilds
          ChildSizing.EnlargeVertical = crsScaleChilds
          ChildSizing.ShrinkHorizontal = crsScaleChilds
          ChildSizing.ShrinkVertical = crsScaleChilds
          ChildSizing.Layout = cclLeftToRightThenTopToBottom
          ChildSizing.ControlsPerLine = 100
          ClientHeight = 25
          ClientWidth = 121
          DataSource = DSAdrSady
          Options = []
          TabOrder = 1
          VisibleButtons = [nbPost, nbCancel]
        end
        object DBEdit1: TDBEdit
          Left = 8
          Height = 23
          Top = 312
          Width = 360
          DataField = 'Telefon'
          DataSource = DSAdrSady
          CharCase = ecNormal
          MaxLength = 0
          TabOrder = 2
        end
        object DBEdit2: TDBEdit
          Left = 8
          Height = 23
          Top = 368
          Width = 360
          DataField = 'Fax'
          DataSource = DSAdrSady
          CharCase = ecNormal
          MaxLength = 0
          TabOrder = 3
        end
        object Label2: TLabel
          Left = 8
          Height = 15
          Top = 296
          Width = 43
          Caption = 'Telefon:'
          ParentColor = False
        end
        object Label3: TLabel
          Left = 8
          Height = 15
          Top = 350
          Width = 20
          Caption = 'Fax:'
          ParentColor = False
        end
      end
      object RxDBGrid2: TRxDBGrid
        Left = 0
        Height = 412
        Top = 0
        Width = 537
        ColumnDefValues.BlobText = '(blob)'
        TitleButtons = True
        AutoSort = True
        Columns = <        
          item
            Title.Alignment = taCenter
            Title.Orientation = toHorizontal
            Title.Caption = 'Nazwa'
            Width = 500
            FieldName = 'Nazwa'
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
        AlternateColor = 16055807
        AutoAdvance = aaNone
        AutoEdit = False
        Color = clWindow
        DrawFullLine = False
        FocusColor = clHighlight
        FixedHotColor = clNone
        SelectedColor = clHighlight
        GridLineStyle = psSolid
        DataSource = DSAdrSady
        DefaultRowHeight = 24
        FixedColor = clNone
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgHeaderHotTracking, dgHeaderPushedLook, dgDisableDelete, dgDisableInsert, dgTruncCellHints, dgCellEllipsis]
        ReadOnly = True
        TabOrder = 1
        TitleStyle = tsNative
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Adresy Policji'
      ClientHeight = 412
      ClientWidth = 912
      object Panel6: TPanel
        Left = 537
        Height = 412
        Top = 0
        Width = 375
        Align = alRight
        BevelOuter = bvNone
        ClientHeight = 412
        ClientWidth = 375
        TabOrder = 0
        object DBMemo4: TDBMemo
          Left = 0
          Height = 192
          Top = 0
          Width = 375
          Align = alTop
          DataField = 'Adres'
          DataSource = DSAdrPolicja
          TabOrder = 0
        end
        object DBNavigator3: TDBNavigator
          Left = 120
          Height = 25
          Top = 200
          Width = 121
          BevelOuter = bvNone
          ChildSizing.EnlargeHorizontal = crsScaleChilds
          ChildSizing.EnlargeVertical = crsScaleChilds
          ChildSizing.ShrinkHorizontal = crsScaleChilds
          ChildSizing.ShrinkVertical = crsScaleChilds
          ChildSizing.Layout = cclLeftToRightThenTopToBottom
          ChildSizing.ControlsPerLine = 100
          ClientHeight = 25
          ClientWidth = 121
          DataSource = DSAdrPolicja
          Options = []
          TabOrder = 1
          VisibleButtons = [nbPost, nbCancel]
        end
        object DBEdit5: TDBEdit
          Left = 8
          Height = 23
          Top = 312
          Width = 360
          DataField = 'Telefon'
          DataSource = DSAdrPolicja
          CharCase = ecNormal
          MaxLength = 0
          TabOrder = 2
        end
        object DBEdit6: TDBEdit
          Left = 8
          Height = 23
          Top = 368
          Width = 360
          DataField = 'Fax'
          DataSource = DSAdrPolicja
          CharCase = ecNormal
          MaxLength = 0
          TabOrder = 3
        end
        object Label6: TLabel
          Left = 8
          Height = 15
          Top = 296
          Width = 43
          Caption = 'Telefon:'
          ParentColor = False
        end
        object Label7: TLabel
          Left = 8
          Height = 15
          Top = 350
          Width = 20
          Caption = 'Fax:'
          ParentColor = False
        end
      end
      object RxDBGrid4: TRxDBGrid
        Left = 0
        Height = 412
        Top = 0
        Width = 537
        ColumnDefValues.BlobText = '(blob)'
        TitleButtons = True
        AutoSort = True
        Columns = <        
          item
            Title.Alignment = taCenter
            Title.Orientation = toHorizontal
            Title.Caption = 'Nazwa'
            Width = 500
            FieldName = 'Nazwa'
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
        AlternateColor = 16055807
        AutoAdvance = aaNone
        AutoEdit = False
        Color = clWindow
        DrawFullLine = False
        FocusColor = clHighlight
        FixedHotColor = clNone
        SelectedColor = clHighlight
        GridLineStyle = psSolid
        DataSource = DSAdrPolicja
        DefaultRowHeight = 24
        FixedColor = clNone
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgHeaderHotTracking, dgHeaderPushedLook, dgDisableDelete, dgDisableInsert, dgTruncCellHints, dgCellEllipsis]
        ReadOnly = True
        TabOrder = 1
        TitleStyle = tsNative
      end
    end
  end
  object DSAdrJednostki: TDataSource
    DataSet = ZQAdrJednostki
    Left = 692
    Top = 13
  end
  object ZQAdrJednostki: TZQuery
    Connection = DM.ZConnection1
    SQL.Strings = (
      'SELECT'
      'Kod,'
      'Jednostka,'
      'Adres,'
      'Telefon,'
      'Fax'
      'FROM sl_jednostki'
      'WHERE (Kod LIKE :kod) OR (Jednostka LIKE :kod)'
    )
    Params = <    
      item
        DataType = ftUnknown
        Name = 'kod'
        ParamType = ptUnknown
      end>
    Left = 613
    Top = 13
    ParamData = <    
      item
        DataType = ftUnknown
        Name = 'kod'
        ParamType = ptUnknown
      end>
  end
  object DSAdrSady: TDataSource
    DataSet = ZQAdrSady
    Left = 692
    Top = 80
  end
  object ZQAdrSady: TZQuery
    Connection = DM.ZConnection1
    SQL.Strings = (
      'SELECT'
      'id,'
      'Nazwa,'
      'Adres,'
      'Telefon,'
      'Fax'
      'FROM sl_adresy_sady'
      'WHERE Nazwa LIKE :nazwa'
    )
    Params = <    
      item
        DataType = ftUnknown
        Name = 'nazwa'
        ParamType = ptUnknown
      end>
    Left = 613
    Top = 80
    ParamData = <    
      item
        DataType = ftUnknown
        Name = 'nazwa'
        ParamType = ptUnknown
      end>
  end
  object ZQAdrPolicja: TZQuery
    Connection = DM.ZConnection1
    SQL.Strings = (
      'SELECT'
      'id,'
      'Nazwa,'
      'Adres,'
      'Telefon,'
      'Fax'
      'FROM sl_adresy_policja'
      'WHERE Nazwa LIKE :nazwa'
    )
    Params = <    
      item
        DataType = ftUnknown
        Name = 'nazwa'
        ParamType = ptUnknown
      end>
    Left = 613
    Top = 144
    ParamData = <    
      item
        DataType = ftUnknown
        Name = 'nazwa'
        ParamType = ptUnknown
      end>
  end
  object DSAdrPolicja: TDataSource
    DataSet = ZQAdrPolicja
    Left = 692
    Top = 144
  end
end
