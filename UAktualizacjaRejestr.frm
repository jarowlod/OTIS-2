object AktualizacjaRejestr: TAktualizacjaRejestr
  Left = 445
  Height = 535
  Top = 161
  Width = 865
  Caption = 'Rejestr aktualizacji osadzonych'
  ClientHeight = 535
  ClientWidth = 865
  OnCreate = FormCreate
  Position = poOwnerFormCenter
  LCLVersion = '5.9'
  object Panel1: TPanel
    Left = 0
    Height = 50
    Top = 0
    Width = 865
    Align = alTop
    ClientHeight = 50
    ClientWidth = 865
    Color = clWhite
    ParentColor = False
    TabOrder = 0
    object Label1: TLabel
      Left = 64
      Height = 15
      Top = 15
      Width = 162
      Caption = 'Rejestr aktualizacji osadzonych'
      ParentColor = False
    end
    object Image1: TImage
      Left = 16
      Height = 32
      Top = 8
      Width = 32
      AutoSize = True
      Picture.Data = {
        1754506F727461626C654E6574776F726B477261706869633803000089504E47
        0D0A1A0A0000000D494844520000002000000020080300000044A48AC6000000
        0373424954080808DBE14FE00000000970485973000007820000078201704071
        B50000001974455874536F667477617265007777772E696E6B73636170652E6F
        72679BEE3C1A00000168504C5445FFFFFFFFFFFFFFFFFF8080BF808FCF8495CA
        839BC98796CB8699CC8898C9EFECDDEEEBDD8596CA8597CA8797CB8697CCEEEC
        DD8A9ACC8696CC8697CB8698CC8698CB8797CCE5E1D0899ACCEFEBDEEBE8DDEF
        EBDE8A9CCDDFDAC98D9ECFDCD7C58B9DCF8B9DCE8B9CCEADB5D28697CC8697CA
        8697CB94A5D3889ACC90A1D18B9DCE8899CCA3B6DC9BABD68899CCA6BADE899A
        CC8C9CCD8E9ECE8E9FCF91A2D096A8D398A9D49CA9D09FABCDA1ADCCA3B6DCA6
        B9DEA8B8DDABBFE2ADC2E3B0BFE0B1BAD3B3C8E7B5CAE8B6BBCCB9C0D4B9CFEB
        BBD1ECBCD2EDC0C6D6C1D8F0C5D6EDC6CAD7C7D7EDC8DFF4CACDD4CAE0F5CDD0
        D8CDE5F7CED1D8CFE7F8D0E8F9D1E8F9D2E0F1D5D0BBD7D2BDD7D2BEDAD5C1DD
        EEFADFF0FBE0DBC9E0DCCAE1DCCBE2DDCCE3DECEE3DFCEE3E1DCE3F2FCE5E0D0
        E5E3DCE6E1D2E6E2D2E7E2D3E8E3D4E8E4D5E8E6DDE9E5D6E9F5FDEAF6FDEBE7
        D9ECE8DAEDE9DCEDEADEEEEADCEEEADDEEEADEEFEBDE96ADC5F7000000307452
        4E5300010204101D2122282F525A5C606C78787E81898B8D9F9FA6B0B2C0C8CA
        CED4D8DADCDCE4E9EDF2F4F5F7F8FBFCFEFE32C802DF0000010649444154388D
        63902E4703B24C0C28004341A43C130105E1A82AB0284055814D018A0AAC0A90
        55605780A402AC202E020452C10AE263C1401C454149210894221B2489D30AF2
        14A4C722834C4C05D989C82097166E28CC420685980A12A29041123156144BE1
        5350E6616EA0A720C88C4B419AB9A9ABAFBF8FAE222B5A64C18085557048684A
        7E9EBD1C234C41510112F0330904C9E7E7476BF260B5C2C116221F1362278155
        81B92B543EC44D09A6200339AE2C1DA1F2214E323005590948C0D9062A1FA223
        8AD58A64C33088BCA7361BF670F036F602C9BB6B89E00AC90023336B7D750D31
        354E5C719113E4A2CCCBC2C0A7CA41203DF0ABB033700B60075CE09812120600
        02853E8D3BB8580D0000000049454E44AE426082
      }
    end
    object Label2: TLabel
      Left = 64
      Height = 14
      Top = 32
      Width = 108
      Caption = 'ostatnich 1000 pozycji'
      Font.CharSet = EASTEUROPE_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Pitch = fpVariable
      Font.Quality = fqDraft
      ParentColor = False
      ParentFont = False
    end
  end
  object RxDBGrid1: TRxDBGrid
    Left = 0
    Height = 485
    Top = 50
    Width = 328
    ColumnDefValues.BlobText = '(blob)'
    TitleButtons = True
    AutoSort = True
    Columns = <    
      item
        Font.Color = clMaroon
        Title.Alignment = taCenter
        Title.Orientation = toHorizontal
        Title.Caption = 'DODANO'
        Width = 130
        FieldName = 'DODANO'
        EditButtons = <>
        Filter.IsNull = False
        Filter.IsAll = True
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
        Title.Caption = 'NAZWISKO'
        Width = 150
        FieldName = 'NAZWISKO'
        EditButtons = <>
        Filter.IsNull = False
        Filter.IsAll = True
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
    OptionsRx = [rdgAllowDialogFind, rdgAllowQuickSearch, rdgAllowQuickFilter, rdgAllowFilterForm, rdgAllowSortForm, rdgAllowToolMenu, rdgCaseInsensitiveSort, rdgWordWrap]
    FooterRowCount = 1
    Align = alLeft
    AlternateColor = 16055807
    AutoAdvance = aaNone
    AutoEdit = False
    Color = clWindow
    DrawFullLine = False
    FocusColor = clHighlight
    FixedHotColor = clNone
    SelectedColor = clHighlight
    GridLineStyle = psSolid
    DataSource = DSAktualizacja
    DefaultRowHeight = 24
    FixedColor = clNone
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgHeaderHotTracking, dgHeaderPushedLook, dgAnyButtonCanSelect, dgDisableDelete, dgDisableInsert, dgCellHints, dgCellEllipsis]
    ParentColor = False
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 1
    TitleStyle = tsNative
  end
  object Panel2: TPanel
    Left = 328
    Height = 485
    Top = 50
    Width = 537
    Align = alClient
    ClientHeight = 485
    ClientWidth = 537
    TabOrder = 2
    object RxDBGrid2: TRxDBGrid
      Left = 1
      Height = 248
      Top = 1
      Width = 535
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
          Width = 70
          FieldName = 'IDO'
          EditButtons = <>
          Filter.IsNull = False
          Filter.IsAll = True
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
          Title.Caption = 'NAZWISKO'
          Width = 120
          FieldName = 'NAZWISKO'
          EditButtons = <>
          Filter.IsNull = False
          Filter.IsAll = True
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
          Title.Caption = 'IMIE'
          Width = 100
          FieldName = 'IMIE'
          EditButtons = <>
          Filter.IsNull = False
          Filter.IsAll = True
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
          Title.Caption = 'OJCIEC'
          Width = 100
          FieldName = 'OJCIEC'
          EditButtons = <>
          Filter.IsNull = False
          Filter.IsAll = True
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
          Title.Caption = 'KLASYF'
          Width = 50
          FieldName = 'KLASYF'
          EditButtons = <>
          Filter.IsNull = False
          Filter.IsAll = True
          Filter.DropDownRows = 0
          Filter.EmptyValue = '(Empty)'
          Filter.AllValue = '(All values)'
          Filter.EmptyFont.Style = [fsItalic]
          Filter.ItemIndex = -1
          Footers = <>
        end      
        item
          Font.Color = clGreen
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = 'POC'
          Width = 50
          FieldName = 'POC'
          EditButtons = <>
          Filter.IsNull = False
          Filter.IsAll = True
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
      OptionsRx = [rdgAllowDialogFind, rdgAllowQuickSearch, rdgAllowQuickFilter, rdgAllowFilterForm, rdgAllowSortForm, rdgAllowToolMenu, rdgCaseInsensitiveSort, rdgWordWrap]
      FooterRowCount = 1
      Align = alTop
      AlternateColor = 16055807
      AutoAdvance = aaNone
      AutoEdit = False
      Color = clWindow
      DrawFullLine = False
      FocusColor = clHighlight
      FixedHotColor = clNone
      SelectedColor = clHighlight
      GridLineStyle = psSolid
      DataSource = DSOsadzeni
      DefaultRowHeight = 24
      FixedColor = clNone
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgHeaderHotTracking, dgHeaderPushedLook, dgAnyButtonCanSelect, dgDisableDelete, dgDisableInsert, dgCellHints, dgCellEllipsis]
      ParentColor = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 0
      TitleStyle = tsNative
    end
    object DBMemo1: TDBMemo
      Left = 1
      Height = 235
      Top = 249
      Width = 535
      Align = alClient
      DataField = 'Opis'
      DataSource = DSAktualizacja
      ScrollBars = ssAutoBoth
      TabOrder = 1
      WordWrap = False
    end
  end
  object ZQAktualizacja: TZQuery
    Connection = DM.ZConnection1
    SQL.Strings = (
      'SELECT'
      'ID,'
      'DODANO,'
      'NAZWISKO,'
      'Opis'
      'FROM synchro'
      'ORDER BY ID DESC'
      'LIMIT 1000'
    )
    Params = <>
    left = 135
    top = 122
  end
  object ZQOsadzeni: TZQuery
    Connection = DM.ZConnection1
    SQL.Strings = (
      'SELECT'
      'ID_SYNCHRO,'
      'IDO,'
      'NAZWISKO,'
      'IMIE,'
      'OJCIEC,'
      'KLASYF,'
      'POC'
      'FROM osadzeni'
    )
    Params = <>
    MasterFields = 'ID'
    MasterSource = DSAktualizacja
    LinkedFields = 'ID_SYNCHRO'
    left = 600
    top = 122
  end
  object DSAktualizacja: TDataSource
    DataSet = ZQAktualizacja
    left = 135
    top = 184
  end
  object DSOsadzeni: TDataSource
    DataSet = ZQOsadzeni
    left = 600
    top = 184
  end
end
