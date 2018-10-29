object ZdjAktualizacjaZdjec: TZdjAktualizacjaZdjec
  Left = 328
  Height = 553
  Top = 230
  Width = 640
  Caption = 'Aktualizacja Zdjęć'
  ClientHeight = 553
  ClientWidth = 640
  Position = poScreenCenter
  LCLVersion = '6.6'
  object Panel1: TPanel
    Left = 0
    Height = 50
    Top = 0
    Width = 640
    Align = alTop
    BevelOuter = bvNone
    ClientHeight = 50
    ClientWidth = 640
    Color = clWhite
    ParentColor = False
    TabOrder = 0
    object StaticText1: TStaticText
      Left = 40
      Height = 32
      Top = 8
      Width = 575
      Caption = 'Aktualizacja i uzupełnienie zdjęć osadzonych.'
      Font.Color = clGray
      ParentFont = False
      TabOrder = 0
    end
    object Image1: TImage
      Left = 8
      Height = 24
      Top = 8
      Width = 24
      Picture.Data = {
        1754506F727461626C654E6574776F726B477261706869636903000089504E47
        0D0A1A0A0000000D49484452000000100000001008060000001FF3FF61000003
        304944415478DA75920F6894651CC73FCFEDFEB473B7BDBB6DB7DBEE76CEFBD3
        B53972C5AC519A3949459DD2B22833271518261C211A1145630C7124651645C1
        C858298DA5388682D40C57920AD96CAC35676C5239CFB6ABDB39EEDEBB7B7AEE
        6CA9490F2FCFF3FE7EBFEFFB7DBEEFF7F713FCCF5ADB7D69D3C9F1D87EC48D9C
        9464C245532FDDF5CD6C4E2CFEF49755E7C3F15E21E16670664D8682B711DBDF
        1EA6FF69CFBDF31DD6EFB304857B0665C71A37B58E3B6E03576AE65BE2193D85
        EB9D61EA1DB2BB757D75739DD5101305BBCFC9DE0DFE7F415911F21FC9B30979
        A396795D7DF00219C5A107CB9E13F96D67E5DEC679D9CA75804064AA99E73F1F
        67B6AC0FEAECFF6982CF476208DB1BDFCA5B855F0F6BDD05D4FA4A29C8356334
        886CD6A8F67C4392E9B89EC5EC3A7E1191F7EA0939FD678CB977565069B75259
        9C478DD3C61C9320A819A92E326131423C0903E104837FE8A4F4388984CEAEDE
        218475C73179ED5A124FC08D5BB3B2D86B275862A5AED44CC02638D03FCAD9E1
        CBD4059D3CB5C8C74854727A22C1C4E45FB41DFE01911B3A226792062A14815F
        DDFE64AD93A0DD4C956660E37B5F73FCDCAFD88B3526AF467864818BCE6D4B18
        8AA4199D8AB3EDA33E84656B978C8B5CCA7D2E96A8DB37DE534AA0D0C2E13317
        D9B9FF344D8DF7E3AB2861F452982F7ABEA3BDF93E1A177AF97932CE13ED3D08
        D3F39D52B76838BD2E1AAB8AD9A4088AAC46DA7B07F9F8D4184BEBAB482BEB85
        B2FEC4A921363F30971DAB6BB812D359FE7A17C2D8DC2193790ECA948265FE22
        42F565AA7D829E81DF693D3480AD4423C76452C6E944C3115E7BF46ED62D2847
        4FA5786867272267C3073255E8A6C2EFC2AB3C685BE6618ED9C05834C5DEAF46
        E8FBF1B26ABC417537CDC3354E420D01E6E51B094F2758F9CA27AAF4F83E79F3
        C43DD3B4943D8FCDE7C254929188CE99F10857A3718A6D16167A34029A099FDD
        C88B0706E8EE39A97EADE92D29731D98CB4B48A725C934B4ACF4B3BDC1CB9599
        34E3D369A2BAC4A6E6C26333E0B01A6839749E373FFB92D6CDCB5BC4B347C65E
        E8E8E87A7F766467956C59DFF0DBF655D5C2A3592C29459CA3A6712C124FEC3B
        3A987AB7ABCFB57BEBBA2D2FAF087CF837409F2A93EE68D9B70000000049454E
        44AE426082
      }
      Proportional = True
      Stretch = True
    end
  end
  object Panel2: TPanel
    Left = 0
    Height = 50
    Top = 503
    Width = 640
    Align = alBottom
    ClientHeight = 50
    ClientWidth = 640
    TabOrder = 1
    object btnZnajdz: TBitBtn
      Left = 8
      Height = 30
      Top = 8
      Width = 136
      Caption = 'Znajdź'
      Images = DM.ImageList1
      ImageIndex = 33
      OnClick = btnZnajdzClick
      TabOrder = 0
    end
  end
  object ProgressBar1: TProgressBar
    Left = 0
    Height = 20
    Top = 483
    Width = 640
    Align = alBottom
    Step = 1
    TabOrder = 2
    Visible = False
  end
  object PageControl1: TPageControl
    Left = 0
    Height = 433
    Top = 50
    Width = 640
    ActivePage = TabSheetBrzkZdj
    Align = alClient
    TabIndex = 0
    TabOrder = 3
    object TabSheetBrzkZdj: TTabSheet
      Caption = 'Brak zdjęcia'
      ClientHeight = 405
      ClientWidth = 632
      object RxDBGrid2: TRxDBGrid
        Left = 0
        Height = 405
        Top = 0
        Width = 632
        ColumnDefValues.BlobText = '(blob)'
        TitleButtons = True
        AutoSort = True
        Columns = <        
          item
            Alignment = taCenter
            Font.Color = clBlue
            Title.Alignment = taCenter
            Title.Orientation = toHorizontal
            Title.Caption = 'IDO'
            FieldName = 'IDO'
            EditButtons = <>
            Filter.DropDownRows = 0
            Filter.EmptyValue = '(Empty)'
            Filter.NotEmptyValue = '(Not empty)'
            Filter.AllValue = '(All values)'
            Filter.EmptyFont.Style = [fsItalic]
            Filter.ItemIndex = -1
            Footer.Alignment = taCenter
            Footer.ValueType = fvtCount
            Footers = <>
          end        
          item
            Title.Alignment = taCenter
            Title.Orientation = toHorizontal
            Title.Caption = 'Nazwisko'
            Width = 150
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
            Title.Caption = 'Imie'
            Width = 150
            FieldName = 'Imie'
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
        FooterOptions.Color = 15658734
        FooterOptions.RowCount = 1
        FooterOptions.DrawFullLine = False
        SearchOptions.QuickSearchOptions = [loCaseInsensitive, loPartialKey]
        SearchOptions.FromStart = False
        OptionsRx = [rdgAllowColumnsForm, rdgAllowDialogFind, rdgFooterRows, rdgAllowQuickFilter]
        FooterColor = 15658734
        FooterRowCount = 1
        Align = alClient
        AlternateColor = 14022911
        Color = clWindow
        DrawFullLine = False
        FocusColor = clHighlight
        FixedHotColor = clNone
        SelectedColor = clHighlight
        GridLineStyle = psSolid
        DataSource = DSMemBrak
        FixedColor = clNone
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColumnMove, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgHeaderPushedLook]
        ReadOnly = True
        TabOrder = 0
        TitleStyle = tsNative
        OnDblClick = RxDBGrid2DblClick
      end
    end
    object TabSheetStare: TTabSheet
      Caption = 'Stare zdjęcia z poprzednich pobytów'
      ClientHeight = 405
      ClientWidth = 632
      object RxDBGrid1: TRxDBGrid
        Left = 0
        Height = 405
        Top = 0
        Width = 632
        ColumnDefValues.BlobText = '(blob)'
        TitleButtons = True
        AutoSort = True
        Columns = <        
          item
            Alignment = taCenter
            Font.Color = clBlue
            Title.Alignment = taCenter
            Title.Orientation = toHorizontal
            Title.Caption = 'IDO'
            FieldName = 'IDO'
            EditButtons = <>
            Filter.DropDownRows = 0
            Filter.EmptyValue = '(Empty)'
            Filter.NotEmptyValue = '(Not empty)'
            Filter.AllValue = '(All values)'
            Filter.EmptyFont.Style = [fsItalic]
            Filter.ItemIndex = -1
            Footer.Alignment = taCenter
            Footer.ValueType = fvtCount
            Footers = <>
          end        
          item
            Title.Alignment = taCenter
            Title.Orientation = toHorizontal
            Title.Caption = 'Nazwisko'
            Width = 150
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
            Title.Caption = 'Imie'
            Width = 150
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
            Font.Color = clGreen
            Title.Alignment = taCenter
            Title.Orientation = toHorizontal
            Title.Caption = 'wiek zdjęcia w latach'
            Width = 125
            FieldName = 'wiekZdj'
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
        FooterOptions.Color = 15658734
        FooterOptions.RowCount = 1
        FooterOptions.DrawFullLine = False
        SearchOptions.QuickSearchOptions = [loCaseInsensitive, loPartialKey]
        SearchOptions.FromStart = False
        OptionsRx = [rdgAllowColumnsForm, rdgAllowDialogFind, rdgFooterRows, rdgAllowQuickFilter]
        FooterColor = 15658734
        FooterRowCount = 1
        Align = alClient
        AlternateColor = 14022911
        Color = clWindow
        DrawFullLine = False
        FocusColor = clHighlight
        FixedHotColor = clNone
        SelectedColor = clHighlight
        GridLineStyle = psSolid
        DataSource = DSMem
        FixedColor = clNone
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColumnMove, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgHeaderPushedLook]
        ReadOnly = True
        TabOrder = 0
        TitleStyle = tsNative
        OnDblClick = RxDBGrid1DblClick
      end
    end
  end
  object RxMem: TRxMemoryData
    Active = True
    FieldDefs = <    
      item
        Name = 'IDO'
        DataType = ftInteger
      end    
      item
        Name = 'Nazwisko'
        DataType = ftString
        Size = 60
      end    
      item
        Name = 'Imie'
        DataType = ftString
        Size = 60
      end    
      item
        Name = 'wiekZdj'
        DataType = ftInteger
      end>
    PacketRecords = 0
    Left = 320
    Top = 264
  end
  object DSMem: TDataSource
    DataSet = RxMem
    Left = 392
    Top = 264
  end
  object RxMemBrak: TRxMemoryData
    Active = True
    FieldDefs = <    
      item
        Name = 'IDO'
        DataType = ftInteger
      end    
      item
        Name = 'Nazwisko'
        DataType = ftString
        Size = 60
      end    
      item
        Name = 'Imie'
        DataType = ftString
        Size = 60
      end>
    PacketRecords = 0
    Left = 322
    Top = 192
  end
  object DSMemBrak: TDataSource
    DataSet = RxMemBrak
    Left = 392
    Top = 192
  end
end
