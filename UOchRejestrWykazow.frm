object OchRejestrWykazow: TOchRejestrWykazow
  Left = 396
  Height = 556
  Top = 222
  Width = 1012
  Caption = 'Rejestr Wykazów Ochronnych'
  ClientHeight = 556
  ClientWidth = 1012
  OnCreate = FormCreate
  Position = poOwnerFormCenter
  LCLVersion = '6.3'
  object Panel1: TPanel
    Left = 0
    Height = 82
    Top = 0
    Width = 1012
    Align = alTop
    BevelOuter = bvNone
    ClientHeight = 82
    ClientWidth = 1012
    TabOrder = 0
    object Image1: TImage
      AnchorSideLeft.Control = Edit1
      AnchorSideLeft.Side = asrBottom
      AnchorSideRight.Control = Edit1
      Left = 408
      Height = 23
      Top = 24
      Width = 16
      Center = True
      Picture.Data = {
        1754506F727461626C654E6574776F726B47726170686963D802000089504E47
        0D0A1A0A0000000D49484452000000100000001008060000001FF3FF61000002
        9F4944415478DA8DD25B4893611CC7F1DFFB6EBA4D37D2D2DC6607D1F0001A81
        A99169C442ECC2843C81032FE62952894253D03031D3323422955C124A6491D4
        12A59415A13741921D844541CD5CB9766807E78EEFBBB7297561B3D8F7E2B9F8
        5F7C784E047ED7D13C90CE166CABE3840B8A0992E72640B1098F7D626BB0A75D
        5A51F00EFF88585BEA2BAFD488D2F6DF10A624C2CBE681A16958ED14AC061B18
        FD574430C6CAEADAA25B9B02E5D256495276A6F240810406AD194EBB1351E121
        08E2B2E0F400AA452774F36F21A4F5B9350DA5537E405565B742D6519BCF2648
        582D76F0B841F0D21412A205B0B8687C595EC5AB051F3C3F3BD7D65696E60734
        B6DC74D5B75705EB4C6E902C022C8281C1E242AA900F079BC01BB5199F97DD50
        4DCDAEF25DDAF8D6AEDAEF1B8086A63E4767E729EEB71537688200870D38DC80
        E6A7036E370586F18156020BCA19B8963E26F50C347ED800D49DEEB15DBF7626
        D44A7941D30C563C5E9024099BC7039DC905ADCE0192CBC3F31185913668E206
        875B2C1B804399D5F28713BD1591613CD8291F40F95E80F6C2EAA0A05EB280CF
        176071C98427BDF251C5447BA9DF1D24C61745671D4ED50C0E36AE0F7EB8BCB0
        B9E9F59D80CD81DEE84077F37D4882C6A44D23937737FD073131C70FA6A5EF9D
        3977BE9C959C1C03B36F666380D9672A3C1A9AC691380B8A45FD5835E8FA132E
        30357EC05A62F1319245921785A2ED19C25DE208AD5A63369AA8E9B2FCD4D893
        29A3B2A8922E98E7A7F17EF8F250B61C157EC0FF7ADDB2E3D3BEEAAE3D446838
        B4CA01CC8D4FCAF3EE30550103F7F24084440A167364D29D9C3016965F2AF1E2
        A9FA76E9984B1610B056FF5110822D3CD589C2D88410911E36B50EE30AE241C0
        C09FFA72D83325B95416970F5C7DBC3BB023FCDDA50C8C1B49B144612F3CFB0B
        6D301BD048E5C7F50000000049454E44AE426082
      }
    end
    object Edit1: TEdit
      Left = 8
      Height = 23
      Top = 24
      Width = 400
      Anchors = [akTop, akLeft, akRight]
      CharCase = ecUppercase
      Constraints.MaxWidth = 400
      Constraints.MinWidth = 188
      TabOrder = 0
    end
    object Label1: TLabel
      Left = 8
      Height = 15
      Top = 8
      Width = 113
      Caption = 'Wyszukaj (Nazwisko):'
      ParentColor = False
    end
    object ComboBox1: TComboBox
      Left = 120
      Height = 23
      Top = 54
      Width = 288
      ItemHeight = 15
      TabOrder = 1
      Text = 'ComboBox1'
    end
  end
  object Panel2: TPanel
    Left = 0
    Height = 406
    Top = 82
    Width = 1012
    Align = alClient
    BevelOuter = bvNone
    ClientHeight = 406
    ClientWidth = 1012
    TabOrder = 1
    object RxDBGrid1: TRxDBGrid
      Left = 0
      Height = 406
      Top = 0
      Width = 1012
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
        end      
        item
          Alignment = taCenter
          Font.Color = clGreen
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = 'POC'
          Width = 60
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
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = 'Kategoria wykazu'
          Width = 200
          FieldName = 'Opis'
          EditButtons = <>
          Filter.DropDownRows = 0
          Filter.EmptyValue = '(Empty)'
          Filter.AllValue = '(All values)'
          Filter.EmptyFont.Style = [fsItalic]
          Filter.ItemIndex = -1
          Footers = <>
          WordWrap = True
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
          WordWrap = True
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
      OptionsRx = [rdgAllowDialogFind, rdgAllowQuickSearch, rdgAllowQuickFilter, rdgAllowFilterForm, rdgAllowSortForm, rdgAllowToolMenu, rdgCaseInsensitiveSort, rdgDisableWordWrapTitles]
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
      DataSource = DSRejWykazow
      DefaultRowHeight = 24
      FixedColor = clNone
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgHeaderHotTracking, dgHeaderPushedLook, dgAnyButtonCanSelect, dgDisableDelete, dgDisableInsert, dgCellHints, dgTruncCellHints, dgCellEllipsis]
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 0
      TitleStyle = tsNative
    end
  end
  object Panel3: TPanel
    Left = 0
    Height = 68
    Top = 488
    Width = 1012
    Align = alBottom
    TabOrder = 2
  end
  object ZQRejWykazow: TZQuery
    Connection = DM.ZConnection1
    SQL.Strings = (
      'SELECT'
      'wyk.ID,'
      'wyk.IDO,'
      'os.Nazwisko,'
      'os.Imie,'
      'os.Ojciec,'
      'os.Klasyf,'
      'os.POC,'
      'wyk.Uwagi,'
      'wyk.Kategoria,'
      'kat.Opis'
      'FROM uwagi_wykazy as wyk'
      'RIGHT JOIN osadzeni as os ON os.IDO = wyk.IDO'
      'JOIN katalog_wykazow as kat ON kat.ID = wyk.Kategoria'
    )
    Params = <>
    Left = 290
    Top = 152
  end
  object DSRejWykazow: TDataSource
    DataSet = ZQRejWykazow
    Left = 384
    Top = 152
  end
end
