object ZatrudnienieGrafik: TZatrudnienieGrafik
  Left = 443
  Height = 563
  Top = 158
  Width = 1176
  Caption = 'Grafik dni wolnych'
  ClientHeight = 563
  ClientWidth = 1176
  Position = poOwnerFormCenter
  LCLVersion = '5.9'
  object Panel1: TPanel
    Left = 0
    Height = 50
    Top = 0
    Width = 1176
    Align = alTop
    ClientHeight = 50
    ClientWidth = 1176
    TabOrder = 0
    object Label2: TLabel
      Left = 16
      Height = 15
      Top = 8
      Width = 114
      Caption = 'Stanowisko - miejsce:'
      ParentColor = False
    end
    object Edit1: TEdit
      Left = 136
      Height = 23
      Top = 6
      Width = 560
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Height = 463
    Top = 50
    Width = 1176
    Align = alClient
    ClientHeight = 463
    ClientWidth = 1176
    TabOrder = 1
    object Panel4: TPanel
      Left = 1
      Height = 461
      Top = 1
      Width = 170
      Align = alLeft
      ClientHeight = 461
      ClientWidth = 170
      TabOrder = 0
      object Label9: TLabel
        Left = 8
        Height = 32
        Top = 16
        Width = 64
        AutoSize = False
        Caption = 'Wydruk na miesiąc:'
        ParentColor = False
        WordWrap = True
      end
      object DateTimePicker1: TDateTimePicker
        Left = 80
        Height = 23
        Top = 22
        Width = 83
        CenturyFrom = 1941
        MaxDate = 2958465
        MinDate = -53780
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
        OnChange = DateTimePicker1Change
      end
      object Label1: TLabel
        Left = 8
        Height = 15
        Top = 59
        Width = 69
        Caption = 'Dni wolnych:'
        ParentColor = False
      end
      object seDni_wolne: TSpinEdit
        Left = 88
        Height = 23
        Top = 56
        Width = 50
        MaxValue = 20
        MinValue = 8
        OnChange = seDni_wolneChange
        TabOrder = 1
        Value = 8
      end
      object Label3: TLabel
        Left = 8
        Height = 15
        Top = 91
        Width = 73
        Caption = 'Puste wiersze:'
        ParentColor = False
      end
      object sePuste_Wiersze: TSpinEdit
        Left = 88
        Height = 23
        Top = 88
        Width = 50
        MaxValue = 19
        MinValue = 1
        OnChange = seDni_wolneChange
        TabOrder = 2
        Value = 8
      end
    end
    object RxDBGrid1: TRxDBGrid
      Left = 171
      Height = 461
      Top = 1
      Width = 1004
      ColumnDefValues.BlobText = '(blob)'
      TitleButtons = False
      AutoSort = False
      Columns = <      
        item
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = 'Nazwisko Imię'
          Width = 120
          FieldName = 'Nazwisko'
          EditButtons = <>
          Filter.IsNull = False
          Filter.IsAll = True
          Filter.DropDownRows = 0
          Filter.EmptyValue = '(Empty)'
          Filter.AllValue = '(All values)'
          Filter.EmptyFont.Style = [fsItalic]
          Filter.ItemIndex = -1
          Footer.Alignment = taRightJustify
          Footer.Value = 'os. na wolnym:'
          Footer.ValueType = fvtStaticText
          Footers = <>
        end      
        item
          ButtonStyle = cbsCheckboxColumn
          Title.Alignment = taCenter
          Title.Color = 8421631
          Title.Orientation = toHorizontal
          Title.Caption = '1'
          Width = 25
          FieldName = 'd1'
          EditButtons = <>
          Filter.IsNull = False
          Filter.IsAll = True
          Filter.DropDownRows = 0
          Filter.EmptyValue = '(Empty)'
          Filter.AllValue = '(All values)'
          Filter.EmptyFont.Style = [fsItalic]
          Filter.ItemIndex = -1
          Footer.Alignment = taCenter
          Footer.FieldName = 'd1'
          Footer.ValueType = fvtSum
          Footer.Font.Style = [fsBold]
          Footers = <>
        end      
        item
          ButtonStyle = cbsCheckboxColumn
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = '2'
          Width = 25
          FieldName = 'd2'
          EditButtons = <>
          Filter.IsNull = False
          Filter.IsAll = True
          Filter.DropDownRows = 0
          Filter.EmptyValue = '(Empty)'
          Filter.AllValue = '(All values)'
          Filter.EmptyFont.Style = [fsItalic]
          Filter.ItemIndex = -1
          Footer.Alignment = taCenter
          Footer.FieldName = 'd2'
          Footer.ValueType = fvtSum
          Footer.Font.Style = [fsBold]
          Footers = <>
        end      
        item
          ButtonStyle = cbsCheckboxColumn
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = '3'
          Width = 25
          FieldName = 'd3'
          EditButtons = <>
          Filter.IsNull = False
          Filter.IsAll = True
          Filter.DropDownRows = 0
          Filter.EmptyValue = '(Empty)'
          Filter.AllValue = '(All values)'
          Filter.EmptyFont.Style = [fsItalic]
          Filter.ItemIndex = -1
          Footer.Alignment = taCenter
          Footer.FieldName = 'd3'
          Footer.ValueType = fvtSum
          Footer.Font.Style = [fsBold]
          Footers = <>
        end      
        item
          ButtonStyle = cbsCheckboxColumn
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = '4'
          Width = 25
          FieldName = 'd4'
          EditButtons = <>
          Filter.IsNull = False
          Filter.IsAll = True
          Filter.DropDownRows = 0
          Filter.EmptyValue = '(Empty)'
          Filter.AllValue = '(All values)'
          Filter.EmptyFont.Style = [fsItalic]
          Filter.ItemIndex = -1
          Footer.Alignment = taCenter
          Footer.FieldName = 'd4'
          Footer.ValueType = fvtSum
          Footer.Font.Style = [fsBold]
          Footers = <>
        end      
        item
          ButtonStyle = cbsCheckboxColumn
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = '5'
          Width = 25
          FieldName = 'd5'
          EditButtons = <>
          Filter.IsNull = False
          Filter.IsAll = True
          Filter.DropDownRows = 0
          Filter.EmptyValue = '(Empty)'
          Filter.AllValue = '(All values)'
          Filter.EmptyFont.Style = [fsItalic]
          Filter.ItemIndex = -1
          Footer.Alignment = taCenter
          Footer.FieldName = 'd5'
          Footer.ValueType = fvtSum
          Footer.Font.Style = [fsBold]
          Footers = <>
        end      
        item
          ButtonStyle = cbsCheckboxColumn
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = '6'
          Width = 25
          FieldName = 'd6'
          EditButtons = <>
          Filter.IsNull = False
          Filter.IsAll = True
          Filter.DropDownRows = 0
          Filter.EmptyValue = '(Empty)'
          Filter.AllValue = '(All values)'
          Filter.EmptyFont.Style = [fsItalic]
          Filter.ItemIndex = -1
          Footer.Alignment = taCenter
          Footer.FieldName = 'd6'
          Footer.ValueType = fvtSum
          Footer.Font.Style = [fsBold]
          Footers = <>
        end      
        item
          ButtonStyle = cbsCheckboxColumn
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = '7'
          Width = 25
          FieldName = 'd7'
          EditButtons = <>
          Filter.IsNull = False
          Filter.IsAll = True
          Filter.DropDownRows = 0
          Filter.EmptyValue = '(Empty)'
          Filter.AllValue = '(All values)'
          Filter.EmptyFont.Style = [fsItalic]
          Filter.ItemIndex = -1
          Footer.Alignment = taCenter
          Footer.FieldName = 'd7'
          Footer.ValueType = fvtSum
          Footer.Font.Style = [fsBold]
          Footers = <>
        end      
        item
          ButtonStyle = cbsCheckboxColumn
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = '8'
          Width = 25
          FieldName = 'd8'
          EditButtons = <>
          Filter.IsNull = False
          Filter.IsAll = True
          Filter.DropDownRows = 0
          Filter.EmptyValue = '(Empty)'
          Filter.AllValue = '(All values)'
          Filter.EmptyFont.Style = [fsItalic]
          Filter.ItemIndex = -1
          Footer.Alignment = taCenter
          Footer.FieldName = 'd8'
          Footer.ValueType = fvtSum
          Footer.Font.Style = [fsBold]
          Footers = <>
        end      
        item
          ButtonStyle = cbsCheckboxColumn
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = '9'
          Width = 25
          FieldName = 'd9'
          EditButtons = <>
          Filter.IsNull = False
          Filter.IsAll = True
          Filter.DropDownRows = 0
          Filter.EmptyValue = '(Empty)'
          Filter.AllValue = '(All values)'
          Filter.EmptyFont.Style = [fsItalic]
          Filter.ItemIndex = -1
          Footer.Alignment = taCenter
          Footer.FieldName = 'd9'
          Footer.ValueType = fvtSum
          Footer.Font.Style = [fsBold]
          Footers = <>
        end      
        item
          ButtonStyle = cbsCheckboxColumn
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = '10'
          Width = 25
          FieldName = 'd10'
          EditButtons = <>
          Filter.IsNull = False
          Filter.IsAll = True
          Filter.DropDownRows = 0
          Filter.EmptyValue = '(Empty)'
          Filter.AllValue = '(All values)'
          Filter.EmptyFont.Style = [fsItalic]
          Filter.ItemIndex = -1
          Footer.Alignment = taCenter
          Footer.FieldName = 'd10'
          Footer.ValueType = fvtSum
          Footer.Font.Style = [fsBold]
          Footers = <>
        end      
        item
          ButtonStyle = cbsCheckboxColumn
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = '11'
          Width = 25
          FieldName = 'd11'
          EditButtons = <>
          Filter.IsNull = False
          Filter.IsAll = True
          Filter.DropDownRows = 0
          Filter.EmptyValue = '(Empty)'
          Filter.AllValue = '(All values)'
          Filter.EmptyFont.Style = [fsItalic]
          Filter.ItemIndex = -1
          Footer.Alignment = taCenter
          Footer.FieldName = 'd11'
          Footer.ValueType = fvtSum
          Footer.Font.Style = [fsBold]
          Footers = <>
        end      
        item
          ButtonStyle = cbsCheckboxColumn
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = '12'
          Width = 25
          FieldName = 'd12'
          EditButtons = <>
          Filter.IsNull = False
          Filter.IsAll = True
          Filter.DropDownRows = 0
          Filter.EmptyValue = '(Empty)'
          Filter.AllValue = '(All values)'
          Filter.EmptyFont.Style = [fsItalic]
          Filter.ItemIndex = -1
          Footer.Alignment = taCenter
          Footer.FieldName = 'd12'
          Footer.ValueType = fvtSum
          Footer.Font.Style = [fsBold]
          Footers = <>
        end      
        item
          ButtonStyle = cbsCheckboxColumn
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = '13'
          Width = 25
          FieldName = 'd13'
          EditButtons = <>
          Filter.IsNull = False
          Filter.IsAll = True
          Filter.DropDownRows = 0
          Filter.EmptyValue = '(Empty)'
          Filter.AllValue = '(All values)'
          Filter.EmptyFont.Style = [fsItalic]
          Filter.ItemIndex = -1
          Footer.Alignment = taCenter
          Footer.FieldName = 'd13'
          Footer.ValueType = fvtSum
          Footer.Font.Style = [fsBold]
          Footers = <>
        end      
        item
          ButtonStyle = cbsCheckboxColumn
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = '14'
          Width = 25
          FieldName = 'd14'
          EditButtons = <>
          Filter.IsNull = False
          Filter.IsAll = True
          Filter.DropDownRows = 0
          Filter.EmptyValue = '(Empty)'
          Filter.AllValue = '(All values)'
          Filter.EmptyFont.Style = [fsItalic]
          Filter.ItemIndex = -1
          Footer.Alignment = taCenter
          Footer.FieldName = 'd14'
          Footer.ValueType = fvtSum
          Footer.Font.Style = [fsBold]
          Footers = <>
        end      
        item
          ButtonStyle = cbsCheckboxColumn
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = '15'
          Width = 25
          FieldName = 'd15'
          EditButtons = <>
          Filter.IsNull = False
          Filter.IsAll = True
          Filter.DropDownRows = 0
          Filter.EmptyValue = '(Empty)'
          Filter.AllValue = '(All values)'
          Filter.EmptyFont.Style = [fsItalic]
          Filter.ItemIndex = -1
          Footer.Alignment = taCenter
          Footer.FieldName = 'd15'
          Footer.ValueType = fvtSum
          Footer.Font.Style = [fsBold]
          Footers = <>
        end      
        item
          ButtonStyle = cbsCheckboxColumn
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = '16'
          Width = 25
          FieldName = 'd16'
          EditButtons = <>
          Filter.IsNull = False
          Filter.IsAll = True
          Filter.DropDownRows = 0
          Filter.EmptyValue = '(Empty)'
          Filter.AllValue = '(All values)'
          Filter.EmptyFont.Style = [fsItalic]
          Filter.ItemIndex = -1
          Footer.Alignment = taCenter
          Footer.FieldName = 'd16'
          Footer.ValueType = fvtSum
          Footer.Font.Style = [fsBold]
          Footers = <>
        end      
        item
          ButtonStyle = cbsCheckboxColumn
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = '17'
          Width = 25
          FieldName = 'd17'
          EditButtons = <>
          Filter.IsNull = False
          Filter.IsAll = True
          Filter.DropDownRows = 0
          Filter.EmptyValue = '(Empty)'
          Filter.AllValue = '(All values)'
          Filter.EmptyFont.Style = [fsItalic]
          Filter.ItemIndex = -1
          Footer.Alignment = taCenter
          Footer.FieldName = 'd17'
          Footer.ValueType = fvtSum
          Footer.Font.Style = [fsBold]
          Footers = <>
        end      
        item
          ButtonStyle = cbsCheckboxColumn
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = '18'
          Width = 25
          FieldName = 'd18'
          EditButtons = <>
          Filter.IsNull = False
          Filter.IsAll = True
          Filter.DropDownRows = 0
          Filter.EmptyValue = '(Empty)'
          Filter.AllValue = '(All values)'
          Filter.EmptyFont.Style = [fsItalic]
          Filter.ItemIndex = -1
          Footer.Alignment = taCenter
          Footer.FieldName = 'd18'
          Footer.ValueType = fvtSum
          Footer.Font.Style = [fsBold]
          Footers = <>
        end      
        item
          ButtonStyle = cbsCheckboxColumn
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = '19'
          Width = 25
          FieldName = 'd19'
          EditButtons = <>
          Filter.IsNull = False
          Filter.IsAll = True
          Filter.DropDownRows = 0
          Filter.EmptyValue = '(Empty)'
          Filter.AllValue = '(All values)'
          Filter.EmptyFont.Style = [fsItalic]
          Filter.ItemIndex = -1
          Footer.Alignment = taCenter
          Footer.FieldName = 'd19'
          Footer.ValueType = fvtSum
          Footer.Font.Style = [fsBold]
          Footers = <>
        end      
        item
          ButtonStyle = cbsCheckboxColumn
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = '20'
          Width = 25
          FieldName = 'd20'
          EditButtons = <>
          Filter.IsNull = False
          Filter.IsAll = True
          Filter.DropDownRows = 0
          Filter.EmptyValue = '(Empty)'
          Filter.AllValue = '(All values)'
          Filter.EmptyFont.Style = [fsItalic]
          Filter.ItemIndex = -1
          Footer.Alignment = taCenter
          Footer.FieldName = 'd20'
          Footer.ValueType = fvtSum
          Footer.Font.Style = [fsBold]
          Footers = <>
        end      
        item
          ButtonStyle = cbsCheckboxColumn
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = '21'
          Width = 25
          FieldName = 'd21'
          EditButtons = <>
          Filter.IsNull = False
          Filter.IsAll = True
          Filter.DropDownRows = 0
          Filter.EmptyValue = '(Empty)'
          Filter.AllValue = '(All values)'
          Filter.EmptyFont.Style = [fsItalic]
          Filter.ItemIndex = -1
          Footer.Alignment = taCenter
          Footer.FieldName = 'd21'
          Footer.ValueType = fvtSum
          Footer.Font.Style = [fsBold]
          Footers = <>
        end      
        item
          ButtonStyle = cbsCheckboxColumn
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = '22'
          Width = 25
          FieldName = 'd22'
          EditButtons = <>
          Filter.IsNull = False
          Filter.IsAll = True
          Filter.DropDownRows = 0
          Filter.EmptyValue = '(Empty)'
          Filter.AllValue = '(All values)'
          Filter.EmptyFont.Style = [fsItalic]
          Filter.ItemIndex = -1
          Footer.Alignment = taCenter
          Footer.FieldName = 'd22'
          Footer.ValueType = fvtSum
          Footer.Font.Style = [fsBold]
          Footers = <>
        end      
        item
          ButtonStyle = cbsCheckboxColumn
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = '23'
          Width = 25
          FieldName = 'd23'
          EditButtons = <>
          Filter.IsNull = False
          Filter.IsAll = True
          Filter.DropDownRows = 0
          Filter.EmptyValue = '(Empty)'
          Filter.AllValue = '(All values)'
          Filter.EmptyFont.Style = [fsItalic]
          Filter.ItemIndex = -1
          Footer.Alignment = taCenter
          Footer.FieldName = 'd23'
          Footer.ValueType = fvtSum
          Footer.Font.Style = [fsBold]
          Footers = <>
        end      
        item
          ButtonStyle = cbsCheckboxColumn
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = '24'
          Width = 25
          FieldName = 'd24'
          EditButtons = <>
          Filter.IsNull = False
          Filter.IsAll = True
          Filter.DropDownRows = 0
          Filter.EmptyValue = '(Empty)'
          Filter.AllValue = '(All values)'
          Filter.EmptyFont.Style = [fsItalic]
          Filter.ItemIndex = -1
          Footer.Alignment = taCenter
          Footer.FieldName = 'd24'
          Footer.ValueType = fvtSum
          Footer.Font.Style = [fsBold]
          Footers = <>
        end      
        item
          ButtonStyle = cbsCheckboxColumn
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = '25'
          Width = 25
          FieldName = 'd25'
          EditButtons = <>
          Filter.IsNull = False
          Filter.IsAll = True
          Filter.DropDownRows = 0
          Filter.EmptyValue = '(Empty)'
          Filter.AllValue = '(All values)'
          Filter.EmptyFont.Style = [fsItalic]
          Filter.ItemIndex = -1
          Footer.Alignment = taCenter
          Footer.FieldName = 'd25'
          Footer.ValueType = fvtSum
          Footer.Font.Style = [fsBold]
          Footers = <>
        end      
        item
          ButtonStyle = cbsCheckboxColumn
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = '26'
          Width = 25
          FieldName = 'd26'
          EditButtons = <>
          Filter.IsNull = False
          Filter.IsAll = True
          Filter.DropDownRows = 0
          Filter.EmptyValue = '(Empty)'
          Filter.AllValue = '(All values)'
          Filter.EmptyFont.Style = [fsItalic]
          Filter.ItemIndex = -1
          Footer.Alignment = taCenter
          Footer.FieldName = 'd26'
          Footer.ValueType = fvtSum
          Footer.Font.Style = [fsBold]
          Footers = <>
        end      
        item
          ButtonStyle = cbsCheckboxColumn
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = '27'
          Width = 25
          FieldName = 'd27'
          EditButtons = <>
          Filter.IsNull = False
          Filter.IsAll = True
          Filter.DropDownRows = 0
          Filter.EmptyValue = '(Empty)'
          Filter.AllValue = '(All values)'
          Filter.EmptyFont.Style = [fsItalic]
          Filter.ItemIndex = -1
          Footer.Alignment = taCenter
          Footer.FieldName = 'd27'
          Footer.ValueType = fvtSum
          Footer.Font.Style = [fsBold]
          Footers = <>
        end      
        item
          ButtonStyle = cbsCheckboxColumn
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = '28'
          Width = 25
          FieldName = 'd28'
          EditButtons = <>
          Filter.IsNull = False
          Filter.IsAll = True
          Filter.DropDownRows = 0
          Filter.EmptyValue = '(Empty)'
          Filter.AllValue = '(All values)'
          Filter.EmptyFont.Style = [fsItalic]
          Filter.ItemIndex = -1
          Footer.Alignment = taCenter
          Footer.FieldName = 'd28'
          Footer.ValueType = fvtSum
          Footer.Font.Style = [fsBold]
          Footers = <>
        end      
        item
          ButtonStyle = cbsCheckboxColumn
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = '29'
          Width = 25
          FieldName = 'd29'
          EditButtons = <>
          Filter.IsNull = False
          Filter.IsAll = True
          Filter.DropDownRows = 0
          Filter.EmptyValue = '(Empty)'
          Filter.AllValue = '(All values)'
          Filter.EmptyFont.Style = [fsItalic]
          Filter.ItemIndex = -1
          Footer.Alignment = taCenter
          Footer.FieldName = 'd29'
          Footer.ValueType = fvtSum
          Footer.Font.Style = [fsBold]
          Footers = <>
        end      
        item
          ButtonStyle = cbsCheckboxColumn
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = '30'
          Width = 25
          FieldName = 'd30'
          EditButtons = <>
          Filter.IsNull = False
          Filter.IsAll = True
          Filter.DropDownRows = 0
          Filter.EmptyValue = '(Empty)'
          Filter.AllValue = '(All values)'
          Filter.EmptyFont.Style = [fsItalic]
          Filter.ItemIndex = -1
          Footer.Alignment = taCenter
          Footer.FieldName = 'd30'
          Footer.ValueType = fvtSum
          Footer.Font.Style = [fsBold]
          Footers = <>
        end      
        item
          ButtonStyle = cbsCheckboxColumn
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = '31'
          Width = 25
          FieldName = 'd31'
          EditButtons = <>
          Filter.IsNull = False
          Filter.IsAll = True
          Filter.DropDownRows = 0
          Filter.EmptyValue = '(Empty)'
          Filter.AllValue = '(All values)'
          Filter.EmptyFont.Style = [fsItalic]
          Filter.ItemIndex = -1
          Footer.Alignment = taCenter
          Footer.FieldName = 'd31'
          Footer.ValueType = fvtSum
          Footer.Font.Style = [fsBold]
          Footers = <>
        end      
        item
          Alignment = taCenter
          Color = 8978431
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Color = 8978431
          Title.Font.Style = [fsBold]
          Title.Orientation = toHorizontal
          Title.Caption = 'suma'
          Width = 35
          FieldName = 'suma'
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
      FooterOptions.Active = True
      FooterOptions.Color = 8978431
      FooterOptions.RowCount = 1
      FooterOptions.Style = tsNative
      FooterOptions.DrawFullLine = True
      OptionsRx = [rdgAllowColumnsForm, rdgAllowDialogFind, rdgFooterRows, rdgAllowQuickFilter]
      FooterColor = 8978431
      FooterRowCount = 1
      Align = alClient
      AutoEdit = False
      Color = clWindow
      DrawFullLine = True
      FocusColor = clRed
      SelectedColor = clHighlight
      GridLineColor = 15461355
      GridLineStyle = psSolid
      DataSource = DSGrafik
      DefaultDrawing = False
      DefaultRowHeight = 25
      FixedCols = 0
      Flat = True
      Options = [dgTitles, dgColumnResize, dgColumnMove, dgColLines, dgRowLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentColor = False
      TabOrder = 1
      TitleStyle = tsStandard
      OnCellClick = RxDBGrid1CellClick
      OnDrawColumnCell = RxDBGrid1DrawColumnCell
    end
  end
  object Panel3: TPanel
    Left = 0
    Height = 50
    Top = 513
    Width = 1176
    Align = alBottom
    ClientHeight = 50
    ClientWidth = 1176
    TabOrder = 2
    object BitBtn10: TBitBtn
      Left = 16
      Height = 30
      Top = 8
      Width = 100
      Caption = 'Drukuj ...'
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
      OnClick = BitBtn10Click
      TabOrder = 0
    end
    object BitBtn4: TBitBtn
      AnchorSideLeft.Side = asrBottom
      Left = 1065
      Height = 30
      Top = 8
      Width = 100
      Anchors = [akTop, akRight]
      BorderSpacing.Left = 186
      DefaultCaption = True
      Kind = bkClose
      ModalResult = 11
      TabOrder = 1
    end
    object CheckBox1: TCheckBox
      Left = 136
      Height = 19
      Top = 16
      Width = 149
      Caption = 'z grafikiem dni wolnych.'
      Checked = True
      OnChange = CheckBox1Change
      State = cbChecked
      TabOrder = 2
    end
  end
  object frDBDataSet1: TfrDBDataSet
    DataSet = MemGrafik
    left = 720
    top = 8
  end
  object frReport1: TfrReport
    InitialZoom = pzDefault
    Options = []
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    DataType = dtDataSet
    left = 656
    top = 8
  end
  object MemGrafik: TMemDataset
    Active = True
    FieldDefs = <    
      item
        Name = 'Nazwisko'
        DataType = ftString
        Size = 100
      end    
      item
        Name = 'd1'
        DataType = ftInteger
      end    
      item
        Name = 'd2'
        DataType = ftInteger
      end    
      item
        Name = 'd3'
        DataType = ftInteger
      end    
      item
        Name = 'd4'
        DataType = ftInteger
      end    
      item
        Name = 'd5'
        DataType = ftInteger
      end    
      item
        Name = 'd6'
        DataType = ftInteger
      end    
      item
        Name = 'd7'
        DataType = ftInteger
      end    
      item
        Name = 'd8'
        DataType = ftInteger
      end    
      item
        Name = 'd9'
        DataType = ftInteger
      end    
      item
        Name = 'd10'
        DataType = ftInteger
      end    
      item
        Name = 'd11'
        DataType = ftInteger
      end    
      item
        Name = 'd12'
        DataType = ftInteger
      end    
      item
        Name = 'd13'
        DataType = ftInteger
      end    
      item
        Name = 'd14'
        DataType = ftInteger
      end    
      item
        Name = 'd15'
        DataType = ftInteger
      end    
      item
        Name = 'd16'
        DataType = ftInteger
      end    
      item
        Name = 'd17'
        DataType = ftInteger
      end    
      item
        Name = 'd18'
        DataType = ftInteger
      end    
      item
        Name = 'd19'
        DataType = ftInteger
      end    
      item
        Name = 'd20'
        DataType = ftInteger
      end    
      item
        Name = 'd21'
        DataType = ftInteger
      end    
      item
        Name = 'd22'
        DataType = ftInteger
      end    
      item
        Name = 'd23'
        DataType = ftInteger
      end    
      item
        Name = 'd24'
        DataType = ftInteger
      end    
      item
        Name = 'd25'
        DataType = ftInteger
      end    
      item
        Name = 'd26'
        DataType = ftInteger
      end    
      item
        Name = 'd27'
        DataType = ftInteger
      end    
      item
        Name = 'd28'
        DataType = ftInteger
      end    
      item
        Name = 'd29'
        DataType = ftInteger
      end    
      item
        Name = 'd30'
        DataType = ftInteger
      end    
      item
        Name = 'd31'
        DataType = ftInteger
      end    
      item
        Name = 'suma'
        DataType = ftInteger
      end    
      item
        Name = 'POC'
        DataType = ftString
        Size = 10
      end>
    left = 816
    top = 8
  end
  object DSGrafik: TDataSource
    DataSet = MemGrafik
    left = 872
    top = 8
  end
end
