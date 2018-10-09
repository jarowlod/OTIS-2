object ZatAddZatrudnienie: TZatAddZatrudnienie
  Left = 389
  Height = 762
  Top = 231
  Width = 931
  Caption = 'Zatrudnienie - Nowy'
  ClientHeight = 762
  ClientWidth = 931
  OnClose = FormClose
  Position = poOwnerFormCenter
  LCLVersion = '6.6'
  object GroupBox2: TGroupBox
    Left = 0
    Height = 412
    Top = 304
    Width = 931
    Align = alClient
    Caption = 'Dane zatrudnienia:'
    ClientHeight = 392
    ClientWidth = 927
    TabOrder = 1
    object plGradient1: TplGradient
      Left = 8
      Height = 97
      Top = 112
      Width = 912
      Anchors = [akTop, akLeft, akRight]
      BevelWidth = 1
      BevelStyle = bvRaised
      Buffered = True
      Direction = gdUpLeft
      ColorStart = clWhite
      ColorEnd = clBtnFace
      StepWidth = 1
      Style = gsVertical
    end
    object Label10: TLabel
      Left = 16
      Height = 15
      Top = 8
      Width = 103
      Caption = 'Status zatrudnienia:'
      ParentColor = False
    end
    object DBcbStatusZatrudnienia: TDBComboBox
      Left = 129
      Height = 23
      Top = 0
      Width = 192
      DataField = 'status_zatrudnienia'
      DataSource = DSZat
      ItemHeight = 15
      Items.Strings = (
        'oczekujący'
        'zatrudniony'
        'wycofany'
      )
      MaxLength = 0
      OnSelect = DBcbStatusZatrudnieniaSelect
      Style = csDropDownList
      TabOrder = 0
    end
    object Label16: TLabel
      Left = 24
      Height = 15
      Top = 40
      Width = 95
      Caption = 'Data zatrudnienia:'
      ParentColor = False
    end
    object Label17: TLabel
      Left = 282
      Height = 15
      Top = 40
      Width = 84
      Caption = 'Data wycofania:'
      ParentColor = False
    end
    object Label26: TLabel
      Left = 528
      Height = 15
      Top = 8
      Width = 73
      Caption = 'Data dodania:'
      ParentColor = False
    end
    object Label35: TLabel
      Left = 55
      Height = 15
      Top = 184
      Width = 64
      Caption = 'Koniec kary:'
      ParentColor = False
    end
    object Label36: TLabel
      Left = 47
      Height = 15
      Top = 128
      Width = 72
      Caption = 'Data badania:'
      ParentColor = False
    end
    object Label37: TLabel
      Left = 230
      Height = 15
      Top = 128
      Width = 137
      Caption = 'Data następnego badania:'
      ParentColor = False
    end
    object Label38: TLabel
      Left = 70
      Height = 15
      Top = 152
      Width = 49
      Caption = 'Urlop od:'
      ParentColor = False
    end
    object Label39: TLabel
      Left = 220
      Height = 15
      Top = 152
      Width = 17
      Caption = 'do:'
      ParentColor = False
    end
    object Label41: TLabel
      Left = 96
      Height = 15
      Top = 64
      Width = 23
      Caption = 'Etat:'
      ParentColor = False
    end
    object DBText9: TDBText
      Left = 608
      Height = 15
      Top = 8
      Width = 227
      AutoSize = False
      DataField = 'data_dodania'
      DataSource = DSZat
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object DBDataZatrudnienia: TDBDateTimePicker
      Left = 129
      Height = 23
      Top = 32
      Width = 83
      DataField = 'zat_od'
      DataSource = DSZat
      ReadOnly = False
      CenturyFrom = 1941
      MaxDate = 2958465
      MinDate = -53780
      TabOrder = 1
      TrailingSeparator = False
      TextForNullDate = 'NULL'
      LeadingZeros = True
      Kind = dtkDate
      TimeFormat = tf24
      TimeDisplay = tdHMS
      DateMode = dmComboBox
      UseDefaultSeparators = True
      HideDateTimeParts = []
      MonthNames = 'Long'
    end
    object DBDataWycofania: TDBDateTimePicker
      Left = 377
      Height = 23
      Top = 32
      Width = 83
      DataField = 'zat_do'
      DataSource = DSZat
      ReadOnly = False
      CenturyFrom = 1941
      MaxDate = 2958465
      MinDate = -53780
      TabOrder = 2
      TrailingSeparator = False
      TextForNullDate = 'NULL'
      LeadingZeros = True
      Kind = dtkDate
      TimeFormat = tf24
      TimeDisplay = tdHMS
      DateMode = dmComboBox
      UseDefaultSeparators = True
      HideDateTimeParts = []
      MonthNames = 'Long'
    end
    object DBDateTimePicker3: TDBDateTimePicker
      Left = 129
      Height = 23
      Top = 120
      Width = 83
      DataField = 'data_badania'
      DataSource = DSZat
      ReadOnly = False
      CenturyFrom = 1941
      MaxDate = 2958465
      MinDate = -53780
      TabOrder = 4
      TrailingSeparator = False
      TextForNullDate = 'NULL'
      LeadingZeros = True
      Kind = dtkDate
      TimeFormat = tf24
      TimeDisplay = tdHMS
      DateMode = dmComboBox
      UseDefaultSeparators = True
      HideDateTimeParts = []
      MonthNames = 'Long'
      OnEditingDone = DBDateTimePicker3EditingDone
    end
    object DBDateTimePicker4: TDBDateTimePicker
      Left = 377
      Height = 23
      Top = 120
      Width = 83
      DataField = 'data_nastepnego_badania'
      DataSource = DSZat
      ReadOnly = False
      CenturyFrom = 1941
      MaxDate = 2958465
      MinDate = -53780
      TabOrder = 5
      TrailingSeparator = False
      TextForNullDate = 'NULL'
      LeadingZeros = True
      Kind = dtkDate
      TimeFormat = tf24
      TimeDisplay = tdHMS
      DateMode = dmComboBox
      UseDefaultSeparators = True
      HideDateTimeParts = []
      MonthNames = 'Long'
    end
    object DBDateTimePicker5: TDBDateTimePicker
      Left = 129
      Height = 23
      Top = 144
      Width = 83
      DataField = 'urlop_od'
      DataSource = DSZat
      ReadOnly = False
      CenturyFrom = 1941
      MaxDate = 2958465
      MinDate = -53780
      TabOrder = 6
      TrailingSeparator = False
      TextForNullDate = 'NULL'
      LeadingZeros = True
      Kind = dtkDate
      TimeFormat = tf24
      TimeDisplay = tdHMS
      DateMode = dmComboBox
      UseDefaultSeparators = True
      HideDateTimeParts = []
      MonthNames = 'Long'
    end
    object DBDateTimePicker6: TDBDateTimePicker
      Left = 240
      Height = 23
      Top = 144
      Width = 83
      DataField = 'urlop_do'
      DataSource = DSZat
      ReadOnly = False
      CenturyFrom = 1941
      MaxDate = 2958465
      MinDate = -53780
      TabOrder = 7
      TrailingSeparator = False
      TextForNullDate = 'NULL'
      LeadingZeros = True
      Kind = dtkDate
      TimeFormat = tf24
      TimeDisplay = tdHMS
      DateMode = dmComboBox
      UseDefaultSeparators = True
      HideDateTimeParts = []
      MonthNames = 'Long'
    end
    object DBDateTimePicker7: TDBDateTimePicker
      Left = 129
      Height = 23
      Top = 176
      Width = 83
      DataField = 'koniec_kary'
      DataSource = DSZat
      ReadOnly = False
      CenturyFrom = 1941
      MaxDate = 2958465
      MinDate = -53780
      TabOrder = 8
      TrailingSeparator = False
      TextForNullDate = 'NULL'
      LeadingZeros = True
      Kind = dtkDate
      TimeFormat = tf24
      TimeDisplay = tdHMS
      DateMode = dmComboBox
      UseDefaultSeparators = True
      HideDateTimeParts = []
      MonthNames = 'Long'
    end
    object DBCheckBox2: TDBCheckBox
      Left = 680
      Height = 23
      Top = 144
      Width = 90
      Caption = 'Zobowiązania'
      DataField = 'zobowiazania'
      DataSource = DSZat
      TabOrder = 9
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object DBCheckBox3: TDBCheckBox
      Left = 680
      Height = 23
      Top = 168
      Width = 90
      Caption = 'Alimenty'
      DataField = 'alimety'
      DataSource = DSZat
      TabOrder = 10
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object DBcbPrzyczynaWycofania: TDBComboBox
      Left = 377
      Height = 23
      Top = 56
      Width = 474
      AutoComplete = True
      AutoCompleteText = [cbactEnabled, cbactEndOfLineComplete, cbactSearchAscending]
      AutoDropDown = True
      CharCase = ecUppercase
      DataField = 'powod_wycofania'
      DataSource = DSZat
      ItemHeight = 15
      Items.Strings = (
        'DYSCYPLINARNIE'
        'KONIEC KARY'
        'KONIEC TERAPII, ZMIANA PAWILONU'
        'NIEPRZESTRZEGANIE WARUNKÓW ZATRUDNIENIA'
        'ORZECZENIE LEKARZA MEDYCYNY PRACY'
        'OŚWIADCZENIE OSADZONEGO'
        'TRANSPORT'
        'UBYŁ'
        'WNIOSEK ZATRUDNIAJĄCEGO'
        'WPZ'
        'ZMIANA FORMY ZATRUDNIENIA'
        'ZMIANA MIEJSCA ZATRUDNIENIA'
        'ZMIANA PODGRUPY KLASYFIKACYJNEJ'
        'ZMIANA STANOWISKA PRACY'
        'ZMIANA SYSTEMU KONWOJOWANIA'
      )
      MaxLength = 100
      Sorted = True
      TabOrder = 3
    end
    object Label1: TLabel
      Left = 254
      Height = 15
      Top = 64
      Width = 112
      Caption = 'Przyczyna wycofania:'
      ParentColor = False
    end
    object GroupBox4: TGroupBox
      Left = 0
      Height = 184
      Top = 208
      Width = 927
      Align = alBottom
      Anchors = [akTop, akLeft, akRight]
      Caption = 'Dane osadzonego:'
      ClientHeight = 164
      ClientWidth = 923
      TabOrder = 11
      object Label12: TLabel
        Left = 72
        Height = 15
        Top = 8
        Width = 33
        Caption = 'Adres:'
        ParentColor = False
      end
      object Label28: TLabel
        Left = 27
        Height = 15
        Top = 32
        Width = 78
        Caption = 'Kod pocztowy:'
        ParentColor = False
      end
      object Label29: TLabel
        Left = 344
        Height = 15
        Top = 32
        Width = 77
        Caption = 'Wykształcenie:'
        ParentColor = False
      end
      object Label30: TLabel
        Left = 382
        Height = 15
        Top = 56
        Width = 39
        Caption = 'Zawód:'
        ParentColor = False
      end
      object DBCheckBox1: TDBCheckBox
        Left = 672
        Height = 23
        Top = 48
        Width = 131
        Caption = 'Zawód potwierdzony'
        DataField = 'zawod_potwierdzony'
        DataSource = DSZat
        ParentBiDiMode = False
        TabOrder = 6
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object Label31: TLabel
        Left = 75
        Height = 15
        Top = 56
        Width = 30
        Caption = 'Pesel:'
        ParentColor = False
      end
      object Label32: TLabel
        Left = 42
        Height = 15
        Top = 104
        Width = 63
        Caption = 'Nr dowodu:'
        ParentColor = False
      end
      object Label33: TLabel
        Left = 367
        Height = 15
        Top = 104
        Width = 54
        Caption = 'Karalność:'
        ParentColor = False
      end
      object Label34: TLabel
        Left = 402
        Height = 15
        Top = 80
        Width = 19
        Caption = 'Art:'
        ParentColor = False
      end
      object Label40: TLabel
        Left = 7
        Height = 15
        Top = 80
        Width = 98
        Caption = 'Miejsce urodzenia:'
        ParentColor = False
      end
      object DBEdit2: TDBEdit
        Left = 112
        Height = 23
        Top = 0
        Width = 551
        DataField = 'adres'
        DataSource = DSZat
        CharCase = ecNormal
        MaxLength = 100
        TabOrder = 0
      end
      object DBEdit3: TDBEdit
        Left = 112
        Height = 23
        Top = 24
        Width = 160
        DataField = 'kod_pocztowy'
        DataSource = DSZat
        CharCase = ecNormal
        MaxLength = 6
        TabOrder = 1
      end
      object DBEdit4: TDBEdit
        Left = 112
        Height = 23
        Top = 72
        Width = 160
        DataField = 'miejsce_urodzenia'
        DataSource = DSZat
        CharCase = ecNormal
        MaxLength = 50
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 112
        Height = 23
        Top = 48
        Width = 160
        DataField = 'pesel'
        DataSource = DSZat
        CharCase = ecNormal
        MaxLength = 11
        TabOrder = 2
      end
      object DBEdit6: TDBEdit
        Left = 112
        Height = 23
        Top = 96
        Width = 160
        DataField = 'nr_dowodu'
        DataSource = DSZat
        CharCase = ecNormal
        MaxLength = 15
        TabOrder = 4
      end
      object DBEdit7: TDBEdit
        Left = 430
        Height = 23
        Top = 72
        Width = 233
        DataField = 'art'
        DataSource = DSZat
        CharCase = ecNormal
        MaxLength = 100
        TabOrder = 7
      end
      object DBEdit9: TDBEdit
        Left = 430
        Height = 23
        Top = 48
        Width = 233
        DataField = 'zawod'
        DataSource = DSZat
        CharCase = ecNormal
        MaxLength = 50
        TabOrder = 5
      end
      object DBEdit10: TDBEdit
        Left = 430
        Height = 23
        Top = 96
        Width = 233
        DataField = 'karalnosc'
        DataSource = DSZat
        CharCase = ecNormal
        MaxLength = 11
        TabOrder = 8
      end
      object btnWprowadzPoprzednieDaneOs: TBitBtn
        Left = 7
        Height = 30
        Top = 128
        Width = 266
        Caption = 'Wprowadź poprzednie dane'
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000064000000640000000000000000000000000000000000
          0000000000000000000000000000309638F42AA63CF40E9321F4119423F41196
          23F40D8419F40000000000000000000000000000000000000000000000000000
          000000000000000000000000000050BA64FF46DC70FF13C039FF19C23EFF1AC6
          3FFF129D27FF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000004CB661FF42D56BFF12BC38FF18BE3EFF19C1
          3EFF129A27FF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000004CB763FF41D76FFF11BD3AFF18C042FF19C4
          41FF129D27FF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000004EB965FF41D972FF12BF40FF17C246FF18C5
          46FF129E29FF0000000000000000000000000000000000000000000000000000
          000000000000000000000000000050BD69FF40DA75FF11C243FF17C449FF18C7
          4AFF12A02CFF0000000000000000000000000000000000000000000000000000
          000000000000000000000000000050BE6BFF40DD7AFF11C547FF17C74CFF18CA
          4DFF12A22FFF0000000000000000000000000000000000000000000000000000
          000000000000000000000000000055C574FF3FDE80FF11C84CFF17C951FF18CD
          52FF12A331FF0000000000000000000000000000000000000000000000000000
          000000000000000000000000000053C875FF3ADE81FF0FCA52FF16CC58FF17D0
          58FF12A635FF0000000000000000000000000000000000000000000000000000
          00004FBC61A556B962AF43AD4BC77ED99AFF55E79BFF10CD5AFF11CE5AFF10D0
          5AFF0EA937FF0A7712C70C7E19AF0C7915A80000000000000000000000000000
          00004EC1646999E7BBFF83F5C7FF58EAA7FF5FEAA9FF4EE69BFF36DD86FF27D8
          73FF1DD368FF17D869FF12B845FF0E7F177A0000000000000000000000000000
          00000000000053C76B699CEFC3FF76F3C2FF49E8A0FF56EAA6FF5AEAA9FF59E9
          A7FF51EBA5FF4CDE8BFF33A43F69000000000000000000000000000000000000
          0000000000000000000055CA6E689EF0C5FA78F4C5FF4BEBA6FF53EBA8FF54ED
          ADFF55E49DFF59C76F8600000000000000000000000000000000000000000000
          000000000000000000000000000055D070699EF2C8FF76F4C6FF4AECAEFF53E9
          A4FF53CB6F9755C1640700000000000000000000000000000000000000000000
          00000000000000000000000000000000000055D2727EA7F7D4FF74F3C1FF4FD0
          739F000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000048CC62085ED57D9C67DA87B651CC
          690F000000000000000000000000000000000000000000000000
        }
        OnClick = btnWprowadzPoprzednieDaneOsClick
        TabOrder = 9
      end
      object DBComboBox5: TDBComboBox
        Left = 430
        Height = 23
        Top = 24
        Width = 233
        AutoComplete = True
        AutoCompleteText = [cbactEnabled, cbactEndOfLineComplete, cbactSearchAscending]
        AutoDropDown = True
        CharCase = ecUppercase
        DataField = 'wyksztalcenie'
        DataSource = DSZat
        ItemHeight = 15
        Items.Strings = (
          'BRAK'
          'GIMNAZJALNE'
          'PODSTAWOWE'
          'ŚREDNIE'
          'ŚREDNIE ZAWODOWE'
          'WYŻSZE'
          'ZAWODOWE'
        )
        MaxLength = 50
        Sorted = True
        TabOrder = 10
      end
    end
    object DBComboBox4: TDBComboBox
      Left = 129
      Height = 23
      Top = 56
      Width = 83
      AutoComplete = True
      AutoCompleteText = [cbactEnabled, cbactEndOfLineComplete, cbactSearchAscending]
      AutoDropDown = True
      CharCase = ecUppercase
      DataField = 'etat'
      DataSource = DSZat
      DropDownCount = 9
      ItemHeight = 15
      Items.Strings = (
        ''
        '1/8'
        '2/8'
        '3/8'
        '4/8'
        '5/8'
        '6/8'
        '7/8'
        '8/8'
        'DO 90 GODZ.'
      )
      MaxLength = 20
      Sorted = True
      Style = csDropDownList
      TabOrder = 12
    end
    object Label13: TLabel
      Left = 13
      Height = 15
      Top = 86
      Width = 106
      Caption = 'Rodzaj zatrudnienia:'
      ParentColor = False
    end
    object DBComboBox6: TDBComboBox
      Left = 129
      Height = 23
      Top = 80
      Width = 83
      AutoComplete = True
      AutoCompleteText = [cbactEnabled, cbactEndOfLineComplete, cbactSearchAscending]
      AutoDropDown = True
      CharCase = ecUppercase
      DataField = 'rodzaj_zatrudnienia'
      DataSource = DSZat
      ItemHeight = 15
      Items.Strings = (
        ''
        '123§1'
        '123§2'
        '123a§1'
        '123a§2'
        '123a§3'
      )
      MaxLength = 10
      Sorted = True
      Style = csDropDownList
      TabOrder = 13
    end
    object btnWprowadzPoprzednieDaneZat: TBitBtn
      Left = 792
      Height = 79
      Top = 120
      Width = 123
      Caption = 'Poprzednie dane'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000064000000640000000000000000000000215A1A71267F
        2CFB288932F3288731F3288731F3278832F3278731F3298B33F3298E33F32888
        32F3288830F3288830F3288830F3288932F326822DFB215B1B7126802DFF35C6
        5BFF33C656FF33C555FF33C556FF31C251FF31C251FF25AB3FFF2A9D3CFF33C4
        56FF33C456FF33C556FF33C556FF33C656FF33C656FF27812EFF288C33F235C6
        5BFF35C65BFF35C65BFF35C65BFF2DBC4CFF0E8D23FF13460AFF257B2BFF35C6
        5CFF35C65CFF35C65CFF35C65CFF35C65CFF35C65CFF298F35F2288B33F333C5
        57FF35C65BFF35C65BFF2FC052FF008415FF396635FFF7F6F2FF228C31FF35C6
        5CFF35C65CFF35C65CFF35C65CFF35C65BFF35C65BFF298E35F3278C34F333C4
        59FF35C65BFF34CA5CFF058018FF315B2BFFFFFFFFFFFFFDFFFF005E00FF0A94
        28FF0A8E23FF0A8F23FF0A8F23FF16942FFF31BB56FF289339F3248830F335C9
        5EFF34CA61FF0B9025FF45793EFFFFFEFFFFFFFFFFFFFAFBFAFFD7E4D5FFC5DC
        C4FFC5DCC4FFC5DCC4FFC5DCC4FFC5DCC4FF1E9031FF24973BF3248E36F32ACE
        5EFF0C8520FF4E8246FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFCFE1CBFF0B8C25FF269A3DF370C786F338A6
        50FF568B4CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFD7E4D5FF2B9C47FF65C381F373C48AF376CD
        95FF8EB98BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFD7E4D5FF63C07FFF67C082F36CBE80F382E7
        B4FF5FC280FF74AD75FFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F6F2FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFD7E4D5FF5ABD79FF5FBF7CF36DC385F382E0
        B0FF81E4B1FF5DCA88FF7AB67EFFF9F7F6FFFFFFFFFFFAFBFBFFD7E4D5FFCBDD
        C5FFCEE1CBFFD1E5CFFFD3E7D0FFD3E7D0FF64C383FF5EC17FF370C78BF383E3
        B4FF84DEB0FF83E4B6FF65CE92FF67B16FFFF7F6F2FFFEF9FBFF38A556FF52C3
        80FF5AC586FF63CC8FFF65CC90FF66CC90FF74DBA8FF5DC07EF372CA91F381E3
        B6FF81E0B4FF82E0B4FF80E5B9FF5ECE94FF66B370FFF7F6F2FF67C98CFF7EE9
        BFFF82E5BCFF83E5BDFF83E6BEFF81E7BCFF77E3B9FF60C281F373CD93F27FE3
        BBFF81E1B7FF81E2B6FF82E2B7FF7EE4BBFF5DD193FF5FB46DFF72CC90FF80E7
        BEFF81E3B8FF81E3B9FF81E2B9FF7FE2B8FF78E4B9FF64C88CF271CC93FF7CE8
        C1FF80E6BEFF7FE5BFFF7FE5BFFF7FE5BEFF7AE7C1FF6EDFB0FF77DDA9FF7EE8
        C4FF7EE6C0FF7FE7C1FF7EE6C1FF7EE8C1FF79E9C4FF6BCB8DFF73C2817177D1
        99FB76D39DF373D299F371D199F371D199F371D298F372D59BF372D59DF371D3
        9BF373D39AF374D39BF376D59DF378D7A1F379D39DFB70C68271
      }
      OnClick = btnWprowadzPoprzednieDaneZatClick
      TabOrder = 14
    end
    object DBDateTimePicker8: TDBDateTimePicker
      Left = 377
      Height = 23
      Top = 176
      Width = 83
      DataField = 'data_nastepnego_BHP'
      DataSource = DSZat
      ReadOnly = False
      CenturyFrom = 1941
      MaxDate = 2958465
      MinDate = -53780
      TabOrder = 15
      TrailingSeparator = False
      TextForNullDate = 'NULL'
      LeadingZeros = True
      Kind = dtkDate
      TimeFormat = tf24
      TimeDisplay = tdHMS
      DateMode = dmComboBox
      UseDefaultSeparators = True
      HideDateTimeParts = []
      MonthNames = 'Long'
    end
    object Label43: TLabel
      Left = 248
      Height = 15
      Top = 184
      Width = 118
      Caption = 'Data następnego BHP:'
      ParentColor = False
    end
    object Label44: TLabel
      Left = 336
      Height = 15
      Top = 152
      Width = 140
      Caption = 'Data planowanego urlopu:'
      ParentColor = False
    end
    object DBDateTimePicker9: TDBDateTimePicker
      Left = 480
      Height = 23
      Top = 144
      Width = 83
      DataField = 'data_nastepnego_urlopu'
      DataSource = DSZat
      ReadOnly = False
      CenturyFrom = 1941
      MaxDate = 2958465
      MinDate = -53780
      TabOrder = 16
      TrailingSeparator = False
      TextForNullDate = 'NULL'
      LeadingZeros = True
      Kind = dtkDate
      TimeFormat = tf24
      TimeDisplay = tdHMS
      DateMode = dmComboBox
      UseDefaultSeparators = True
      HideDateTimeParts = []
      MonthNames = 'Long'
    end
  end
  object Panel5: TPanel
    Left = 0
    Height = 304
    Top = 0
    Width = 931
    Align = alTop
    ClientHeight = 304
    ClientWidth = 931
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 1
      Height = 302
      Top = 1
      Width = 320
      Align = alLeft
      Caption = 'Osadzony'
      ClientHeight = 282
      ClientWidth = 316
      TabOrder = 0
      object Label2: TLabel
        Left = 49
        Height = 15
        Top = 52
        Width = 23
        Caption = 'IDO:'
        ParentColor = False
      end
      object Label3: TLabel
        Left = 19
        Height = 15
        Top = 74
        Width = 53
        Caption = 'Nazwisko:'
        ParentColor = False
      end
      object Label4: TLabel
        Left = 46
        Height = 15
        Top = 96
        Width = 26
        Caption = 'Imię:'
        ParentColor = False
      end
      object Label5: TLabel
        Left = 21
        Height = 15
        Top = 118
        Width = 51
        Caption = 'Imię ojca:'
        ParentColor = False
      end
      object Label6: TLabel
        Left = 18
        Height = 15
        Top = 140
        Width = 54
        Caption = 'Urodzony:'
        ParentColor = False
      end
      object Label7: TLabel
        Left = 28
        Height = 15
        Top = 162
        Width = 44
        Caption = 'Przyjęty:'
        ParentColor = False
      end
      object Label8: TLabel
        Left = 8
        Height = 15
        Top = 184
        Width = 64
        Caption = 'Klasyfikacja:'
        ParentColor = False
      end
      object Label9: TLabel
        Left = 208
        Height = 15
        Top = 52
        Width = 27
        Caption = 'POC:'
        ParentColor = False
      end
      object DBText1: TDBText
        Left = 80
        Height = 15
        Top = 52
        Width = 104
        AutoSize = False
        DataField = 'ido'
        DataSource = DSZat
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object DBText2: TDBText
        Left = 80
        Height = 15
        Top = 74
        Width = 227
        AutoSize = False
        DataField = 'Nazwisko'
        DataSource = DSZat
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object DBText3: TDBText
        Left = 80
        Height = 15
        Top = 96
        Width = 227
        AutoSize = False
        DataField = 'Imie'
        DataSource = DSZat
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object DBText4: TDBText
        Left = 80
        Height = 15
        Top = 118
        Width = 227
        AutoSize = False
        DataField = 'Ojciec'
        DataSource = DSZat
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object DBText5: TDBText
        Left = 80
        Height = 15
        Top = 140
        Width = 104
        AutoSize = False
        DataField = 'Urodzony'
        DataSource = DSZat
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object DBText6: TDBText
        Left = 80
        Height = 15
        Top = 162
        Width = 104
        AutoSize = False
        DataField = 'Przyjety'
        DataSource = DSZat
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object DBText7: TDBText
        Left = 80
        Height = 15
        Top = 184
        Width = 104
        AutoSize = False
        DataField = 'Klasyf'
        DataSource = DSZat
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object DBText8: TDBText
        Left = 243
        Height = 15
        Top = 52
        Width = 64
        AutoSize = False
        DataField = 'POC'
        DataSource = DSZat
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object BitBtn3: TBitBtn
        Left = 8
        Height = 30
        Top = 8
        Width = 299
        Caption = 'Wybierz osadzonego'
        Kind = bkRetry
        OnClick = BitBtn3Click
        TabOrder = 0
      end
      object DBCheckBox4: TDBCheckBox
        Left = 176
        Height = 23
        Top = 208
        Width = 131
        Caption = 'Uczestnik podkultury'
        DataField = 'podkultura'
        DataSource = DSZat
        TabOrder = 1
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object Label11: TLabel
        Left = 152
        Height = 15
        Top = 248
        Width = 34
        Caption = 'Pobyt:'
        ParentColor = False
      end
      object DBComboBox3: TDBComboBox
        Left = 195
        Height = 23
        Top = 240
        Width = 112
        DataField = 'pobyt'
        DataSource = DSZat
        ItemHeight = 15
        Items.Strings = (
          'Aktualny'
          'Uprzedni'
        )
        MaxLength = 0
        Style = csDropDownList
        TabOrder = 3
      end
      object Label42: TLabel
        Left = 8
        Height = 15
        Top = 224
        Width = 85
        Caption = 'Nr Ewidencyjny:'
        ParentColor = False
      end
      object DBEdit11: TDBEdit
        Left = 8
        Height = 23
        Top = 240
        Width = 102
        DataField = 'nr_ewidencyjny'
        DataSource = DSZat
        CharCase = ecNormal
        MaxLength = 0
        TabOrder = 2
      end
    end
    object GroupBox3: TGroupBox
      Left = 321
      Height = 302
      Top = 1
      Width = 609
      Align = alClient
      Caption = 'Stanowisko / Grupa'
      ClientHeight = 282
      ClientWidth = 605
      TabOrder = 1
      object BitBtn4: TBitBtn
        Left = 8
        Height = 30
        Top = 8
        Width = 312
        Caption = 'Wybierz Stanowisko-Grupę'
        Kind = bkRetry
        OnClick = BitBtn4Click
        TabOrder = 0
      end
      object lblNazwa: TLabel
        Left = 160
        Height = 15
        Top = 52
        Width = 438
        Anchors = [akTop, akLeft, akRight]
        AutoSize = False
        Caption = '(Brak)'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label15: TLabel
        Left = 8
        Height = 15
        Top = 52
        Width = 143
        Caption = 'Nazwa Stanowiska - Grupy:'
        ParentColor = False
      end
      object Label21: TLabel
        Left = 108
        Height = 15
        Top = 74
        Width = 43
        Caption = 'Miejsce:'
        ParentColor = False
      end
      object lblMiejsce: TLabel
        Left = 160
        Height = 15
        Top = 74
        Width = 438
        Anchors = [akTop, akLeft, akRight]
        AutoSize = False
        Caption = '(Brak)'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label22: TLabel
        Left = 88
        Height = 15
        Top = 96
        Width = 63
        Caption = 'Stanowisko:'
        ParentColor = False
      end
      object lblStanowisko: TLabel
        Left = 160
        Height = 15
        Top = 96
        Width = 438
        Anchors = [akTop, akLeft, akRight]
        AutoSize = False
        Caption = '(Brak)'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label23: TLabel
        Left = 110
        Height = 15
        Top = 118
        Width = 41
        Caption = 'System:'
        ParentColor = False
      end
      object lblSystem: TLabel
        Left = 160
        Height = 15
        Top = 118
        Width = 438
        Anchors = [akTop, akLeft, akRight]
        AutoSize = False
        Caption = '(Brak)'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label24: TLabel
        Left = 114
        Height = 15
        Top = 140
        Width = 37
        Caption = 'Forma:'
        ParentColor = False
      end
      object lblForma: TLabel
        Left = 160
        Height = 15
        Top = 140
        Width = 438
        Anchors = [akTop, akLeft, akRight]
        AutoSize = False
        Caption = '(Brak)'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label25: TLabel
        Left = 8
        Height = 15
        Top = 162
        Width = 27
        Caption = 'Opis:'
        ParentColor = False
      end
      object memOpis: TMemo
        Left = 8
        Height = 90
        Top = 184
        Width = 590
        Anchors = [akTop, akLeft, akRight]
        BorderStyle = bsNone
        ReadOnly = True
        TabOrder = 2
      end
      object BitBtn5: TBitBtn
        Left = 328
        Height = 30
        Top = 8
        Width = 72
        Caption = 'Usuń'
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000064000000640000000000000000000000000000120000
          002C0046699C005C8BBF005C8BBF005C8BBF005C8BBF005C8BBF005C8BBF005C
          8BBF005C8BBF005C8BBF005C8BBF0046699C0000002C000000120000000A0000
          0016006395B486CFF0FF81CBEDFF81CBEDFF81CBEDFF81CBEDFF81CBEDFF81CB
          EDFF86CFF0FF4B8FB1FF86CFF0FF006395B4004060510000000A000084990000
          80CC001085EE1B2996FF192894FF192894FF3250ABFF7CC7E8FF7CC7E8FF7CC7
          E8FF84CEEEFF579BBDFF84CEEEFFF4B62EFF006CA3A800527B00000098CC5E5E
          F7FF5E5EF7FF5E5EF7FF5E5EF7FF5E5EF7FF1928A8FF7FCAE9FF7FCAE9FF7FCA
          E9FF87D0EFFF5FA3C5FF87D0EFFFFEC941FF0072ABA00072AB000000A6990000
          A7CC0010A8EC1C2AB6FF1A29B5FF1A29B5FF3552C2FF82CDEBFF82CDEBFF82CD
          EBFF8AD3F0FF62A6C8FF8AD3F0FFE9E9DBFF0074AE9D0074AE000000A700001E
          AC000076B19A8ED6F2FF87D0EDFF87D0EDFF87D0EDFF87D0EDFF87D0EDFF87D0
          EDFF8ED6F2FF66AACCFF8ED6F2FFF0F0E6FF0076B19A0076B100003DAF000079
          B5000079B59792DAF4FF8BD4F0FF8BD4F0FF8BD4F0FF8BD4F0FF8BD4F0FF8BD4
          F0FF92DAF4FF69ADCFFF92DAF4FFF8F8F3FF0079B5970079B500007BB800007B
          B800007BB89497DEF6FF90D8F2FF90D8F2FF90D8F2FF90D8F2FF90D8F2FF90D8
          F2FF97DEF6FF79BDDCFF78BDDCFFFEFEFDFF007BB894007BB800007DBB00007D
          BB00007DBB919BE1F7FF94DBF4FF94DBF4FF94DBF4FF94DBF4FF94DBF4FF94DB
          F4FF94DBF4FF9EE4F9FF7CC0DEFF007DBB91007DBB33007CBA00007FBE00007F
          BE00007FBE8E9EE5F9FF98DFF6FF98DFF6FF98DFF6FF98DFF6FF98DFF6FF98DF
          F6FF98DFF6FF98DFF6FFA1E8FAFF007FBE8E007EBE00007EBD000081C1000081
          C1000081C18BA3E8FBFF9DE3F9FF9DE3F9FF9DE3F9FF9DE3F9FF9DE3F9FF9DE3
          F9FF9DE3F9FF9DE3F9FFA3E8FBFF0081C18B0081C1000081C1000083C4000083
          C4000083C489A6EBFCFFA1E6FBFFA1E6FBFFA1E6FBFFA1E6FBFFA1E6FBFFA1E6
          FBFFA1E6FBFFA1E6FBFFA6EBFCFF0083C4890083C4000083C4000084C6000084
          C6000084C686A9EEFDFFA4E9FCFFA4E9FCFFA4E9FCFFA4E9FCFFA4E9FCFFA4E9
          FCFFA4E9FCFFA4E9FCFFA9EEFDFF0084C6860084C6000084C6000086C9000086
          C9000086C984ACF1FFFFA7ECFEFFA7ECFEFFA7ECFEFFA7ECFEFFA7ECFEFFA7EC
          FEFFA7ECFEFFA7ECFEFFACF1FFFF0086C9840086C9000086C9000087CA000087
          CA000087CA82B1F5FFFFAEF2FFFFAEF2FFFFAEF2FFFFAEF2FFFFAEF2FFFFAEF2
          FFFFAEF2FFFFAEF2FFFFB1F5FFFF0087CA820087CA000087CA000088CB000088
          CB000088CC610088CC810088CC810088CC810088CC810088CC810088CC810088
          CC810088CC810088CC810088CC810088CC610088CB000088CB00
        }
        OnClick = BitBtn5Click
        TabOrder = 1
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Height = 46
    Top = 716
    Width = 931
    Align = alBottom
    BevelOuter = bvNone
    ClientHeight = 46
    ClientWidth = 931
    TabOrder = 2
    object btnOK: TBitBtn
      Left = 698
      Height = 30
      Top = 8
      Width = 100
      Anchors = [akTop, akRight]
      DefaultCaption = True
      Kind = bkOK
      ModalResult = 1
      OnClick = btnOKClick
      TabOrder = 0
    end
    object btnAnuluj: TBitBtn
      Left = 818
      Height = 30
      Top = 8
      Width = 100
      Anchors = [akTop, akRight]
      Cancel = True
      DefaultCaption = True
      Kind = bkCancel
      ModalResult = 2
      OnClick = btnAnulujClick
      TabOrder = 1
    end
    object btnWyslijKomunikaty: TBitBtn
      Left = 336
      Height = 30
      Hint = 'Przesyła komunikty do właściwego wychowawcy, BHP, kierownika.'
      Top = 8
      Width = 139
      Caption = 'Roześlij komunikaty'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000064000000640000000000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00007D21EB037B1EFF00791504FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF0001832BEB43A15FFF007B1FCC00791906FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00219751FD1B9149FD158F43FD0F8B
        3BFD3A9F5EFF80C196FF46A362FF007D1FD100791907FFFFFF008E512BBFB063
        31EFBB7038FABE773CFBC17B40FBC27E42FB299B5BFF90CAA9FF8DC8A5FF8AC6
        A1FF88C59EFF6AB685FF82C297FF48A566FF187C25FA87532AC1A35D31DEF8F3
        EEFDF5ECE4FEFBF5F0FFFBF7F1FFFBF7F3FF319F63FF94CDADFF6FBA8EFF6BB8
        89FF66B685FF61B380FF67B582FF83C298FF3CA05CFF037F26FEBE6F3CFEFCF9
        F5FFECD0BCFFF9E4D6FFFEECDFFFFEEBDFFF37A36BFF96CEB0FF94CDADFF91CB
        AAFF90CBA8FF74BC90FF8AC7A1FF46A568FF0B8938FFC68B50FEC27646FFFDFB
        F8FFF9E3D2FFECCFB9FFF8E1D0FFFDE7D6FF3DA56FFF3AA36EFF36A168FF329E
        62FF55AF7CFF91CBAAFF4FAB74FF1B9047FFF7F2EBFFC98C50FFC57D50FFFDFB
        F9FFFDE9D8FFF9E1D0FFEBCAB3FFECC5A7FFE3B698FFF7E7DDFFF7E8DEFFE3B6
        97FF40A268FF5AB381FF289857FFFCDFC6FFF8F3EDFFC88D50FFC9865BFFFDFB
        F9FFFDE8D7FFFDE6D4FFEDC6ABFFDCAA89FFF9ECE3FFFFFBF9FFFFFCFAFFF9EE
        E6FF44A36DFF319F65FFFCDBC0FFFCDBC0FFF8F3EDFFC88C50FFCC8E66FFFDFB
        F9FFFDE5D3FFF1CCB2FFE3B596FFF9EAE0FFFFF9F5FFFEF3EAFFFEF4EDFFFFFB
        F9FFF9EDE5FFE3B08DFFF0C19EFFFCD7B7FFF8F3EDFFC88C50FFD09670FFFDFB
        F9FFF1CDB1FFE3B596FFF9E9DEFFFEF7F1FFFDEDE1FFFEEFE4FFFEF1E7FFFEF3
        EAFFFFFAF7FFF9ECE3FFE2AE8AFFF0BC95FFF8F4ECFFC88C50FFD39D7BFEFBF6
        F2FFE3B496FFF9E8DCFFFEF5EEFFFDE9DAFFFDEADCFFFDECDEFFFDEDE1FFFEEF
        E4FFFEF1E7FFFFFAF6FFF9EAE0FFE2AA85FFF1E4D9FFC88C50FED7AB91DCFDFA
        F8FEFCF5F1FFFFFCF9FFFFFCF9FFFFFCF9FFFFFCF9FFFFFCFAFFFFFCFAFFFFFC
        FAFFFFFCFBFFFFFDFBFFFFFDFCFFFBF6F3FFF8EFEAFDAB7743DBC89A7CBFD5A4
        84F0D09770FBCC8F64FDCC8E62FDCB8E60FDCA8C5DFDC98B5BFDC88A58FDC788
        56FDC68653FDC58450FDC4824DFCC1834DF7B27948E38E512BBFFFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
      }
      OnClick = btnWyslijKomunikatyClick
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
  end
  object ZQZat: TZQuery
    Connection = DM.ZConnection1
    SQL.Strings = (
      'SELECT *'
      'FROM zat_zatrudnieni'
    )
    Params = <>
    Left = 216
    Top = 168
  end
  object DSZat: TDataSource
    DataSet = ZQZat
    Left = 272
    Top = 168
  end
end
