object ZatZaswiadczenie: TZatZaswiadczenie
  Left = 334
  Height = 699
  Top = 226
  Width = 710
  Caption = 'Zaświadczenie o wykonywaniu pracy'
  ClientHeight = 699
  ClientWidth = 710
  Position = poOwnerFormCenter
  LCLVersion = '6.6'
  object Panel1: TPanel
    Left = 0
    Height = 40
    Top = 0
    Width = 710
    Align = alTop
    BevelOuter = bvNone
    Caption = 'ZAŚWIADCZENIE O WYKONYWANIU PRACY'
    Font.CharSet = EASTEUROPE_CHARSET
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Quality = fqDraft
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Height = 80
    Top = 40
    Width = 710
    Align = alTop
    BevelOuter = bvLowered
    ClientHeight = 80
    ClientWidth = 710
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Height = 15
      Top = 12
      Width = 80
      Caption = 'Imię i nazwisko'
      ParentColor = False
    end
    object Label2: TLabel
      Left = 57
      Height = 15
      Top = 40
      Width = 31
      Caption = 'ojciec'
      ParentColor = False
    end
    object Label3: TLabel
      Left = 248
      Height = 15
      Top = 40
      Width = 50
      Caption = 'urodzony'
      ParentColor = False
    end
    object Label4: TLabel
      Left = 424
      Height = 15
      Top = 40
      Width = 9
      Caption = 'w'
      ParentColor = False
    end
    object edNazwiskoImie: TEdit
      Left = 96
      Height = 23
      Top = 8
      Width = 603
      Anchors = [akTop, akLeft, akRight]
      TabOrder = 0
    end
    object edOjciec: TEdit
      Left = 96
      Height = 23
      Top = 37
      Width = 136
      TabOrder = 1
    end
    object edUrodzony: TEdit
      Left = 304
      Height = 23
      Top = 37
      Width = 109
      TabOrder = 2
    end
    object edMiejscowosc: TEdit
      Left = 440
      Height = 23
      Top = 37
      Width = 259
      Anchors = [akTop, akLeft, akRight]
      TabOrder = 3
    end
    object Label8: TLabel
      Left = 16
      Height = 15
      Top = 64
      Width = 374
      Caption = '"rrrr-mm-dd" - wymagany format daty aby sortowanie było poprawne.'
      Font.Color = clGray
      ParentColor = False
      ParentFont = False
    end
  end
  object RxDBGrid1: TRxDBGrid
    Left = 0
    Height = 395
    Top = 120
    Width = 710
    ColumnDefValues.BlobText = '(blob)'
    TitleButtons = True
    AutoSort = True
    Columns = <    
      item
        Title.Alignment = taCenter
        Title.Orientation = toHorizontal
        Title.Caption = 'Od'
        FieldName = 'Od'
        EditButtons = <>
        Filter.DropDownRows = 0
        Filter.EmptyValue = '(Empty)'
        Filter.NotEmptyValue = '(Not empty)'
        Filter.AllValue = '(All values)'
        Filter.EmptyFont.Style = [fsItalic]
        Filter.ItemIndex = -1
        Footers = <>
        SortFields = 'Od'
      end    
      item
        Title.Alignment = taCenter
        Title.Orientation = toHorizontal
        Title.Caption = 'Do'
        FieldName = 'Do'
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
        PickList.Strings = (
          ''
          'SKIEROWANIE'
        )
        Title.Alignment = taCenter
        Title.Orientation = toHorizontal
        Title.Caption = 'forma'
        Width = 120
        FieldName = 'forma'
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
        PickList.Strings = (
          ''
          'ODPŁATNIE'
          'NIEODPŁATNIE'
        )
        Title.Alignment = taCenter
        Title.Orientation = toHorizontal
        Title.Caption = 'rodzaj'
        Width = 120
        FieldName = 'rodzaj'
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
        PickList.Strings = (
          '1/8 ETATU'
          '2/8 ETATU'
          '3/8 ETATU'
          '4/8 ETATU'
          '5/8 ETATU'
          '6/8 ETATU'
          '7/8 ETATU'
          '8/8 ETATU'
          'DO 90 GODZ.'
        )
        Title.Alignment = taCenter
        Title.Orientation = toHorizontal
        Title.Caption = 'wymiar'
        Width = 100
        FieldName = 'wymiar'
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
        Title.Caption = 'Jednostka'
        Width = 120
        FieldName = 'Jednostka'
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
    Color = clWindow
    DrawFullLine = False
    FocusColor = clHighlight
    FixedHotColor = clNone
    SelectedColor = clHighlight
    GridLineStyle = psSolid
    DataSource = DSOkresy
    DefaultRowHeight = 24
    FixedColor = clNone
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgHeaderHotTracking, dgHeaderPushedLook, dgAnyButtonCanSelect, dgCellHints, dgCellEllipsis]
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    TitleStyle = tsNative
  end
  object Panel3: TPanel
    Left = 0
    Height = 159
    Top = 540
    Width = 710
    Align = alBottom
    BevelOuter = bvNone
    ClientHeight = 159
    ClientWidth = 710
    TabOrder = 3
    object btnDrukuj: TBitBtn
      Left = 8
      Height = 30
      Top = 123
      Width = 120
      Anchors = [akLeft, akBottom]
      Caption = 'Drukuj'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000064000000640000000000000000000000000000000000
        00000000000000000000D7C39BFFECE3D6FFECE3D6FFECE3D6FFECE3D6FFECE3
        D6FFECE3D6FFD7C39BFF00000000000000000000000000000000958F8FBF9C96
        96CB9C9696E469636AF1C4AB7FFFEDE1D5FFEDE1D5FFEDE1D5FFEDE1D5FFEDE1
        D5FFEDE1D5FFC4AB7FFF69636AE99C9696EC9C9696DF999292D3958F8FFFC3C0
        BFFFC3C0BFFF837D84FFC6A874FFE0CBAEFFE0CBAEFFE0CBAEFFE0CBAEFFE0CB
        AEFFE0CBAEFFC6A874FF837D84FFC3C0BFFFC3C0BFFF999292FFA49FA1FFD1CF
        CEFFD1CFCEFFD3D2D1FFD2D2D3FFD0D0D2FFD0D0D2FFD0D0D2FFD0D0D2FFD0D0
        D2FFD0D0D2FFD2D2D3FFD3D2D1FFBACAD7FF6E9BE3FFA49FA1FFAAA7A7FFD9D7
        D7FFD9D7D7FFD9D7D7FFD9D7D7FFD9D7D7FFD9D7D7FFD9D7D7FFD9D7D7FFD9D7
        D7FFD9D7D7FFD9D7D7FFD9D7D7FF8AC3E9FF004BFBFFABA8A8FFB7B3B3FFE6E8
        E9FFD6C5AFFFBC6B10FFBB6A0FFFBB6A0FFFBB6A0FFFBB6A0FFFBB6A0FFFBB6A
        0FFFBB6A0FFFBB6A0FFFBC6B10FFD6C5AFFFE6E8E9FFB8B5B5FFBCB9BAFFEEF2
        F5FFBA7B3EFFE1A942FFE1A842FFE1A842FFE1A842FFE1A842FFE1A842FFE1A8
        42FFE1A842FFE1A842FFE1A942FFBA7B3EFFEEF2F5FFBFBBBCFFCDC8C9FFF8FC
        FFFFCD9753FFEEC670FFEEC771FFEEC771FFEEC771FFEEC771FFEEC771FFEEC7
        71FFEEC771FFEEC771FFEEC670FFCD9753FFF8FCFFFFCECBCCFFD2D0D0FFFCFF
        FFFFD7A55CFFEDC977FFE9BF68FFE9BF68FFE9BF68FFE9BF68FFE9BF68FFE9BF
        68FFE9BF68FFE9BF68FFEDC977FFD7A55CFFFCFFFFFFD4D1D0FFDEDCDBFFFFFF
        FFFFE8C070FFE0AC54FFB99D6BFFD7BD91FFD7BD91FFD7BD91FFD7BD91FFD7BD
        91FFD7BD91FFB99D6BFFE0AC54FFE8C070FFFFFFFFFFE3DFDFFFCAC3C5E0B0AF
        B4D9D8A859D8C9924BE4C4AB7FFFDFCAADFFDFCAADFFDFCAADFFDFCAADFFDFCA
        ADFFDFCAADFFC4AB7FFFC9924BF0D8A859DFB0AFB4D5CAC2C4E0000000000000
        00000000000000000000D0BD98FFECDFD1FFECDFD1FFECDFD1FFECDFD1FFECDF
        D1FFECDFD1FFD0BD98FF00000000000000000000000000000000000000000000
        00000000000000000000D5C4A4FFEFE4D8FFEFE4D8FFEFE4D8FFEFE4D8FFEFE4
        D8FFEFE4D8FFD5C4A4FF00000000000000000000000000000000000000000000
        00000000000000000000DED0B8FFF5EDE4FFF5EDE4FFF5EDE4FFF5EDE4FFF5ED
        E4FFF5EDE4FFDED0B8FF00000000000000000000000000000000000000000000
        00000000000000000000E2D6C1FFF8F3EAFFF8F3EAFFF8F3EAFFF8F3EAFFF8F3
        EAFFF8F3EAFFE2D6C1FF00000000000000000000000000000000000000000000
        00000000000000000000E3D8C6E3EFE8DBFFEFE8DBFFEFE8DBFFEFE8DBFFEFE8
        DBFFEFE8DBFFE3D8C6D300000000000000000000000000000000
      }
      OnClick = btnDrukujClick
      TabOrder = 0
    end
    object Label5: TLabel
      Left = 8
      Height = 15
      Top = 19
      Width = 111
      Anchors = [akLeft, akBottom]
      Caption = 'Ostatnio pracował w '
      ParentColor = False
    end
    object edPracodawca_1: TEdit
      Left = 128
      Height = 23
      Top = 11
      Width = 571
      Anchors = [akLeft, akBottom]
      TabOrder = 1
    end
    object Label6: TLabel
      Left = 8
      Height = 15
      Top = 91
      Width = 75
      Anchors = [akLeft, akBottom]
      Caption = 'na stanowisku'
      ParentColor = False
    end
    object edStanowisko: TEdit
      Left = 96
      Height = 23
      Top = 83
      Width = 603
      Anchors = [akLeft, akBottom]
      TabOrder = 2
    end
    object Label7: TLabel
      Left = 304
      Height = 15
      Top = 35
      Width = 241
      Anchors = [akLeft, akBottom]
      Caption = '(pełna nazwa pracodawcy oraz adres siedziby)'
      ParentColor = False
    end
    object edPracodawca_2: TEdit
      Left = 8
      Height = 23
      Top = 51
      Width = 691
      Anchors = [akLeft, akBottom]
      TabOrder = 3
    end
    object btnZapisz: TBitBtn
      Left = 208
      Height = 30
      Top = 123
      Width = 104
      Caption = 'Zapisz'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000064000000640000000000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BA6833C5C38458FFD38B68FFE18F
        70FFDC8D6CFFDA8B6DFFD78A6EFFCD8B6CFFAB6D44FFA65F2EFFFFFFFF00FFFF
        FF00FFFFFF00FFFFFF009999990D95959531C68355FFEFCEBAFFDDFFFFFF87EE
        C7FFA2F4D7FFA2F6D7FF8CEEC7FFE0FFFFFFDDA285FFAB6A3EFFFFFFFF00A3A3
        A321A1A1A19D9F9F9FF0A1A1A1FFABABABFFC37F51FFEFB69AFFEAF3E8FF51BF
        84FF6FC998FF71C999FF54BF84FFE4F4E9FFDD9C7BFFAA693AFFA7A7A74AA5A5
        A5F4CECECEFFEDEDEDFFF4F4F4FFF5F5F5FFC48154FFEAB697FFF3F3EAFFEDF1
        E6FFEFF1E6FFEFF0E6FFEDF1E5FFF3F5EDFFD59C79FFB07044FFA9A9A9EADEDE
        DEFFF3F3F3FFDBDBDBFFD2D2D2FFDBDBDBFFC98B61FFE6B592FFE2A781FFE1A7
        81FFDEA37DFFDCA17BFFDB9F79FFD99E77FFD49A73FFBB7E57FFACACACEAF0F0
        F0FFDEDEDEFFD4D4D4FFD2D2D2FFDBDBDBFFCA8D65FFEAB899FFDDA57EFFDDA6
        80FFDBA37CFFD9A07AFFD9A079FFD89F78FFD89E78FFBF845DFFAEAEAEEAF2F2
        F2FFE2E2E2FFD8D8D8FFD5D5D5FFDCDCDCFFC8885DFFEFBFA1FFFDFCFAFFFEFC
        FBFFFEFDFDFFFEFDFCFFFDFBFAFFFDFCFBFFDDA885FFC17F53FFB0B0B0EAF3F3
        F3FFE7E7E7FFDDDDDDFFD9D9D9FFE0E0E0FFC7865BFFEFC09EFFFFFFFFFFCC93
        6EFFFFFFFFFFFFFFFFFFFFFBF7FFFFF8F1FFE4AF8CFFC78A61FFB2B2B2EAF4F4
        F4FFEAEAEAFFE1E1E1FFDDDDDDFFE3E3E3FFCC8D65FFF3CDB0FFFFFFFFFFE3C7
        B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEABFA1FFC98960FFB4B4B4EAF5F5
        F5FFEEEEEEFFE6E6E6FFE2E2E2FFE6E6E6FFD4976EFFD49E7BFFD09871FFD6A4
        82FFCD8E68FFCD9069FFD09A75FFD19973FFC88B62FFAD5A2036B5B5B5EAF6F6
        F6FFEBEBEBFFDEDEDEFFD6D6D6FFD5D5D5FFD1D1D1FFC3C3C3FFBCBCBCFFC0C0
        C0FFE5E5E5FFA3A3A3EAFFFFFF00FFFFFF00FFFFFF00FFFFFF00B7B7B7EAF7F7
        F7FFE7E7E7FFEFEFEFFFF6F6F6FFFBFBFBFFFAFAFAFFF0F0F0FFDEDEDEFFC3C3
        C3FFE6E6E6FFA5A5A5EAFFFFFF00FFFFFF00FFFFFF00FFFFFF00B9B9B9EAF8F8
        F8FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFB
        FBFFEAEAEAFFA7A7A7EAFFFFFF00FFFFFF00FFFFFF00FFFFFF00BABABABFE1E1
        E1FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFB
        FBFFCFCFCFFFA9A9A9A1FFFFFF00FFFFFF00FFFFFF00FFFFFF00BCBCBC2ABBBB
        BBD1D0D0D0FFE8E8E8FFF3F3F3FFFDFDFDFFFCFCFCFFEDEDEDFFE0E0E0FFC2C2
        C2FFADADADC3ACACAC1BFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BCBC
        BC07BBBBBB55BABABAAEB8B8B8D6B7B7B7FBB6B6B6F9B4B4B4CDB3B3B3A9B1B1
        B146AFAFAF03FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
      }
      OnClick = btnZapiszClick
      TabOrder = 4
    end
    object btnWczytaj: TBitBtn
      Left = 320
      Height = 30
      Top = 123
      Width = 104
      Caption = 'Wczytaj'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000064000000640000000000000000000000FFFFFF00BB6A
        346BBA6530BCBB6631EDBA6630F7BA6630F7BA6630F7BA6530F7BA652FF7B965
        2EF70E7B22FE037B1EFFB6642EEFB7622CBDB7622E63FFFFFF00FFFFFF00BC69
        33DEF8F1EAF2F7ECDFFDF6EBDEFFF6EADEFFF6EADCFFF6EADCFFFAF3EBFFFAF3
        EBFF158C3AFF43A15FFF32944AFFF8FBF8F0B7602AD5FFFFFF00FFFFFF00BF71
        38F5F5EBDFFEFDBF68FFFCBD67FFFBBE65FF239751FF1D9149FF178F43FF118B
        3BFF3A9F5EFF80C196FF46A362FF2E9446FFB4652CF3FFFFFF00FFFFFF00C178
        3CF7F7EDE3FFFDC26EFFFFD8A0FFFFD79EFF299B5BFF90CAA9FF8DC8A5FF8AC6
        A1FF88C59EFF6AB685FF82C297FF48A566FF1D7A23FE00791B09FFFFFF00C47C
        40F7F7F0E6FFF8B455FFF7B456FFF7B554FF319F63FF94CDADFF6FBA8EFF6BB8
        89FF66B685FF61B380FF67B582FF83C298FF3CA05CFF007F25F9FFFFFF00C580
        42F7F8F1E8FFFEE5D5FFFDE5D3FFFDE5D3FF37A36BFF96CEB0FF94CDADFF91CB
        AAFF90CBA8FF74BC90FF8AC7A1FF46A568FF0A8735FF01832D01FFFFFF00C582
        45F7F8F2EBFFFEE7D6FFFDE7D6FFFDE7D6FF3DA56FFF3AA46FFF36A269FF329E
        63FF55AF7CFF91CBAAFF4FAB74FF1B9148FFC47C3FF7FFFFFF00FFFFFF00C684
        47F7F9F3ECFFFEE8D6FFFEE8D7FFFDE7D6FFFDE7D6FFFDE7D5FFFDE5D3FFFBE4
        D0FF41A46BFF5AB381FF289857FFFAF2EAFFC68042F7FFFFFF00FFFFFF00C688
        49F7F9F4EDFFFEE8D8FFFEE8D8FFFEE8D7FFFEE7D6FFFDE5D3FFFCE4D1FFFBE1
        CCFF46A872FF319F65FFF8DCC2FFFAF4EDFFC68245F7FFFFFF00FFFFFF00C688
        4AF7F9F4EFFFFEE7D7FFFDE7D6FFFDE7D5FFFDE6D4FFFCE6D2FFFBE1CCFFFADF
        C7FFF8DCC2FFF6DABDFFF6D8BBFFFAF4EFFFC68346F7FFFFFF00FFFFFF00C689
        4BF7F9F4F0FFFCE6D3FFFCE6D4FFFDE7D3FFFCE4D1FFFBE3CDFFFAE0C8FFF8DC
        C2FFF5D6BBFFF3D4B5FFF1D2B3FFF8F4F0FFC48246F7FFFFFF00FFFFFF00C689
        4BF7F9F5F1FFFCE3CFFFFBE4D0FFFCE4CFFFFCE3CDFFFAE1CAFFF9DDC4FFF6D9
        BCFFF4E9DFFFF7F2ECFFFBF7F3FFF5EFE9FFC27E45FBFFFFFF00FFFFFF00C689
        4CF6F9F5F1FFFCE3CDFFFBE3CEFFFBE3CDFFFBE2CBFFF9E0C8FFF8DCC2FFF5D6
        BAFFFDFBF8FFFCE6CDFFFAE5C9FFE2B684FFBF7942A6FFFFFF00FFFFFF00C588
        4BEAFAF6F2FCFAE0C7FFFBE1C9FFFBE2C9FFFBE0C8FFF9DFC5FFF8DBC1FFF4D6
        B8FFFFFBF8FFF6D8B4FFE1B07DFFDB9264F6B46B3E07FFFFFF00FFFFFF00C485
        49C3F7F2ECECF8F4EEFCF8F4EDFFF8F3EDFFF8F3EDFFF8F3EDFFF8F2ECFFF7F2
        ECFFF2E6D7FFE2B27DFFDB9465F5B3683B07FFFFFF00FFFFFF00FFFFFF00C17D
        4460C88B4DBBC88C4FEEC88C4FF6C88C4FF7C88C4FF7C88D4FF7C98C4FF7C78B
        4FF7C5894BD4C4763B91B3683C06FFFFFF00FFFFFF00FFFFFF00
      }
      OnClick = btnWczytajClick
      TabOrder = 5
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Height = 25
    Top = 515
    Width = 710
    Align = alBottom
    BevelOuter = bvNone
    ChildSizing.EnlargeHorizontal = crsScaleChilds
    ChildSizing.EnlargeVertical = crsScaleChilds
    ChildSizing.ShrinkHorizontal = crsScaleChilds
    ChildSizing.ShrinkVertical = crsScaleChilds
    ChildSizing.Layout = cclLeftToRightThenTopToBottom
    ChildSizing.ControlsPerLine = 100
    ClientHeight = 25
    ClientWidth = 710
    DataSource = DSOkresy
    Options = []
    TabOrder = 4
  end
  object DSOkresy: TDataSource
    DataSet = bufOkresy
    Left = 432
    Top = 280
  end
  object frDBDataSet1: TfrDBDataSet
    DataSet = bufOkresy
    Left = 628
    Top = 206
  end
  object frReport1: TfrReport
    Dataset = frDBDataSet1
    InitialZoom = pzDefault
    Options = [roSaveAndRestoreBookmarks]
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    DataType = dtDataSet
    Left = 558
    Top = 206
  end
  object bufOkresy: TBufDataset
    PacketRecords = -1
    IndexFieldNames = 'Od'
    FieldDefs = <    
      item
        Name = 'Od'
        DataType = ftString
        Size = 10
      end    
      item
        Name = 'Do'
        DataType = ftString
        Size = 10
      end    
      item
        Name = 'forma'
        DataType = ftString
        Size = 100
      end    
      item
        Name = 'rodzaj'
        DataType = ftString
        Size = 100
      end    
      item
        Name = 'wymiar'
        DataType = ftString
        Size = 50
      end    
      item
        Name = 'Jednostka'
        DataType = ftString
        Size = 100
      end    
      item
        Name = 'zOTISa'
        DataType = ftBoolean
      end>
    Left = 496
    Top = 280
  end
end
