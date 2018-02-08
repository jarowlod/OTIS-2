object Form1: TForm1
  Left = 407
  Height = 556
  Top = 238
  Width = 1040
  Caption = 'Form1'
  ClientHeight = 556
  ClientWidth = 1040
  LCLVersion = '6.3'
  object Button1: TButton
    Left = 112
    Height = 25
    Top = 416
    Width = 91
    Caption = 'Show JSON'
    OnClick = Button1Click
    TabOrder = 0
  end
  object Memo1: TMemo
    Left = 584
    Height = 72
    Top = 8
    Width = 345
    ScrollBars = ssAutoBoth
    TabOrder = 1
    WordWrap = False
  end
  object Button2: TButton
    Left = 16
    Height = 25
    Top = 416
    Width = 91
    Caption = 'Show Dane'
    OnClick = Button2Click
    TabOrder = 2
  end
  object RxDBGrid1: TRxDBGrid
    Left = 15
    Height = 276
    Top = 128
    Width = 200
    ColumnDefValues.BlobText = '(blob)'
    TitleButtons = False
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
    FooterOptions.DrawFullLine = False
    SearchOptions.QuickSearchOptions = [loCaseInsensitive, loPartialKey]
    SearchOptions.FromStart = False
    OptionsRx = [rdgAllowColumnsForm, rdgAllowDialogFind, rdgAllowQuickFilter]
    Color = clWindow
    DrawFullLine = False
    FocusColor = clRed
    SelectedColor = clHighlight
    GridLineStyle = psSolid
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColumnMove, dgColLines, dgRowLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 3
  end
  object Button5: TButton
    Left = 240
    Height = 25
    Top = 56
    Width = 107
    Caption = 'Wklej ze schowka'
    TabOrder = 4
  end
  object Memo2: TMemo
    Left = 15
    Height = 88
    Top = 448
    Width = 150
    Lines.Strings = (
      'ID'
      'DateTime'
      'User'
      'WPZ'
      'KK'
    )
    TabOrder = 5
  end
  object Panel1: TPanel
    Left = 240
    Height = 458
    Top = 88
    Width = 784
    ClientHeight = 458
    ClientWidth = 784
    TabOrder = 6
    object RxDBGrid2: TRxDBGrid
      Left = 8
      Height = 152
      Top = 32
      Width = 751
      ColumnDefValues.BlobText = '(blob)'
      TitleButtons = False
      AutoSort = True
      Columns = <      
        item
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = 'Kwalifikacja prawna czynu'
          Width = 300
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
          Title.Caption = 'lat'
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
          Title.Caption = 'msc'
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
          Title.Caption = 'dni'
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
          Title.Caption = 'zastępcza'
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
          Title.Caption = 'Termin końca kary'
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
      FooterOptions.DrawFullLine = False
      SearchOptions.QuickSearchOptions = [loCaseInsensitive, loPartialKey]
      SearchOptions.FromStart = False
      OptionsRx = [rdgAllowColumnsForm, rdgAllowDialogFind, rdgAllowQuickFilter]
      Color = clWindow
      DrawFullLine = False
      FocusColor = clRed
      SelectedColor = clHighlight
      GridLineStyle = psSolid
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColumnMove, dgColLines, dgRowLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
    end
    object Label1: TLabel
      Left = 8
      Height = 15
      Top = 8
      Width = 60
      Caption = 'Orzeczenia:'
      ParentColor = False
    end
    object Label2: TLabel
      Left = 8
      Height = 15
      Top = 208
      Width = 82
      Caption = 'Data osadzenia:'
      ParentColor = False
    end
    object DateEdit1: TDateEdit
      Left = 104
      Height = 23
      Top = 207
      Width = 103
      CalendarDisplaySettings = [dsShowHeadings, dsShowDayNames]
      DateOrder = doNone
      ButtonWidth = 23
      NumGlyphs = 1
      MaxLength = 0
      TabOrder = 1
      Text = 'DateEdit1'
    end
    object GroupBox1: TGroupBox
      Left = 256
      Height = 74
      Top = 207
      Width = 144
      Caption = 'WPZ po ...'
      ClientHeight = 54
      ClientWidth = 140
      TabOrder = 2
      object CheckBox1: TCheckBox
        Left = 8
        Height = 19
        Top = 0
        Width = 83
        Caption = 'Obostrzenie'
        TabOrder = 0
      end
      object SpinEdit1: TSpinEdit
        Left = 8
        Height = 23
        Top = 24
        Width = 75
        TabOrder = 1
      end
      object Label3: TLabel
        Left = 96
        Height = 15
        Top = 30
        Width = 17
        Caption = 'dni'
        ParentColor = False
      end
    end
    object Button4: TButton
      Left = 8
      Height = 25
      Top = 336
      Width = 120
      Caption = 'Oblicz'
      OnClick = Button4Click
      TabOrder = 3
    end
    object Button3: TButton
      Left = 286
      Height = 25
      Top = 336
      Width = 106
      Caption = 'Zapisz'
      OnClick = Button3Click
      TabOrder = 4
    end
    object ComboBox1: TComboBox
      Left = 104
      Height = 23
      Top = 240
      Width = 103
      ItemHeight = 15
      ItemIndex = 0
      Items.Strings = (
        '1/2'
        '2/3'
        '3/4'
        'po 15'
        'po 25'
      )
      TabOrder = 5
      Text = '1/2'
    end
    object Label4: TLabel
      Left = 8
      Height = 15
      Top = 240
      Width = 43
      Caption = 'Ułamek:'
      ParentColor = False
    end
    object GroupBox2: TGroupBox
      Left = 8
      Height = 80
      Top = 368
      Width = 384
      Caption = 'Wynik'
      ClientHeight = 60
      ClientWidth = 380
      Color = clBtnFace
      ParentColor = False
      TabOrder = 6
      object plGradient1: TplGradient
        Left = 0
        Height = 60
        Top = 0
        Width = 380
        Align = alClient
        BevelWidth = 1
        BevelStyle = bvNone
        Buffered = True
        Direction = gdDownRight
        ColorStart = clWhite
        ColorEnd = clYellow
        StepWidth = 1
        Style = gsVertical
      end
      object DateEdit2: TDateEdit
        Left = 8
        Height = 23
        Top = 24
        Width = 103
        CalendarDisplaySettings = [dsShowHeadings, dsShowDayNames]
        DateOrder = doNone
        ButtonWidth = 23
        NumGlyphs = 1
        MaxLength = 0
        TabOrder = 0
        Text = 'DateEdit2'
      end
      object DateEdit3: TDateEdit
        Left = 136
        Height = 23
        Top = 24
        Width = 103
        CalendarDisplaySettings = [dsShowHeadings, dsShowDayNames]
        DateOrder = doNone
        ButtonWidth = 23
        NumGlyphs = 1
        MaxLength = 0
        TabOrder = 1
        Text = 'DateEdit3'
      end
      object DateEdit4: TDateEdit
        Left = 256
        Height = 23
        Top = 24
        Width = 103
        CalendarDisplaySettings = [dsShowHeadings, dsShowDayNames]
        DateOrder = doNone
        ButtonWidth = 23
        NumGlyphs = 1
        MaxLength = 0
        TabOrder = 2
        Text = 'DateEdit4'
      end
      object Label7: TLabel
        Left = 256
        Height = 15
        Top = 8
        Width = 50
        Caption = 'Postpenit'
        ParentColor = False
      end
      object Label6: TLabel
        Left = 136
        Height = 15
        Top = 8
        Width = 54
        Caption = 'Przepustki'
        ParentColor = False
      end
      object Label5: TLabel
        Left = 8
        Height = 15
        Top = 8
        Width = 25
        Caption = 'WPZ'
        ParentColor = False
      end
    end
    object CheckBox2: TCheckBox
      Left = 16
      Height = 19
      Top = 272
      Width = 101
      BidiMode = bdRightToLeft
      Caption = 'Odwołanie wpz'
      ParentBidiMode = False
      TabOrder = 7
    end
  end
  object RxMemoryData1: TRxMemoryData
    FieldDefs = <>
    PacketRecords = 0
    Left = 720
    Top = 96
  end
end
