object Zatrudnieni: TZatrudnieni
  Left = 152
  Height = 856
  Top = 206
  Width = 1359
  Caption = 'Zatrudnieni'
  ClientHeight = 856
  ClientWidth = 1359
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  Position = poOwnerFormCenter
  LCLVersion = '6.6'
  WindowState = wsMaximized
  object Panel2: TPanel
    Left = 0
    Height = 120
    Top = 0
    Width = 1359
    Align = alTop
    BevelOuter = bvNone
    ClientHeight = 120
    ClientWidth = 1359
    TabOrder = 0
    object edMiejsce: TEdit
      Left = 104
      Height = 23
      Top = 80
      Width = 305
      Anchors = [akTop, akLeft, akRight]
      Constraints.MaxWidth = 312
      Constraints.MinWidth = 100
      Enabled = False
      OnChange = Edit1Change
      TabOrder = 8
    end
    object edNazwaGrupy: TEdit
      Left = 104
      Height = 23
      Top = 52
      Width = 305
      Anchors = [akTop, akLeft, akRight]
      Constraints.MaxWidth = 312
      Constraints.MinWidth = 100
      Enabled = False
      OnChange = Edit1Change
      TabOrder = 2
    end
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
      Height = 23
      Top = 24
      Width = 400
      Anchors = [akTop, akLeft, akRight]
      CharCase = ecUppercase
      Constraints.MaxWidth = 400
      Constraints.MinWidth = 188
      OnChange = Edit1Change
      OnKeyPress = Edit1KeyPress
      TabOrder = 0
    end
    object cbNazwaGrupy: TCheckBox
      Left = 8
      Height = 19
      Top = 56
      Width = 89
      Alignment = taLeftJustify
      Caption = 'Nazwa grupy'
      OnChange = cbNazwaGrupyChange
      TabOrder = 1
    end
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
    object cbMiejsce: TCheckBox
      Left = 37
      Height = 19
      Top = 84
      Width = 60
      Alignment = taLeftJustify
      Caption = 'Miejsce'
      OnChange = cbMiejsceChange
      TabOrder = 7
    end
    object GroupBox1: TGroupBox
      Left = 632
      Height = 112
      Top = 0
      Width = 417
      Anchors = [akTop, akRight]
      Caption = 'Kryteria wyszukiwania:'
      ClientHeight = 92
      ClientWidth = 413
      TabOrder = 4
      object CheckBox1: TCheckBox
        Left = 8
        Height = 19
        Top = -5
        Width = 151
        Caption = 'Szukaj pomiędzy datami:'
        OnChange = CheckBox1Change
        TabOrder = 0
      end
      object DateTimePicker1: TDateTimePicker
        Left = 168
        Height = 23
        Top = 16
        Width = 83
        CenturyFrom = 1941
        MaxDate = 2958465
        MinDate = -53780
        TabOrder = 1
        Enabled = False
        TrailingSeparator = False
        TextForNullDate = 'NULL'
        LeadingZeros = True
        Kind = dtkDate
        TimeFormat = tf24
        TimeDisplay = tdHMS
        DateMode = dmComboBox
        Date = 42762
        Time = 0.398035810183501
        UseDefaultSeparators = True
        HideDateTimeParts = []
        MonthNames = 'Long'
        OnChange = DateTimePicker1Change
      end
      object DateTimePicker2: TDateTimePicker
        Left = 325
        Height = 23
        Top = 16
        Width = 83
        CenturyFrom = 1941
        MaxDate = 2958465
        MinDate = -53780
        TabOrder = 2
        Enabled = False
        TrailingSeparator = False
        TextForNullDate = 'NULL'
        LeadingZeros = True
        Kind = dtkDate
        TimeFormat = tf24
        TimeDisplay = tdHMS
        DateMode = dmComboBox
        Date = 42762
        Time = 0.398139062497648
        UseDefaultSeparators = True
        HideDateTimeParts = []
        MonthNames = 'Long'
        OnChange = DateTimePicker2Change
      end
      object ComboBox1: TComboBox
        Left = 168
        Height = 23
        Top = -8
        Width = 240
        Enabled = False
        ItemHeight = 15
        ItemIndex = 0
        Items.Strings = (
          'Data dodania'
          'Data zatrudnienia'
          'Data wycofania'
          'Data badania'
          'Data następnego badania'
          'Data następnego BHP'
          'Data rozpoczęcia urlopu'
          'Data zakończenia urlopu'
          'Data planowanego urlopu'
        )
        OnChange = ComboBox1Change
        Style = csDropDownList
        TabOrder = 3
        Text = 'Data dodania'
      end
      object cbZatNaDzien: TCheckBox
        Left = 8
        Height = 19
        Top = 44
        Width = 160
        Caption = 'Zatrudnieni na dany dzień:'
        OnChange = cbZatNaDzienChange
        TabOrder = 4
      end
      object dtZatNaDzien: TDateTimePicker
        AnchorSideTop.Control = cbZatNaDzien
        AnchorSideTop.Side = asrCenter
        Left = 192
        Height = 23
        Top = 42
        Width = 83
        CenturyFrom = 1941
        MaxDate = 2958465
        MinDate = -53780
        TabOrder = 5
        Enabled = False
        TrailingSeparator = False
        TextForNullDate = 'NULL'
        LeadingZeros = True
        Kind = dtkDate
        TimeFormat = tf24
        TimeDisplay = tdHMS
        DateMode = dmComboBox
        Date = 42762
        Time = 0.398035810183501
        UseDefaultSeparators = True
        HideDateTimeParts = []
        MonthNames = 'Long'
        OnChange = dtZatNaDzienChange
      end
      object cbZatNaMsc: TCheckBox
        Left = 8
        Height = 19
        Top = 70
        Width = 186
        Caption = 'Zatrudnieni w danym miesiącu:'
        OnChange = cbZatNaMscChange
        TabOrder = 6
      end
      object dtZatNaMsc: TDateTimePicker
        AnchorSideTop.Control = cbZatNaMsc
        AnchorSideTop.Side = asrCenter
        Left = 192
        Height = 23
        Top = 68
        Width = 83
        CenturyFrom = 1941
        MaxDate = 2958465
        MinDate = -53780
        TabOrder = 7
        Enabled = False
        TrailingSeparator = False
        TextForNullDate = 'NULL'
        LeadingZeros = True
        Kind = dtkDate
        TimeFormat = tf24
        TimeDisplay = tdHMS
        DateMode = dmComboBox
        Date = 42762
        Time = 0.398035810183501
        UseDefaultSeparators = True
        HideDateTimeParts = []
        MonthNames = 'Long'
        OnChange = dtZatNaMscChange
      end
    end
    object GroupBox2: TGroupBox
      Left = 1049
      Height = 90
      Top = 0
      Width = 96
      Anchors = [akTop, akRight]
      Caption = 'Zmiany:'
      ClientHeight = 70
      ClientWidth = 92
      TabOrder = 3
      object cbZmianyPOC: TCheckBox
        Left = 8
        Height = 19
        Top = -5
        Width = 40
        Caption = 'Celi'
        OnChange = cbZmianyPOCChange
        TabOrder = 0
      end
      object cbZmianyKlasyf: TCheckBox
        Left = 8
        Height = 19
        Top = 11
        Width = 78
        Caption = 'Klasyfikacji'
        OnChange = cbZmianyPOCChange
        TabOrder = 1
      end
      object cbZmianyPobytow: TCheckBox
        Left = 8
        Height = 19
        Top = 27
        Width = 47
        Caption = 'Ubyli'
        OnChange = cbZmianyPOCChange
        TabOrder = 2
      end
      object btnZapiszZmiany: TBitBtn
        Left = 8
        Height = 22
        Top = 48
        Width = 81
        Caption = 'zapisz'
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000064000000640000000000000000000000000000000000
          00000000000000000000D5E8FC33428FECC11775E7FF1775E7FF1775E7FF1775
          E7FF78B8F481FCFFFF0300000000000000000000000000000000000000000000
          000000000000D8E8FC312074E8EE1775E7FFB3EAFCFFC4F8FEFFC1F5FDFF87C9
          F6FF1570E6FF74AAF29BFFFFFF01000000000000000000000000000000000000
          0000FFFFFF024F8DECC31867E5FFB5FBFFFFB4F9FEFFAFF6FEFFB0F6FEFFBBFF
          FFFFBBFFFFFF1867E5FF91BCF57E000000000000000000000000000000000000
          0000D7E6FB351A69E6FE8EEFFDFF8EEFFDFF89EAFCFF8AEAFCFF8AEAFCFF89EA
          FCFF89EAFCFF89EAFCFF1865E4FF000000000000000000000000000000000000
          00005B9BF75C1D6CE5FF67DDFBFF6AE2FBFF69E0FBFF69E0FBFF69E0FBFF69E0
          FBFF69E0FBFF6EE8FCFF185DE3FF000000000000000000000000000000000000
          00007CB4F759165FE4FF4AD3FAFF4FDCFBFF4ED9FAFF4ED9FAFF4ED9FAFF4ED9
          FAFF4ED9FAFF4ED9FAFF185DE3FF000000000000000000000000000000000000
          0000E4ECFC281F57E3F835DBFBFF35DBFBFF34D1F9FF34D2F9FF34D2F9FF34D2
          F9FF34D2F9FF1F81EAFF194FE1FF000000000000000000000000000000000000
          0000000000007898EF9F0A4BE1FF1AD0F9FF1AD0F9FF1BCAF8FF1BCBF8FF1BCB
          F8FF1BD0FAFF106CE7FF4D74E8D3000000000000000000000000000000000000
          000000000000EFF4FE17365CE4E30E56E3FF06BFF7FF04C8F9FF04C4F8FF04C5
          F8FF04C5F8FF0B59E3FF6788EDAC000000000000000000000000000000000000
          00000000000000000000C9D5F9441C3FDFFB1061E5FF00C1F8FF00C5F8FF00C6
          F8FF02B7F6FF0C42DFFF99ACF372000000000000000000000000000000000000
          00000000000000000000000000008EA1F1890F2BDBFF0F7DEAFF00CAF9FF00CD
          FAFF0B8AEDFF1735DDFFCED6F93E000000000000000000000000000000000000
          0000000000000000000000000000E6EEFD18314CE2EC1442E0FF00C6F9FF03B6
          F6FF113FDFFF3B53E3E3F8F9FE0C000000000000000000000000000000000000
          0000000000000000000000000000FDFFFF02455BE4DC132EDCFF116DE8FF154F
          E2FF0E23DAFFA8B3F46B00000000000000000000000000000000000000000000
          0000000000000000000000000000A0A8F2751329DBFF1C30DCFF1A26DAFF0C1B
          D9FF707EEBA9FDFDFF0400000000000000000000000000000000000000000000
          000000000000E0E5FF108D96EF8C1525DBFF101FD9FF0F1ED9FF1D2CDCFA808B
          ED90F9FBFF060000000000000000000000000000000000000000000000000000
          0000CACDFA3C3F47E3BD0E18D8F71D25DAFF565EE6BD7E84ED88B1B6F9360000
          0000000000000000000000000000000000000000000000000000
        }
        OnClick = btnZapiszZmianyClick
        TabOrder = 3
        Visible = False
      end
    end
    object rgStatusZat: TRadioGroup
      Left = 1145
      Height = 90
      Top = 0
      Width = 121
      Anchors = [akTop, akRight]
      AutoFill = True
      Caption = 'Status zatrudnienia'
      ChildSizing.LeftRightSpacing = 6
      ChildSizing.EnlargeHorizontal = crsHomogenousChildResize
      ChildSizing.EnlargeVertical = crsHomogenousChildResize
      ChildSizing.ShrinkHorizontal = crsScaleChilds
      ChildSizing.ShrinkVertical = crsScaleChilds
      ChildSizing.Layout = cclLeftToRightThenTopToBottom
      ChildSizing.ControlsPerLine = 1
      ClientHeight = 70
      ClientWidth = 117
      ItemIndex = 0
      Items.Strings = (
        'Zatrudniony'
        'Wycofany'
        'Oczekujący'
        'Wszystkie'
      )
      OnSelectionChanged = rgStatusZatSelectionChanged
      TabOrder = 5
    end
    object rgStatusPobytu: TRadioGroup
      Left = 1265
      Height = 90
      Top = 0
      Width = 88
      Anchors = [akTop, akRight]
      AutoFill = True
      Caption = 'Pobyty'
      ChildSizing.LeftRightSpacing = 6
      ChildSizing.EnlargeHorizontal = crsHomogenousChildResize
      ChildSizing.EnlargeVertical = crsHomogenousChildResize
      ChildSizing.ShrinkHorizontal = crsScaleChilds
      ChildSizing.ShrinkVertical = crsScaleChilds
      ChildSizing.Layout = cclLeftToRightThenTopToBottom
      ChildSizing.ControlsPerLine = 1
      ClientHeight = 70
      ClientWidth = 84
      ItemIndex = 0
      Items.Strings = (
        'Aktualne'
        'Uprzednie'
        'Wszystkie'
      )
      OnSelectionChanged = rgStatusPobytuSelectionChanged
      TabOrder = 6
    end
    object cbDuplikaty: TCheckBox
      Left = 1056
      Height = 19
      Top = 93
      Width = 70
      Anchors = [akTop, akRight]
      Caption = 'Duplikaty'
      OnChange = cbDuplikatyChange
      TabOrder = 9
    end
  end
  object Panel3: TPanel
    Left = 0
    Height = 684
    Top = 120
    Width = 1359
    Align = alClient
    BevelOuter = bvNone
    ClientHeight = 684
    ClientWidth = 1359
    TabOrder = 1
    object Panel4: TPanel
      Left = 0
      Height = 684
      Top = 0
      Width = 848
      Align = alClient
      BevelOuter = bvNone
      ClientHeight = 684
      ClientWidth = 848
      Constraints.MinWidth = 490
      TabOrder = 0
      object RxDBGrid1: TRxDBGrid
        Left = 0
        Height = 684
        Top = 0
        Width = 848
        ColumnDefValues.BlobText = '(blob)'
        TitleButtons = True
        AutoSort = True
        OnGetCellProps = RxDBGrid1GetCellProps
        Columns = <        
          item
            Title.Alignment = taCenter
            Title.Orientation = toHorizontal
            Title.Caption = 'Nazwisko'
            Width = 100
            FieldName = 'Nazwisko'
            EditButtons = <>
            Filter.DropDownRows = 0
            Filter.EmptyValue = '(Empty)'
            Filter.NotEmptyValue = '(Not empty)'
            Filter.AllValue = '(All values)'
            Filter.EmptyFont.Style = [fsItalic]
            Filter.ItemIndex = -1
            Filter.Style = rxfstManualEdit
            Footer.DisplayFormat = 'Ilość: %d'
            Footer.ValueType = fvtCount
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
            Filter.Style = rxfstManualEdit
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
            Filter.Style = rxfstManualEdit
            Footers = <>
          end        
          item
            Alignment = taCenter
            Font.Color = clGreen
            Title.Alignment = taCenter
            Title.Orientation = toHorizontal
            Title.Caption = 'Klasyf'
            Width = 42
            FieldName = 'Klasyf'
            EditButtons = <>
            Filter.DropDownRows = 0
            Filter.EmptyValue = '(Empty)'
            Filter.NotEmptyValue = '(Not empty)'
            Filter.AllValue = '(All values)'
            Filter.EmptyFont.Style = [fsItalic]
            Filter.ItemIndex = -1
            Filter.Style = rxfstDialog
            Footers = <>
          end        
          item
            Alignment = taCenter
            Font.Color = clGreen
            Title.Alignment = taCenter
            Title.Orientation = toHorizontal
            Title.Caption = 'POC'
            Width = 42
            FieldName = 'POC'
            EditButtons = <>
            Filter.DropDownRows = 0
            Filter.EmptyValue = '(Empty)'
            Filter.NotEmptyValue = '(Not empty)'
            Filter.AllValue = '(All values)'
            Filter.EmptyFont.Style = [fsItalic]
            Filter.ItemIndex = -1
            Filter.Style = rxfstManualEdit
            Footers = <>
          end        
          item
            Alignment = taCenter
            Title.Alignment = taCenter
            Title.Orientation = toHorizontal
            Title.Caption = 'status'
            Width = 80
            FieldName = 'status_zatrudnienia'
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
            Title.Caption = 'Nazwa Grupy'
            Width = 200
            FieldName = 'nazwa'
            EditButtons = <>
            Filter.DropDownRows = 0
            Filter.EmptyValue = '(Empty)'
            Filter.NotEmptyValue = '(Not empty)'
            Filter.AllValue = '(All values)'
            Filter.EmptyFont.Style = [fsItalic]
            Filter.ItemIndex = -1
            Filter.Style = rxfstBoth
            Footers = <>
          end        
          item
            Alignment = taCenter
            Font.Color = clMaroon
            Title.Alignment = taCenter
            Title.Orientation = toHorizontal
            Title.Caption = 'zat. od'
            Width = 75
            FieldName = 'zat_od'
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
            Font.Color = clMaroon
            Title.Alignment = taCenter
            Title.Orientation = toHorizontal
            Title.Caption = 'zat. do'
            Width = 75
            FieldName = 'zat_do'
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
            Title.Caption = 'Rodzaj'
            Width = 50
            FieldName = 'rodzaj_zatrudnienia'
            EditButtons = <>
            Filter.DropDownRows = 0
            Filter.EmptyValue = '(Empty)'
            Filter.NotEmptyValue = '(Not empty)'
            Filter.AllValue = '(All values)'
            Filter.EmptyFont.Style = [fsItalic]
            Filter.ItemIndex = -1
            Filter.Style = rxfstDialog
            Footers = <>
          end        
          item
            Title.Alignment = taCenter
            Title.Orientation = toHorizontal
            Title.Caption = 'system'
            Width = 50
            FieldName = 'system'
            EditButtons = <>
            Filter.DropDownRows = 0
            Filter.EmptyValue = '(Empty)'
            Filter.NotEmptyValue = '(Not empty)'
            Filter.AllValue = '(All values)'
            Filter.EmptyFont.Style = [fsItalic]
            Filter.ItemIndex = -1
            Footers = <>
            ImageList = ImageList1
            KeyList.Strings = (
              'PEŁNY=2'
              'BEZ KONWOJENTA=3'
            )
          end        
          item
            Title.Alignment = taCenter
            Title.Orientation = toHorizontal
            Title.Caption = 'forma'
            Width = 50
            FieldName = 'forma'
            EditButtons = <>
            Filter.DropDownRows = 0
            Filter.EmptyValue = '(Empty)'
            Filter.NotEmptyValue = '(Not empty)'
            Filter.AllValue = '(All values)'
            Filter.EmptyFont.Style = [fsItalic]
            Filter.ItemIndex = -1
            Footers = <>
            ImageList = ImageList1
            KeyList.Strings = (
              'ODPŁATNIE=0'
              'NIEODPŁATNIE=1'
            )
          end        
          item
            Alignment = taCenter
            Font.Color = clMaroon
            Title.Alignment = taCenter
            Title.Orientation = toHorizontal
            Title.Hint = 'Data następnych badań lekarskich.'
            Title.ShowHint = True
            Title.Caption = 'Następne badania'
            Width = 75
            FieldName = 'data_nastepnego_badania'
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
            Font.Color = clMaroon
            Title.Alignment = taCenter
            Title.Orientation = toHorizontal
            Title.Hint = 'Data planowanego urlopu.'
            Title.ShowHint = True
            Title.Caption = 'Następny urlop'
            Width = 75
            FieldName = 'data_nastepnego_urlopu'
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
            Font.Color = clMaroon
            Title.Alignment = taCenter
            Title.Orientation = toHorizontal
            Title.Caption = 'data dodania'
            Width = 75
            FieldName = 'data_dodania'
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
            Font.Color = clMaroon
            Title.Alignment = taCenter
            Title.Orientation = toHorizontal
            Title.Caption = 'Następne BHP'
            Width = 75
            FieldName = 'data_nastepnego_BHP'
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
            Title.Caption = 'pobyty'
            Width = 52
            FieldName = 'pobyt'
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
        DataSource = DSZatrudnieni
        DefaultRowHeight = 19
        FixedColor = clNone
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgHeaderPushedLook, dgAnyButtonCanSelect, dgDisableDelete, dgDisableInsert, dgTruncCellHints, dgCellEllipsis]
        ParentShowHint = False
        PopupMenu = PopupMenu1
        ReadOnly = True
        ShowHint = True
        TabOrder = 0
        TitleImageList = ImageList1
        TitleStyle = tsNative
        OnDblClick = RxDBGrid1DblClick
        OnKeyPress = Edit1KeyPress
      end
    end
    object PageControl1: TPageControl
      Left = 853
      Height = 684
      Top = 0
      Width = 506
      ActivePage = tabWydruki
      Align = alRight
      Images = DM.ImageList1
      TabHeight = 25
      TabIndex = 2
      TabOrder = 1
      object tabSzczegolyOs: TTabSheet
        Caption = 'Szczegóły osadzonego'
        ClientHeight = 813
        ClientWidth = 498
        ImageIndex = 5
        object Panel5: TPanel
          Left = 0
          Height = 192
          Top = 0
          Width = 498
          Align = alTop
          BevelInner = bvRaised
          BevelOuter = bvLowered
          ClientHeight = 192
          ClientWidth = 498
          Color = 16316664
          ParentColor = False
          TabOrder = 0
          object Label2: TLabel
            Left = 49
            Height = 15
            Top = 8
            Width = 23
            Caption = 'IDO:'
            ParentColor = False
          end
          object Label3: TLabel
            Left = 19
            Height = 15
            Top = 30
            Width = 53
            Caption = 'Nazwisko:'
            ParentColor = False
          end
          object Label4: TLabel
            Left = 46
            Height = 15
            Top = 52
            Width = 26
            Caption = 'Imię:'
            ParentColor = False
          end
          object Label5: TLabel
            Left = 21
            Height = 15
            Top = 74
            Width = 51
            Caption = 'Imię ojca:'
            ParentColor = False
          end
          object Label6: TLabel
            Left = 18
            Height = 15
            Top = 96
            Width = 54
            Caption = 'Urodzony:'
            ParentColor = False
          end
          object Label7: TLabel
            Left = 28
            Height = 15
            Top = 118
            Width = 44
            Caption = 'Przyjęty:'
            ParentColor = False
          end
          object Label8: TLabel
            Left = 8
            Height = 15
            Top = 140
            Width = 64
            Caption = 'Klasyfikacja:'
            ParentColor = False
          end
          object Label9: TLabel
            Left = 208
            Height = 15
            Top = 8
            Width = 27
            Caption = 'POC:'
            ParentColor = False
          end
          object DBText1: TDBText
            Left = 80
            Height = 15
            Top = 8
            Width = 104
            AutoSize = False
            DataField = 'ido'
            DataSource = DSZatrudnieni
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object DBText2: TDBText
            Left = 80
            Height = 15
            Top = 30
            Width = 200
            AutoSize = False
            DataField = 'Nazwisko'
            DataSource = DSZatrudnieni
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object DBText3: TDBText
            Left = 80
            Height = 15
            Top = 52
            Width = 200
            AutoSize = False
            DataField = 'Imie'
            DataSource = DSZatrudnieni
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object DBText4: TDBText
            Left = 80
            Height = 15
            Top = 74
            Width = 200
            AutoSize = False
            DataField = 'Ojciec'
            DataSource = DSZatrudnieni
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object DBText5: TDBText
            Left = 80
            Height = 15
            Top = 96
            Width = 104
            AutoSize = False
            DataField = 'Urodzony'
            DataSource = DSZatrudnieni
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object DBText6: TDBText
            Left = 80
            Height = 15
            Top = 118
            Width = 104
            AutoSize = False
            DataField = 'Przyjety'
            DataSource = DSZatrudnieni
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object DBText7: TDBText
            Left = 80
            Height = 15
            Top = 140
            Width = 64
            AutoSize = False
            DataField = 'Klasyf'
            DataSource = DSZatrudnieni
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object DBText8: TDBText
            Left = 243
            Height = 15
            Top = 8
            Width = 64
            AutoSize = False
            DataField = 'POC'
            DataSource = DSZatrudnieni
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object DBText10: TDBText
            Left = 400
            Height = 15
            Top = 52
            Width = 88
            AutoSize = False
            DataField = 'pobyt'
            DataSource = DSZatrudnieni
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Label11: TLabel
            Left = 360
            Height = 15
            Top = 52
            Width = 34
            Caption = 'Pobyt:'
            ParentColor = False
          end
          object DBCheckBox4: TDBCheckBox
            Left = 331
            Height = 19
            Top = 114
            Width = 131
            AutoSize = True
            Caption = 'Uczestnik podkultury'
            DataField = 'podkultura'
            DataSource = DSZatrudnieni
            ReadOnly = True
            TabOrder = 0
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBPoprzedniePOC: TDBText
            Left = 400
            Height = 15
            Top = 8
            Width = 103
            Color = clYellow
            DataField = 'zat_POC'
            DataSource = DSZatrudnieni
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
            Visible = False
          end
          object lblPoprzedniePOC: TLabel
            Left = 331
            Height = 15
            Top = 8
            Width = 62
            Caption = 'Poprzednia:'
            Font.Style = [fsItalic]
            ParentColor = False
            ParentFont = False
            Visible = False
          end
          object lblPoprzedniaKlasyf: TLabel
            Left = 174
            Height = 15
            Top = 140
            Width = 62
            Caption = 'Poprzednia:'
            Font.Style = [fsItalic]
            ParentColor = False
            ParentFont = False
            Visible = False
          end
          object DBPoprzedniaKlasyf: TDBText
            Left = 243
            Height = 15
            Top = 140
            Width = 112
            Color = clYellow
            DataField = 'zat_Klasyf'
            DataSource = DSZatrudnieni
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
            Visible = False
          end
          object lblAktualnyPobyt: TLabel
            Left = 340
            Height = 15
            Top = 74
            Width = 54
            Caption = 'Aktualnie:'
            Font.Style = [fsItalic]
            ParentColor = False
            ParentFont = False
            Visible = False
          end
          object DBAktualnyPobyt: TDBText
            Left = 400
            Height = 15
            Top = 74
            Width = 98
            Color = clYellow
            DataField = 'new_pobyt'
            DataSource = DSZatrudnieni
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
            Visible = False
          end
          object Label45: TLabel
            Left = 8
            Height = 15
            Top = 168
            Width = 85
            Caption = 'Nr ewidencyjny:'
            ParentColor = False
          end
          object DBText43: TDBText
            Left = 96
            Height = 15
            Top = 168
            Width = 88
            AutoSize = False
            DataField = 'nr_ewidencyjny'
            DataSource = DSZatrudnieni
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
        end
        object GroupBox3: TGroupBox
          Left = 0
          Height = 64
          Top = 587
          Width = 498
          Align = alBottom
          Caption = 'Modyfikacje:'
          ClientHeight = 44
          ClientWidth = 494
          TabOrder = 2
          object Label21: TLabel
            Left = 44
            Height = 15
            Top = 0
            Width = 34
            Caption = 'Dodał:'
            ParentColor = False
          end
          object Label22: TLabel
            Left = 6
            Height = 15
            Top = 22
            Width = 72
            Caption = 'Modyfikował:'
            ParentColor = False
          end
          object Label23: TLabel
            Left = 232
            Height = 15
            Top = 0
            Width = 27
            Caption = 'Data:'
            ParentColor = False
          end
          object Label24: TLabel
            Left = 232
            Height = 15
            Top = 22
            Width = 27
            Caption = 'Data:'
            ParentColor = False
          end
          object DBText11: TDBText
            Left = 264
            Height = 15
            Top = 0
            Width = 136
            AutoSize = False
            DataField = 'data_dodania'
            DataSource = DSZatrudnieni
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object DBText19: TDBText
            Left = 264
            Height = 15
            Top = 22
            Width = 136
            AutoSize = False
            DataField = 'data_modyfikacji'
            DataSource = DSZatrudnieni
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object DBText20: TDBText
            Left = 86
            Height = 15
            Top = 0
            Width = 136
            AutoSize = False
            DataField = 'user_dodania'
            DataSource = DSZatrudnieni
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object DBText21: TDBText
            Left = 86
            Height = 15
            Top = 22
            Width = 136
            AutoSize = False
            DataField = 'user_modyfikacji'
            DataSource = DSZatrudnieni
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
        end
        object PageControl2: TPageControl
          Left = 0
          Height = 395
          Top = 192
          Width = 498
          ActivePage = tabInne
          Align = alClient
          Images = DM.ImageList1
          TabHeight = 25
          TabIndex = 2
          TabOrder = 1
          object tabInfoZat: TTabSheet
            Caption = 'Informacje o zatrudnieniu'
            ClientHeight = 362
            ClientWidth = 490
            ImageIndex = 6
            object plGradient1: TplGradient
              Left = 0
              Height = 56
              Top = 0
              Width = 491
              Anchors = [akTop, akLeft, akRight]
              BevelWidth = 1
              BevelStyle = bvLowered
              Buffered = True
              Direction = gdDownRight
              ColorStart = 15066597
              ColorEnd = 11316396
              StepWidth = 1
              Style = gsVertical
            end
            object Label10: TLabel
              Left = 6
              Height = 15
              Top = 56
              Width = 103
              Caption = 'Status zatrudnienia:'
              ParentColor = False
            end
            object DBText9: TDBText
              Left = 112
              Height = 15
              Top = 56
              Width = 370
              Anchors = [akTop, akLeft, akRight]
              AutoSize = False
              DataField = 'status_zatrudnienia'
              DataSource = DSZatrudnieni
              Font.Color = clBlue
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label13: TLabel
              Left = 6
              Height = 15
              Top = 128
              Width = 95
              Caption = 'Data zatrudnienia:'
              ParentColor = False
            end
            object DBText12: TDBText
              Left = 103
              Height = 15
              Top = 128
              Width = 88
              AutoSize = False
              Color = clBtnFace
              DataField = 'zat_od'
              DataSource = DSZatrudnieni
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
            object Label14: TLabel
              Left = 264
              Height = 15
              Top = 128
              Width = 84
              Caption = 'Data wycofania:'
              ParentColor = False
            end
            object DBText13: TDBText
              Left = 352
              Height = 15
              Top = 128
              Width = 87
              AutoSize = False
              Color = clBtnFace
              DataField = 'zat_do'
              DataSource = DSZatrudnieni
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
            object Label25: TLabel
              Left = 6
              Height = 15
              Top = 8
              Width = 143
              Caption = 'Nazwa Stanowiska - Grupy:'
              ParentColor = False
            end
            object DBText22: TDBText
              Left = 6
              Height = 21
              Top = 24
              Width = 476
              Alignment = taCenter
              Anchors = [akTop, akLeft, akRight]
              AutoSize = False
              DataField = 'nazwa'
              DataSource = DSZatrudnieni
              Font.Color = clBlue
              Font.Height = -16
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label26: TLabel
              Left = 6
              Height = 15
              Top = 104
              Width = 73
              Caption = 'Data dodania:'
              ParentColor = False
            end
            object DBText23: TDBText
              Left = 104
              Height = 15
              Top = 104
              Width = 129
              AutoSize = False
              Color = clBtnFace
              DataField = 'data_dodania'
              DataSource = DSZatrudnieni
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
            object Label35: TLabel
              Left = 6
              Height = 15
              Top = 328
              Width = 64
              Caption = 'Koniec kary:'
              ParentColor = False
            end
            object DBText33: TDBText
              Left = 103
              Height = 15
              Top = 328
              Width = 87
              AutoSize = False
              Color = clBtnFace
              DataField = 'koniec_kary'
              DataSource = DSZatrudnieni
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
            object Label36: TLabel
              Left = 6
              Height = 15
              Top = 224
              Width = 72
              Caption = 'Data badania:'
              ParentColor = False
            end
            object DBText34: TDBText
              Left = 104
              Height = 15
              Top = 224
              Width = 87
              AutoSize = False
              Color = clBtnFace
              DataField = 'data_badania'
              DataSource = DSZatrudnieni
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
            object Label37: TLabel
              Left = 203
              Height = 15
              Top = 224
              Width = 137
              Caption = 'Data następnego badania:'
              ParentColor = False
            end
            object DBText35: TDBText
              Left = 352
              Height = 15
              Top = 224
              Width = 87
              AutoSize = False
              Color = clBtnFace
              DataField = 'data_nastepnego_badania'
              DataSource = DSZatrudnieni
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
            object Label38: TLabel
              Left = 6
              Height = 15
              Top = 248
              Width = 49
              Caption = 'Urlop od:'
              ParentColor = False
            end
            object DBText36: TDBText
              Left = 104
              Height = 15
              Top = 248
              Width = 87
              AutoSize = False
              Color = clBtnFace
              DataField = 'urlop_od'
              DataSource = DSZatrudnieni
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
            object Label39: TLabel
              Left = 291
              Height = 15
              Top = 248
              Width = 49
              Caption = 'Urlop do:'
              ParentColor = False
            end
            object DBText37: TDBText
              Left = 352
              Height = 15
              Top = 248
              Width = 87
              AutoSize = False
              Color = clBtnFace
              DataField = 'urlop_do'
              DataSource = DSZatrudnieni
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
            object Label41: TLabel
              Left = 6
              Height = 15
              Top = 152
              Width = 23
              Caption = 'Etat:'
              ParentColor = False
            end
            object DBText39: TDBText
              Left = 103
              Height = 15
              Top = 152
              Width = 88
              AutoSize = False
              Color = clBtnFace
              DataField = 'etat'
              DataSource = DSZatrudnieni
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
            object Label46: TLabel
              Left = 264
              Height = 15
              Top = 152
              Width = 112
              Caption = 'Przyczyna wycofania:'
              ParentColor = False
            end
            object DBText44: TDBText
              Left = 264
              Height = 15
              Top = 176
              Width = 57
              Color = clBtnFace
              DataField = 'powod_wycofania'
              DataSource = DSZatrudnieni
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
            object Label47: TLabel
              Left = 6
              Height = 15
              Top = 176
              Width = 56
              Caption = 'Rodzaj zat:'
              ParentColor = False
            end
            object DBText45: TDBText
              Left = 103
              Height = 15
              Top = 176
              Width = 88
              AutoSize = False
              Color = clBtnFace
              DataField = 'rodzaj_zatrudnienia'
              DataSource = DSZatrudnieni
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
            object Label50: TLabel
              Left = 222
              Height = 15
              Top = 304
              Width = 118
              Caption = 'Data następnego BHP:'
              ParentColor = False
            end
            object DBText48: TDBText
              Left = 352
              Height = 15
              Top = 304
              Width = 87
              AutoSize = False
              Color = clBtnFace
              DataField = 'data_nastepnego_BHP'
              DataSource = DSZatrudnieni
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
            object DBText49: TDBText
              Left = 352
              Height = 15
              Top = 272
              Width = 87
              AutoSize = False
              Color = clBtnFace
              DataField = 'data_nastepnego_urlopu'
              DataSource = DSZatrudnieni
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
            object Label51: TLabel
              Left = 200
              Height = 15
              Top = 272
              Width = 140
              Caption = 'Data planowanego urlopu:'
              ParentColor = False
            end
          end
          object tabInfoStanowisko: TTabSheet
            Caption = 'Informacje o Stanowisku'
            ClientHeight = 362
            ClientWidth = 490
            ImageIndex = 7
            object Label15: TLabel
              Left = 6
              Height = 15
              Top = 11
              Width = 143
              Caption = 'Nazwa Stanowiska - Grupy:'
              ParentColor = False
            end
            object Label16: TLabel
              Left = 104
              Height = 15
              Top = 40
              Width = 43
              Caption = 'Miejsce:'
              ParentColor = False
            end
            object Label17: TLabel
              Left = 86
              Height = 15
              Top = 59
              Width = 63
              Caption = 'Stanowisko:'
              ParentColor = False
            end
            object Label18: TLabel
              Left = 108
              Height = 15
              Top = 81
              Width = 41
              Caption = 'System:'
              ParentColor = False
            end
            object Label19: TLabel
              Left = 112
              Height = 15
              Top = 100
              Width = 37
              Caption = 'Forma:'
              ParentColor = False
            end
            object Label20: TLabel
              Left = 6
              Height = 15
              Top = 160
              Width = 27
              Caption = 'Opis:'
              ParentColor = False
            end
            object DBText14: TDBText
              Left = 152
              Height = 16
              Top = 11
              Width = 330
              Anchors = [akTop, akLeft, akRight]
              AutoSize = False
              Color = clBtnFace
              DataField = 'nazwa'
              DataSource = DSZatrudnieni
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
            object DBText15: TDBText
              Left = 152
              Height = 15
              Top = 40
              Width = 330
              Anchors = [akTop, akLeft, akRight]
              AutoSize = False
              Color = clBtnFace
              DataField = 'miejsce'
              DataSource = DSZatrudnieni
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
            object DBText16: TDBText
              Left = 152
              Height = 15
              Top = 59
              Width = 330
              Anchors = [akTop, akLeft, akRight]
              AutoSize = False
              Color = clBtnFace
              DataField = 'stanowisko'
              DataSource = DSZatrudnieni
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
            object DBText17: TDBText
              Left = 152
              Height = 15
              Top = 80
              Width = 330
              Anchors = [akTop, akLeft, akRight]
              AutoSize = False
              Color = clBtnFace
              DataField = 'system'
              DataSource = DSZatrudnieni
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
            object DBText18: TDBText
              Left = 152
              Height = 15
              Top = 100
              Width = 330
              Anchors = [akTop, akLeft, akRight]
              AutoSize = False
              Color = clBtnFace
              DataField = 'forma'
              DataSource = DSZatrudnieni
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
            object DBMemo1: TDBMemo
              Left = 6
              Height = 182
              Top = 176
              Width = 477
              Anchors = [akTop, akLeft, akRight, akBottom]
              DataField = 'opis'
              DataSource = DSZatrudnieni
              ReadOnly = True
              ScrollBars = ssAutoBoth
              TabOrder = 0
            end
            object Label27: TLabel
              Left = 112
              Height = 15
              Top = 123
              Width = 35
              Caption = 'Status:'
              ParentColor = False
            end
            object DBText24: TDBText
              Left = 152
              Height = 15
              Top = 123
              Width = 330
              Anchors = [akTop, akLeft, akRight]
              AutoSize = False
              Color = clBtnFace
              DataField = 'stan'
              DataSource = DSZatrudnieni
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
            object Label48: TLabel
              Left = 48
              Height = 15
              Top = 144
              Width = 144
              Caption = 'Planowana godzina wyjścia'
              ParentColor = False
            end
            object DBText46: TDBText
              Left = 200
              Height = 15
              Top = 144
              Width = 56
              AutoSize = False
              Color = clBtnFace
              DataField = 'godz_wyjscia'
              DataSource = DSZatrudnieni
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
            object DBText47: TDBText
              Left = 423
              Height = 15
              Top = 144
              Width = 56
              AutoSize = False
              Color = clBtnFace
              DataField = 'godz_powrotu'
              DataSource = DSZatrudnieni
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
            object Label49: TLabel
              Left = 264
              Height = 15
              Top = 144
              Width = 151
              Caption = 'Planowana godzina powrotu'
              ParentColor = False
            end
          end
          object tabInne: TTabSheet
            Caption = 'inne'
            ClientHeight = 362
            ClientWidth = 490
            ImageIndex = 3
            object Label12: TLabel
              Left = 6
              Height = 15
              Top = 8
              Width = 33
              Caption = 'Adres:'
              ParentColor = False
            end
            object DBText25: TDBText
              Left = 112
              Height = 15
              Top = 8
              Width = 367
              Anchors = [akTop, akLeft, akRight]
              AutoSize = False
              Color = clBtnFace
              DataField = 'adres'
              DataSource = DSZatrudnieni
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
            object Label28: TLabel
              Left = 6
              Height = 15
              Top = 24
              Width = 78
              Caption = 'Kod pocztowy:'
              ParentColor = False
            end
            object DBText26: TDBText
              Left = 112
              Height = 15
              Top = 24
              Width = 367
              Anchors = [akTop, akLeft, akRight]
              AutoSize = False
              Color = clBtnFace
              DataField = 'kod_pocztowy'
              DataSource = DSZatrudnieni
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
            object Label29: TLabel
              Left = 6
              Height = 15
              Top = 112
              Width = 77
              Caption = 'Wykształcenie:'
              ParentColor = False
            end
            object DBText27: TDBText
              Left = 112
              Height = 15
              Top = 112
              Width = 367
              Anchors = [akTop, akLeft, akRight]
              AutoSize = False
              Color = clBtnFace
              DataField = 'wyksztalcenie'
              DataSource = DSZatrudnieni
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
            object Label30: TLabel
              Left = 6
              Height = 15
              Top = 128
              Width = 39
              Caption = 'Zawód:'
              ParentColor = False
            end
            object DBText28: TDBText
              Left = 112
              Height = 15
              Top = 128
              Width = 367
              Anchors = [akTop, akLeft, akRight]
              AutoSize = False
              Color = clBtnFace
              DataField = 'zawod'
              DataSource = DSZatrudnieni
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
            object DBCheckBox1: TDBCheckBox
              Left = 112
              Height = 19
              Top = 144
              Width = 131
              AutoSize = True
              Caption = 'Zawód potwierdzony'
              DataField = 'zawod_potwierdzony'
              DataSource = DSZatrudnieni
              ParentBiDiMode = False
              ReadOnly = True
              TabOrder = 0
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
            object Label31: TLabel
              Left = 6
              Height = 15
              Top = 64
              Width = 30
              Caption = 'Pesel:'
              ParentColor = False
            end
            object DBText29: TDBText
              Left = 112
              Height = 15
              Top = 64
              Width = 367
              Anchors = [akTop, akLeft, akRight]
              AutoSize = False
              Color = clBtnFace
              DataField = 'pesel'
              DataSource = DSZatrudnieni
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
            object Label32: TLabel
              Left = 6
              Height = 15
              Top = 80
              Width = 63
              Caption = 'Nr dowodu:'
              ParentColor = False
            end
            object DBText30: TDBText
              Left = 112
              Height = 15
              Top = 80
              Width = 367
              Anchors = [akTop, akLeft, akRight]
              AutoSize = False
              Color = clBtnFace
              DataField = 'nr_dowodu'
              DataSource = DSZatrudnieni
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
            object Label33: TLabel
              Left = 6
              Height = 15
              Top = 232
              Width = 54
              Caption = 'Karalność:'
              ParentColor = False
            end
            object DBText31: TDBText
              Left = 112
              Height = 15
              Top = 232
              Width = 367
              Anchors = [akTop, akLeft, akRight]
              AutoSize = False
              Color = clBtnFace
              DataField = 'karalnosc'
              DataSource = DSZatrudnieni
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
            object DBCheckBox2: TDBCheckBox
              Left = 112
              Height = 23
              Top = 167
              Width = 90
              Caption = 'Zobowiązania'
              DataField = 'zobowiazania'
              DataSource = DSZatrudnieni
              ParentBiDiMode = False
              ReadOnly = True
              TabOrder = 1
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
            object DBCheckBox3: TDBCheckBox
              Left = 112
              Height = 23
              Top = 192
              Width = 90
              Caption = 'Alimenty'
              DataField = 'alimety'
              DataSource = DSZatrudnieni
              ReadOnly = True
              TabOrder = 2
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
            object Label34: TLabel
              Left = 6
              Height = 15
              Top = 248
              Width = 19
              Caption = 'Art:'
              ParentColor = False
            end
            object DBText32: TDBText
              Left = 112
              Height = 15
              Top = 248
              Width = 367
              Anchors = [akTop, akLeft, akRight]
              AutoSize = False
              Color = clBtnFace
              DataField = 'art'
              DataSource = DSZatrudnieni
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
            object Label40: TLabel
              Left = 6
              Height = 15
              Top = 40
              Width = 98
              Caption = 'Miejsce urodzenia:'
              ParentColor = False
            end
            object DBText38: TDBText
              Left = 112
              Height = 15
              Top = 40
              Width = 367
              Anchors = [akTop, akLeft, akRight]
              AutoSize = False
              Color = clBtnFace
              DataField = 'miejsce_urodzenia'
              DataSource = DSZatrudnieni
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
          end
        end
      end
      object tabNotatnik: TTabSheet
        Caption = 'Notatnik'
        ClientHeight = 813
        ClientWidth = 498
        ImageIndex = 2
        object DBMemo2: TDBMemo
          Left = 0
          Height = 626
          Top = 0
          Width = 498
          Align = alClient
          DataField = 'Notatki'
          DataSource = DSZatrudnieni
          MaxLength = 500
          ScrollBars = ssAutoBoth
          TabOrder = 0
        end
        object DBNavigator1: TDBNavigator
          Left = 0
          Height = 25
          Top = 626
          Width = 498
          Align = alBottom
          BevelOuter = bvNone
          ChildSizing.EnlargeHorizontal = crsScaleChilds
          ChildSizing.EnlargeVertical = crsScaleChilds
          ChildSizing.ShrinkHorizontal = crsScaleChilds
          ChildSizing.ShrinkVertical = crsScaleChilds
          ChildSizing.Layout = cclLeftToRightThenTopToBottom
          ChildSizing.ControlsPerLine = 100
          ClientHeight = 25
          ClientWidth = 498
          DataSource = DSZatrudnieni
          Options = []
          TabOrder = 1
          VisibleButtons = [nbPost, nbCancel]
        end
      end
      object tabWydruki: TTabSheet
        Caption = 'Wydruki'
        ClientHeight = 651
        ClientWidth = 498
        ImageIndex = 4
        object lblDruk_OsadzeniAll: TLabel
          Cursor = crHandPoint
          Left = 16
          Height = 16
          Top = 16
          Width = 264
          Caption = 'Wydruk wszystkich widocznych osadzonych.'
          Font.CharSet = EASTEUROPE_CHARSET
          Font.Color = clHighlight
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Quality = fqDraft
          ParentColor = False
          ParentFont = False
          OnClick = lblDruk_OsadzeniAllClick
          OnMouseDown = lblActionMouseDown
          OnMouseEnter = lblActionMouseEnter
          OnMouseLeave = lblActionMouseLeave
          OnMouseUp = lblActionMouseUp
        end
        object lblDoSchowka_Osadzony: TLabel
          Cursor = crHandPoint
          Left = 40
          Height = 16
          Top = 48
          Width = 323
          Caption = 'Osadzony do schowka (Ctrl+V w arkuszu do wydruków)'
          Font.CharSet = EASTEUROPE_CHARSET
          Font.Color = clHighlight
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Quality = fqDraft
          ParentColor = False
          ParentFont = False
          OnClick = lblDoSchowka_OsadzonyClick
          OnMouseDown = lblActionMouseDown
          OnMouseEnter = lblActionMouseEnter
          OnMouseLeave = lblActionMouseLeave
          OnMouseUp = lblActionMouseUp
        end
        object lblDoSchowka_Osadzeni: TLabel
          Cursor = crHandPoint
          Left = 40
          Height = 16
          Top = 72
          Width = 319
          Caption = 'Osadzeni do schowka (Ctrl+V w arkuszu do wydruków)'
          Font.CharSet = EASTEUROPE_CHARSET
          Font.Color = clHighlight
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Quality = fqDraft
          ParentColor = False
          ParentFont = False
          OnClick = lblDoSchowka_OsadzeniClick
          OnMouseDown = lblActionMouseDown
          OnMouseEnter = lblActionMouseEnter
          OnMouseLeave = lblActionMouseLeave
          OnMouseUp = lblActionMouseUp
        end
        object lblAktaZatrudnieniowe: TLabel
          Cursor = crHandPoint
          Left = 16
          Height = 16
          Top = 160
          Width = 172
          Caption = 'Okładka: Akta Zatrudnieniowe'
          Font.CharSet = EASTEUROPE_CHARSET
          Font.Color = clHighlight
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Quality = fqDraft
          ParentColor = False
          ParentFont = False
          OnClick = lblAktaZatrudnienioweClick
          OnMouseDown = lblActionMouseDown
          OnMouseEnter = lblActionMouseEnter
          OnMouseLeave = lblActionMouseLeave
          OnMouseUp = lblActionMouseUp
        end
        object lblWniosekOZatrudnienie: TLabel
          Cursor = crHandPoint
          Left = 16
          Height = 16
          Top = 136
          Width = 136
          Caption = 'Wniosek o zatrudnienie'
          Font.CharSet = EASTEUROPE_CHARSET
          Font.Color = clHighlight
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Quality = fqDraft
          ParentColor = False
          ParentFont = False
          OnClick = lblWniosekOZatrudnienieClick
          OnMouseDown = lblActionMouseDown
          OnMouseEnter = lblActionMouseEnter
          OnMouseLeave = lblActionMouseLeave
          OnMouseUp = lblActionMouseUp
        end
        object lblAktaRejestr: TLabel
          Cursor = crHandPoint
          Left = 16
          Height = 16
          Top = 184
          Width = 273
          Caption = 'Rejestr zatrudnienia nieodpłatnego osadzonego'
          Font.CharSet = EASTEUROPE_CHARSET
          Font.Color = clHighlight
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Quality = fqDraft
          ParentColor = False
          ParentFont = False
          OnClick = lblAktaRejestrClick
          OnMouseDown = lblActionMouseDown
          OnMouseEnter = lblActionMouseEnter
          OnMouseLeave = lblActionMouseLeave
          OnMouseUp = lblActionMouseUp
        end
        object Image2: TImage
          Left = 16
          Height = 16
          Top = 48
          Width = 16
          AutoSize = True
          Picture.Data = {
            1754506F727461626C654E6574776F726B47726170686963DE02000089504E47
            0D0A1A0A0000000D49484452000000100000001008060000001FF3FF61000002
            A54944415478DA7D93CD6B135114C5CF9B8F3689DAD8114C6BD2E94249114441
            A45B3775610B2298562AA5F50F10151434B8D09D6BC1A50B576DB50812B5DBE2
            C24535220AB6A8A5CD0C8D89694CDBD47426F391F1BEBE04BBA90397C9CCBBE7
            77CFDC7BC3F09F2B93C97C771C07A9542AB9570EDBEB60A3B2F6F97DF6D3C9AE
            AE6E2412F12F9AA69DDA13D0981E644C691F84EC48DFF60F97C2FD138FF50E9C
            999B9B433C1E47329944AEBC9DFDFA68E8DAD9D0E26135BCAF61D9D66CE7BD42
            200099B1E7ACAF7F18D50FF8B83180BE817128D61642E10370EA2E6429404D6A
            C354FA3C268E16118A68D828E4663AEF2C8F08C0ECD555764C8FC39AC7D3B7A7
            315F3C8EEEE81FB8BE0C89C4AA2AA3684511FFF110E9940FD831D8E6523E7C6B
            2521006FC60DD6DBA3C3CDA3B8E9E1C97416114942440DA0B0063CBF01A94DC5
            E5733AA21A09F22E602C98EC66A157005E8F19ACE7888E720ED02214EDD41D89
            4E2C8A40744BA6E78A026C91E4770158CE9AEC460BF08A0089433AD6F3941806
            5C4F08A55D830AE8A1E188DFD52AB95834D975B309C85C3158AC43C756894421
            FEA639A39698609E27C225FBB51A503609B0DC724080CE908E5A0550DA45A22C
            FFABDE20A043C2801AE8536C9283B5BCC96EAFB41C8C1AAC4322001DD0B8C0A8
            A2A208210FEE80DF7D025B75609DF2D67F9A2CBDDA04BC1C315824D0619335EA
            3E982C1CB4843CB8755A6BD46C609B9A5B2107F74B4DC08B4B0693EA34C66D02
            A8C2019F02EF81C7E76E8B4FF09A2097EE550E586B02262F18545D67F54D0290
            758989EAFCE296B9753F10EFB89817704A267B501180E0D9C5220E4A3158D444
            49DEF54FA1649B7F42201ACAC13BFB21C35F5AF8A5DCCD77ED00ECC9A1E17795
            EA945B761D32E0EFEC0ED90F688D51A7A04D0C08C068990226CBAAA6B69DA8E5
            4663E9DCCC5F42683B20DC96FC340000000049454E44AE426082
          }
        end
        object Image3: TImage
          Left = 16
          Height = 16
          Top = 72
          Width = 16
          AutoSize = True
          Picture.Data = {
            1754506F727461626C654E6574776F726B47726170686963DE02000089504E47
            0D0A1A0A0000000D49484452000000100000001008060000001FF3FF61000002
            A54944415478DA7D93CD6B135114C5CF9B8F3689DAD8114C6BD2E94249114441
            A45B3775610B2298562AA5F50F10151434B8D09D6BC1A50B576DB50812B5DBE2
            C24535220AB6A8A5CD0C8D89694CDBD47426F391F1BEBE04BBA90397C9CCBBE7
            77CFDC7BC3F09F2B93C97C771C07A9542AB9570EDBEB60A3B2F6F97DF6D3C9AE
            AE6E2412F12F9AA69DDA13D0981E644C691F84EC48DFF60F97C2FD138FF50E9C
            999B9B433C1E47329944AEBC9DFDFA68E8DAD9D0E26135BCAF61D9D66CE7BD42
            200099B1E7ACAF7F18D50FF8B83180BE817128D61642E10370EA2E6429404D6A
            C354FA3C268E16118A68D828E4663AEF2C8F08C0ECD555764C8FC39AC7D3B7A7
            315F3C8EEEE81FB8BE0C89C4AA2AA3684511FFF110E9940FD831D8E6523E7C6B
            2521006FC60DD6DBA3C3CDA3B8E9E1C97416114942440DA0B0063CBF01A94DC5
            E5733AA21A09F22E602C98EC66A157005E8F19ACE7888E720ED02214EDD41D89
            4E2C8A40744BA6E78A026C91E4770158CE9AEC460BF08A0089433AD6F3941806
            5C4F08A55D830AE8A1E188DFD52AB95834D975B309C85C3158AC43C756894421
            FEA639A39698609E27C225FBB51A503609B0DC724080CE908E5A0550DA45A22C
            FFABDE20A043C2801AE8536C9283B5BCC96EAFB41C8C1AAC4322001DD0B8C0A8
            A2A208210FEE80DF7D025B75609DF2D67F9A2CBDDA04BC1C315824D0619335EA
            3E982C1CB4843CB8755A6BD46C609B9A5B2107F74B4DC08B4B0693EA34C66D02
            A8C2019F02EF81C7E76E8B4FF09A2097EE550E586B02262F18545D67F54D0290
            758989EAFCE296B9753F10EFB89817704A267B501180E0D9C5220E4A3158D444
            49DEF54FA1649B7F42201ACAC13BFB21C35F5AF8A5DCCD77ED00ECC9A1E17795
            EA945B761D32E0EFEC0ED90F688D51A7A04D0C08C068990226CBAAA6B69DA8E5
            4663E9DCCC5F42683B20DC96FC340000000049454E44AE426082
          }
        end
        object lblZatZaswiadczenie: TLabel
          Cursor = crHandPoint
          Left = 16
          Height = 16
          Top = 208
          Width = 229
          Caption = 'Zaświadczenie o wykonywaniu pracy ...'
          Font.CharSet = EASTEUROPE_CHARSET
          Font.Color = clHighlight
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Quality = fqDraft
          ParentColor = False
          ParentFont = False
          OnClick = lblZatZaswiadczenieClick
          OnMouseDown = lblActionMouseDown
          OnMouseEnter = lblActionMouseEnter
          OnMouseLeave = lblActionMouseLeave
          OnMouseUp = lblActionMouseUp
        end
        object lblOswiadczenieNieodplatna: TLabel
          Cursor = crHandPoint
          Left = 16
          Height = 16
          Top = 240
          Width = 265
          Caption = 'Oświadczenie o zgodzie na pracę nieodpłatną'
          Font.CharSet = EASTEUROPE_CHARSET
          Font.Color = clHighlight
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Quality = fqDraft
          ParentColor = False
          ParentFont = False
          OnClick = lblOswiadczenieNieodplatnaClick
          OnMouseDown = lblActionMouseDown
          OnMouseEnter = lblActionMouseEnter
          OnMouseLeave = lblActionMouseLeave
          OnMouseUp = lblActionMouseUp
        end
        object lblDaneOsadzonego: TLabel
          Cursor = crHandPoint
          Left = 16
          Height = 16
          Top = 264
          Width = 197
          Caption = 'Dane osadzonego dla kontrahenta'
          Font.CharSet = EASTEUROPE_CHARSET
          Font.Color = clHighlight
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Quality = fqDraft
          ParentColor = False
          ParentFont = False
          OnClick = lblDaneOsadzonegoClick
          OnMouseDown = lblActionMouseDown
          OnMouseEnter = lblActionMouseEnter
          OnMouseLeave = lblActionMouseLeave
          OnMouseUp = lblActionMouseUp
        end
        object lblStawka: TLabel
          Cursor = crHandPoint
          Left = 16
          Height = 16
          Top = 288
          Width = 326
          Caption = 'Wyciąg z decyzji Dyr. w sprawie stawki zaszeregowania'
          Font.CharSet = EASTEUROPE_CHARSET
          Font.Color = clHighlight
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Quality = fqDraft
          ParentColor = False
          ParentFont = False
          OnClick = lblStawkaClick
          OnMouseDown = lblActionMouseDown
          OnMouseEnter = lblActionMouseEnter
          OnMouseLeave = lblActionMouseLeave
          OnMouseUp = lblActionMouseUp
        end
        object lblWniosekUrlopowy: TLabel
          Cursor = crHandPoint
          Left = 16
          Height = 16
          Top = 312
          Width = 106
          Caption = 'Wniosek urlopowy'
          Font.CharSet = EASTEUROPE_CHARSET
          Font.Color = clHighlight
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Quality = fqDraft
          ParentColor = False
          ParentFont = False
          OnClick = lblWniosekUrlopowyClick
          OnMouseDown = lblActionMouseDown
          OnMouseEnter = lblActionMouseEnter
          OnMouseLeave = lblActionMouseLeave
          OnMouseUp = lblActionMouseUp
        end
        object lblKartaPracy: TLabel
          Cursor = crHandPoint
          Left = 16
          Height = 16
          Top = 344
          Width = 69
          Caption = 'Karta Pracy'
          Font.CharSet = EASTEUROPE_CHARSET
          Font.Color = clHighlight
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Quality = fqDraft
          ParentColor = False
          ParentFont = False
          OnClick = lblKartaPracyClick
          OnMouseDown = lblActionMouseDown
          OnMouseEnter = lblActionMouseEnter
          OnMouseLeave = lblActionMouseLeave
          OnMouseUp = lblActionMouseUp
        end
        object DateTimePicker3: TDateTimePicker
          Left = 304
          Height = 23
          Top = 337
          Width = 176
          CenturyFrom = 1941
          MaxDate = 2958465
          MinDate = -53780
          AutoSize = False
          TabOrder = 0
          TrailingSeparator = False
          TextForNullDate = 'NULL'
          LeadingZeros = True
          NullInputAllowed = False
          Kind = dtkDate
          TimeFormat = tf24
          TimeDisplay = tdHMS
          DateMode = dmComboBox
          Date = 42775
          Time = 0.620093900462962
          UseDefaultSeparators = True
          HideDateTimeParts = []
          MonthNames = 'Long'
          ShowMonthNames = True
        end
        object lblSkierowanieNaBadania: TLabel
          Cursor = crHandPoint
          Left = 16
          Height = 16
          Top = 376
          Width = 193
          Caption = 'Skierowanie na badania lekarskie'
          Font.CharSet = EASTEUROPE_CHARSET
          Font.Color = clHighlight
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Quality = fqDraft
          ParentColor = False
          ParentFont = False
          OnClick = lblSkierowanieNaBadaniaClick
          OnMouseDown = lblActionMouseDown
          OnMouseEnter = lblActionMouseEnter
          OnMouseLeave = lblActionMouseLeave
          OnMouseUp = lblActionMouseUp
        end
        object btnZmienOpisStanowiska: TBitBtn
          AnchorSideLeft.Control = cbSkierowanie
          AnchorSideLeft.Side = asrBottom
          AnchorSideTop.Control = cbSkierowanie
          AnchorSideTop.Side = asrCenter
          Left = 381
          Height = 30
          Hint = 'Zmień opis stanowisk pokrewnych w skierowaniu na badania...'
          Top = 369
          Width = 35
          BorderSpacing.Left = 5
          Images = DM.ImageList1
          ImageIndex = 3
          OnClick = btnZmienOpisStanowiskaClick
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
        end
        object cbSkierowanie: TComboBox
          AnchorSideLeft.Control = lblSkierowanieNaBadania
          AnchorSideLeft.Side = asrBottom
          AnchorSideTop.Control = lblSkierowanieNaBadania
          AnchorSideTop.Side = asrCenter
          AnchorSideRight.Control = lblSkierowanieNaBadania
          AnchorSideRight.Side = asrBottom
          Left = 264
          Height = 23
          Top = 373
          Width = 112
          Anchors = [akTop]
          AutoDropDown = True
          ItemHeight = 15
          ItemIndex = 0
          Items.Strings = (
            'WSTĘPNE'
            'OKRESOWE'
            'KONTROLNE'
          )
          Style = csDropDownList
          TabOrder = 2
          Text = 'WSTĘPNE'
        end
      end
    end
    object Splitter1: TSplitter
      Left = 848
      Height = 684
      Top = 0
      Width = 5
      Align = alRight
      ResizeAnchor = akRight
    end
  end
  object Panel1: TPanel
    Left = 0
    Height = 52
    Top = 804
    Width = 1359
    Align = alBottom
    BevelOuter = bvNone
    ClientHeight = 52
    ClientWidth = 1359
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 8
      Height = 30
      Top = 8
      Width = 100
      Caption = 'Dodaj'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000064000000640000000000000000000000000000000000
        00000000000000000000000000009F5A00FF9F5A00FF9F5A00FF9F5A00FF9F5A
        00FF9F5A00FFD3B4823D00000000000000000000000000000000000000000000
        00000000000000000000000000009F5A00FFB26203FFB26203FFB26203FFB262
        03FF9F5A00FFD3B3814200000000000000000000000000000000000000000000
        00000000000000000000000000009F5A00FFB96B09FFBB6B09FFB96B09FFB96B
        09FF9F5A00FFD2B4834000000000000000000000000000000000000000000000
        00000000000000000000000000009F5A00FFBD7011FFBE6F11FFBD7011FFBD70
        11FF9F5A00FFD3B5833500000000000000000000000000000000DCAA6238D191
        3649D2953A47CF8F2F46E0AE60469F5A00FFC47718FFC47718FFC27617FFC477
        18FF9F5A00FFCF9B4C73D3943744D2953A47D2943A47D3973B419F5A00FF9F5A
        00FF9F5A00FF9F5A00FF9F5A00FF9F5A00FFC87E1EFFC87E1EFFC87E1EFFC87E
        1EFF9F5A00FF9F5A00FF9F5A00FF9F5A00FF9F5A00FF9F5A00FF9F5A00FFC981
        24FFC98124FFC98124FFC98124FFC98124FFC98124FFC98124FFC98023FFC981
        24FFC98124FFC98124FFC98124FFC98124FFC98124FF9F5A00FF9F5A00FFD48D
        2CFFD8902FFFD1892BFFD1892BFFD1892BFFD0892BFFCE872AFFCE872AFFCE88
        2AFFD1892BFFD1892BFFD1892BFFD48D2CFFD48D2CFF9F5A00FF9F5A00FFDE9B
        39FFDE9B39FFD89434FFD89334FFD89435FFD69133FFD28E31FFD28E31FFD48F
        32FFD89435FFD89434FFD89334FFDC9736FFDE9B39FF9F5A00FF9F5A00FFD997
        39FFD99739FFD99739FFD99739FFD99739FFD99739FFD99739FFD99739FFD997
        39FFD99739FFD99739FFD99739FFD99739FFD99739FF9F5A00FF9F5A00FF9F5A
        00FF9F5A00FF9F5A00FF9F5A00FF9F5A00FFE2A243FFE2A243FFE1A042FFE2A2
        43FF9F5A00FF9F5A00FF9F5A00FF9F5A00FF9F5A00FF9F5A00FF000000000000
        00000000000000000000000000009F5A00FFE7A94DFFE7A94DFFE5A94BFFE7A9
        4DFF9F5A00FFEFE4D13900000000000000000000000000000000000000000000
        00000000000000000000000000009F5A00FFEBB054FFEDB355FFEBB054FFEBB0
        54FF9F5A00FFD4B5863F00000000000000000000000000000000000000000000
        00000000000000000000000000009F5A00FFF7C166FFFAC567FFF7C166FFF7C1
        66FF9F5A00FFD0AF7C4000000000000000000000000000000000000000000000
        00000000000000000000000000009F5A00FFFFD480FFFFD480FFFFD480FFFFD4
        80FF9F5A00FFD1AF7B4400000000000000000000000000000000000000000000
        00000000000000000000000000009F5A00FF9F5A00FF9F5A00FF9F5A00FF9F5A
        00FF9F5A00FFDBC2993300000000000000000000000000000000
      }
      OnClick = BitBtn1Click
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 112
      Height = 30
      Top = 8
      Width = 100
      Caption = 'Modyfikuj'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        200000000000000400006400000064000000000000000000000000000000A55F
        0045A55F00FFA55F00FFA55F0045000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000A55F0045A661
        02FFC38622FFC38522FFA66202FFA55F00450000000000000000000000000000
        0000000000000000000000000000000000000000000000000000A96404FFC489
        29FFCF9838FFD09838FFC48929FFA96404FFA55F004500000000000000000000
        0000000000000000000000000000000000000000000000000000A55F0045AC67
        06FFC68C30FFD39E42FFD39D42FFC68C31FFAC6706FFA55F0045000000000000
        000000000000000000000000000000000000000000000000000000000000A55F
        0045AF6B0AFFC89139FFD5A44FFFD5A34FFFC89139FFAF6B0AFFA55F00450000
        0000000000000000000000000000000000000000000000000000000000000000
        0000B26F0C45B26F0DFFCE9B46FFD8AA5BFFD8AA5CFFCE9A46FFB26F0CFFB26F
        0C45000000000000000000000000000000000000000000000000000000000000
        000000000000B26F0C45B57311FFD09F50FFDBB169FFDBB169FFD0A050FFB573
        11FFB57311FFB57310FFB57311FFB26F0C450000000000000000000000000000
        00000000000000000000B26F0C45B87714FFD3A55AFFDEB877FFDFB877FFDEB8
        77FFDFB977FFDFB977FFD2A45AFFB97814FFB26F0C4500000000000000000000
        0000000000000000000000000000B26F0C45BC7C18FFE2BF85FFE2C085FFE2C0
        85FFD8AD68FFD8AE68FFE2C085FFD8AD68FFBC7C18FFBC7C1845000000000000
        000000000000000000000000000000000000BF801BFFE5C693FFE5C793FFDAB3
        71FFBF801BFFBF801BFFDAB372FFE5C693FFDAB372FFBF801BFF000000000000
        000000000000000000000000000000000000C2841EFFE8CEA0FFDCB77BFFC384
        1EFFBC7C1845BC7C1845C3841EFFDCB77AFFE8CEA0FFC3851FFF000000000000
        000000000000000000000000000000000000C58821FFEBD4ABFFDEBC84FFC588
        21FFBC7C184500000000BC7C1845C68822FFDEBB83FFC68821FF000000000000
        000000000000000000000000000000000000C88B24FFE0C08BFFEED9B7FFE0C0
        8CFFC88B24FFBC7C184500000000BC7C1845C88C24FFBC7C1845000000000000
        000000000000000000000000000000000000BC7C1845CA8E27FFE2C392FFEFDD
        BFFFE1C392FFCA8D26FFBC7C1845000000000000000000000000000000000000
        00000000000000000000000000000000000000000000BC7C1845CC9028FFE3C6
        97FFF1E1C6FFE3C697FFCC9028FF000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000BC7C1845CC90
        28FFCC9028FFCC9028FFBC7C1845000000000000000000000000
      }
      OnClick = BitBtn2Click
      TabOrder = 1
    end
    object BitBtn3: TBitBtn
      Left = 232
      Height = 30
      Top = 8
      Width = 100
      Caption = 'Usuń'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000064000000640000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000001D25DAFF1D25
        DAFF1D25DAFF1D25DAFF1D25DAFF1D25DAFF1D25DAFF1D25DAFF1D25DAFF1D25
        DAFF1D25DAFF1D25DAFF1D25DAFF1D25DAFF1D25DAFF1D25DAFF1D25DAFF5A60
        E4FF5A60E4FF5A60E4FF5A60E4FF5A60E4FF5A60E4FF5A60E4FF5A60E4FF5A60
        E4FF5A60E4FF5A60E4FF5A60E4FF5A60E4FF5A60E4FF1D25DAFF1D25DAFF767B
        E8FF767BE8FF767BE8FF767BE8FF767BE8FF767BE8FF767BE8FF767BE8FF767B
        E8FF767BE8FF767BE8FF767BE8FF767BE8FF767BE8FF1D25DAFF1D25DAFF979B
        EEFF979BEEFF979BEEFF979BEEFF979BEEFF979BEEFF979BEEFF979BEEFF979B
        EEFF979BEEFF979BEEFF979BEEFF979BEEFF979BEEFF1D25DAFF1D25DAFFB8BA
        F3FFB8BAF3FFB8BAF3FFB8BAF3FFB8BAF3FFB8BAF3FFB8BAF3FFB8BAF3FFB8BA
        F3FFB8BAF3FFB8BAF3FFB8BAF3FFB8BAF3FFB8BAF3FF1D25DAFF1D25DAFF1D25
        DAFF1D25DAFF1D25DAFF1D25DAFF1D25DAFF1D25DAFF1D25DAFF1D25DAFF1D25
        DAFF1D25DAFF1D25DAFF1D25DAFF1D25DAFF1D25DAFF1D25DAFF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000
      }
      OnClick = BitBtn3Click
      TabOrder = 2
    end
    object BitBtn4: TBitBtn
      AnchorSideLeft.Control = BitBtn3
      AnchorSideLeft.Side = asrBottom
      Left = 1253
      Height = 30
      Top = 8
      Width = 100
      Anchors = [akTop, akRight]
      BorderSpacing.Left = 186
      DefaultCaption = True
      Kind = bkClose
      ModalResult = 11
      TabOrder = 3
    end
    object btnDodajDoKoszyka: TSpeedButton
      Left = 360
      Height = 25
      Hint = 'Dodaj osadzonego do koszyka.'
      Top = 13
      Width = 31
      Flat = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000064000000640000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000001E0000003300000033000000330000001E000000008C898700908D
        8B000000001A00000033000000330000001A908D8B008E8888009A858A000000
        001D008D54AC009E5EFF009D5DFF009E5EFF008C55AC0000001E8B8886000000
        00334542439A514F4FFF514F4FFF44424399000000330000003300000033008C
        51A600A669FF00BA86FF77DFC4FF00BA86FF00A66AFF008C55AC868381008A87
        85FF5D5B5AFF8A8887FF8A8887FF5D5B5AFF8A8785FF898382FF968185FF009F
        59FF00C08BFF00BB82FFFFFFFFFF00BB82FF00C08CFF009E5EFFC4C2C000C9C7
        C5FF6C6968FFCCCAC9FFCCCAC9FF6D6968FFC9C8C5FFC8C3C2FFD6C2C7FF009B
        55FF74E5CBFFFFFFFFFFFFFFFFFFFFFFFFFF77E5CCFF009C5CFFC0BEBC00C5C3
        C1007C79777F817E7DFF817E7DFF7D7A787CC8C6C400C7C2C100D5C2C500009B
        55FF00CC96FF00C88FFFFFFFFFFF00C88FFF00CC98FF009D5DFFC0BEBC00C5C4
        C200000000220000003300000033000000330000003300000033000000330084
        479900AE6EFF00D39CFF74EDD3FF00D39DFF00AE72FF009F6097BEBCBA000000
        002172706EBA9B9896FF919292FF909191FF8F9090FF8F8F8FFF948F91FF9F8D
        94FF379470FF009851FF009851FF009B57FF009F5E9000A16100000000228B89
        87B9A8A7A5FFF0EFEEFFB7B6B5FFEDECEBFFB6B5B3FFEDECEBFFB7B4B4FFF1EB
        ECFFBFB3B6FFFAE9EEFFEFDCE2FFAE9298FF00A15A0000A25D00ADAAA8BDB9B7
        B4FFEAE9E8FFB0B1B0FFE2E1E0FFADACABFFE2E1E0FFADACABFFE2E1E0FFADAC
        ABFFE3E1E0FFAEABABFFE3DFDEFF9C9292FFA7969900AC979B00A19D9BFFE7E6
        E4FFADACABFFDCDAD8FFA8A6A5FFDCDAD8FFA8A6A5FFDCDAD8FFA8A6A5FFDCDA
        D8FFA8A6A5FFDBD9D7FFE2E1E0FF969290FFA0989400A69A9400A4A2A0FFF3F3
        F2FFD1CFCDFF9F9E9CFFD4D1CFFF9F9F9CFFD4D1CFFF9F9F9CFFD4D1CFFF9F9F
        9CFFD3D1CFFF9E9E9BFFE6E3E2FF99928EFFA79A90002476C000AAA6A4FFFAF9
        F8FFF7F7F6FFF8F7F6FFF8F7F6FFF8F7F7FFF8F7F6FFF8F7F7FFF8F7F6FFF8F7
        F6FFF7F6F6FFF7F6F5FFE9E6E3FF9F938AFF0000003300000033AEACAAB0ADAB
        A8FFABA9A7FFABA9A7FFABA9A7FFABA9A7FFABA9A7FFABA9A7FFABA9A7FFABA9
        A7FFA9A7A5FFD4D2D1FFF3EDE8FF4685B7FF327BBAFF3179B9FFB0AEAC00B0AE
        AC00B0AEAC00B0AEAC00B0AEAC00B0AEAC00B0AEAC00B0AEAC00B0AEAC00AFAD
        AB00AEACAA00BEBBB8FFE7DED8FF2E7ABBFF71E2FFFF3177B8FFB0AEAC00B1AF
        AD00B1AFAD00B1AFAD00B1AFAD00B1AFAD00B1AFAD00B1AFAD00B1AFAD00B1AF
        AD00AFADAB00C1BEBA00C9C0B8FF3D83BDFF357BBAFF327AB8EF
      }
      OnClick = btnDodajDoKoszykaClick
      ShowHint = True
      ParentShowHint = False
    end
  end
  object ZQZatrudnieni: TZQuery
    Connection = DM.ZConnection1
    UpdateObject = ZUZatrudnieni
    SQL.Strings = (
      'SELECT '
      'zat.id, '
      'zat.ido, '
      'zat.id_stanowiska, '
      'zat.Nazwisko, '
      'zat.Imie, '
      'zat.Ojciec, '
      'zat.Urodzony, '
      'zat.Przyjety, '
      'os.Klasyf,'
      'zat.Klasyf as zat_Klasyf, '
      'os.POC, '
      'zat.POC as zat_POC,'
      'zat.nr_ewidencyjny,'
      'zat.status_zatrudnienia, '
      'zat.data_dodania, '
      'zat.data_modyfikacji,'
      'zat.urlop_od,'
      'zat.urlop_do,'
      'zat.data_nastepnego_urlopu,'
      'zat.user_dodania, '
      'zat.user_modyfikacji,'
      'zat.zat_od, '
      'zat.zat_do, '
      'zat.powod_wycofania,'
      'zat.etat, '
      'zat.rodzaj_zatrudnienia,'
      'zat.zobowiazania, '
      'zat.alimety, '
      'zat.nr_dowodu, '
      'zat.pesel, '
      'zat.podkultura, '
      'zat.karalnosc, '
      'zat.art, '
      'zat.wyksztalcenie, '
      'zat.zawod, '
      'zat.zawod_potwierdzony, '
      'zat.data_badania, '
      'zat.data_nastepnego_badania,'
      'zat.data_nastepnego_BHP,'
      'zat.koniec_kary, '
      'zat.adres, '
      'zat.kod_pocztowy, '
      'zat.miejsce_urodzenia, '
      'zat.Notatki,'
      'zat.pobyt,'
      'IF( (os.ido is NULL) OR ( os.POC = ''ubył''), "Uprzedni", "Aktualny")as new_pobyt,'
      'sta.nazwa,'
      'sta.miejsce,'
      'sta.stanowisko, '
      'sta.system, '
      'sta.forma, '
      'sta.godz_wyjscia,'
      'sta.godz_powrotu,'
      'sta.opis, '
      'sta.stan'
      'FROM zat_zatrudnieni as zat'
      'LEFT OUTER JOIN osadzeni as os '
      'ON zat.ido = os.ido'
      'LEFT OUTER JOIN zat_stanowiska as sta'
      'ON zat.id_stanowiska = sta.id'
      ''
    )
    Params = <>
    Left = 57
    Top = 163
    object ZQZatrudnieniid: TLargeintField
      FieldKind = fkData
      FieldName = 'id'
      Index = 0
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = True
    end
    object ZQZatrudnieniido: TLargeintField
      FieldKind = fkData
      FieldName = 'ido'
      Index = 1
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = True
    end
    object ZQZatrudnieniid_stanowiska: TLargeintField
      FieldKind = fkData
      FieldName = 'id_stanowiska'
      Index = 2
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = True
    end
    object ZQZatrudnieniNazwisko: TStringField
      FieldKind = fkData
      FieldName = 'Nazwisko'
      Index = 3
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = True
      Size = 180
    end
    object ZQZatrudnieniImie: TStringField
      FieldKind = fkData
      FieldName = 'Imie'
      Index = 4
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = True
      Size = 180
    end
    object ZQZatrudnieniOjciec: TStringField
      FieldKind = fkData
      FieldName = 'Ojciec'
      Index = 5
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
      Size = 180
    end
    object ZQZatrudnieniUrodzony: TDateField
      FieldKind = fkData
      FieldName = 'Urodzony'
      Index = 6
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
    end
    object ZQZatrudnieniPrzyjety: TDateField
      FieldKind = fkData
      FieldName = 'Przyjety'
      Index = 7
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
    end
    object ZQZatrudnieniKlasyf: TStringField
      FieldKind = fkData
      FieldName = 'Klasyf'
      Index = 8
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
      Size = 40
    end
    object ZQZatrudnieniPOC: TStringField
      FieldKind = fkData
      FieldName = 'POC'
      Index = 9
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
      Size = 40
    end
    object ZQZatrudnienistatus_zatrudnienia: TStringField
      FieldKind = fkData
      FieldName = 'status_zatrudnienia'
      Index = 10
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = True
      Size = 200
    end
    object ZQZatrudnienidata_dodania: TDateTimeField
      FieldKind = fkData
      FieldName = 'data_dodania'
      Index = 11
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = True
    end
    object ZQZatrudnienizat_od: TDateField
      FieldKind = fkData
      FieldName = 'zat_od'
      Index = 12
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
    end
    object ZQZatrudnienizat_do: TDateField
      FieldKind = fkData
      FieldName = 'zat_do'
      Index = 13
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
    end
    object ZQZatrudnienietat: TStringField
      FieldKind = fkData
      FieldName = 'etat'
      Index = 14
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = True
      Size = 80
    end
    object ZQZatrudnienizobowiazania: TSmallintField
      FieldKind = fkData
      FieldName = 'zobowiazania'
      Index = 15
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = True
    end
    object ZQZatrudnienialimety: TSmallintField
      FieldKind = fkData
      FieldName = 'alimety'
      Index = 16
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = True
    end
    object ZQZatrudnieninr_dowodu: TStringField
      FieldKind = fkData
      FieldName = 'nr_dowodu'
      Index = 17
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = True
      Size = 36
    end
    object ZQZatrudnienipesel: TStringField
      FieldKind = fkData
      FieldName = 'pesel'
      Index = 18
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = True
      Size = 44
    end
    object ZQZatrudnienipodkultura: TSmallintField
      FieldKind = fkData
      FieldName = 'podkultura'
      Index = 19
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
    end
    object ZQZatrudnienikaralnosc: TLongintField
      FieldKind = fkData
      FieldName = 'karalnosc'
      Index = 20
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
    end
    object ZQZatrudnieniart: TStringField
      FieldKind = fkData
      FieldName = 'art'
      Index = 21
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = True
      Size = 400
    end
    object ZQZatrudnieniwyksztalcenie: TStringField
      FieldKind = fkData
      FieldName = 'wyksztalcenie'
      Index = 22
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = True
      Size = 200
    end
    object ZQZatrudnienizawod: TStringField
      FieldKind = fkData
      FieldName = 'zawod'
      Index = 23
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = True
      Size = 200
    end
    object ZQZatrudnienizawod_potwierdzony: TSmallintField
      FieldKind = fkData
      FieldName = 'zawod_potwierdzony'
      Index = 24
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = True
    end
    object ZQZatrudnienidata_badania: TDateField
      FieldKind = fkData
      FieldName = 'data_badania'
      Index = 25
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
    end
    object ZQZatrudnienidata_nastepnego_badania: TDateField
      FieldKind = fkData
      FieldName = 'data_nastepnego_badania'
      Index = 26
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
    end
    object ZQZatrudnienikoniec_kary: TDateField
      FieldKind = fkData
      FieldName = 'koniec_kary'
      Index = 27
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
    end
    object ZQZatrudnieniadres: TStringField
      FieldKind = fkData
      FieldName = 'adres'
      Index = 28
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = True
      Size = 400
    end
    object ZQZatrudnienikod_pocztowy: TStringField
      FieldKind = fkData
      FieldName = 'kod_pocztowy'
      Index = 29
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = True
      Size = 24
    end
    object ZQZatrudnienimiejsce_urodzenia: TStringField
      FieldKind = fkData
      FieldName = 'miejsce_urodzenia'
      Index = 30
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = True
      Size = 200
    end
    object ZQZatrudnieninazwa: TStringField
      FieldKind = fkData
      FieldName = 'nazwa'
      Index = 31
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = True
      Size = 400
    end
    object ZQZatrudnienimiejsce: TStringField
      FieldKind = fkData
      FieldName = 'miejsce'
      Index = 32
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = True
      Size = 400
    end
    object ZQZatrudnienistanowisko: TStringField
      FieldKind = fkData
      FieldName = 'stanowisko'
      Index = 33
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = True
      Size = 400
    end
    object ZQZatrudnienisystem: TStringField
      FieldKind = fkData
      FieldName = 'system'
      Index = 34
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = True
      Size = 400
    end
    object ZQZatrudnieniforma: TStringField
      FieldKind = fkData
      FieldName = 'forma'
      Index = 35
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = True
      Size = 80
    end
    object ZQZatrudnieniopis: TStringField
      FieldKind = fkData
      FieldName = 'opis'
      Index = 36
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = True
      Size = 800
    end
    object ZQZatrudnienistan: TStringField
      FieldKind = fkData
      FieldName = 'stan'
      Index = 37
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = True
      OnGetText = ZQZatrudnienistanGetText
      Size = 4
    end
    object ZQZatrudnienidata_modyfikacji: TDateTimeField
      FieldKind = fkData
      FieldName = 'data_modyfikacji'
      Index = 38
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
    end
    object ZQZatrudnieniNotatki: TStringField
      DisplayWidth = 500
      FieldKind = fkData
      FieldName = 'Notatki'
      Index = 39
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
      Size = 2000
    end
    object ZQZatrudnieniuser_dodania: TStringField
      FieldKind = fkData
      FieldName = 'user_dodania'
      Index = 40
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
      Size = 200
    end
    object ZQZatrudnieniuser_modyfikacji: TStringField
      FieldKind = fkData
      FieldName = 'user_modyfikacji'
      Index = 41
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = True
      Required = False
      Size = 200
    end
    object ZQZatrudnieniurlop_od: TDateField
      FieldKind = fkData
      FieldName = 'urlop_od'
      Index = 42
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
    end
    object ZQZatrudnieniurlop_do: TDateField
      FieldKind = fkData
      FieldName = 'urlop_do'
      Index = 43
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
    end
    object ZQZatrudnienipobyt: TStringField
      FieldKind = fkData
      FieldName = 'pobyt'
      Index = 44
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = True
      Required = False
      Size = 32
    end
    object ZQZatrudnienizat_Klasyf: TStringField
      FieldKind = fkData
      FieldName = 'zat_Klasyf'
      Index = 45
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
      Size = 40
    end
    object ZQZatrudnienizat_POC: TStringField
      FieldKind = fkData
      FieldName = 'zat_POC'
      Index = 46
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
      Size = 40
    end
    object ZQZatrudnieninew_pobyt: TStringField
      FieldKind = fkData
      FieldName = 'new_pobyt'
      Index = 47
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = True
      Required = False
      Size = 32
    end
    object ZQZatrudnieninr_ewidencyjny: TStringField
      FieldKind = fkData
      FieldName = 'nr_ewidencyjny'
      Index = 48
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = True
      Required = False
      Size = 40
    end
    object ZQZatrudnienipowod_wycofania: TStringField
      FieldKind = fkData
      FieldName = 'powod_wycofania'
      Index = 49
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
      Size = 400
    end
    object ZQZatrudnienirodzaj_zatrudnienia: TStringField
      FieldKind = fkData
      FieldName = 'rodzaj_zatrudnienia'
      Index = 50
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = True
      Required = False
      Size = 10
    end
    object ZQZatrudnienigodz_wyjscia: TStringField
      FieldKind = fkData
      FieldName = 'godz_wyjscia'
      Index = 51
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = True
      Required = False
    end
    object ZQZatrudnienigodz_powrotu: TStringField
      FieldKind = fkData
      FieldName = 'godz_powrotu'
      Index = 52
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = True
      Required = False
    end
    object ZQZatrudnienidata_nastepnego_BHP: TDateField
      FieldKind = fkData
      FieldName = 'data_nastepnego_BHP'
      Index = 53
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
    end
    object ZQZatrudnienidata_nastepnego_urlopu: TDateField
      FieldKind = fkData
      FieldName = 'data_nastepnego_urlopu'
      Index = 54
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = True
      Required = False
    end
  end
  object DSZatrudnieni: TDataSource
    DataSet = ZQZatrudnieni
    Left = 57
    Top = 226
  end
  object ZUZatrudnieni: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM zat_zatrudnieni'
      'WHERE'
      '  zat_zatrudnieni.id = :OLD_id'
    )
    ModifySQL.Strings = (
      'UPDATE zat_zatrudnieni SET'
      '  Notatki = :Notatki'
      'WHERE'
      '  zat_zatrudnieni.id = :OLD_id'
    )
    RefreshSQL.Strings = (
      'SELECT * FROM zat_zatrudnieni WHERE id=:OLD_id'
    )
    UseSequenceFieldForRefreshSQL = False
    Left = 176
    Top = 163
    ParamData = <    
      item
        DataType = ftUnknown
        Name = 'Notatki'
        ParamType = ptUnknown
      end    
      item
        DataType = ftUnknown
        Name = 'OLD_id'
        ParamType = ptUnknown
      end>
  end
  object frReport1: TfrReport
    Dataset = frDBDataSet1
    InitialZoom = pzDefault
    Options = [roSaveAndRestoreBookmarks]
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    DataType = dtDataSet
    Left = 530
    Top = 178
  end
  object frDBDataSet1: TfrDBDataSet
    DataSet = ZQZatrudnieni
    Left = 600
    Top = 178
  end
  object PopupMenu1: TPopupMenu
    Left = 472
    Top = 336
    object MenuItemDodaj: TMenuItem
      Caption = 'Dodaj ...'
      Bitmap.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000064000000640000000000000000000000000000000000
        00000000000000000000000000009F5A00FF9F5A00FF9F5A00FF9F5A00FF9F5A
        00FF9F5A00FFD3B4823D00000000000000000000000000000000000000000000
        00000000000000000000000000009F5A00FFB26203FFB26203FFB26203FFB262
        03FF9F5A00FFD3B3814200000000000000000000000000000000000000000000
        00000000000000000000000000009F5A00FFB96B09FFBB6B09FFB96B09FFB96B
        09FF9F5A00FFD2B4834000000000000000000000000000000000000000000000
        00000000000000000000000000009F5A00FFBD7011FFBE6F11FFBD7011FFBD70
        11FF9F5A00FFD3B5833500000000000000000000000000000000DCAA6238D191
        3649D2953A47CF8F2F46E0AE60469F5A00FFC47718FFC47718FFC27617FFC477
        18FF9F5A00FFCF9B4C73D3943744D2953A47D2943A47D3973B419F5A00FF9F5A
        00FF9F5A00FF9F5A00FF9F5A00FF9F5A00FFC87E1EFFC87E1EFFC87E1EFFC87E
        1EFF9F5A00FF9F5A00FF9F5A00FF9F5A00FF9F5A00FF9F5A00FF9F5A00FFC981
        24FFC98124FFC98124FFC98124FFC98124FFC98124FFC98124FFC98023FFC981
        24FFC98124FFC98124FFC98124FFC98124FFC98124FF9F5A00FF9F5A00FFD48D
        2CFFD8902FFFD1892BFFD1892BFFD1892BFFD0892BFFCE872AFFCE872AFFCE88
        2AFFD1892BFFD1892BFFD1892BFFD48D2CFFD48D2CFF9F5A00FF9F5A00FFDE9B
        39FFDE9B39FFD89434FFD89334FFD89435FFD69133FFD28E31FFD28E31FFD48F
        32FFD89435FFD89434FFD89334FFDC9736FFDE9B39FF9F5A00FF9F5A00FFD997
        39FFD99739FFD99739FFD99739FFD99739FFD99739FFD99739FFD99739FFD997
        39FFD99739FFD99739FFD99739FFD99739FFD99739FF9F5A00FF9F5A00FF9F5A
        00FF9F5A00FF9F5A00FF9F5A00FF9F5A00FFE2A243FFE2A243FFE1A042FFE2A2
        43FF9F5A00FF9F5A00FF9F5A00FF9F5A00FF9F5A00FF9F5A00FF000000000000
        00000000000000000000000000009F5A00FFE7A94DFFE7A94DFFE5A94BFFE7A9
        4DFF9F5A00FFEFE4D13900000000000000000000000000000000000000000000
        00000000000000000000000000009F5A00FFEBB054FFEDB355FFEBB054FFEBB0
        54FF9F5A00FFD4B5863F00000000000000000000000000000000000000000000
        00000000000000000000000000009F5A00FFF7C166FFFAC567FFF7C166FFF7C1
        66FF9F5A00FFD0AF7C4000000000000000000000000000000000000000000000
        00000000000000000000000000009F5A00FFFFD480FFFFD480FFFFD480FFFFD4
        80FF9F5A00FFD1AF7B4400000000000000000000000000000000000000000000
        00000000000000000000000000009F5A00FF9F5A00FF9F5A00FF9F5A00FF9F5A
        00FF9F5A00FFDBC2993300000000000000000000000000000000
      }
      OnClick = BitBtn1Click
    end
    object MenuItemModyfikuj: TMenuItem
      Caption = 'Modyfikuj ...'
      Bitmap.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        200000000000000400006400000064000000000000000000000000000000A55F
        0045A55F00FFA55F00FFA55F0045000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000A55F0045A661
        02FFC38622FFC38522FFA66202FFA55F00450000000000000000000000000000
        0000000000000000000000000000000000000000000000000000A96404FFC489
        29FFCF9838FFD09838FFC48929FFA96404FFA55F004500000000000000000000
        0000000000000000000000000000000000000000000000000000A55F0045AC67
        06FFC68C30FFD39E42FFD39D42FFC68C31FFAC6706FFA55F0045000000000000
        000000000000000000000000000000000000000000000000000000000000A55F
        0045AF6B0AFFC89139FFD5A44FFFD5A34FFFC89139FFAF6B0AFFA55F00450000
        0000000000000000000000000000000000000000000000000000000000000000
        0000B26F0C45B26F0DFFCE9B46FFD8AA5BFFD8AA5CFFCE9A46FFB26F0CFFB26F
        0C45000000000000000000000000000000000000000000000000000000000000
        000000000000B26F0C45B57311FFD09F50FFDBB169FFDBB169FFD0A050FFB573
        11FFB57311FFB57310FFB57311FFB26F0C450000000000000000000000000000
        00000000000000000000B26F0C45B87714FFD3A55AFFDEB877FFDFB877FFDEB8
        77FFDFB977FFDFB977FFD2A45AFFB97814FFB26F0C4500000000000000000000
        0000000000000000000000000000B26F0C45BC7C18FFE2BF85FFE2C085FFE2C0
        85FFD8AD68FFD8AE68FFE2C085FFD8AD68FFBC7C18FFBC7C1845000000000000
        000000000000000000000000000000000000BF801BFFE5C693FFE5C793FFDAB3
        71FFBF801BFFBF801BFFDAB372FFE5C693FFDAB372FFBF801BFF000000000000
        000000000000000000000000000000000000C2841EFFE8CEA0FFDCB77BFFC384
        1EFFBC7C1845BC7C1845C3841EFFDCB77AFFE8CEA0FFC3851FFF000000000000
        000000000000000000000000000000000000C58821FFEBD4ABFFDEBC84FFC588
        21FFBC7C184500000000BC7C1845C68822FFDEBB83FFC68821FF000000000000
        000000000000000000000000000000000000C88B24FFE0C08BFFEED9B7FFE0C0
        8CFFC88B24FFBC7C184500000000BC7C1845C88C24FFBC7C1845000000000000
        000000000000000000000000000000000000BC7C1845CA8E27FFE2C392FFEFDD
        BFFFE1C392FFCA8D26FFBC7C1845000000000000000000000000000000000000
        00000000000000000000000000000000000000000000BC7C1845CC9028FFE3C6
        97FFF1E1C6FFE3C697FFCC9028FF000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000BC7C1845CC90
        28FFCC9028FFCC9028FFBC7C1845000000000000000000000000
      }
      OnClick = BitBtn2Click
    end
    object MenuItemUsun: TMenuItem
      Caption = 'Usuń ...'
      Bitmap.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000064000000640000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000001D25DAFF1D25
        DAFF1D25DAFF1D25DAFF1D25DAFF1D25DAFF1D25DAFF1D25DAFF1D25DAFF1D25
        DAFF1D25DAFF1D25DAFF1D25DAFF1D25DAFF1D25DAFF1D25DAFF1D25DAFF5A60
        E4FF5A60E4FF5A60E4FF5A60E4FF5A60E4FF5A60E4FF5A60E4FF5A60E4FF5A60
        E4FF5A60E4FF5A60E4FF5A60E4FF5A60E4FF5A60E4FF1D25DAFF1D25DAFF767B
        E8FF767BE8FF767BE8FF767BE8FF767BE8FF767BE8FF767BE8FF767BE8FF767B
        E8FF767BE8FF767BE8FF767BE8FF767BE8FF767BE8FF1D25DAFF1D25DAFF979B
        EEFF979BEEFF979BEEFF979BEEFF979BEEFF979BEEFF979BEEFF979BEEFF979B
        EEFF979BEEFF979BEEFF979BEEFF979BEEFF979BEEFF1D25DAFF1D25DAFFB8BA
        F3FFB8BAF3FFB8BAF3FFB8BAF3FFB8BAF3FFB8BAF3FFB8BAF3FFB8BAF3FFB8BA
        F3FFB8BAF3FFB8BAF3FFB8BAF3FFB8BAF3FFB8BAF3FF1D25DAFF1D25DAFF1D25
        DAFF1D25DAFF1D25DAFF1D25DAFF1D25DAFF1D25DAFF1D25DAFF1D25DAFF1D25
        DAFF1D25DAFF1D25DAFF1D25DAFF1D25DAFF1D25DAFF1D25DAFF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000
      }
      OnClick = BitBtn3Click
    end
    object MenuItem2: TMenuItem
      Caption = '-'
    end
    object MenuItemDoSchowka: TMenuItem
      Caption = 'Kopiuj do schowka osadzonego'
      Bitmap.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000064000000640000000000000000000000000000000000
        00000000000000000000000000000000000079480AFD99753DFF936E36FF936E
        36FF936E36FF956E37FF936E37FF936E37FF9B783FFF653300FF000000000000
        000000000000000000000000000000000000C3AF8FFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA98953FF000000000000
        000000000000000000000000000000000000C3AF8FFFFFFFFFFFEFEBE1FFF1EC
        E4FFF1ECE8FFF1EDE2FFEEEADDFFEDE8DFFFFFFFFFFF9A753DFF000000000000
        000000000000000000000000000000000000C6B290FFFFFFFFFFF2EFE7FFF3F0
        EAFFF3F0EAFFF3F0EAFFF7F1EDFFF3F1EAFFFFFFFFFF9A753DFF8E6529FDB698
        70FFB09267FFB09267FFB09369FFA68252FFC1AC8AFFFFFFFFFFF2EFE7FFF3F0
        EAFFF3F2EBFFF6F2ECFFFAF3F1FFF9F2EDFFFFFFFFFF9A753DFFCBB899FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFBAA27BFFFFFFFFFFF2EEE6FFF2ED
        E8FFF6EFECFFF9F8F1FFFBFBF6FFF5EFE9FFFFFFFFFF9C7742FFC4AF8EFFFFFF
        FFFFEFEAE3FFF1ECE7FFF2F0E9FFEDEADDFFBFA984FFFFFFFFFFF6F3EAFFFAF7
        F3FFF9F8F8FFF9FBFAFFF7F5F2FFEBE3D9FFF6F6F4FF9A733AFFC4AF8CFFFFFF
        FFFFF2EDE7FFF3F0EAFFF3F2ECFFF3EDE7FFC2AD8FFFFFFFFFFFF8FAF5FFF9F9
        FBFFFBFBFDFFF8F7F1FFEEEDE6FFE4DBD3FFE8DFD4FF926C2FFFC4AF8CFFFFFF
        FFFFF2EDE7FFF3F0E8FFF7F3EDFFF6F1EBFFC7B292FFFFFFFFFFF8F8F8FFF9FB
        FBFFF9FAF3FFF1EEE3FFDED2C3FFC7B095FFC9B493FF8C6324FFC2AD8AFFFFFF
        FFFFF3EBE6FFF6F0EBFFF9F4F3FFFAF9F1FFC8B599FFFFFFFFFFF8FAFBFFF9FA
        F6FFF2ECE2FFE4D9CAFFD0BFA7FFECE3DCFFB5966BFF815309FFC7B699EFFFFF
        FFFFF7F7EEFFFBF9F9FFFBFBFDFFF6F6F2FFC9B99DFFFFFFFFFFFAFAF7FFF2ED
        E5FFE3D9D0FFD1BDA2FFC5AE90FFEAE6E1FFB89E73FF00000000CAB99CEFFFFF
        FFFFF8F8F7FFF9F9FFFFFCFDFCFFEFEBDFFFC9B798FFFFFFFFFFF9F8F6FFEAE0
        D5FFD6CBB5FFC7AF8BFF9B783AFF9F7F4CFF0000000000000000CEBEA2EFFFFF
        FFFFF8F8FAFFFAFAF7FFFBFAF3FFC9B499FFC5B090FFC0A584FFC0A584FFC0A5
        84FFB79B70FFA78954FF8A6220FF000000000000000000000000D1BFA6FFFFFF
        FFFFF9FBF9FFF2EEEAFFEBE3DAFFCAB598FFF1EAE5FFB6996CFF9C773BFF0000
        0000000000000000000000000000000000000000000000000000D4C9B3FFFFFF
        FFFFFCFAF5FFEDE6DCFFDCD0C1FFC0A780FFA98C59FF926929FF000000000000
        0000000000000000000000000000000000000000000000000000C6B293FFE9E2
        D7F4D6C6B3FFC9BA9CFFBCA37CFFA3854EFA926C2BFF00000000000000000000
        0000000000000000000000000000000000000000000000000000
      }
      OnClick = lblDoSchowka_OsadzonyClick
    end
    object MenuItem1: TMenuItem
      Caption = 'Kopiuj do schowka wszystkich'
      Bitmap.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000064000000640000000000000000000000000000000000
        00000000000000000000000000000000000079480AFD99753DFF936E36FF936E
        36FF936E36FF956E37FF936E37FF936E37FF9B783FFF653300FF000000000000
        000000000000000000000000000000000000C3AF8FFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA98953FF000000000000
        000000000000000000000000000000000000C3AF8FFFFFFFFFFFEFEBE1FFF1EC
        E4FFF1ECE8FFF1EDE2FFEEEADDFFEDE8DFFFFFFFFFFF9A753DFF000000000000
        000000000000000000000000000000000000C6B290FFFFFFFFFFF2EFE7FFF3F0
        EAFFF3F0EAFFF3F0EAFFF7F1EDFFF3F1EAFFFFFFFFFF9A753DFF8E6529FDB698
        70FFB09267FFB09267FFB09369FFA68252FFC1AC8AFFFFFFFFFFF2EFE7FFF3F0
        EAFFF3F2EBFFF6F2ECFFFAF3F1FFF9F2EDFFFFFFFFFF9A753DFFCBB899FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFBAA27BFFFFFFFFFFF2EEE6FFF2ED
        E8FFF6EFECFFF9F8F1FFFBFBF6FFF5EFE9FFFFFFFFFF9C7742FFC4AF8EFFFFFF
        FFFFEFEAE3FFF1ECE7FFF2F0E9FFEDEADDFFBFA984FFFFFFFFFFF6F3EAFFFAF7
        F3FFF9F8F8FFF9FBFAFFF7F5F2FFEBE3D9FFF6F6F4FF9A733AFFC4AF8CFFFFFF
        FFFFF2EDE7FFF3F0EAFFF3F2ECFFF3EDE7FFC2AD8FFFFFFFFFFFF8FAF5FFF9F9
        FBFFFBFBFDFFF8F7F1FFEEEDE6FFE4DBD3FFE8DFD4FF926C2FFFC4AF8CFFFFFF
        FFFFF2EDE7FFF3F0E8FFF7F3EDFFF6F1EBFFC7B292FFFFFFFFFFF8F8F8FFF9FB
        FBFFF9FAF3FFF1EEE3FFDED2C3FFC7B095FFC9B493FF8C6324FFC2AD8AFFFFFF
        FFFFF3EBE6FFF6F0EBFFF9F4F3FFFAF9F1FFC8B599FFFFFFFFFFF8FAFBFFF9FA
        F6FFF2ECE2FFE4D9CAFFD0BFA7FFECE3DCFFB5966BFF815309FFC7B699EFFFFF
        FFFFF7F7EEFFFBF9F9FFFBFBFDFFF6F6F2FFC9B99DFFFFFFFFFFFAFAF7FFF2ED
        E5FFE3D9D0FFD1BDA2FFC5AE90FFEAE6E1FFB89E73FF00000000CAB99CEFFFFF
        FFFFF8F8F7FFF9F9FFFFFCFDFCFFEFEBDFFFC9B798FFFFFFFFFFF9F8F6FFEAE0
        D5FFD6CBB5FFC7AF8BFF9B783AFF9F7F4CFF0000000000000000CEBEA2EFFFFF
        FFFFF8F8FAFFFAFAF7FFFBFAF3FFC9B499FFC5B090FFC0A584FFC0A584FFC0A5
        84FFB79B70FFA78954FF8A6220FF000000000000000000000000D1BFA6FFFFFF
        FFFFF9FBF9FFF2EEEAFFEBE3DAFFCAB598FFF1EAE5FFB6996CFF9C773BFF0000
        0000000000000000000000000000000000000000000000000000D4C9B3FFFFFF
        FFFFFCFAF5FFEDE6DCFFDCD0C1FFC0A780FFA98C59FF926929FF000000000000
        0000000000000000000000000000000000000000000000000000C6B293FFE9E2
        D7F4D6C6B3FFC9BA9CFFBCA37CFFA3854EFA926C2BFF00000000000000000000
        0000000000000000000000000000000000000000000000000000
      }
      OnClick = lblDoSchowka_OsadzeniClick
    end
    object MenuItem4: TMenuItem
      Caption = '-'
    end
    object MenuItem3: TMenuItem
      Caption = 'Wydruki'
      Bitmap.Data = {
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
      object MenuItem5: TMenuItem
        Caption = 'Okładka akt'
        OnClick = lblAktaZatrudnienioweClick
      end
      object MenuItem6: TMenuItem
        Caption = 'Rejestr zatrudnienia '
        OnClick = lblAktaRejestrClick
      end
      object MenuItem7: TMenuItem
        Caption = 'Zaświadczenie o wykonywaniu pracy'
        OnClick = lblZatZaswiadczenieClick
      end
      object MenuItem8: TMenuItem
        Caption = 'Oświadczenie'
        OnClick = lblOswiadczenieNieodplatnaClick
      end
      object MenuItem9: TMenuItem
        Caption = 'Dane osadzonego dla kontrahenta'
        OnClick = lblDaneOsadzonegoClick
      end
      object MenuItem10: TMenuItem
        Caption = 'Wyciąg z decyzji w sprawie stawki'
        OnClick = lblStawkaClick
      end
      object MenuItem11: TMenuItem
        Caption = 'Wniosek urlopowy'
        OnClick = lblWniosekUrlopowyClick
      end
      object MenuItem12: TMenuItem
        Caption = 'Karta Pracy'
        OnClick = lblKartaPracyClick
      end
      object MenuItem14: TMenuItem
        Caption = 'Skierowanie do lekarza'
        OnClick = lblSkierowanieNaBadaniaClick
      end
    end
    object MenuItem13: TMenuItem
      Caption = 'Wydruk wszystkich widocznych'
      Bitmap.Data = {
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
      OnClick = lblDruk_OsadzeniAllClick
    end
  end
  object ImageList1: TImageList
    Left = 180
    Top = 369
    Bitmap = {
      4C69040000001000000010000000000000000000000000000000000000000000
      0000000000000B7B005366BC6BFF78C987FA2E92259D00000000000000000000
      0000000000000000000000000000000000000000000000000000000000001E88
      11744AA643C284CA8DF4A0EDD2FF8FF0D3FF5BC47AFF329C32C81E850D890000
      000000000000000000000000000000000000000000001986110139982FC7A0DF
      B5FFABF6E4FF86E7BFFF76DBAAFF7DDDB0FF84E4B9FF98F4DAFF6FD397FF288F
      1ED32186140300000000000000000000000000000000248C1960A0E0B7FF98F0
      D7FF58C47AFF27911CE089D9AAFF8EE9C5FF359E35FA61C47CFFA0FAE4FF74D8
      9EFF22891450000000000000000000000000000000004DA347B4A2EDCDFF81E0
      B2FF2D9529A50000000079D69DFF53D794FF278F218A1F8B18CB2CBB5FFF3BBF
      6AFF2D962CC30000000000000000000000000000000046A243B3A7EDCEFF80DF
      B0FF2E962DBD0000000041C26EFF29C66FFF2C9B3094000000002D962CD12D96
      2CBE2D962CCF000000000000000000000000000000002E8F216A76D08DFF39CD
      7EFF32BE63FF5EB45AFF55C87BFF34C76FFF2C9023C200000000000000000000
      00000000000000000000000000000000000000000000000000002A8E1EB32FAC
      46FF35C56CFF3FCA7DFF3BC26DFF34C066FF35B75CFF30A743FF2C9326C9298A
      1A4F000000000000000000000000000000000000000000000000000000002A89
      1A43298C1CB12C9F33E538BC61FF36BE62FF37BE60FF38C871FF38C56FFF31A8
      41FF2A8C1C590000000000000000000000000000000000000000000000000000
      0000000000003890254A54C373FF35BF64FF2B9227DC2E9C31F837BF63FF38C6
      6DFF2D9A31FC000000000000000000000000000000003B9C38E848A548E7409F
      3DF62990210A000000004CBE68FF35BE62FF2C94298D2786130A33B24FFC3AC4
      6BFF2FA53DFF0000000000000000000000000000000055B65DFF5DD48CFF4CC3
      6BFF278D1A480000000050C06CFF36BD5DFF2C942A8B2888191136B24FFD3AC5
      6BFF2E9F35FF000000000000000000000000000000003C9C34B147C268FF2DB9
      59FF34AA44FF4B9C3BB65AC26FFF34B959FF2B9224DC2F9D35FF39C062FF37B6
      57FF2B8F22BA00000000000000000000000000000000278B1E07379C33EB37B4
      52FF37BF61FF53C572FF46BC63FF34B352FF37B453FF3ABF62FF37B656FF2D93
      28F1298E210C0000000000000000000000000000000000000000000000002A8D
      209E2F9A30D72CA53DFF34B856FF3ABD5FFF35AC49FF2E9C32E12A8E209E0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000288918672F9E33FE31A239FA2B8E20A700000000000000000000
      0000000000000000000000000000000000000000000000000000C37C0064C37C
      00FFC37C00FFC37C00FFC37C00FFC37C00FFC37C00FFC37C00FFC37C00FFC37C
      00FFC37C00FFC37C0064000000000000000000000000C37C0064C37C00FFF2E2
      C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF2E2C7FFC37C00FFC37C00640000000000000000C17A00FFF2E2C7FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF2E2C7FFC17A00FF0000000000000000BF7800FFFFFCFAFFFEFD
      FAFFFEFCFAFFFEFDFAFFFFFCFAFFFEFDF9FFFFFCFAFFFEFDF9FFFEFDFAFFFEFD
      FAFFBE7800FFBE7800FFBE7800FF0000000000000000BB7600FFFDFAF3FFFEF9
      F3FFFEFAF3FFFEFAF3FFFEFAF2FFFEFAF3FFFDFAF3FFFEF9F3FFFEFAF3FFFDFA
      F3FFBB7600FF00000000000000000000000000000000B77200FFFCF6EAFFFDF5
      EAFFFDF6EBFFFCF5EBFFFCF5EAFFFCF6EBFFFCF6EBFFFCF5EBFFFCF5EBFFFCF6
      EBFFB77300FF00000000000000000000000000000000B36F00FFFAF1E1FFFBF1
      E1FFFBF1E1FFFBF1E1FFFBF2E1FFFBF1E1FFFBF1E1FFFBF1E1FFFBF2E1FFFBF2
      E1FFB36F00FF00000000000000000000000000000000AF6C00FFFAEDD7FFF9ED
      D7FFFAEDD7FFF9EDD7FFF9EDD7FFF9EDD7FFFAEDD7FFFAEDD7FFFAEDD7FFFAED
      D7FFAE6B00FF00000000000000000000000000000000AB6800FFF8E9CDFFF8E8
      CDFFF8E9CDFFF8E8CDFFF8E9CDFFF9E9CDFFF8E9CDFFF8E9CDFFF8E9CDFFF9E8
      CDFFAB6900FF00000000000000000000000000000000A66400FFF6E5C4FFF7E4
      C3FFF7E4C4FFF7E4C4FFF7E4C4FFF7E4C4FFF7E4C3FFF7E4C4FFF6E5C4FFF7E5
      C3FFA66400FF00000000000000000000000000000000A26200FFF6E0BBFFF6E0
      BCFFF5E1BCFFF6E0BBFFF6E0BBFFF5E0BBFFF6E1BBFFF6E1BBFFF6E1BBFFF6E0
      BBFFA26100FF00000000000000009D5E00FF9E5E00FF9E5E00FF9E5E00FF9E5F
      00FF9E5F00FF9E5E00FF9E5E00FF9E5E00FF9D5E00FF9E5E00FFEAC88CFFF5DE
      B4FF9E5F00FF00000000000000009A5B00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9A5B00FFF4DB
      AFFF9A5B00FF0000000000000000975900FFEDD4A8FFFAEDD7FFFAEDD7FFFAED
      D7FFF9EDD7FFFAEDD7FFFAEDD7FFF9EDD7FFF9EDD7FFF9EDD7FF975900FFE9C6
      89FF975800FF0000000000000000C37C0064945700FFE9C689FFF4DBAFFFF4DB
      AFFFF4DBAFFFF4DBAFFFF4DBAFFFF4DBAFFFF4DBAFFFF4DBAFFFE9C689FF9456
      00FFC37C0064000000000000000000000000C37C0064925500FF925400FF9255
      00FF925500FF925500FF925500FF925500FF925500FF925500FF925500FFC37C
      0064000000000000000000000000000000000000000000000000000000000000
      000093888EB4B9B3B6FDB1AAABF3AFA8ACFA8C8488DF00000000000000000000
      000000000000000000000000000000000000000000000000000000000000ABA2
      A6ECFFFFFFFFFFFFFFFFF7F8F6FFF4F4F3FFF5F3F0FF9B9597FF000000000000
      0000000000000000000000000000000000000000000000000000ABA2A6D8FFFF
      FFFFF3F0F0FF998F92FF696064EF696064E9B5B3B2FFD6D4D2FF60595BDE0000
      0000000000000000000000000000000000000000000000000000AC9F9DD6FFFF
      FFFFBBB4B4FF7B69651100000000000000006E6663E5D6D4D2FF6F6B6BFF0000
      0000000000000000000000000000000000000000000000000000AFA6A5DDFFFF
      FFFFBBB4B4FF0000000000000000000000007A6C68D7CFCDCBFF6F655EFF0000
      0000000000000000000000000000000000000000000000000000AFA6A5E0E8E8
      E5FFBBB4B4FF0000000000000000000000007A6C68D6CFCDCBFF6F655EFF0000
      00000000000000000000000000000000000000000000000000004D92C7FF4BB3
      E3FF369ADDFF389AE3FF3797E5FF2E8EE6FF2184E9FF0773EBFF0066EDFF1883
      F5FF00000000000000000000000000000000000000003F66AEE3A6CCE5FFBEFF
      FFFF83ECFFFF69DCFFFF58CEFFFF47BFFFFF39B0FFFF28A0FFFF148FFFFF40B5
      FFFF2C8CEDFF000000000000000000000000000000003863ADE199C8E1FFBBF5
      FFFF8ACFFFFF6DBFFFFF57B1FFFF54B1FFFF50B2FFFF4CB6FFFF3EADFFFF4CBB
      FFFF1D7FEDFF000000000000000000000000000000003965AEE198C8E2FFB9FA
      FFFF8CD4FFFF74C4FFFF5EB7FFFF57B3FFFF4DAEFFFF43ACFFFF32A2FFFF44B5
      FFFF1D81EDFF000000000000000000000000000000003964AEE198C7E2FFB3F7
      FFFF86D0FFFF69BEFFFF52AEFFFF52B2FFFF4FB5FFFF4DB7FFFF42B0FFFF55BF
      FFFF2384EDFF000000000000000000000000000000003964AEE198C6E2FFB3F6
      FFFF85CFFFFF68BEFFFF4FAEFFFF50B1FFFF4FB5FFFF4EB9FFFF43B2FFFF57C0
      FFFF2382EDFF000000000000000000000000000000003864AEE195C6E2FFB2F4
      FFFF82CDFFFF66BCFFFF4FAEFFFF51B3FFFF53B7FFFF53BDFFFF4AB8FFFF5EC6
      FFFF2785EDFF000000000000000000000000000000003863ADE19CC8E1FFC2FC
      FFFF92D5FFFF6FC0FFFF4EACFFFF4BAEFFFF47ADFFFF4BB2FFFF3AA8FFFF4AB8
      FFFF1D81EDFF00000000000000000000000000000000466FB3E4AAD4E7FFA0FD
      FFFF52C6FFFF35B3FFFF2BA7FFFF20A0FFFF1796FFFF1A97FFFF1993FFFF36AF
      FFFF2689EEFF00000000000000000000000000000000000000002860B0F1156A
      C5F91867C4F31768CAF31567CDF31166D1F30A63D6F30A64DAF30663E0F31473
      E8FE000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000766A6D7C9A9095FBB3ADB0F3ABA5A8F3A7A0
      A2F38E898CF86359602300000000000000000000000000000000000000000000
      0000000000000000000085767B7CBBB5B7FFFFFFFFFFF4F6F4FFF5F6F4FFF2F2
      F1FFE6E6E3FFA7A2A4FF3E343A29000000000000000000000000000000000000
      00000000000000000000BBB5B7FFFFFFFFFFD9D9D7FF80767BC253464C8E5A52
      57CBB7B6B3FFC8C6C2FF544B50FE000000000000000000000000000000000000
      00000000000000000000C9C0C2FFFEFFFEFF9D9295FF00000000000000000000
      00007D757BD3D5D3CEFF5B5356F6000000000000000000000000000000000000
      00000000000000000000C9C0C2FFFDFFFBFF998E8DFF00000000000000000000
      0000665D62ABCFCFCBFF51494DF3000000000000000000000000000000000000
      00000000000000000000C9C0C2FFFDF3EFFF897B86FF00000000000000000000
      0000716A6CB3C3C5C0FF50494CF2000000002D6BB9CF2879C0FF246CBCFF1867
      C5FF1B6ECBFF2474CDFF1B71D2FF146CD7FF0C69DDFF1470E0FF000000000000
      0000696166A6AFACA9FF514A4EFF2D6BB9D9AAD9EAFFC2FFFFFF83F8FFFF6FE7
      FFFF61D7FFFF4CC5FFFF3DB6FFFF2EA4FFFF1B91FFFF4EBFFFFF338DE9FF0000
      0000696166AA696166BB4B4347C02D6BB9CD9CC9E0FFBBF5FFFF8CCFFEFF6EBD
      FDFF54B1FDFF52AFFBFF4EAFFBFF4BB1F9FF3EA5F8FF4EB9FFFF207EE7F20000
      00000000000000000000000000002D6BB9CE97C4E1FFAEF2FFFF7DCAFDFF61B7
      FCFF49A9FAFF4FB1FDFF55B8FDFF5CC2FBFF52BBF9FF67CCFFFF2D85E6F30000
      00000000000000000000000000002D6BB9CE9BC8E1FFB9F8FFFF8BD2FEFF72C2
      FDFF5AB5FDFF56B2FDFF4EAFFCFF47AFFAFF38A3F8FF4BB8FFFF227FE6F30000
      00000000000000000000000000002D6BB9CE9AC9E1FFB8F9FFFF8AD3FEFF71C1
      FDFF5CB4FDFF54B2FCFF4EB0FCFF48AFFAFF39A3F8FF4BB8FFFF2380E7F30000
      00000000000000000000000000002D6BB9CE9AC9E1FFBAF9FFFF8DD4FEFF75C5
      FDFF63B9FDFF5BB4FDFF4FAFFCFF43ACFAFF339FF8FF46B4FFFF217EE7F30000
      00000000000000000000000000002D6BB9CE99C5E1FFB7F5FFFF84CBFDFF60B4
      FBFF3A9FFAFF46AAFBFF53B8FCFF64CAFBFF5EC2F9FF6ED1FFFF2D85E6F20000
      00000000000000000000000000002D6BB9D1ADD9E9FFA7FFFFFF54C7FFFF36B4
      FFFF2EABFFFF25A0FFFF1B96FFFF1F97FFFF1D93FFFF3FB5FFFF2786E9FF0000
      0000000000000000000000000000113793002E68B1C41264BCF61A64BEF31C68
      C2F31967C7F31666CCF31064D0F31064D5F30C65DBF31973E0FB000000000000
      0000000000000000000000000000
    }
  end
end
