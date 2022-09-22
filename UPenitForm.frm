object PenitForm: TPenitForm
  Left = 325
  Height = 795
  Top = 234
  Width = 715
  Caption = 'Karta Penitencjarna'
  ClientHeight = 795
  ClientWidth = 715
  KeyPreview = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  Position = poScreenCenter
  LCLVersion = '6.6'
  object Panel1: TPanel
    Left = 0
    Height = 58
    Top = 0
    Width = 715
    Align = alTop
    ClientHeight = 58
    ClientWidth = 715
    TabOrder = 1
    object DBText1: TDBText
      Left = 16
      Height = 25
      Top = 14
      Width = 76
      DataField = 'NazwiskoImie'
      DataSource = DSOs
      Font.Height = -19
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 535
      Height = 15
      Top = 24
      Width = 160
      Alignment = taCenter
      AutoSize = False
      DataField = 'Autoryzacja'
      DataSource = DSOsInfo
      ParentColor = False
    end
    object DBText3: TDBText
      Left = 535
      Height = 15
      Top = 40
      Width = 160
      Alignment = taCenter
      AutoSize = False
      DataField = 'data_autoryzacji'
      DataSource = DSOsInfo
      ParentColor = False
    end
    object Label1: TLabel
      Left = 535
      Height = 15
      Top = 8
      Width = 160
      Caption = 'Ostatnio modyfikowany przez:'
      ParentColor = False
    end
    object lblKomunikat: TLabel
      Left = 395
      Height = 15
      Top = 40
      Width = 71
      Alignment = taRightJustify
      Caption = 'lblKomunikat'
      Font.Color = clRed
      ParentColor = False
      ParentFont = False
    end
    object DBText4: TDBText
      Left = 16
      Height = 15
      Hint = 'IDO'
      Top = 40
      Width = 43
      DataField = 'IDO'
      DataSource = DSOs
      Font.Color = clGray
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object DBText9: TDBText
      AnchorSideLeft.Control = DBText1
      AnchorSideLeft.Side = asrBottom
      Left = 122
      Height = 25
      Hint = 'Imię ojca'
      Top = 14
      Width = 69
      BorderSpacing.Left = 30
      DataField = 'OJCIEC'
      DataSource = DSOs
      Font.Color = clGray
      Font.Height = -19
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
  end
  object Panel2: TPanel
    Left = 0
    Height = 390
    Top = 58
    Width = 715
    Align = alTop
    ClientHeight = 390
    ClientWidth = 715
    TabOrder = 2
    object Label2: TLabel
      Left = 16
      Height = 15
      Top = 8
      Width = 64
      Caption = 'Klasyfikacja:'
      ParentColor = False
    end
    object Label3: TLabel
      Left = 168
      Height = 15
      Top = 8
      Width = 27
      Caption = 'POC:'
      ParentColor = False
    end
    object Label4: TLabel
      Left = 16
      Height = 15
      Top = 40
      Width = 101
      Caption = 'Termin końca kary:'
      ParentColor = False
    end
    object Label5: TLabel
      Left = 160
      Height = 15
      Top = 40
      Width = 76
      Caption = 'Termin oceny:'
      ParentColor = False
    end
    object Label6: TLabel
      Left = 336
      Height = 15
      Top = 40
      Width = 118
      Caption = 'Termin do przepustek:'
      ParentColor = False
    end
    object Label7: TLabel
      Left = 16
      Height = 15
      Top = 88
      Width = 86
      Caption = 'Termin do WPZ:'
      ParentColor = False
    end
    object Label8: TLabel
      Left = 160
      Height = 15
      Top = 88
      Width = 160
      Caption = 'Termin weryfikacji postpenitu:'
      ParentColor = False
    end
    object Label9: TLabel
      Left = 336
      Height = 15
      Top = 88
      Width = 77
      Caption = 'Termin terapii:'
      ParentColor = False
    end
    object DBDateTimePicker1: TDBDateTimePicker
      Left = 16
      Height = 23
      Hint = 'Naciśnij N aby wykasować datę.'
      Top = 56
      Width = 83
      DataField = 'KoniecKary'
      DataSource = DSOsInfo
      ReadOnly = False
      CenturyFrom = 1941
      MaxDate = 2958465
      MinDate = -53780
      TabOrder = 0
      TrailingSeparator = False
      TextForNullDate = 'BRAK'
      LeadingZeros = True
      ShowHint = True
      ParentShowHint = False
      Kind = dtkDate
      TimeFormat = tf24
      TimeDisplay = tdHMS
      DateMode = dmComboBox
      UseDefaultSeparators = True
      HideDateTimeParts = []
      MonthNames = 'Long'
    end
    object DBDateTimePicker2: TDBDateTimePicker
      Left = 160
      Height = 23
      Hint = 'Naciśnij N aby wykasować datę.'
      Top = 56
      Width = 83
      DataField = 'toceny'
      DataSource = DSOsInfo
      ReadOnly = False
      CenturyFrom = 1941
      MaxDate = 2958465
      MinDate = -53780
      TabOrder = 1
      TrailingSeparator = False
      TextForNullDate = 'BRAK'
      LeadingZeros = True
      ShowHint = True
      ParentShowHint = False
      Kind = dtkDate
      TimeFormat = tf24
      TimeDisplay = tdHMS
      DateMode = dmComboBox
      UseDefaultSeparators = True
      HideDateTimeParts = []
      MonthNames = 'Long'
      OnChange = DBDateTimePicker2Change
    end
    object DBDateTimePicker3: TDBDateTimePicker
      Left = 16
      Height = 23
      Hint = 'Naciśnij N aby wykasować datę.'
      Top = 104
      Width = 83
      DataField = 'twpz'
      DataSource = DSOsInfo
      ReadOnly = False
      CenturyFrom = 1941
      MaxDate = 2958465
      MinDate = -53780
      TabOrder = 3
      TrailingSeparator = False
      TextForNullDate = 'BRAK'
      LeadingZeros = True
      ShowHint = True
      ParentShowHint = False
      Kind = dtkDate
      TimeFormat = tf24
      TimeDisplay = tdHMS
      DateMode = dmComboBox
      UseDefaultSeparators = True
      HideDateTimeParts = []
      MonthNames = 'Long'
    end
    object DBDateTimePicker4: TDBDateTimePicker
      Left = 336
      Height = 23
      Hint = 'Naciśnij N aby wykasować datę.'
      Top = 56
      Width = 83
      DataField = 'tprzepustki'
      DataSource = DSOsInfo
      ReadOnly = False
      CenturyFrom = 1941
      MaxDate = 2958465
      MinDate = -53780
      TabOrder = 2
      TrailingSeparator = False
      TextForNullDate = 'BRAK'
      LeadingZeros = True
      ShowHint = True
      ParentShowHint = False
      Kind = dtkDate
      TimeFormat = tf24
      TimeDisplay = tdHMS
      DateMode = dmComboBox
      UseDefaultSeparators = True
      HideDateTimeParts = []
      MonthNames = 'Long'
    end
    object DBDateTimePicker5: TDBDateTimePicker
      Left = 160
      Height = 23
      Hint = 'Naciśnij N aby wykasować datę.'
      Top = 104
      Width = 83
      DataField = 'tpostpenitu'
      DataSource = DSOsInfo
      ReadOnly = False
      CenturyFrom = 1941
      MaxDate = 2958465
      MinDate = -53780
      TabOrder = 4
      TrailingSeparator = False
      TextForNullDate = 'BRAK'
      LeadingZeros = True
      ShowHint = True
      ParentShowHint = False
      Kind = dtkDate
      TimeFormat = tf24
      TimeDisplay = tdHMS
      DateMode = dmComboBox
      UseDefaultSeparators = True
      HideDateTimeParts = []
      MonthNames = 'Long'
    end
    object DBDateTimePicker6: TDBDateTimePicker
      Left = 336
      Height = 23
      Hint = 'Naciśnij N aby wykasować datę.'
      Top = 104
      Width = 83
      DataField = 'tterapii'
      DataSource = DSOsInfo
      ReadOnly = False
      CenturyFrom = 1941
      MaxDate = 2958465
      MinDate = -53780
      TabOrder = 5
      TrailingSeparator = False
      TextForNullDate = 'BRAK'
      LeadingZeros = True
      ShowHint = True
      ParentShowHint = False
      Kind = dtkDate
      TimeFormat = tf24
      TimeDisplay = tdHMS
      DateMode = dmComboBox
      UseDefaultSeparators = True
      HideDateTimeParts = []
      MonthNames = 'Long'
    end
    object DBCheckBox1: TDBCheckBox
      Left = 160
      Height = 23
      Top = 128
      Width = 66
      Caption = 'Notatka'
      DataField = 'postpenit_notatka'
      DataSource = DSOsInfo
      TabOrder = 7
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object DBCheckBox2: TDBCheckBox
      Left = 16
      Height = 23
      Top = 128
      Width = 132
      Caption = 'Stanowisko do WPZ'
      DataField = 'wpz_stanowisko'
      DataSource = DSOsInfo
      ParentBiDiMode = False
      TabOrder = 6
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object Label10: TLabel
      Left = 16
      Height = 15
      Top = 160
      Width = 88
      Caption = 'Ułamek do WPZ:'
      ParentColor = False
    end
    object DBEdit1: TDBEdit
      Left = 16
      Height = 23
      Top = 176
      Width = 176
      DataField = 'ulamek_wpz'
      DataSource = DSOsInfo
      CharCase = ecNormal
      MaxLength = 0
      TabOrder = 8
    end
    object DBCheckBox3: TDBCheckBox
      Left = 16
      Height = 23
      Top = 232
      Width = 78
      Caption = 'KOZS'
      DataField = 'Starszy'
      DataSource = DSOsInfo
      ParentBiDiMode = False
      TabOrder = 9
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object Label11: TLabel
      Left = 16
      Height = 15
      Top = 270
      Width = 157
      Caption = 'Zatrudnienie (notatki własne):'
      ParentColor = False
    end
    object DBText5: TDBText
      Left = 88
      Height = 15
      Top = 8
      Width = 50
      DataField = 'KLASYF'
      DataSource = DSOs
      Font.Color = clBlue
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object DBText6: TDBText
      Left = 200
      Height = 15
      Top = 8
      Width = 50
      DataField = 'POC'
      DataSource = DSOs
      Font.Color = clBlue
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object btnRejestrZat: TBitBtn
      Left = 312
      Height = 30
      Top = 312
      Width = 152
      Caption = 'Rejestr zatrudnienia'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        20000000000000040000640000006400000000000000000000007A310016792C
        003B833900988C4400CE955201F6945102FF945101FF945002FF944F02FF944F
        02F7924C01DF894100B17F3500887328004D8138002300000000995D0ACCBC8F
        1EFFD9A705FFDFAF02FFEABF03FFEABE03FFEABE03FFEABE03FFEABE03FFEBC0
        03FFE5B602FFDBAB02FFD09D02FFBF8802FF924C00E100000000A26812D2DBC1
        3DFFF0D006FFDDB500FFD9AE02FFD9AE02FFDAB002FFD9AF01FFD9AC01FFDAAF
        01FFDBAF02FFDDB302FFE3BA02FFEAC302FF924F00E30000000096580DB4CAAA
        3CFFF7EE29FFE2C500FFDBB701FFDBB700FFDBB701FFDBB701FFDBB901FFDBB8
        01FFDBB801FFDBB701FFE0C001FFCFA700FF955400C2000000008F46004AA060
        0ACBFAF661FFEEE200FFE1CC00FFDBC300FFDDC300FFDFC500FFDDC200FFDAC2
        00FFDAC300FFDCC300FFE5D700FFB27B00FF954E004D0000000000000000984F
        0047CBA833FFFAFF5EFFEBE500FFF0DC00FFEBD600FFE1D000FFEBD900FFF4DD
        00FFDBD000FFE3DE00FFCFB000FFA46000940000000000000000000000000000
        0000A5610064D4B73FFFFFFF3DFFBEBB0AFF5E8768FF0067C8FF286F7FFFA9A7
        15FFF6E400FFCDB200FFB07100B3000000000000000000000000000000000000
        000000000000CD720033A18636E62482FFFF1580FFFF208BFFFF0974FFFF0056
        F5FF777229FFE18B007600000000000000000000000000000000000000000000
        00000000000000000000236EEFD149B8FFFF1C9BFCFF259DFCFF28A6FFFF28A4
        FFFF145AA6BB0000000000000000000000000000000000000000000000000000
        000000000000000000006DBEFFFF39AFFEFF27A3F9FF2CA6FBFF30A7FCFF35B8
        FFFF2489EAFF0006A32400000000000000000000000000000000000000000000
        0000000000000000000090E1FFFF79E9FFFF63CAFFFF4ABBFDFF46BAFAFF49C6
        FFFF3FA3E0FF0B25693C00000000000000000000000000000000000000000000
        00000000000000000000515C61FF609AB9FF81D9FEFF87E4FFFF78CFFFFF86F3
        FFFF72B9C6FF1800005E00000000000000000000000000000000000000000000
        0000000000002A26281E201410FF1B0900FF221213FF88DEE7FFA4FFFFFF92EE
        FFFF33353CFF190F0A7400000000000000000000000000000000000000000000
        000000000000312D2915302C2BFF302C2BFF20100CFF4A5B5AFF5E8084FF3435
        34FF1D0F0BFF2925237500000000000000000000000000000000000000000000
        00000000000000000000393332E6373231FF36312FFF2C1E1EFF251311FF291C
        1AFF322C2CFF2F29283A00000000000000000000000000000000000000000000
        000000000000000000003C3335113B3433DD3A3634FF3B3434EC3B3534B53835
        32D535302E4F0000000000000000000000000000000000000000
      }
      OnClick = btnRejestrZatClick
      TabOrder = 17
    end
    object DBCheckBox4: TDBCheckBox
      Left = 352
      Height = 23
      Top = 191
      Width = 114
      Caption = 'Akta archiwalne'
      DataField = 'Arch'
      DataSource = DSOsInfo
      TabOrder = 12
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object DBCheckBox5: TDBCheckBox
      Left = 352
      Height = 23
      Top = 223
      Width = 90
      Caption = 'Wywiad'
      DataField = 'Wywiad'
      DataSource = DSOsInfo
      TabOrder = 14
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object btnDrukArch: TBitBtn
      Left = 312
      Height = 30
      Top = 184
      Width = 35
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
      OnClick = btnDrukArchClick
      TabOrder = 11
    end
    object btnDrukWywiad: TBitBtn
      Left = 312
      Height = 30
      Top = 216
      Width = 35
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
      OnClick = btnDrukWywiadClick
      TabOrder = 13
    end
    object Panel_Zdj: TPanel
      Left = 480
      Height = 274
      Top = 8
      Width = 214
      BevelOuter = bvNone
      BorderStyle = bsSingle
      ClientHeight = 270
      ClientWidth = 210
      Color = clBtnFace
      ParentColor = False
      TabOrder = 18
      object Image_os: TImage
        Left = 0
        Height = 270
        Top = 0
        Width = 210
        AntialiasingMode = amOn
        Align = alClient
        Center = True
        OnDblClick = Image_osDblClick
        ParentShowHint = False
        Proportional = True
        ShowHint = True
        Stretch = True
      end
    end
    object DBNavigator1: TDBNavigator
      Left = 0
      Height = 25
      Top = 325
      Width = 105
      BevelOuter = bvNone
      ChildSizing.EnlargeHorizontal = crsScaleChilds
      ChildSizing.EnlargeVertical = crsScaleChilds
      ChildSizing.ShrinkHorizontal = crsScaleChilds
      ChildSizing.ShrinkVertical = crsScaleChilds
      ChildSizing.Layout = cclLeftToRightThenTopToBottom
      ChildSizing.ControlsPerLine = 100
      ClientHeight = 25
      ClientWidth = 105
      DataSource = DSOsInfo
      Options = []
      TabOrder = 19
      VisibleButtons = [nbPost, nbCancel]
    end
    object DBCheckBox6: TDBCheckBox
      Left = 96
      Height = 23
      Top = 232
      Width = 71
      Caption = 'Grypsuje'
      DataField = 'GR'
      DataSource = DSOsInfo
      TabOrder = 10
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object DBEdit2: TDBEdit
      Left = 16
      Height = 23
      Top = 288
      Width = 448
      DataField = 'Zatrudnienie'
      DataSource = DSOsInfo
      CharCase = ecNormal
      MaxLength = 0
      TabOrder = 16
    end
    object lblCelaOchronna: TLabel
      AnchorSideLeft.Control = lblCelaPalaca
      AnchorSideLeft.Side = asrBottom
      Left = 330
      Height = 15
      Top = 8
      Width = 79
      BorderSpacing.Left = 10
      Caption = 'Cela Ochronna'
      Font.Color = clRed
      ParentColor = False
      ParentFont = False
      Visible = False
    end
    object lblCelaPalaca: TLabel
      Left = 260
      Height = 15
      Top = 8
      Width = 60
      Caption = 'Cela Paląca'
      Font.Color = clBlue
      ParentColor = False
      ParentFont = False
      Visible = False
    end
    object btnRejestrProsb: TBitBtn
      Left = 312
      Height = 30
      Top = 344
      Width = 152
      Caption = 'Rejestr próśb'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000064000000640000000000000000000000000000000000
        00009F804BFF977641FF977641FF977641FF977641FF977641FF977641FF9776
        41FF977641FF977641FF977641FF987343FF987343FF00000000000000000000
        0000A07F50FFFFFFFFFFF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8C6524FF00000000000000000000
        0000AC8755FFE7FCFFFF0087FAFFBBE4ECFFCB8C69FFBB8767FFBA8867FFB886
        65FFB78566FFB37B5AFFD2AD9CFFF5F7F0FF8C6524FF00000000000000000000
        0000AF9162FFFFFFFFFFFEF6F1FFFDF6F1FFFAF9F5FFFAFBF9FFFAFBF9FFFBFC
        F7FFF7FBF2FFF8F9F5FFFFFFFEFFF1EBE4FF8C6524FF00000000000000000000
        0000BB9869FFD9F4FFFF0087FAFFBAE2E9FFCF906CFFBF8969FFC08C6CFFC08B
        6CFFC28C6EFFBD825FFFD7B39FFFF5F3EDFF8C6524FF00000000000000000000
        0000B09465FFFFFFFFFFFEF6F1FFFEF6F2FFFBF9F4FFF8FBF8FFFBFDFAFFFBFB
        FAFFFFFEFFFFFEFCFBFFFFFFFFFFF1ECE3FF8C6524FF00000000000000000000
        0000B99867FFD8F5FFFF0087FAFFBAE2E8FFCE8E6BFFBE8869FFC38B6EFFC591
        6CFFC59172FFBF8362FFD5B09AFFF6F6F0FF8C6524FF00000000000000000000
        0000B0946BFFFFFFFFFFFEF6EFFFFBF6F0FFF9F9F4FFFCFAFCFFFEFFFEFFFFFF
        FFFFFFFFFFFFF8F6F3FFF9F7F3FFF2EDE6FF8C6524FF00000000000000000000
        0000B9A17DFFE3F7FFFF0087FAFFBFEAEDFFD1916FFFBF8B6CFFC28C6EFFC08C
        6EFFBB8764FFAE7554FFC6A38DFFECE4D9FF8C6524FF00000000000000000000
        0000BCA686FFFFFFFFFFFFFFFEFFFFFFFCFFFFFFFFFFFEFFFFFFFFFFFFFFFAFE
        F8FFF6F8F4FFEDEBE5FFEAE3DCFFD8CDB7FF8C6524FF00000000000000000000
        0000CCB390FFE1F3FBFF0087FAFFBEE8F3FFD09171FFC08C6AFFBF8A67FFBB86
        64FFA66C44FF985427FFAB7A56FFC3B08EFF8C6524FF00000000000000000000
        0000C8B595FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFF8FFF9FAF8FFE4DD
        D2FFD3C6A9FFF6F7F3FFE8E4D5FFB79D73FF8C6524FF00000000000000000000
        0000CFB69AFFDFF3F9FF0087FAFFC0EAF1FFCA8C67FFB2795AFFB67B5CFF985E
        37FFCCB99CFFFFFFFFFFCFBAA0FFA07D46FF8F68290A00000000000000000000
        0000C7B79AFFFFFFFFFFFFFFFFFFFFFDF7FFFCFDFBFFEFF1EDFFEEE9DDFFD4C5
        A9FFBCAC89FFD7C9B5FF997335FF000000000000000000000000000000000000
        0000CBBDA1FFFFFFFFFFFFFFFFFFF9F7F7FFF0E7DEFFDFD7C7FFD8C5B0FFC1AA
        85FFAA9161FFA17E47FF00000000000000000000000000000000000000000000
        0000C3B191FECCBBA0F8C9B79BF3C6B295F3C5B293F3C1AB86F3BFA67DF3AA91
        61FF936C32FF0000000000000000000000000000000000000000
      }
      OnClick = btnRejestrProsbClick
      TabOrder = 20
    end
    object btnDodajDoKoszyka: TSpeedButton
      Left = 112
      Height = 25
      Hint = 'Dodaj osadzonego do koszyka.'
      Top = 325
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
    object btnKreatorWPZ: TSpeedButton
      Left = 192
      Height = 25
      Hint = 'Dodaj osadzonego do koszyka.'
      Top = 174
      Width = 93
      Caption = 'Kreator WPZ'
      Flat = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000064000000640000000000000000000000B36F30E7A85B
        1AF4823B0FF384380FF3A65216F3A15113F39D4D13F39C4912F39B4810F39A47
        10F399470FF39A450EF692410FD99C4F170A0000000000000000C68C4DF8A55A
        1AFF813008FFC3822DFFF1B740FFD48825FFF1A521FFE6981AFFE5A028FFDD99
        23FFD9921EFFDE971AFFBF7214FF8A3C143C0000000000000000C28849F3A55A
        1AFF812E06FFC48B37FFEBA435FF0A0F5EFF273360FF938362FFD48113FFE199
        1EFFDA9929FFDB9B22FFC8831CFF944414330000000000000000C28849F3A55A
        1AFF822F06FFBE8538FFFFC646FF714B3AFF79C2FFFF91EBFFFF3887C0FF8461
        3CFFF59C12FFDEA12CFFC58120FF924314330000000000000000C28849F3A55A
        1AFF822E05FFC1873DFFF5C658FFD48C2FFFF0E9E8FF6DEEFFFF06A4FFFF047B
        F0FF8C6A3FFFFAA418FFCA8929FF904212330000000000000000C3884AF3A75B
        1BFF832F04FFC38A41FFF0C35FFFF3A93AFFB2AE6AFF00FFFFFF00D0FDFF20A0
        F1FF057BEEFF947443FFE78C11FFA04106340000000000000000C48B4DF3AC5E
        1EFF873105FFC48E45FFF2C665FFE6B658FFF3A430FF92CA91FF00FFFFFF05D3
        FDFF20A0F1FF077EF1FF7E502DFF834C242B0000000000000000C68D50F3B064
        21FF893306FFC6914AFFF4CA6BFFE5B75BFFE9B85BFFFF9E27FF93CB93FF00FF
        FFFF05D4FDFF23A3F2FF1776D1FF0071D8500000000000000000C89053F3B369
        25FF8D3907FFC8924EFFF5CF72FFE7BA62FFE6B960FFEBBB5FFFFF9825FF92BB
        88FF00FFFFFF06D3FEFF28A3EEFF0077E6FF68B6D13D00000000CA9357F3B66B
        27FF8F3A0AFFCA9651FFF7D277FFE9BD67FFE9BC65FFE6BA62FFE9BE64FFFF9A
        27FF92BB8BFF04FFFFFF00D8FFFF1A8BCAFFF4DEB1FF4F56D734CC9659F3B971
        2BFF923D0CFFCC9954FFF9D77DFFEAC26CFFEAC06BFFE9BE67FFE7BE65FFECC2
        66FFFF9B2AFF8BBD8AFF13E5FFFFFAF0D6FF9687D4FF000DEFFFCD9A5BF3BC75
        2DFF96410BFFCD9B58FFFAD982FFECC671FFECC56FFFEBC26CFFEABF69FFE7BC
        67FFEEC36BFFEB9827FFE5B57CFFA5C8FAFF002FEFFF1420F5CDD09C5DF3C279
        2FFF9A440CFFCD9C5BFFFBDD87FFEEC977FFEEC875FFECC671FFECC36FFFEAC0
        6BFFE9BF69FFF6CD6DFFDB8822F94094C9BD319FFFA81831F10AD19E5BF3C27B
        2EFF9C440AFFCD9E5EFFFCDE8BFFEECA79FFEEC977FFEEC774FFECC571FFECC3
        6EFFEAC069FFEEC871FFE6A040FFA26433170000000000000000D8A96AF8CA89
        3AFFA34D0DFFD5AA6AFFFFEC9FFFF6D78EFFF6D78AFFF4D487FFF4D385FFF3D1
        81FFF1CE7CFFF7D681FFE0B365FFBD55003D0000000000000000D29D59E7DFB5
        71F4C2884CF3CE9B63F3E6C080F3DEB478F3DEB579F3DEB578F3DEB576F3DDB4
        75F3DDB474F3E3B97AF6CF9954D9B86D260A0000000000000000
      }
      OnClick = btnKreatorWPZClick
      ShowHint = True
      ParentShowHint = False
    end
    object lblUrodziny: TLabel
      AnchorSideLeft.Control = Panel_Zdj
      AnchorSideTop.Control = Panel_Zdj
      AnchorSideTop.Side = asrBottom
      AnchorSideRight.Control = Panel_Zdj
      AnchorSideRight.Side = asrBottom
      Left = 480
      Height = 15
      Top = 286
      Width = 214
      Alignment = taCenter
      Anchors = [akTop, akLeft, akRight]
      AutoSize = False
      BorderSpacing.Top = 4
      Caption = 'lat'
      Font.Color = 16749513
      ParentColor = False
      ParentFont = False
    end
    object btnDodajKolejnyTerminOceny: TSpeedButton
      Left = 242
      Height = 23
      Hint = 'Dodaj kolejny termin oceny okresowej za 6 msc.'
      Top = 56
      Width = 24
      Flat = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000064000000640000000000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00196B3788196B37F2196B37FF196B37F2196B
        3788FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00196B3784288C53FF64BA8DFF95D2B2FF64BA8DFF288C
        53FF196B378CFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF001B6C39F762BA8BFF60BA87FFFFFFFFFF60B987FF67BC
        8FFF196B37F7FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00317B4CFF9CD4B6FFFFFFFFFFFFFFFFFFFFFFFFFF95D2
        B2FF196B37FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0044875DF790D3B1FF92D6B1FFFFFFFFFF65BC8CFF67BC
        8FFF196B37F7FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00518F688061AB81FF95D4B4FFBAE6D0FF6ABB8FFF2D8F
        57FF196B378CFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF0059946F7C58946EF24F8E66FF408459F22E78
        497CFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
      }
      OnClick = btnDodajKolejnyTerminOcenyClick
      ShowHint = True
      ParentShowHint = False
    end
    object DBDataWywiadu: TDBDateTimePicker
      Left = 352
      Height = 23
      Hint = 'Naciśnij N aby wykasować datę.'
      Top = 248
      Width = 83
      DataField = 'data_wywiadu'
      DataSource = DSOsInfo
      ReadOnly = False
      CenturyFrom = 1941
      MaxDate = 2958465
      MinDate = -53780
      TabOrder = 15
      TrailingSeparator = False
      TextForNullDate = 'BRAK'
      LeadingZeros = True
      ShowHint = True
      ParentShowHint = False
      Kind = dtkDate
      TimeFormat = tf24
      TimeDisplay = tdHMS
      DateMode = dmComboBox
      UseDefaultSeparators = True
      HideDateTimeParts = []
      MonthNames = 'Long'
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Height = 347
    Top = 448
    Width = 715
    ActivePage = TabSheetZatrudnienie
    Align = alClient
    Images = DM.ImageList1
    TabHeight = 25
    TabIndex = 1
    TabOrder = 0
    OnChange = PageControl1Change
    object TabSheetNotatnik: TTabSheet
      Caption = 'Notatnik'
      ClientHeight = 314
      ClientWidth = 707
      ImageIndex = 6
      object Panel4: TPanel
        Left = 0
        Height = 31
        Top = 0
        Width = 707
        Align = alTop
        BevelOuter = bvNone
        ClientHeight = 31
        ClientWidth = 707
        Color = clForm
        ParentColor = False
        TabOrder = 1
        object DBText7: TDBText
          Left = 112
          Height = 15
          Top = 0
          Width = 211
          Alignment = taCenter
          AutoSize = False
          DataField = 'wych'
          DataSource = DSOsNotatki
          ParentColor = False
        end
        object DBText8: TDBText
          Left = 112
          Height = 15
          Top = 16
          Width = 211
          Alignment = taCenter
          AutoSize = False
          DataField = 'data'
          DataSource = DSOsNotatki
          ParentColor = False
        end
        object DBNavigator2: TDBNavigator
          Left = 0
          Height = 25
          Top = 6
          Width = 105
          BevelOuter = bvNone
          ChildSizing.EnlargeHorizontal = crsScaleChilds
          ChildSizing.EnlargeVertical = crsScaleChilds
          ChildSizing.ShrinkHorizontal = crsScaleChilds
          ChildSizing.ShrinkVertical = crsScaleChilds
          ChildSizing.Layout = cclLeftToRightThenTopToBottom
          ChildSizing.ControlsPerLine = 100
          ClientHeight = 25
          ClientWidth = 105
          DataSource = DSOsNotatki
          Options = []
          TabOrder = 0
          VisibleButtons = [nbPost, nbCancel]
        end
      end
      object DBMemo1: TDBMemo
        Left = 0
        Height = 258
        Top = 31
        Width = 707
        Align = alClient
        DataField = 'notatka'
        DataSource = DSOsNotatki
        ScrollBars = ssAutoBoth
        TabOrder = 0
      end
    end
    object TabSheetZatrudnienie: TTabSheet
      Caption = 'Zatrudnienie'
      ImageIndex = 5
    end
    object TabSheetZobowiazania: TTabSheet
      Caption = 'Zobowiązania'
      ClientHeight = 314
      ClientWidth = 707
      ImageIndex = 22
      object Panel3: TPanel
        Left = 0
        Height = 314
        Top = 0
        Width = 707
        Align = alClient
        BevelOuter = bvNone
        ClientHeight = 314
        ClientWidth = 707
        Color = clForm
        ParentColor = False
        TabOrder = 0
        object GroupBox1: TGroupBox
          Left = 8
          Height = 176
          Top = 8
          Width = 250
          Caption = 'Alimenty'
          ClientHeight = 156
          ClientWidth = 246
          TabOrder = 0
          object Label12: TLabel
            Left = 16
            Height = 15
            Top = 40
            Width = 73
            Caption = 'Stan na dzień:'
            ParentColor = False
          end
          object Label13: TLabel
            Left = 29
            Height = 15
            Top = 72
            Width = 60
            Caption = 'Zadłużenie:'
            ParentColor = False
          end
          object Label14: TLabel
            Left = 63
            Height = 15
            Top = 104
            Width = 26
            Caption = 'Rata:'
            ParentColor = False
          end
          object Label15: TLabel
            Left = 48
            Height = 15
            Top = 136
            Width = 42
            Caption = 'Wpłacił:'
            ParentColor = False
          end
          object DBEdit3: TDBEdit
            Left = 104
            Height = 23
            Top = 64
            Width = 128
            DataField = 'ali_Zadluzenie'
            DataSource = DSOsInfo
            ReadOnly = True
            CharCase = ecNormal
            MaxLength = 0
            TabOrder = 0
          end
          object DBEdit4: TDBEdit
            Left = 104
            Height = 23
            Top = 96
            Width = 128
            DataField = 'ali_Rata'
            DataSource = DSOsInfo
            ReadOnly = True
            CharCase = ecNormal
            MaxLength = 0
            TabOrder = 1
          end
          object DBEdit5: TDBEdit
            Left = 104
            Height = 23
            Hint = 'Ostatnia wpłata na stan z dnia.'
            Top = 128
            Width = 128
            DataField = 'ali_Wplacil'
            DataSource = DSOsInfo
            ReadOnly = True
            CharCase = ecNormal
            MaxLength = 0
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
          end
          object DBText10: TDBText
            Left = 104
            Height = 15
            Top = 40
            Width = 129
            AutoSize = False
            DataField = 'ali_stan_na_dzien'
            DataSource = DSOsInfo
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object DBCheckBox8: TDBCheckBox
            Left = 104
            Height = 23
            Top = 8
            Width = 90
            Caption = 'Alimenty'
            DataField = 'alimenty'
            DataSource = DSOsInfo
            TabOrder = 3
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
        end
        object GroupBox2: TGroupBox
          Left = 272
          Height = 176
          Top = 8
          Width = 345
          Caption = 'Zobowiązania'
          ClientHeight = 156
          ClientWidth = 341
          TabOrder = 1
          object DBCheckBox7: TDBCheckBox
            Left = 16
            Height = 23
            Top = 8
            Width = 90
            Caption = 'Zobowiązania'
            DataField = 'zobowiazania'
            DataSource = DSOsInfo
            TabOrder = 0
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBMemo2: TDBMemo
            Left = 16
            Height = 90
            Top = 56
            Width = 312
            DataField = 'zob_info'
            DataSource = DSOsInfo
            MaxLength = 100
            TabOrder = 1
          end
          object Label16: TLabel
            Left = 16
            Height = 15
            Top = 37
            Width = 45
            Caption = 'Notatka:'
            ParentColor = False
          end
        end
      end
    end
    object TabSheetWykazy: TTabSheet
      Caption = 'Wykazy'
      ImageIndex = 26
      ParentFont = False
    end
    object TabSheetUwagi: TTabSheet
      Caption = 'Uwagi i Polecenia'
      ImageIndex = 28
    end
    object TabSheetWidzenia: TTabSheet
      Caption = 'Widzenia'
      ImageIndex = 21
    end
    object TabSheetOsobyBliskie: TTabSheet
      Caption = 'Osoby uprawnione'
      ImageIndex = 8
    end
    object TabSheetPaczki: TTabSheet
      Caption = 'Paczki'
      ImageIndex = 11
    end
  end
  object DSOsInfo: TDataSource
    DataSet = ZQOsInfo
    Left = 544
    Top = 112
  end
  object DSOsNotatki: TDataSource
    DataSet = ZQOsNotatki
    Left = 24
    Top = 584
  end
  object ZQOsInfo: TZQuery
    Connection = DM.ZConnection1
    UpdateObject = ZUOsInfo
    AfterPost = ZQOsInfoAfterPost
    SQL.Strings = (
      'SELECT'
      'IDO,'
      'Autoryzacja,'
      'data_autoryzacji,'
      'KoniecKary,'
      'Arch,'
      'Wywiad,'
      'data_wywiadu,'
      'Starszy,'
      'Zatrudnienie,'
      'toceny,'
      'tprzepustki,'
      'tpostpenitu,'
      'tterapii,'
      'twpz,'
      'ulamek_wpz,'
      'wpz_stanowisko,'
      'postpenit_notatka,'
      'GR,'
      'alimenty,'
      'ali_stan_na_dzien,'
      'ali_Zadluzenie,'
      'ali_Rata,'
      'ali_Wplacil,'
      'zobowiazania,'
      'zob_info'
      'FROM os_info'
      'WHERE IDO = :IDO'
    )
    Params = <    
      item
        DataType = ftUnknown
        Name = 'IDO'
        ParamType = ptUnknown
      end>
    Left = 480
    Top = 112
    ParamData = <    
      item
        DataType = ftUnknown
        Name = 'IDO'
        ParamType = ptUnknown
      end>
  end
  object ZQOsNotatki: TZQuery
    Connection = DM.ZConnection1
    UpdateObject = ZUOsNotatki
    AfterPost = ZQOsNotatkiAfterPost
    SQL.Strings = (
      'SELECT'
      'ID,'
      'IDO,'
      'data,'
      'wych,'
      'notatka'
      'FROM os_notatki'
      'WHERE IDO = :IDO'
    )
    Params = <    
      item
        DataType = ftUnknown
        Name = 'IDO'
        ParamType = ptUnknown
      end>
    Left = 24
    Top = 528
    ParamData = <    
      item
        DataType = ftUnknown
        Name = 'IDO'
        ParamType = ptUnknown
      end>
  end
  object ZUOsInfo: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM os_info'
      'WHERE'
      '  os_info.IDO = :OLD_IDO'
    )
    InsertSQL.Strings = (
      'INSERT INTO os_info'
      '  (IDO, Autoryzacja, data_autoryzacji, KoniecKary, Arch, Wywiad, data_wywiadu, Starszy, '
      '   Zatrudnienie, toceny, tprzepustki, tpostpenitu, tterapii, twpz, ulamek_wpz, '
      '   wpz_stanowisko, postpenit_notatka, GR, alimenty, zobowiazania, zob_info)'
      'VALUES'
      '  (:IDOEd, :AutoryzacjaEd, Now(), :KoniecKary, :Arch, :Wywiad, :data_wywiadu,'
      '   :Starszy, :Zatrudnienie, :toceny, :tprzepustki, :tpostpenitu, :tterapii, '
      '   :twpz, :ulamek_wpz, :wpz_stanowisko, :postpenit_notatka, :GR, :alimenty, '
      '   :zobowiazania, :zob_info)'
    )
    ModifySQL.Strings = (
      'UPDATE os_info SET'
      '  Autoryzacja = :AutoryzacjaEd,'
      '  data_autoryzacji = Now(),'
      '  KoniecKary = :KoniecKary,'
      '  Arch = :Arch,'
      '  Wywiad = :Wywiad,'
      '  data_wywiadu = :data_wywiadu,'
      '  Starszy = :Starszy,'
      '  Zatrudnienie = :Zatrudnienie,'
      '  toceny = :toceny,'
      '  tprzepustki = :tprzepustki,'
      '  tpostpenitu = :tpostpenitu,'
      '  tterapii = :tterapii,'
      '  twpz = :twpz,'
      '  ulamek_wpz = :ulamek_wpz,'
      '  wpz_stanowisko = :wpz_stanowisko,'
      '  postpenit_notatka = :postpenit_notatka,'
      '  GR = :GR,'
      '  alimenty = :alimenty,'
      '  zobowiazania = :zobowiazania,'
      '  zob_info = :zob_info'
      'WHERE'
      '  os_info.IDO = :OLD_IDO'
    )
    UseSequenceFieldForRefreshSQL = False
    Left = 616
    Top = 112
    ParamData = <    
      item
        DataType = ftUnknown
        Name = 'AutoryzacjaEd'
        ParamType = ptUnknown
      end    
      item
        DataType = ftUnknown
        Name = 'KoniecKary'
        ParamType = ptUnknown
      end    
      item
        DataType = ftUnknown
        Name = 'Arch'
        ParamType = ptUnknown
      end    
      item
        DataType = ftUnknown
        Name = 'Wywiad'
        ParamType = ptUnknown
      end    
      item
        DataType = ftDate
        Name = 'data_wywiadu'
        ParamType = ptUnknown
      end    
      item
        DataType = ftUnknown
        Name = 'Starszy'
        ParamType = ptUnknown
      end    
      item
        DataType = ftUnknown
        Name = 'Zatrudnienie'
        ParamType = ptUnknown
      end    
      item
        DataType = ftUnknown
        Name = 'toceny'
        ParamType = ptUnknown
      end    
      item
        DataType = ftUnknown
        Name = 'tprzepustki'
        ParamType = ptUnknown
      end    
      item
        DataType = ftUnknown
        Name = 'tpostpenitu'
        ParamType = ptUnknown
      end    
      item
        DataType = ftUnknown
        Name = 'tterapii'
        ParamType = ptUnknown
      end    
      item
        DataType = ftUnknown
        Name = 'twpz'
        ParamType = ptUnknown
      end    
      item
        DataType = ftUnknown
        Name = 'ulamek_wpz'
        ParamType = ptUnknown
      end    
      item
        DataType = ftUnknown
        Name = 'wpz_stanowisko'
        ParamType = ptUnknown
      end    
      item
        DataType = ftUnknown
        Name = 'postpenit_notatka'
        ParamType = ptUnknown
      end    
      item
        DataType = ftUnknown
        Name = 'GR'
        ParamType = ptUnknown
      end    
      item
        DataType = ftUnknown
        Name = 'alimenty'
        ParamType = ptUnknown
      end    
      item
        DataType = ftUnknown
        Name = 'zobowiazania'
        ParamType = ptUnknown
      end    
      item
        DataType = ftUnknown
        Name = 'zob_info'
        ParamType = ptUnknown
      end    
      item
        DataType = ftUnknown
        Name = 'OLD_IDO'
        ParamType = ptUnknown
      end    
      item
        DataType = ftUnknown
        Name = 'IDOEd'
        ParamType = ptUnknown
      end>
  end
  object ZUOsNotatki: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM os_notatki'
      'WHERE'
      '  os_notatki.ID = :OLD_ID'
    )
    InsertSQL.Strings = (
      'INSERT INTO os_notatki'
      '  (IDO, data, wych, notatka)'
      'VALUES'
      '  (:IDOEd, Now(), :wychEd, :notatka)'
    )
    ModifySQL.Strings = (
      'UPDATE os_notatki SET'
      '  IDO = :IDO,'
      '  data =  Now(),'
      '  wych = :wychEd,'
      '  notatka = :notatka'
      'WHERE'
      '  os_notatki.ID = :OLD_ID'
    )
    UseSequenceFieldForRefreshSQL = False
    Left = 24
    Top = 632
    ParamData = <    
      item
        DataType = ftUnknown
        Name = 'IDO'
        ParamType = ptUnknown
      end    
      item
        DataType = ftUnknown
        Name = 'wychEd'
        ParamType = ptUnknown
      end    
      item
        DataType = ftUnknown
        Name = 'notatka'
        ParamType = ptUnknown
      end    
      item
        DataType = ftUnknown
        Name = 'OLD_ID'
        ParamType = ptUnknown
      end    
      item
        DataType = ftUnknown
        Name = 'IDOEd'
        ParamType = ptUnknown
      end>
  end
  object ZQOs: TZQuery
    Connection = DM.ZConnection1
    SQL.Strings = (
      'SELECT'
      'IDO,'
      'NAZWISKO,'
      'IMIE,'
      'CONCAT_WS('' '',NAZWISKO, IMIE) as NazwiskoImie,'
      'OJCIEC,'
      'URODZ,'
      'PRZYJ,'
      'KLASYF,'
      'POC,'
      'STATUS'
      'FROM osadzeni'
      'WHERE IDO = :IDO'
    )
    Params = <    
      item
        DataType = ftUnknown
        Name = 'IDO'
        ParamType = ptUnknown
      end>
    Left = 480
    Top = 64
    ParamData = <    
      item
        DataType = ftUnknown
        Name = 'IDO'
        ParamType = ptUnknown
      end>
  end
  object DSOs: TDataSource
    DataSet = ZQOs
    Left = 544
    Top = 64
  end
end
