object Rozmieszczenie: TRozmieszczenie
  Left = 86
  Height = 760
  Top = 85
  Width = 1103
  Caption = 'Rozmieszczenie'
  ClientHeight = 760
  ClientWidth = 1103
  Constraints.MinHeight = 490
  Constraints.MinWidth = 480
  OnCreate = FormCreate
  Position = poOwnerFormCenter
  LCLVersion = '6.3'
  WindowState = wsMaximized
  object Panel1: TPanel
    Left = 0
    Height = 760
    Top = 0
    Width = 162
    Align = alLeft
    BevelOuter = bvNone
    ClientHeight = 760
    ClientWidth = 162
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 8
      Height = 30
      Top = 726
      Width = 144
      Anchors = [akLeft, akBottom]
      DefaultCaption = True
      Kind = bkClose
      ModalResult = 11
      TabOrder = 0
    end
    object GroupBox1: TGroupBox
      Left = 6
      Height = 328
      Top = 8
      Width = 152
      Caption = 'Kryteria wyszukiwania'
      ClientHeight = 308
      ClientWidth = 148
      TabOrder = 1
      object plGradient1: TplGradient
        Left = 108
        Height = 156
        Top = 22
        Width = 34
        BevelWidth = 1
        BevelStyle = bvLowered
        Buffered = True
        Direction = gdDownRight
        ColorStart = 15066597
        ColorEnd = 11316396
        StepWidth = 1
        Style = gsHorizontal
      end
      object cbGrypsuje: TCheckBox
        Tag = 1
        Left = 8
        Height = 19
        Top = 40
        Width = 66
        Caption = 'Grypsuje'
        OnClick = KryteriaCheckBoxClick
        TabOrder = 0
      end
      object cbGrypsuje_N: TCheckBox
        Tag = 2
        Left = 118
        Height = 19
        Top = 40
        Width = 20
        OnClick = KryteriaCheckBoxClick
        TabOrder = 1
      end
      object cbPali: TCheckBox
        Tag = 1
        Left = 8
        Height = 19
        Top = 56
        Width = 39
        Caption = 'Pali'
        OnClick = KryteriaCheckBoxClick
        TabOrder = 2
      end
      object cbPali_N: TCheckBox
        Tag = 2
        Left = 118
        Height = 19
        Top = 56
        Width = 20
        OnClick = KryteriaCheckBoxClick
        TabOrder = 3
      end
      object cbOchronka: TCheckBox
        Tag = 1
        Left = 8
        Height = 19
        Top = 72
        Width = 72
        Caption = 'Ochronka'
        OnClick = KryteriaCheckBoxClick
        TabOrder = 4
      end
      object cbOchronka_N: TCheckBox
        Tag = 2
        Left = 118
        Height = 19
        Top = 72
        Width = 20
        OnClick = KryteriaCheckBoxClick
        TabOrder = 5
      end
      object cbTA: TCheckBox
        Tag = 1
        Left = 8
        Height = 19
        Top = 88
        Width = 35
        Caption = 'TA'
        OnClick = KryteriaCheckBoxClick
        TabOrder = 6
      end
      object cbTA_N: TCheckBox
        Tag = 2
        Left = 118
        Height = 19
        Top = 88
        Width = 20
        OnClick = KryteriaCheckBoxClick
        TabOrder = 7
      end
      object cbR: TCheckBox
        Tag = 1
        Left = 8
        Height = 19
        Top = 104
        Width = 27
        Caption = 'R'
        OnClick = KryteriaCheckBoxClick
        TabOrder = 8
      end
      object cbR_N: TCheckBox
        Tag = 2
        Left = 118
        Height = 19
        Top = 104
        Width = 20
        OnClick = KryteriaCheckBoxClick
        TabOrder = 9
      end
      object cbP: TCheckBox
        Tag = 1
        Left = 8
        Height = 19
        Top = 120
        Width = 27
        Caption = 'P'
        OnClick = KryteriaCheckBoxClick
        TabOrder = 10
      end
      object cbP_N: TCheckBox
        Tag = 2
        Left = 118
        Height = 19
        Top = 120
        Width = 20
        OnClick = KryteriaCheckBoxClick
        TabOrder = 11
      end
      object cbM: TCheckBox
        Tag = 1
        Left = 8
        Height = 19
        Top = 136
        Width = 31
        Caption = 'M'
        OnClick = KryteriaCheckBoxClick
        TabOrder = 12
      end
      object cbM_N: TCheckBox
        Tag = 2
        Left = 118
        Height = 19
        Top = 136
        Width = 20
        OnClick = KryteriaCheckBoxClick
        TabOrder = 13
      end
      object cbPrzejsciowa: TCheckBox
        Tag = 1
        Left = 8
        Height = 19
        Top = 152
        Width = 81
        Caption = 'Przejściowa'
        OnClick = KryteriaCheckBoxClick
        TabOrder = 14
      end
      object cbPrzejsciowa_N: TCheckBox
        Tag = 2
        Left = 118
        Height = 19
        Top = 152
        Width = 20
        OnClick = KryteriaCheckBoxClick
        TabOrder = 15
      end
      object cbAB: TCheckBox
        Left = 8
        Height = 19
        Top = 192
        Width = 98
        Caption = 'Tylko paw. A,B'
        OnClick = KryteriaCheckBoxClick
        TabOrder = 16
      end
      object cbWolne: TCheckBox
        Left = 8
        Height = 19
        Top = 208
        Width = 127
        Caption = 'Tylko wolne miejsca'
        OnClick = KryteriaCheckBoxClick
        TabOrder = 17
      end
      object cbSpecjalne: TCheckBox
        Left = 8
        Height = 19
        Top = 224
        Width = 121
        Caption = 'Bez cel specjalnych'
        OnClick = KryteriaCheckBoxClick
        TabOrder = 18
      end
      object cbPrzeludnione: TCheckBox
        Left = 8
        Height = 19
        Top = 240
        Width = 134
        Caption = 'Cele do przeludnienia'
        OnClick = KryteriaCheckBoxClick
        TabOrder = 19
      end
      object Label1: TLabel
        Left = 116
        Height = 15
        Top = 24
        Width = 18
        Caption = 'NIE'
        ParentColor = False
      end
      object BitBtn2: TBitBtn
        Left = 8
        Height = 24
        Top = 0
        Width = 54
        Glyph.Data = {
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
        OnClick = BitBtn2Click
        TabOrder = 20
      end
      object cmbPOC: TComboBox
        Left = 56
        Height = 23
        Top = 269
        Width = 86
        ItemHeight = 15
        ItemIndex = 0
        Items.Strings = (
          ''
          'A'
          'B'
          'A-1'
          'A-2'
          'A-3'
          'A-4'
          'B-5'
          'B-6'
          'B-7'
          'B-8'
          'D-9'
          'C-10'
        )
        OnSelect = cmbPOCSelect
        Style = csDropDownList
        TabOrder = 21
      end
      object Label2: TLabel
        Left = 8
        Height = 15
        Top = 272
        Width = 40
        Caption = 'Oddział'
        ParentColor = False
      end
    end
    object cbTrybEdycji: TCheckBox
      Left = 8
      Height = 19
      Top = 660
      Width = 78
      Anchors = [akLeft, akBottom]
      Caption = 'Tryb edycji'
      OnChange = cbTrybEdycjiChange
      TabOrder = 2
    end
    object cbDodatkowyPanel: TCheckBox
      Left = 8
      Height = 19
      Top = 368
      Width = 132
      Caption = 'Dodatkowy panel Cel'
      OnChange = cbDodatkowyPanelChange
      TabOrder = 3
    end
    object cbPanelZdjec: TCheckBox
      Left = 8
      Height = 19
      Top = 344
      Width = 116
      Caption = 'Panel ze zdjęciami'
      OnChange = cbPanelZdjecChange
      TabOrder = 4
    end
    object BitBtn3: TBitBtn
      Left = 8
      Height = 30
      Top = 480
      Width = 144
      Caption = 'Drukuj wykaz cel'
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
      OnClick = BitBtn3Click
      TabOrder = 5
    end
  end
  object PageControl1: TPageControl
    Left = 162
    Height = 760
    Top = 0
    Width = 869
    ActivePage = TabSheet2
    Align = alClient
    Images = ImageList1
    ParentShowHint = False
    ShowHint = True
    TabHeight = 25
    TabIndex = 1
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Wolne Cele'
      ClientHeight = 727
      ClientWidth = 861
      ImageIndex = 0
      object Panel2: TPanel
        Left = 0
        Height = 207
        Top = 520
        Width = 861
        Align = alBottom
        BevelOuter = bvNone
        ClientHeight = 207
        ClientWidth = 861
        TabOrder = 0
        object RxDBGrid2: TRxDBGrid
          Left = 0
          Height = 207
          Top = 0
          Width = 861
          ColumnDefValues.BlobText = '(blob)'
          TitleButtons = True
          AutoSort = True
          OnGetCellProps = RxDBGrid2GetCellProps
          Columns = <          
            item
              Alignment = taCenter
              Font.Color = clBlue
              Title.Alignment = taCenter
              Title.Orientation = toHorizontal
              Title.Caption = 'IDO'
              Width = 80
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
              Title.Caption = 'NAZWISKO'
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
              Title.Caption = 'IMIE'
              Width = 90
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
              Title.Caption = 'OJCIEC'
              Width = 90
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
              Title.Alignment = taCenter
              Title.Orientation = toHorizontal
              Title.Caption = 'KLASYF'
              Width = 60
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
              ButtonStyle = cbsCheckboxColumn
              Title.Alignment = taCenter
              Title.Orientation = toHorizontal
              Title.Caption = 'GR'
              Width = 30
              FieldName = 'GR'
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
              Title.Caption = 'Status'
              Width = 40
              FieldName = 'Status'
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
              Title.Caption = 'Opis'
              Width = 110
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
              Alignment = taCenter
              Font.Color = clMaroon
              Title.Alignment = taCenter
              Title.Orientation = toHorizontal
              Title.Caption = 'data_od'
              Width = 90
              FieldName = 'data_od'
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
              Font.Color = clMaroon
              Title.Alignment = taCenter
              Title.Orientation = toHorizontal
              Title.Caption = 'data_do'
              Width = 90
              FieldName = 'data_do'
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
              Title.Caption = 'dni'
              Width = 40
              FieldName = 'dni'
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
          DataSource = DSOsadzeni
          DefaultRowHeight = 20
          FixedColor = clNone
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgHeaderHotTracking, dgHeaderPushedLook, dgAnyButtonCanSelect, dgDisableDelete, dgDisableInsert, dgCellHints, dgTruncCellHints, dgCellEllipsis]
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 0
          TitleStyle = tsNative
          OnDblClick = RxDBGrid2DblClick
        end
      end
      object RxDBGrid1: TRxDBGrid
        Left = 0
        Height = 515
        Top = 0
        Width = 861
        ColumnDefValues.BlobText = '(blob)'
        TitleButtons = True
        AutoSort = True
        OnGetCellProps = RxDBGrid1GetCellProps
        Columns = <        
          item
            Color = 16765606
            ReadOnly = True
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
            Footer.Alignment = taCenter
            Footer.FieldName = 'POC'
            Footer.ValueType = fvtCount
            Footers = <>
            SortFields = 'id'
          end        
          item
            Alignment = taCenter
            Font.Color = clBlue
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Orientation = toHorizontal
            Title.Caption = 'Zajęte'
            Width = 40
            FieldName = 'Zajete'
            EditButtons = <>
            Filter.DropDownRows = 0
            Filter.EmptyValue = '(Empty)'
            Filter.AllValue = '(All values)'
            Filter.EmptyFont.Style = [fsItalic]
            Filter.ItemIndex = -1
            Footer.Alignment = taCenter
            Footer.FieldName = 'Zajete'
            Footer.ValueType = fvtSum
            Footer.Font.Color = clBlue
            Footers = <>
          end        
          item
            Alignment = taCenter
            Font.Color = clBlue
            Title.Alignment = taCenter
            Title.Font.Pitch = fpVariable
            Title.Font.Quality = fqDraft
            Title.Orientation = toHorizontal
            Title.Caption = 'Max'
            Width = 40
            FieldName = 'Pojemnosc'
            EditButtons = <>
            Filter.DropDownRows = 0
            Filter.EmptyValue = '(Empty)'
            Filter.AllValue = '(All values)'
            Filter.EmptyFont.Style = [fsItalic]
            Filter.ItemIndex = -1
            Footer.Alignment = taCenter
            Footer.FieldName = 'Pojemnosc'
            Footer.ValueType = fvtSum
            Footer.Font.Color = clBlue
            Footers = <>
          end        
          item
            Alignment = taCenter
            Color = 16765606
            Font.Color = clBlue
            Font.Style = [fsBold]
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Orientation = toHorizontal
            Title.Caption = 'Wolne'
            Width = 50
            FieldName = 'Wolne'
            EditButtons = <>
            Filter.DropDownRows = 0
            Filter.EmptyValue = '(Empty)'
            Filter.AllValue = '(All values)'
            Filter.EmptyFont.Style = [fsItalic]
            Filter.ItemIndex = -1
            Footer.Alignment = taCenter
            Footer.FieldName = 'Wolne'
            Footer.ValueType = fvtSum
            Footer.Font.Color = clBlue
            Footers = <>
          end        
          item
            Title.Alignment = taCenter
            Title.Orientation = toHorizontal
            Title.Caption = 'Opis'
            Width = 200
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
            Alignment = taCenter
            ButtonStyle = cbsPickList
            Font.Color = clGreen
            PickList.Strings = (
              'Włodarczy'
              'Miara'
              'AAA'
            )
            Title.Alignment = taCenter
            Title.Orientation = toHorizontal
            Title.Caption = 'Wychowawca'
            Width = 90
            FieldName = 'Wychowawca'
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
            Font.Color = clRed
            Font.Pitch = fpVariable
            Font.Quality = fqDraft
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Orientation = toHorizontal
            Title.Caption = 'GR'
            Width = 40
            FieldName = 'GR'
            EditButtons = <>
            Filter.DropDownRows = 0
            Filter.EmptyValue = '(Empty)'
            Filter.AllValue = '(All values)'
            Filter.EmptyFont.Style = [fsItalic]
            Filter.ItemIndex = -1
            Footer.Alignment = taCenter
            Footer.FieldName = 'GR'
            Footer.ValueType = fvtSum
            Footer.Font.Color = clRed
            Footers = <>
          end        
          item
            Alignment = taCenter
            ButtonStyle = cbsCheckboxColumn
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Orientation = toHorizontal
            Title.Caption = 'Pali'
            Width = 40
            FieldName = 'Pali'
            EditButtons = <>
            Filter.DropDownRows = 0
            Filter.EmptyValue = '(Empty)'
            Filter.AllValue = '(All values)'
            Filter.EmptyFont.Style = [fsItalic]
            Filter.ItemIndex = -1
            Footer.Alignment = taCenter
            Footer.FieldName = 'Pali'
            Footer.ValueType = fvtSum
            Footers = <>
          end        
          item
            Alignment = taCenter
            ButtonStyle = cbsCheckboxColumn
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Orientation = toHorizontal
            Title.Caption = 'Och.'
            Width = 40
            FieldName = 'Ochronka'
            EditButtons = <>
            Filter.DropDownRows = 0
            Filter.EmptyValue = '(Empty)'
            Filter.AllValue = '(All values)'
            Filter.EmptyFont.Style = [fsItalic]
            Filter.ItemIndex = -1
            Footer.Alignment = taCenter
            Footer.FieldName = 'Ochronka'
            Footer.ValueType = fvtSum
            Footers = <>
          end        
          item
            Alignment = taCenter
            ButtonStyle = cbsCheckboxColumn
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Orientation = toHorizontal
            Title.Caption = 'Przejściowa'
            Width = 70
            FieldName = 'Przejsciowa'
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
            ButtonStyle = cbsCheckboxColumn
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Orientation = toHorizontal
            Title.Caption = 'TA'
            Width = 40
            FieldName = 'TA'
            EditButtons = <>
            Filter.DropDownRows = 0
            Filter.EmptyValue = '(Empty)'
            Filter.AllValue = '(All values)'
            Filter.EmptyFont.Style = [fsItalic]
            Filter.ItemIndex = -1
            Footer.Alignment = taCenter
            Footer.FieldName = 'TA'
            Footer.ValueType = fvtSum
            Footers = <>
          end        
          item
            Alignment = taCenter
            ButtonStyle = cbsCheckboxColumn
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Orientation = toHorizontal
            Title.Caption = 'R'
            Width = 40
            FieldName = 'R'
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
            ButtonStyle = cbsCheckboxColumn
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Orientation = toHorizontal
            Title.Caption = 'P'
            Width = 40
            FieldName = 'P'
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
            ButtonStyle = cbsCheckboxColumn
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Orientation = toHorizontal
            Title.Caption = 'M'
            Width = 40
            FieldName = 'M'
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
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Orientation = toHorizontal
            Title.Hint = 'osadzeni blokujący przeludnianie celi'
            Title.ShowHint = True
            Title.Caption = 'BLOK'
            Width = 40
            FieldName = 'blokuje'
            EditButtons = <>
            Filter.DropDownRows = 0
            Filter.EmptyValue = '(Empty)'
            Filter.AllValue = '(All values)'
            Filter.EmptyFont.Style = [fsItalic]
            Filter.ItemIndex = -1
            Footer.Alignment = taCenter
            Footer.FieldName = 'blokuje'
            Footer.ValueType = fvtSum
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
        FooterOptions.RowCount = 1
        FooterOptions.Style = tsNative
        FooterOptions.DrawFullLine = False
        SearchOptions.QuickSearchOptions = [loCaseInsensitive, loPartialKey]
        SearchOptions.FromStart = False
        OptionsRx = [rdgAllowDialogFind, rdgFooterRows, rdgAllowQuickSearch, rdgAllowQuickFilter, rdgAllowFilterForm, rdgAllowSortForm, rdgAllowToolMenu, rdgCaseInsensitiveSort, rdgWordWrap]
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
        DataSource = DSRozmieszczenie
        DefaultRowHeight = 20
        FixedColor = clNone
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgHeaderHotTracking, dgHeaderPushedLook, dgAnyButtonCanSelect, dgDisableDelete, dgDisableInsert, dgCellHints, dgTruncCellHints, dgCellEllipsis]
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        TitleStyle = tsNative
        OnCellClick = RxDBGrid1CellClick
      end
      object Splitter1: TSplitter
        Cursor = crVSplit
        Left = 0
        Height = 5
        Top = 515
        Width = 861
        Align = alBottom
        ResizeAnchor = akBottom
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Zdjęcia'
      ClientHeight = 727
      ClientWidth = 861
      ImageIndex = 1
      OnShow = TabSheet2Show
      object PanelZdjec: TPanel
        Left = 0
        Height = 727
        Top = 0
        Width = 861
        Align = alClient
        BevelOuter = bvNone
        ClientHeight = 727
        ClientWidth = 861
        Color = clWhite
        ParentColor = False
        TabOrder = 0
        OnResize = PanelZdjecResize
        object Panel_1: TPanel
          Left = 8
          Height = 310
          Top = 8
          Width = 214
          BevelOuter = bvNone
          BorderStyle = bsSingle
          ClientHeight = 306
          ClientWidth = 210
          Color = clBtnFace
          ParentColor = False
          TabOrder = 0
          object Image_1: TImage
            Left = 0
            Height = 272
            Top = 0
            Width = 210
            AntialiasingMode = amOn
            Align = alClient
            Center = True
            ParentShowHint = False
            Proportional = True
            ShowHint = True
            Stretch = True
          end
          object lbNazwisko_1: TLabel
            Left = 0
            Height = 34
            Top = 272
            Width = 210
            Align = alBottom
            Alignment = taCenter
            AutoSize = False
            Caption = 'lbNazwisko_1'
            Color = clInfoBk
            Layout = tlCenter
            ParentColor = False
            ParentShowHint = False
            ShowHint = True
            Transparent = False
          end
        end
        object Panel_2: TPanel
          AnchorSideLeft.Side = asrBottom
          Left = 230
          Height = 310
          Top = 8
          Width = 224
          BevelOuter = bvNone
          BorderStyle = bsSingle
          ClientHeight = 306
          ClientWidth = 220
          Color = clBtnFace
          ParentColor = False
          TabOrder = 1
          object Image_2: TImage
            Left = 0
            Height = 272
            Top = 0
            Width = 220
            AntialiasingMode = amOn
            Align = alClient
            Center = True
            ParentShowHint = False
            Proportional = True
            ShowHint = True
            Stretch = True
          end
          object lbNazwisko_2: TLabel
            Left = 0
            Height = 34
            Top = 272
            Width = 220
            Align = alBottom
            Alignment = taCenter
            AutoSize = False
            Caption = 'lbNazwisko_1'
            Color = clInfoBk
            Layout = tlCenter
            ParentColor = False
            ParentShowHint = False
            ShowHint = True
            Transparent = False
          end
        end
        object Panel_3: TPanel
          AnchorSideLeft.Side = asrBottom
          Left = 464
          Height = 310
          Top = 8
          Width = 214
          BevelOuter = bvNone
          BorderStyle = bsSingle
          ClientHeight = 306
          ClientWidth = 210
          Color = clBtnFace
          ParentColor = False
          TabOrder = 2
          object Image_3: TImage
            Left = 0
            Height = 272
            Top = 0
            Width = 210
            AntialiasingMode = amOn
            Align = alClient
            Center = True
            ParentShowHint = False
            Proportional = True
            ShowHint = True
            Stretch = True
          end
          object lbNazwisko_3: TLabel
            Left = 0
            Height = 34
            Top = 272
            Width = 210
            Align = alBottom
            Alignment = taCenter
            AutoSize = False
            Caption = 'lbNazwisko_1'
            Color = clInfoBk
            Layout = tlCenter
            ParentColor = False
            ParentShowHint = False
            ShowHint = True
            Transparent = False
          end
        end
        object Panel_4: TPanel
          AnchorSideLeft.Side = asrBottom
          Left = 688
          Height = 310
          Top = 8
          Width = 214
          BevelOuter = bvNone
          BorderStyle = bsSingle
          ClientHeight = 306
          ClientWidth = 210
          Color = clBtnFace
          ParentColor = False
          TabOrder = 3
          object Image_4: TImage
            Left = 0
            Height = 272
            Top = 0
            Width = 210
            AntialiasingMode = amOn
            Align = alClient
            Center = True
            ParentShowHint = False
            Proportional = True
            ShowHint = True
            Stretch = True
          end
          object lbNazwisko_4: TLabel
            Left = 0
            Height = 34
            Top = 272
            Width = 210
            Align = alBottom
            Alignment = taCenter
            AutoSize = False
            Caption = 'lbNazwisko_1'
            Color = clInfoBk
            Layout = tlCenter
            ParentColor = False
            ParentShowHint = False
            ShowHint = True
            Transparent = False
          end
        end
        object Panel_5: TPanel
          Left = 8
          Height = 310
          Top = 336
          Width = 214
          BevelOuter = bvNone
          BorderStyle = bsSingle
          ClientHeight = 306
          ClientWidth = 210
          Color = clBtnFace
          ParentColor = False
          TabOrder = 4
          object Image_5: TImage
            Left = 0
            Height = 272
            Top = 0
            Width = 210
            AntialiasingMode = amOn
            Align = alClient
            Center = True
            ParentShowHint = False
            Proportional = True
            ShowHint = True
            Stretch = True
          end
          object lbNazwisko_5: TLabel
            Left = 0
            Height = 34
            Top = 272
            Width = 210
            Align = alBottom
            Alignment = taCenter
            AutoSize = False
            Caption = 'lbNazwisko_1'
            Color = clInfoBk
            Layout = tlCenter
            ParentColor = False
            ParentShowHint = False
            ShowHint = True
            Transparent = False
          end
        end
        object Panel_6: TPanel
          AnchorSideLeft.Side = asrBottom
          Left = 230
          Height = 310
          Top = 336
          Width = 224
          BevelOuter = bvNone
          BorderStyle = bsSingle
          ClientHeight = 306
          ClientWidth = 220
          Color = clBtnFace
          ParentColor = False
          TabOrder = 5
          object Image_6: TImage
            Left = 0
            Height = 272
            Top = 0
            Width = 220
            AntialiasingMode = amOn
            Align = alClient
            Center = True
            ParentShowHint = False
            Proportional = True
            ShowHint = True
            Stretch = True
          end
          object lbNazwisko_6: TLabel
            Left = 0
            Height = 34
            Top = 272
            Width = 220
            Align = alBottom
            Alignment = taCenter
            AutoSize = False
            Caption = 'lbNazwisko_1'
            Color = clInfoBk
            Layout = tlCenter
            ParentColor = False
            ParentShowHint = False
            ShowHint = True
            Transparent = False
          end
        end
        object Panel_7: TPanel
          AnchorSideLeft.Side = asrBottom
          Left = 464
          Height = 310
          Top = 336
          Width = 214
          BevelOuter = bvNone
          BorderStyle = bsSingle
          ClientHeight = 306
          ClientWidth = 210
          Color = clBtnFace
          ParentColor = False
          TabOrder = 6
          object Image_7: TImage
            Left = 0
            Height = 272
            Top = 0
            Width = 210
            AntialiasingMode = amOn
            Align = alClient
            Center = True
            ParentShowHint = False
            Proportional = True
            ShowHint = True
            Stretch = True
          end
          object lbNazwisko_7: TLabel
            Left = 0
            Height = 34
            Top = 272
            Width = 210
            Align = alBottom
            Alignment = taCenter
            AutoSize = False
            Caption = 'lbNazwisko_1'
            Color = clInfoBk
            Layout = tlCenter
            ParentColor = False
            ParentShowHint = False
            ShowHint = True
            Transparent = False
          end
        end
        object Panel_8: TPanel
          AnchorSideLeft.Side = asrBottom
          Left = 688
          Height = 310
          Top = 336
          Width = 214
          BevelOuter = bvNone
          BorderStyle = bsSingle
          ClientHeight = 306
          ClientWidth = 210
          Color = clBtnFace
          ParentColor = False
          TabOrder = 7
          object Image_8: TImage
            Left = 0
            Height = 272
            Top = 0
            Width = 210
            AntialiasingMode = amOn
            Align = alClient
            Center = True
            ParentShowHint = False
            Proportional = True
            ShowHint = True
            Stretch = True
          end
          object lbNazwisko_8: TLabel
            Left = 0
            Height = 34
            Top = 272
            Width = 210
            Align = alBottom
            Alignment = taCenter
            AutoSize = False
            Caption = 'lbNazwisko_1'
            Color = clInfoBk
            Layout = tlCenter
            ParentColor = False
            ParentShowHint = False
            ShowHint = True
            Transparent = False
          end
        end
        object Panel_9: TPanel
          Left = 9
          Height = 295
          Top = 659
          Width = 214
          BevelOuter = bvNone
          BorderStyle = bsSingle
          ClientHeight = 291
          ClientWidth = 210
          Color = clBtnFace
          ParentColor = False
          TabOrder = 8
          object Image_9: TImage
            Left = 0
            Height = 257
            Top = 0
            Width = 210
            AntialiasingMode = amOn
            Align = alClient
            Center = True
            ParentShowHint = False
            Proportional = True
            ShowHint = True
            Stretch = True
          end
          object lbNazwisko_9: TLabel
            Left = 0
            Height = 34
            Top = 257
            Width = 210
            Align = alBottom
            Alignment = taCenter
            AutoSize = False
            Caption = 'lbNazwisko_1'
            Color = clInfoBk
            Layout = tlCenter
            ParentColor = False
            ParentShowHint = False
            ShowHint = True
            Transparent = False
          end
        end
        object Panel_10: TPanel
          AnchorSideLeft.Side = asrBottom
          Left = 231
          Height = 295
          Top = 659
          Width = 224
          BevelOuter = bvNone
          BorderStyle = bsSingle
          ClientHeight = 291
          ClientWidth = 220
          Color = clBtnFace
          ParentColor = False
          TabOrder = 9
          object Image_10: TImage
            Left = 0
            Height = 257
            Top = 0
            Width = 220
            AntialiasingMode = amOn
            Align = alClient
            Center = True
            ParentShowHint = False
            Proportional = True
            ShowHint = True
            Stretch = True
          end
          object lbNazwisko_10: TLabel
            Left = 0
            Height = 34
            Top = 257
            Width = 220
            Align = alBottom
            Alignment = taCenter
            AutoSize = False
            Caption = 'lbNazwisko_1'
            Color = clInfoBk
            Layout = tlCenter
            ParentColor = False
            ParentShowHint = False
            ShowHint = True
            Transparent = False
          end
        end
        object Panel_11: TPanel
          AnchorSideLeft.Side = asrBottom
          Left = 465
          Height = 295
          Top = 659
          Width = 214
          BevelOuter = bvNone
          BorderStyle = bsSingle
          ClientHeight = 291
          ClientWidth = 210
          Color = clBtnFace
          ParentColor = False
          TabOrder = 10
          object Image_11: TImage
            Left = 0
            Height = 257
            Top = 0
            Width = 210
            AntialiasingMode = amOn
            Align = alClient
            Center = True
            ParentShowHint = False
            Proportional = True
            ShowHint = True
            Stretch = True
          end
          object lbNazwisko_11: TLabel
            Left = 0
            Height = 34
            Top = 257
            Width = 210
            Align = alBottom
            Alignment = taCenter
            AutoSize = False
            Caption = 'lbNazwisko_1'
            Color = clInfoBk
            Layout = tlCenter
            ParentColor = False
            ParentShowHint = False
            ShowHint = True
            Transparent = False
          end
        end
        object Panel_12: TPanel
          AnchorSideLeft.Side = asrBottom
          Left = 688
          Height = 295
          Top = 659
          Width = 214
          BevelOuter = bvNone
          BorderStyle = bsSingle
          ClientHeight = 291
          ClientWidth = 210
          Color = clBtnFace
          ParentColor = False
          TabOrder = 11
          object Image_12: TImage
            Left = 0
            Height = 257
            Top = 0
            Width = 210
            AntialiasingMode = amOn
            Align = alClient
            Center = True
            ParentShowHint = False
            Proportional = True
            ShowHint = True
            Stretch = True
          end
          object lbNazwisko_12: TLabel
            Left = 0
            Height = 34
            Top = 257
            Width = 210
            Align = alBottom
            Alignment = taCenter
            AutoSize = False
            Caption = 'lbNazwisko_1'
            Color = clInfoBk
            Layout = tlCenter
            ParentColor = False
            ParentShowHint = False
            ShowHint = True
            Transparent = False
          end
        end
      end
    end
  end
  object DodatkowyPanel: TPanel
    Left = 1036
    Height = 760
    Top = 0
    Width = 67
    Align = alRight
    BevelOuter = bvLowered
    TabOrder = 2
    Visible = False
  end
  object Splitter2: TSplitter
    Left = 1031
    Height = 760
    Top = 0
    Width = 5
    Align = alRight
    ResizeAnchor = akRight
    Visible = False
  end
  object ZQRozmieszczenie: TZQuery
    Connection = DM.ZConnection1
    SortedFields = 'id'
    UpdateObject = ZURozmieszczenie
    OnPostError = ZQRozmieszczeniePostError
    SQL.Strings = (
      'SELECT '
      'typ_cel.id,'
      'typ_cel.POC, '
      'count(osadzeni.POC) AS Zajete, '
      'typ_cel.Pojemnosc AS Pojemnosc, '
      '(typ_cel.Pojemnosc - count(osadzeni.POC)) AS Wolne,'
      'typ_cel.Wychowawca, '
      'typ_cel.Opis,'
      '(ifnull(sum(os_info.GR),0) ) as GR,'
      'typ_cel.Pali,'
      'typ_cel.Ochronka,'
      'typ_cel.TA,'
      'typ_cel.R,'
      'typ_cel.P, '
      'typ_cel.M,'
      'typ_cel.Przejsciowa,'
      '( ifnull(count(osadzeni.POC), 0) - ifnull(sum(art110.status),0) ) as blokuje'
      'FROM typ_cel '
      '  LEFT JOIN osadzeni ON (typ_cel.POC = osadzeni.POC) '
      '  LEFT JOIN art110 ON (art110.IDO = osadzeni.IDO) AND (art110.status = 1) AND (isnull( art110.data_do))'
      '  LEFT JOIN os_info ON (osadzeni.IDO = os_info.IDO)'
    )
    Params = <>
    IndexFieldNames = 'id Asc'
    Left = 766
    Top = 160
  end
  object DSRozmieszczenie: TDataSource
    DataSet = ZQRozmieszczenie
    OnDataChange = DSRozmieszczenieDataChange
    Left = 766
    Top = 213
  end
  object DSOsadzeni: TDataSource
    DataSet = ZQOsadzeni
    Left = 766
    Top = 488
  end
  object ZQOsadzeni: TZQuery
    Connection = DM.ZConnection1
    ReadOnly = True
    SQL.Strings = (
      'SELECT'
      'osadzeni.IDO,'
      'POC,'
      'Nazwisko,'
      'Imie,'
      'Ojciec,'
      'Klasyf,'
      'os_info.GR,'
      'art110.`Status`,'
      'art110.Opis,'
      'data_od,'
      'data_do,'
      '(DATEDIFF(CURDATE(),data_do)) AS dni,'
      'Przyj'
      'FROM osadzeni'
      '  LEFT JOIN art110 ON (osadzeni.IDO = art110.IDO)'
      '  LEFT JOIN os_info ON (osadzeni.IDO = os_info.IDO);'
    )
    Params = <>
    MasterFields = 'POC'
    MasterSource = DSRozmieszczenie
    LinkedFields = 'POC'
    Left = 766
    Top = 440
  end
  object ZURozmieszczenie: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM typ_cel'
      'WHERE'
      '  typ_cel.id = :OLD_id'
    )
    InsertSQL.Strings = (
      'INSERT INTO typ_cel'
      '  (Opis, Wychowawca, Pojemnosc, Pali, Ochronka, TA, R, P, M)'
      'VALUES'
      '  (:Opis, :Wychowawca, :Pojemnosc, :Pali, :Ochronka, :TA, :R, :P, :M)'
    )
    ModifySQL.Strings = (
      'UPDATE typ_cel SET'
      '  Opis = :Opis,'
      '  Wychowawca = :Wychowawca,'
      '  Pojemnosc = :Pojemnosc,'
      '  Pali = :Pali,'
      '  Ochronka = :Ochronka,'
      '  Przejsciowa = :Przejsciowa,'
      '  TA = :TA,'
      '  R = :R,'
      '  P = :P,'
      '  M = :M'
      'WHERE'
      '  id = :OLD_id;'
    )
    RefreshSQL.Strings = (
      ''
    )
    UseSequenceFieldForRefreshSQL = False
    Left = 872
    Top = 160
    ParamData = <    
      item
        DataType = ftUnknown
        Name = 'Opis'
        ParamType = ptUnknown
      end    
      item
        DataType = ftUnknown
        Name = 'Wychowawca'
        ParamType = ptUnknown
      end    
      item
        DataType = ftUnknown
        Name = 'Pojemnosc'
        ParamType = ptUnknown
      end    
      item
        DataType = ftUnknown
        Name = 'Pali'
        ParamType = ptUnknown
      end    
      item
        DataType = ftUnknown
        Name = 'Ochronka'
        ParamType = ptUnknown
      end    
      item
        DataType = ftUnknown
        Name = 'Przejsciowa'
        ParamType = ptUnknown
      end    
      item
        DataType = ftUnknown
        Name = 'TA'
        ParamType = ptUnknown
      end    
      item
        DataType = ftUnknown
        Name = 'R'
        ParamType = ptUnknown
      end    
      item
        DataType = ftUnknown
        Name = 'P'
        ParamType = ptUnknown
      end    
      item
        DataType = ftUnknown
        Name = 'M'
        ParamType = ptUnknown
      end    
      item
        DataType = ftUnknown
        Name = 'OLD_id'
        ParamType = ptUnknown
      end>
  end
  object ImageList1: TImageList
    Left = 903
    Top = 55
    Bitmap = {
      4C6902000000100000001000000000000000E5AF4952EAC172F9E9C380F6E6C0
      81F3E4BF85F3E1B577F3DEB06DF3DAA964F3D6A461F3D29D5AF3CF9753F3CA8F
      49F3C89040FFB46D28C0A957194B00000000EABF69EBFCF1CFFFFCEBC6FFFFF8
      EEFFFFFFFFFFFEF1DFFFF7E5B7FFF7E09CFFF6DC94FFF1D07DFFEBC464FFE6B3
      4CFFE6AC34FFCF8B21FFB26116D900000000EAC067E3F8DFA6FFF7DCA1FFF8E7
      CCFFFAEFE2FFF7DFBCFFEFD18FFFEDCB74FFEDC66DFFE6B756FFE0A83FFFDA98
      29FFD78C14FFC5760EFFB05E13CF00000000EBC269E3F8E3ADFFF7E0ACFFFBEB
      D5FFFCF3EBFFF9E3C5FFF0D59AFFF0D07FFFF0CB78FFEABD60FFE4AF49FFDEA0
      33FFDB951CFFC87D14FFB26214CF00000000E7B85DE8F7E1A4FFF7DEA4FFF8E9
      CFFFFAF1E7FFF6E1BDFFF1D393FFF1CE78FFF0C96FFFE9BA5AFFE3AB43FFDD9A
      2DFFDA9017FFC27311FFAA5A14D600000000E2AC4246E7BB65FFE9BF7AFFE6C2
      85FFE4C28FFFDEB371FFD9A65BFFD69F54FFD29B4DFFCD9045FFC8893EFFC37D
      35FFC07D2DFFAE6221C4A5541A3D00000000EAC069D8FAEBCBFFF8E5BEFFFAED
      DCFFFBF5EFFFF9E8CFFFF5DCACFFF3D799FFF2D58FFFECCA7CFFE8BE67FFE1B1
      50FFE1AC3AFFCD8D26FFB26419C700000000EABF67E4F8E2ABFFF7DDA2FFF9EA
      D0FFFBF1E7FFF6E1BFFFEFD293FFF0CC75FFEFC86FFFE8B958FFE0AA40FFDA9A
      2AFFD88E14FFC6770EFFB05E12D000000000EABF66E4F8E1A8FFF7DEAAFFF9EA
      D2FFFBF1E9FFF6E1C2FFEFD398FFF0CE7DFFEFCA76FFE8BB5FFFE2AF48FFDCA0
      32FFD9921CFFC67A14FFB05E14D000000000E9BE67D8FAE7B5FFF7E0ACFFFBEE
      D9FFFDF6F1FFF8E4C7FFF1D69CFFF3D17FFFF1CD75FFEBBE5FFFE3AD46FFDD9D
      2EFFDC9417FFC87D12FFAF5F15C700000000E0A73C46E5B557FFE6B964FFE2B6
      6BFFE0B776FFDAAA5DFFD69E4BFFD39844FFCE903FFFCA8738FFC37C32FFBD71
      2BFFBA6E23FFA14F16C49D4B153D00000000E4AA45E8F4DBA7FFF5DEB1FFF5E5
      C8FFF7E9D8FFF2DDBAFFEED29DFFEDCC8AFFECCA81FFE6BF71FFE3B660FFDCAA
      4DFFDEA739FFBD731DFFA45114D600000000E4AD4BE3FBE9BBFFF9E0ABFFFBEE
      D9FFFCF5F0FFF8E5C8FFF2D69AFFF3D17FFFF1CC76FFEBBE5EFFE5AF45FFDC9E
      2FFFDE9519FFC57914FFA35316CF00000000E5AB48E3F8E3ADFFF6DBA4FFF8E8
      CDFFFAEFE3FFF5DFBEFFEFD194FFEFCC79FFEEC772FFE7B95CFFE1AB46FFDB9D
      31FFDB931CFFC47813FFA35315CF00000000E4AD49EBFAE8B3FFFDEDC3FFFFFB
      EFFFFFFFFFFFFFF4DEFFF8E5ACFFF9E08DFFF9DB83FFF2CC69FFEBBC4EFFE4AB
      34FFE6A01CFFC57713FFA45215D900000000E0A73C52E3AE4DF9E2AB57F6DEA7
      5BF3DBA35DF3D69951F3D19244F3CD8B3DF3C98538F3C27D32F3BF742BF3B96C
      23F3B6661CFFA55416C09F4C164B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000524A4A6D504B4AEB473A
      36E1493F3CE64B47444300000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004A4441FF403230FF5059
      5EFF413B39FF3B2F2AC4000000000000000000000000524B4C2C524C4B4D504A
      48424D484629000000000000000000000000000000002F1D15FF3E3732FFB1FF
      FFFFA1E2EAFF352413D4000000000000000055432F074F4B48FF483C39FF3F32
      30FF3F312CFF433D3B3D00000000000000000000000093CCE3FF97FAFFFF81E2
      FFFF87F9FFFF458AC5A400000000000000003B4760683A1D03FF44474CFF93D1
      D8FF536268FF2F201C9E0000000000000000000000007ACBFFFD3CC8FFFF32C3
      FFFF3DCCFFFF2562C9E61438A9DD1A43AECC1A40A6F3405B81FFA3EDF1FFB3FF
      FFFFAAFDFFFF352A1C7E000000000000000039A544255BA8D0E54BAAFFFF2991
      FFFF257BE0FF0E2993FF3666B6FF2656A8FF0A258CFF2558B8FF63DBFFFF47CA
      FFFF51DFFFFF024CD0470000000029892C1F84D69AFF57E4A2FF29BB96FF33C2
      A0FF1C8583FF2D4CAAFFCDFFFFFF9BE4F6FF1A3B8EFF0E2E8CFF1CA5FFFF1BBA
      FFFF1591FDFF000000000000000062A366B66BEAB0FF26D170FF3AD873FF40EF
      6FFF22A373FF5172BBFFB0FFFFFF7DE2FFFF7DF3FFFF204292FF65A5DFFF3E8B
      E6FFBEA88DFFFFCF45EAEDA9350871C582FF43E77EFF3EDA70FF42D874FF47EB
      74FF1B656AFF21388DFF52D7FFFF31C7FFFF3DCAFFFF001754FFB39061FFFFE1
      62FFFFD66DFFEFCA75FFD8973D96398439B931AA46FF3DB557FF40C654FF41D2
      30FF041965FB213793FF47A6F3FF208AEBFF1B69D6FF000080FF7F684FFFFFCC
      4AFFE5B455FFEFC45CFFD8993EF9000000002254172823500936286B1C2F0613
      9F4B5E5AE3FE6A90FFFF50C1FDFF5ACBEAFF4AB0FAFF2B4CFFFF5139CCFFFFB8
      11FFE6AA33FFE7AB34FFD1892CFF000000000000000000000000000000001700
      FF656A86FFFF2644F9FF3E6EFAFF7DD7FFFF365FFAFF3457FAFF0320FFFF8E4A
      3FD4CA6F03B7AE5E1BB4AC591C4600000000000000000000000000000000322F
      D7BD475DFFFF192FFDFF1D2CFBFF121AFAFF2030FDFF243AFEFF1232FFFF2A11
      A682000000000000000000000000000000000000000000000000000000001410
      C0802020E5FF1113E8FF1617EBFF1717EEFF1617EAFF1517E8FF1214DEFC0000
      CD6A000000000000000000000000000000000000000000000000000000000902
      B52F0B06B9CB0B08C4D00D0AD4CF0E0AD9CF0C09CBD00B08C6CB0B06B6920402
      C315000000000000000000000000
    }
  end
  object frReport1: TfrReport
    Dataset = frDBDataSet1
    InitialZoom = pzDefault
    Options = [roSaveAndRestoreBookmarks]
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    DataType = dtDataSet
    Left = 360
    Top = 344
  end
  object frDBDataSet1: TfrDBDataSet
    DataSet = ZQRozmieszczenie
    Left = 360
    Top = 400
  end
end
