object PenitWPZ: TPenitWPZ
  Left = 396
  Height = 621
  Top = 222
  Width = 1085
  Caption = 'PenitWPZ'
  ClientHeight = 621
  ClientWidth = 1085
  OnCreate = FormCreate
  LCLVersion = '6.3'
  object Memo2: TMemo
    Left = 8
    Height = 88
    Top = 472
    Width = 150
    Lines.Strings = (
      'ID'
      'DateTime'
      'User'
      'WPZ'
      'KK'
    )
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 344
    Height = 573
    Top = 48
    Width = 741
    Align = alRight
    ClientHeight = 573
    ClientWidth = 741
    TabOrder = 1
    object RxDBGrid2: TRxDBGrid
      Left = 1
      Height = 259
      Top = 33
      Width = 739
      ColumnDefValues.BlobText = '(blob)'
      TitleButtons = False
      AutoSort = True
      Columns = <      
        item
          Alignment = taLeftJustify
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = 'Lp'
          Width = 25
          FieldName = 'Lp'
          EditButtons = <>
          Filter.DropDownRows = 0
          Filter.EmptyValue = '(Empty)'
          Filter.AllValue = '(All values)'
          Filter.EmptyFont.Style = [fsItalic]
          Filter.ItemIndex = -1
          Footers = <>
        end      
        item
          Font.CharSet = EASTEUROPE_CHARSET
          Font.Height = -11
          Font.Name = 'Calibri Light'
          Font.Pitch = fpVariable
          Font.Quality = fqDraft
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = 'Kwalifikacja prawna czynu'
          Width = 350
          FieldName = 'Art'
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
          Alignment = taCenter
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = 'lat'
          Width = 50
          FieldName = 'Lat'
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
          Title.Caption = 'msc'
          Width = 50
          FieldName = 'Msc'
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
          Width = 50
          FieldName = 'Dni'
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
          Width = 60
          FieldName = 'Zastepcza'
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
          Title.Caption = 'Termin końca kary'
          Width = 120
          FieldName = 'KoniecKary'
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
      OptionsRx = [rdgDblClickOptimizeColWidth, rdgWordWrap]
      Align = alBottom
      Anchors = [akTop, akLeft, akRight]
      Color = clWindow
      DrawFullLine = False
      FocusColor = clRed
      SelectedColor = clHighlight
      GridLineStyle = psSolid
      DataSource = DSOrzeczenia
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit, dgTruncCellHints]
      TabOrder = 0
      TitleStyle = tsNative
    end
    object Label1: TLabel
      Left = 8
      Height = 15
      Top = 8
      Width = 60
      Caption = 'Orzeczenia:'
      ParentColor = False
    end
    object Panel4: TPanel
      Left = 1
      Height = 280
      Top = 292
      Width = 739
      Align = alBottom
      ClientHeight = 280
      ClientWidth = 739
      TabOrder = 1
      object Label2: TLabel
        Left = 8
        Height = 15
        Top = 10
        Width = 82
        Caption = 'Data osadzenia:'
        ParentColor = False
      end
      object edDataOsadzenia: TDateEdit
        Left = 104
        Height = 23
        Top = 8
        Width = 103
        CalendarDisplaySettings = [dsShowHeadings, dsShowDayNames]
        DateOrder = doNone
        ButtonWidth = 23
        NumGlyphs = 1
        MaxLength = 0
        TabOrder = 0
        Text = '---'
      end
      object GroupBox1: TGroupBox
        Left = 232
        Height = 74
        Top = 8
        Width = 144
        Caption = 'WPZ po ...'
        ClientHeight = 54
        ClientWidth = 140
        TabOrder = 1
        object cbOBS: TCheckBox
          Left = 8
          Height = 19
          Top = 0
          Width = 83
          Caption = 'Obostrzenie'
          TabOrder = 0
        end
        object edOBS_dni: TSpinEdit
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
      object Label4: TLabel
        Left = 47
        Height = 15
        Top = 46
        Width = 43
        Caption = 'Ułamek:'
        ParentColor = False
      end
      object cbmUlamek: TComboBox
        Left = 104
        Height = 23
        Top = 40
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
        TabOrder = 2
        Text = '1/2'
      end
      object cbOWZ: TCheckBox
        Left = 104
        Height = 19
        Top = 72
        Width = 101
        Caption = 'Odwołanie wpz'
        ParentBidiMode = False
        TabOrder = 3
      end
      object GroupBox2: TGroupBox
        Left = 232
        Height = 80
        Top = 96
        Width = 384
        Caption = 'Wynik'
        ClientHeight = 60
        ClientWidth = 380
        Color = clBtnFace
        ParentColor = False
        TabOrder = 4
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
        object edWPZ: TDateEdit
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
          Text = '---'
        end
        object edPrzepustki: TDateEdit
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
          Text = '---'
        end
        object edPostpenit: TDateEdit
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
          Text = '---'
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
      object Memo1: TMemo
        Left = 1
        Height = 97
        Top = 182
        Width = 737
        Align = alBottom
        Anchors = [akTop, akLeft, akRight, akBottom]
        Color = 14680063
        ScrollBars = ssAutoBoth
        TabOrder = 5
        WordWrap = False
      end
      object btnOblicz: TBitBtn
        Left = 407
        Height = 72
        Top = 10
        Width = 209
        Caption = 'Oblicz'
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000064000000640000000000000000000000000000000000
          0000000000000000000000000000000000003EA54C1B3FA44BFD3FA44DFF3EA2
          45E83CA2451B0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000038AB5FBC46B26DFF48B36EFF43AB
          5EFF34A449BC0000000000000000C88E25060000000000000000000000000000
          000000000000CF963C20CE9538DCD99230FF3AB471C34FC28CFF50C491FF48B3
          70FF34A753C1D88F29FFC98F2AFFC88E26C3C88E26FF00000000000000000000
          0000D29C4848D29C47FFD19A4399000000003BB776444EBF87FF4FC28DFF47B2
          6CFF35A95839DB9536B4CE9538FFCD9537DF000000000000000000000000D8A4
          570CD6A254FFD5A1515A00000000000000000000000049B5742247B3708A45AD
          662200000000DE9A42FF00000000D19A42CFD099419A0000000000000000DBA9
          5DA8DBA95CB70000000000000000000000000000000000000000000000000000
          0000000000000000000000000000D49F4D06D49F4DFFD59F4E0CDFAF68FFDEAF
          67E3DEAE67EFDEAE669300000000000000000000000000000000000000000000
          000000000000000000000000000000000000DBA556C4D8A5575BE3B56F74E6B7
          6BFFEAB968E20000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000EFAC528ADDAA5E8600000000D4A9
          7EC95040D34A0000000000000000000000000000000000000000000000000000
          00000000000000000000000000001198FF34B7AB866AF3B0572E1618F74D1A1B
          F6FF1C1AF2FF1611F6E700000000000000000000000000000000000000000000
          0000000000000000000018B3F8E816B6F9FF0FA6FFFF0B99FF5C2E3BEFFF374C
          EFFF3243EFFF282BEEFF231CED88000000000000000000000000000000000000
          00000000000013D2F67320E8F4FF2BEDF4FF16DBF4FF19ABFAFF3C55F0FF5270
          F2FF4662F1FF2F3FEFFF2420EE85000000000000000000000000000000000000
          00000000000012F2FF8177F4F9FF95F6FAFF41F2F4FF16C5F7FF415BF1C55978
          F3FF4866F3FF2539F4FF090EFC1100000000000000000000000000000000EFCA
          89FFF4C5822DA2D6B45E79F8FFFFA5F6FDFF4BF1F4FF15CEF6C500000000415C
          F15F314AF585C0AAA651FFDD83FFF4D08D5A000000000000000000000000EECA
          8ACBEFCA89FFF6C682FFCFD1A06257F3FD8329EDF35F00000000000000000000
          00000000000000000000F7D48C87F1CF8FFFF1CF8FFFF1CF8FD7F1CE90EAF1CE
          8EFFF0CD8EFFF1CD8DFF00000000000000000000000000000000000000000000
          000000000000000000000000000000000000F1CF9020F1CF9034F1CF9034F1CF
          9015F1CD8DFFF1D0910600000000000000000000000000000000
        }
        OnClick = btnObliczClick
        TabOrder = 6
      end
      object btnZapisz: TBitBtn
        Left = 63
        Height = 30
        Top = 112
        Width = 144
        Caption = 'Zapisz'
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000064000000640000000000000000000000000000000000
          000000000000000000000000000000000000FCF7F10EE3C69C6FFFFFFE050000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000FFFEFC05CEA05CA6AF6900FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000FFFEFC05CB9E5DA6AB6500FFAF6900FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000FFFFFF02CDA2679CA76100FFBA7400FFAF6900FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000FFFEFC05C79A5DA6A45F00FFBD7807FFC68209FFAF6900FF000000000000
          000000000000000000000000000000000000000000000000000000000000FFFF
          FF02C99E689CA15C00FFC17F11FFCC8B17FFCC8A17FFAF6900FFB36D00FFB771
          00FFBB7500FFBE7700FFC17A00FFC37C00FFBE7700FFC37C00FFFFFEFC05C396
          5DA69F5A00FFC6861EFFD29527FFD29528FFD29528FFD29427FFD29428FFD295
          27FFD29428FFD29527FFD29428FFD29528FFD29427FFC37C00FFC19359A69F5A
          00FFCB8F2CFFD9A03AFFD99F39FFD99F39FFD9A039FFD99F3AFFD99F3AFFD99F
          3AFFD99F39FFD99F39FFD9A039FFD99F39FFD9A039FFC37C00FFBC8A46B79F5A
          00FFCB8F2CFFE0AB4BFFE0AB4BFFE0AB4CFFE0AB4CFFE0AB4CFFE0AB4CFFE0AB
          4CFFE0AB4CFFE0AB4CFFE0AB4BFFE0AB4CFFE0AB4CFFC37C00FFFEFCF70ABB88
          44C09F5A00FFDEA848FFE7B65DFFE7B65DFFE7B65DFFE7B65EFFE7B65EFFE7B6
          5DFFE7B65EFFE6B65DFFE7B65EFFE7B65EFFE7B65DFFC37C00FF00000000FBF7
          EE15BF8E49BBA15C00FFE3B054FFEDC06EFFEDC06EFFAF6900FFB36D00FFB771
          00FFBB7500FFBE7800FFC17A00FFC37C00FFC37C00FFC37C00FF000000000000
          0000FEFDF80AC1904ABAA45F00FFE7B75EFFF3C97CFFAF6900FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000FBF7EE14C29248BBA76100FFEABB65FFAE6A00FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000FEFDF80AC6954ABAAB6500FFAF6900FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000FBF6EC16C28D37CCAF6900FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FBF6EC15E0C38E7CFFFFFF040000
          0000000000000000000000000000000000000000000000000000
        }
        OnClick = btnZapiszClick
        TabOrder = 7
      end
      object btnZapiszTerminarz: TBitBtn
        Left = 63
        Height = 30
        Hint = 'Zapisuje w terminarzu terminy: Końca Kary, WPZ, Postpenitu, Przepustek.'
        Top = 146
        Width = 144
        Caption = 'Zapisz do terminarza'
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000064000000640000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000A45618C5AD60
          18E5A95D17E3AB5E15E3A95C16E3A95C16E3AB5C15E3A95C17E3A95E18E3AB5C
          13E3A95E1AE3A95E15E3AA5E14E3A95B17E3AE6018E5A3561AC5B96F22FFF7DB
          B4FFEFD1B1FFD5881AFFF1D4B4FFF0D3AFFFD8922CFFF3DDC5FFEAC796FFD68B
          22FFF4E0C8FFEAC395FFD7932BFFF2DDC6FFF0C887FFB5650AFFBA7632F2FFFF
          FFFFFFFFFFFFD69231FFFFFFFFFFFFFFFFFFDDA14BFFFFFFFFFFFAF1E1FFD998
          45FFFFFFFFFFFAF2EEFFDD9F4DFFFFFFFFFFFFF1D3FFB45F03F2BC7019F3EBC0
          81FFE5B884FFD89229FFE5BA88FFE2B175FFD89126FFE5BA87FFE3B77BFFD992
          28FFE6C297FFE1AF6DFFDA9733FFE6BE96FFE9BA73FFBC6F19F3C27D38F3FFF9
          EDFFF7ECE2FFDE9F41FFFAF3E9FFF9F3E9FFE1AA59FFFCFBFCFFF6E2C7FFDFA8
          56FFFDFAF8FFF3DFC8FFE0A954FFFBF9F9FFFAE7C0FFBF731CF3CB8E53F3FFFF
          F8FFFAF2EAFFE2A84EFFFCF4EAFFF9EDD8FFE2AB53FFFDF8F3FFF5E3C5FFE2A8
          4DFFFDF8F2FFF6E1CBFFE5B264FFFEFEFEFFFEF2D9FFCA8742F3CE8E48F3FBE8
          CDFFF3DFC9FFEBBB78FFF2DDC7FFF1D4B2FFE6B361FFF1D6BBFFEFD2ACFFE5B4
          64FFF4E3D1FFEFD0A4FFEABF83FFF5E4D6FFF9E0BFFFCD8E48F3D29961F3FFFF
          FFFFFFFFFFFFEFC992FFFFFFFFFFFFFFFFFFF1D1A2FFFFFFFFFFFDFAF7FFF0CE
          A3FFFFFFFFFFFDFAFCFFF0CE9DFFFFFFFFFFFFFFF7FFCE8E43F3D49C5CF3FFF7
          DEFFF8E6CFFFF6D29AFFF8E5C6FFF7E1C3FFF1CD95FFF9E4CCFFF6DDBBFFF1CB
          8EFFF8E6CEFFF6DFBCFFF6D6A1FFFAEADAFFFFF2D1FFD49852F3E2B06DF2CC95
          57FF943600FFC88B51FFF9D79CFFF2CD90FFF4D096FFF2CC8FFFF2CE8FFFF3D0
          94FFF1CD91FFF9DA9BFFC78A4EFF943500FFCE945AFFE1B170F2E6BE84FFC892
          5BFFD3850CFFC98849FFFCE5BAFFF8DDAFFFF9DCAEFFF9DEAEFFFADEAFFFF9DC
          AFFFFADCADFFFCE5BCFFCA8B4DFFD3850AFFC78F5BFFE7BE84FFCE904992D19A
          5CE3E5AB4DFFCC8E4CF8DFB78AB0DEAF7DB5DDB17EB5DEB07EB5DDB07DB5DDB0
          7DB5DDB07DB5E0B689AFCD924DF5E5AB4DFFCD965CE3CE90499200000000CD8B
          408CF9D384FFBB711CD800000000000000000000000000000000000000000000
          00000000000000000000BC751FCBF7D384FFCD893D8C0000000000000000CE8E
          3878F0C577F2C47F2E9400000000000000000000000000000000000000000000
          00000000000000000000C8842E87EEC377F3CC88367800000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000
        }
        OnClick = btnZapiszTerminarzClick
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
      end
    end
    object btnPaste: TBitBtn
      Left = 88
      Height = 30
      Top = 0
      Width = 147
      Caption = 'Wklej ze schowka'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        200000000000000400006400000064000000000000000000000000000000328B
        BEFF3486C4F33488C4F33488C4F33288C8F33596DCF36A4B2BF3B8915AF3AF93
        69F3AF9266F3B09266F3B4976CF3B4996FF3BAA178F485581BE349AFFFFF49BB
        FFFF3FB8FFFF41B8FFFF40B6FFFF41BCFFFF2BC1FFFF737765FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBEA686F646A5FEF2349F
        FFFF2CA0FFFF2FA0FFFF2D9DFFFF31A4FFFF0CA2FFFF696F69FFFFEBD9FFF2F2
        EDFFF1EEE7FFF1EEE7FFEFEDE3FFECE9E1FFFFFFFFFFB69B73F146ABFEF33AAA
        FFFF35A9FFFF37A9FFFF39A9FFFF3BADFFFF1CACFFFF6F7269FFFFEEDCFFF4F4
        F1FFF3F1E9FFF4F1EBFFF6F2EDFFF8F1EDFFFFFFFFFFB69F78F147ADFEF33EB1
        FFFF39AAFFFF3BACFFFF3BABFFFF3DB1FFFF22B1FFFF6F7667FFFFEDD9FFF3F4
        EDFFF3EFEAFFF6F1ECFFFBF7F4FFFBF4F1FFFFFFFFFFB59A70F149ADFEF343B5
        FFFF3CADFFFF3EAFFFFF3EAEFFFF43B5FFFF26B5FFFF727D70FFFFF5E4FFF8F9
        F5FFFBF7F3FFFBFBF7FFFBFCF8FFF2EEE9FFF2EFE9FFAD9064F14EAFFEF348B9
        FFFF40B3FFFF43B4FFFF41B0FFFF44B7FFFF29B7FFFF7B8579FFFFF8EEFFFBFC
        FFFFF9FCFBFFFBFBFBFFF5F1ECFFE9E0D6FFE1D8C9FFA28451F54FB1FEF34EBF
        FFFF43B5FFFF48B8FFFF46B7FFFF47BBFFFF2CBAFFFF818980FFFFF8EDFFFBFD
        FFFFFCFBF9FFF7F4EDFFD9CEBAFFCEBFA1FFBCA27CFF966E35ED51B4FEF353C2
        FFFF46B9FFFF49B9FFFF49B6FFFF4ABBFFFF2BBAFFFF818E88FFFFF8EFFFFBFE
        FFFFF4F2EBFFEAE1D8FFCAB597FFFBFBF9FFF3EEEAFFB0966AFF54B5FEF358C4
        FFFF4ABBFFFF50CFFFFF54D8FFFF51D9FFFF3AD5FFFF9F9D8EFFFFFFFCFFFFFF
        FFFFFDE6D0FFEACAAAFFC19359FFF4EFEBFFAA8D5DFF0000000055B6FEF25ECA
        FFFF54CEFFFF3996BEFF145876FF1E668DFF02639DFF4E5C5AFF908570FF827E
        6AFF869D9AFF839B8DFF6C7D70FFC39558FF00000000000000005DB8FEFF5AD4
        FFFF44C1FBFF81716EFF91796DFF887A74FF8D7B72FF7A7E83FF787E87FF5D59
        5DFF0074CBFF25BEFFFF16A4FFFF0085FF44000000000000000058B1FECD77D3
        FFFF4DB8F4FFCFC9C6FFFFFFFCFFEFEFEEFFFFFEFDFFF1EFEFFFFFFFFEFFD7CD
        C4FF1166ACFF3AACFFFF2799FBFF0B87F13000000000000000000000000048AB
        FF5140A5F63EBFC2C1FFFFFCF6FFFFFFFFFFB3B1B1FFFCFEFEFFFFFFFFFFC5C8
        C5FF0064BF3E1890FE4D0C89F528000000000000000000000000000000000000
        00000000000000000000EBE4DF29E1E2E2FFABABABFFE4E2E2FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000C9C9C91EA6A6A6FFB7B7B780000000000000
        0000000000000000000000000000000000000000000000000000
      }
      OnClick = btnPasteClick
      TabOrder = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Height = 48
    Top = 0
    Width = 1085
    Align = alTop
    ClientHeight = 48
    ClientWidth = 1085
    Color = clWhite
    ParentColor = False
    TabOrder = 2
    object Label8: TLabel
      Left = 16
      Height = 23
      Top = 10
      Width = 97
      Caption = 'Kreator WPZ'
      Font.Height = 24
      ParentColor = False
      ParentFont = False
    end
  end
  object Panel3: TPanel
    Left = 5
    Height = 400
    Top = 56
    Width = 283
    ClientHeight = 400
    ClientWidth = 283
    TabOrder = 3
    object RxDBGrid1: TRxDBGrid
      Left = 1
      Height = 336
      Top = 25
      Width = 281
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
      Align = alTop
      Color = clWindow
      DrawFullLine = False
      FocusColor = clRed
      SelectedColor = clHighlight
      GridLineStyle = psSolid
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColumnMove, dgColLines, dgRowLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
    end
    object Button2: TButton
      Left = 8
      Height = 25
      Top = 368
      Width = 91
      Anchors = [akLeft, akBottom]
      Caption = 'Show Dane'
      TabOrder = 1
    end
    object Button1: TButton
      Left = 112
      Height = 25
      Top = 368
      Width = 91
      Anchors = [akLeft, akBottom]
      Caption = 'Show JSON'
      OnClick = Button1Click
      TabOrder = 2
    end
    object Label9: TLabel
      Left = 1
      Height = 24
      Top = 1
      Width = 281
      Align = alTop
      Alignment = taCenter
      AutoSize = False
      Caption = 'Obliczenia'
      Layout = tlCenter
      ParentColor = False
    end
  end
  object RxMemoryOrzeczenia: TRxMemoryData
    FieldDefs = <    
      item
        Name = 'Lp'
        DataType = ftString
        Size = 2
      end    
      item
        Name = 'Art'
        DataType = ftString
        Precision = -1
        Size = 1000
      end    
      item
        Name = 'Lat'
        DataType = ftInteger
        Precision = -1
      end    
      item
        Name = 'Msc'
        DataType = ftInteger
        Precision = -1
      end    
      item
        Name = 'Dni'
        DataType = ftInteger
        Precision = -1
      end    
      item
        Name = 'Zastepcza'
        DataType = ftBoolean
        Precision = -1
      end    
      item
        Name = 'KoniecKary'
        DataType = ftDate
        Precision = -1
      end>
    PacketRecords = 0
    Left = 800
    Top = 178
    object RxMemoryOrzeczeniaLp: TStringField
      FieldKind = fkData
      FieldName = 'Lp'
      Index = 0
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = True
      Required = False
      OnGetText = RxMemoryOrzeczeniaLpGetText
      Size = 2
    end
    object RxMemoryOrzeczeniaArt: TStringField
      FieldKind = fkData
      FieldName = 'Art'
      Index = 1
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
      Size = 1000
    end
    object RxMemoryOrzeczeniaLat: TLongintField
      FieldKind = fkData
      FieldName = 'Lat'
      Index = 2
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
    end
    object RxMemoryOrzeczeniaMsc: TLongintField
      FieldKind = fkData
      FieldName = 'Msc'
      Index = 3
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
    end
    object RxMemoryOrzeczeniaDni: TLongintField
      FieldKind = fkData
      FieldName = 'Dni'
      Index = 4
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
    end
    object RxMemoryOrzeczeniaZastepcza: TBooleanField
      FieldKind = fkData
      FieldName = 'Zastepcza'
      Index = 5
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
      DisplayValues = 'True;False'
    end
    object RxMemoryOrzeczeniaKoniecKary: TDateField
      FieldKind = fkData
      FieldName = 'KoniecKary'
      Index = 6
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
    end
  end
  object DSOrzeczenia: TDataSource
    DataSet = RxMemoryOrzeczenia
    Left = 694
    Top = 178
  end
  object ZQOsInfo: TZQuery
    Connection = DM.ZConnection1
    SQL.Strings = (
      'SELECT '
      'IDO,'
      'Autoryzacja,'
      'data_autoryzacji,'
      'KoniecKary,'
      'twpz,'
      'ulamek_wpz,'
      'tprzepustki,'
      'tpostpenitu'
      'FROM os_info'
      'WHERE IDO  = :ido'
    )
    Params = <    
      item
        DataType = ftUnknown
        Name = 'ido'
        ParamType = ptUnknown
      end>
    Left = 512
    Top = 536
    ParamData = <    
      item
        DataType = ftUnknown
        Name = 'ido'
        ParamType = ptUnknown
      end>
  end
end
