object ZatWniosekUrolopowy: TZatWniosekUrolopowy
  Left = 470
  Height = 609
  Top = 231
  Width = 1079
  Caption = 'Wniosek Urolopowy'
  ClientHeight = 609
  ClientWidth = 1079
  Position = poOwnerFormCenter
  LCLVersion = '6.3'
  object Panel1: TPanel
    Left = 0
    Height = 40
    Top = 0
    Width = 1079
    Align = alTop
    BevelOuter = bvNone
    Caption = 'WNIOSEK W SPRAWIE UDZIELENIA 14-DNIOWEGO WYPOCZYNKU'
    Color = clWhite
    Font.CharSet = EASTEUROPE_CHARSET
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Pitch = fpVariable
    Font.Quality = fqDraft
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 0
  end
  object Panel3: TPanel
    Left = 0
    Height = 43
    Top = 566
    Width = 1079
    Align = alBottom
    BevelOuter = bvNone
    ClientHeight = 43
    ClientWidth = 1079
    TabOrder = 1
    object btn_Drukuj_urlop: TBitBtn
      Left = 8
      Height = 30
      Top = 7
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
      OnClick = btn_Drukuj_urlopClick
      TabOrder = 0
    end
    object btn_Zapisz_daty: TBitBtn
      Left = 168
      Height = 30
      Top = 8
      Width = 162
      Anchors = [akLeft, akBottom]
      Caption = 'Zapisz daty urlopu'
      Enabled = False
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000064000000640000000000000000000000C1761BFFC275
        19FFBD6B13FFB96504FFB96504FFB96504FFBA6504FFBA6504FFBA6504FFBA65
        04FFBA6504FFBA6504FFBA6504FFBC690AFFB96A15FFC3791FFFD5933DFFEFB7
        36FFCDC6C0FFE9F8FFFFDBE5F6FFDBE8F8FFDBE8F8FFDBE8F9FFDBE8F8FFDAE7
        F8FFDBE7F8FFD8E4F5FFE9F6FFFFCDC6C0FFEAA714FFC0761DFFCD9551FFE8AE
        3CFFDCD7D4FFECE8E9FFADA0A2FFA79B9EFF9E9395FF94898CFF8A8185FF8379
        7CFF7B7276FF685F64FFECE8E9FFDCD7D4FFE59E20FFC77B25FFD09653FFEAB4
        47FFDCD7D4FFEFF0EFFFDFDEDCFFE1E0DFFFE0DFDEFFDFE0DDFFE0DFDDFFDFDE
        DDFFDFE0DEFFDBD9D9FFEDEDEDFFDCD7D4FFE7A62BFFC9802BFFD49B58FFEBB9
        50FFDCD7D4FFECE8E9FFA99D9FFFA4999EFF9A9194FF92888BFF897F85FF8279
        7CFF7A7177FF655C62FFECE8E9FFDCD7D4FFE8AC37FFCC8531FFD69E5BFFEDBD
        5AFFDCD7D4FFFFFFFFFFFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFDCD7D4FFEAB340FFD08B34FFD9A45EFFF0C2
        63FFDCD7D4FFECE8E9FFA99D9FFFA4999EFF9A9194FF92888BFF897F85FF8279
        7CFF7A7177FF655C62FFECE8E9FFDCD7D4FFEDB749FFD2903AFFD8A35CFFF0C6
        6DFFDCD7D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFDCD7D4FFEEBD54FFD7963EFFDEAC69FFF9D2
        81FFC1975CFF9A7B60FF95775EFF97795DFF97795DFF97795DFF97795DFF9779
        5CFF97795CFF95775EFF9A7A5EFFC19A64FFF7CA6BFFD99B44FFDDAB67FFF6D5
        8BFFFFD056FFC0A887FFC8C5C9FFCEC6BFFFCDC6C0FFCDC6C0FFCDC6BFFFD6D0
        CAFFD6D3D0FFCFCED4FFC0A888FFFFD25DFFF3CC75FFDCA148FFDCA966FFF6D9
        93FFFBC85DFFC2B4A2FFD7DEEBFFDDDDDDFFDCDDDEFFDCDBDDFFE7E8EAFFC8BA
        A7FFA29692FFC2B4A2FFC6BCA9FFFBCB63FFF3D07EFFE0A74CFFE5B973FFF6DA
        97FFFBCC62FFC8BAA7FFDDE0E9FFE1DFDDFFE0DFDEFFDFDDDCFFEFF3F9FF9F88
        6FFFE5AF47FF9E9189FFC7BDB2FFFDCF6AFFF5D484FFE3AC51FFE9BC75FFF8DD
        9EFFFDCF69FFCEC0AFFFE3E7EFFFE7E5E3FFE6E5E4FFE5E4E2FFF1F6FFFFBAA3
        86FFFFE873FFB5AB9EFFCAC0B8FFFFD26EFFF9DA8EFFE7B25BFFEAC079FFF8E0
        9BFFFBD165FFD3C4AFFFEAEEF6FFECEBE8FFECEBE9FFEBE9E6FFFBFFFFFFA28E
        78FFDEAF4FFFA89C95FFD1C7B9FFFFDA78FFF5D889FFE2A442FFECC47EFFFEF4
        D5FFFFE290FFDCD7D4FFF5FFFFFFF6FEFFFFF6FEFFFFF6FDFFFFFFFFFFFFDFDD
        DCFFC8BAA7FFDFDDDCFFE5E4E2FFFFDE88FFE4AA45FFDD973419ECC681FFF0CA
        82FFF4CA7DFFE8C788FFEFCF94FFEED192F1EDCF92FFEED092FFEED093FFF2D3
        96FFF7D79BFFF6D69BFFE6C48AFFEBB552FFE19E351100000000
      }
      OnClick = btn_Zapisz_datyClick
      TabOrder = 1
    end
    object btn_Oblicz: TBitBtn
      Left = 480
      Height = 30
      Top = 8
      Width = 120
      Anchors = [akLeft, akBottom]
      Caption = 'Oblicz'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000064000000640000000000000000000000000000000000
        00001A71DFCD1B73E0C100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00001F7EE06429BEECFF1988E4B7000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000001A72E07927FFFFFF032CCD710000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000001B49D4122BE7F7FF0CE3F8FF0C00B92900000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000001C50D58A24FFFFFF008BE4DA00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000203DCF252AD8F4FF08FFFFFF0179E5B9000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000002459D47B21FFFFFF00D2FFFF1037C88A0000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000113FD201000000000F00BB2539B4EBFF0CFFFFFF06A8F3FF131C
        BA9B000000000000000000000000000000000000000000000000000000000000
        000000000000008AE563008AE5FF008AE5FF0C99E9F908DBFDFF00DDFFFF06A8
        F3FF0000AC9D0000000000000000000000000000000000000000000000000000
        0000000000001125C80B6DDCF5F041FFFFFF00D4FAFF00D4FAFF00D4FAFF00CF
        FFFF06A8F3FF193BC48D00000000000000000000000000000000000000000000
        000000000000000000009AB0EA2C9CF4F8FF57FFFFFF3DD8F8FF46D5F7FF34E8
        FFFF23E3FFFF06A8F3FF131CBA5A000000000000000000000000000000000000
        00000000000000000000000000007E9FE57398FFFFFF4CF0FEFF53EAFEFF68BC
        EEFF699DE0FF6096DE7A131CBA81000000000000000000000000000000000000
        00000000000000000000000000005373DB0284BCECC66CFCFFFF37E2FCFF51DE
        FDFF5F86DACF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000006689DC3890E0F7FF5EF4FFFF3CE1
        FFFF54D0FAFF5D79D6C200000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000008CBAEC6F8AF0FEFF49EA
        FFFF36ECFFFF47BEF1FF5286D7C2000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000074ADE7A57DD2
        F5FF73C4F1F475C8F3FF6AA9E3FF69A5E2BA0000000000000000
      }
      OnClick = btn_ObliczClick
      TabOrder = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Height = 526
    Top = 40
    Width = 1079
    Align = alClient
    BevelOuter = bvLowered
    ClientHeight = 526
    ClientWidth = 1079
    TabOrder = 2
    object DBEdit1: TDBEdit
      Left = 16
      Height = 23
      Top = 16
      Width = 152
      DataField = 'Nazwisko'
      DataSource = DSZatUrlop
      ReadOnly = True
      CharCase = ecNormal
      MaxLength = 0
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 176
      Height = 23
      Top = 16
      Width = 104
      DataField = 'Imie'
      DataSource = DSZatUrlop
      ReadOnly = True
      CharCase = ecNormal
      MaxLength = 0
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 312
      Height = 23
      Top = 16
      Width = 104
      DataField = 'Ojciec'
      DataSource = DSZatUrlop
      ReadOnly = True
      CharCase = ecNormal
      MaxLength = 0
      TabOrder = 2
    end
    object dtp_oddnia: TDateTimePicker
      Left = 112
      Height = 23
      Top = 64
      Width = 83
      CenturyFrom = 1941
      MaxDate = 2958465
      MinDate = -53780
      TabOrder = 3
      TrailingSeparator = False
      TextForNullDate = 'NULL'
      LeadingZeros = True
      Kind = dtkDate
      TimeFormat = tf24
      TimeDisplay = tdHMS
      DateMode = dmComboBox
      Date = 1.7E308
      Time = 1.7E308
      UseDefaultSeparators = True
      HideDateTimeParts = []
      MonthNames = 'Long'
    end
    object Label1: TLabel
      Left = 16
      Height = 15
      Top = 72
      Width = 85
      Caption = 'Zatrudniony od:'
      ParentColor = False
    end
    object Label2: TLabel
      Left = 32
      Height = 15
      Top = 113
      Width = 238
      Caption = '1) Przy pracach odpłatnych w okresie od dnia'
      ParentColor = False
    end
    object Label3: TLabel
      Left = 32
      Height = 15
      Top = 224
      Width = 254
      Caption = '2) Przy pracach nieodpłatnych w okresie od dnia'
      ParentColor = False
    end
    object Label4: TLabel
      Left = 424
      Height = 15
      Top = 113
      Width = 40
      Caption = 'do dnia'
      ParentColor = False
    end
    object Label5: TLabel
      Left = 424
      Height = 15
      Top = 224
      Width = 40
      Caption = 'do dnia'
      ParentColor = False
    end
    object Label6: TLabel
      Left = 16
      Height = 15
      Top = 368
      Width = 320
      Caption = 'Wnoszę o udzielenie skazanemu 14 - dniowego wypoczynku:'
      ParentColor = False
    end
    object Label7: TLabel
      Left = 16
      Height = 15
      Top = 392
      Width = 40
      Caption = 'od dnia'
      ParentColor = False
    end
    object Label8: TLabel
      Left = 160
      Height = 15
      Top = 392
      Width = 40
      Caption = 'do dnia'
      ParentColor = False
    end
    object Label9: TLabel
      Left = 16
      Height = 15
      Top = 416
      Width = 40
      Caption = 'od dnia'
      ParentColor = False
    end
    object Label10: TLabel
      Left = 160
      Height = 15
      Top = 416
      Width = 40
      Caption = 'do dnia'
      ParentColor = False
    end
    object ed_dni1: TEdit
      Left = 328
      Height = 23
      Top = 392
      Width = 40
      TabOrder = 4
    end
    object ed_dni2: TEdit
      Left = 328
      Height = 23
      Top = 416
      Width = 40
      TabOrder = 5
    end
    object Label11: TLabel
      Left = 304
      Height = 15
      Top = 392
      Width = 17
      Caption = 'dni'
      ParentColor = False
    end
    object Label12: TLabel
      Left = 304
      Height = 15
      Top = 416
      Width = 17
      Caption = 'dni'
      ParentColor = False
    end
    object ed_miesiac1: TEdit
      Left = 480
      Height = 23
      Top = 392
      Width = 176
      TabOrder = 6
    end
    object dtp_urlopod1: TDateTimePicker
      Left = 64
      Height = 23
      Top = 392
      Width = 83
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
      Date = 1.7E308
      Time = 1.7E308
      UseDefaultSeparators = True
      HideDateTimeParts = []
      MonthNames = 'Long'
      OnChange = dtp_urlopod1EditingDone
    end
    object dtp_urlopod2: TDateTimePicker
      Left = 64
      Height = 23
      Top = 416
      Width = 83
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
      Date = 1.7E308
      Time = 1.7E308
      UseDefaultSeparators = True
      HideDateTimeParts = []
      MonthNames = 'Long'
    end
    object dtp_urlopdo1: TDateTimePicker
      Left = 208
      Height = 23
      Top = 392
      Width = 83
      CenturyFrom = 1941
      MaxDate = 2958465
      MinDate = -53780
      TabOrder = 9
      TrailingSeparator = False
      TextForNullDate = 'NULL'
      LeadingZeros = True
      Kind = dtkDate
      TimeFormat = tf24
      TimeDisplay = tdHMS
      DateMode = dmComboBox
      Date = 1.7E308
      Time = 1.7E308
      UseDefaultSeparators = True
      HideDateTimeParts = []
      MonthNames = 'Long'
    end
    object dtp_urlopdo2: TDateTimePicker
      Left = 208
      Height = 23
      Top = 416
      Width = 83
      CenturyFrom = 1941
      MaxDate = 2958465
      MinDate = -53780
      TabOrder = 10
      TrailingSeparator = False
      TextForNullDate = 'NULL'
      LeadingZeros = True
      Kind = dtkDate
      TimeFormat = tf24
      TimeDisplay = tdHMS
      DateMode = dmComboBox
      Date = 1.7E308
      Time = 1.7E308
      UseDefaultSeparators = True
      HideDateTimeParts = []
      MonthNames = 'Long'
    end
    object dtp_od1: TDateTimePicker
      Left = 328
      Height = 23
      Top = 113
      Width = 83
      CenturyFrom = 1941
      MaxDate = 2958465
      MinDate = -53780
      TabOrder = 11
      TrailingSeparator = False
      TextForNullDate = 'NULL'
      LeadingZeros = True
      Kind = dtkDate
      TimeFormat = tf24
      TimeDisplay = tdHMS
      DateMode = dmComboBox
      Date = 1.7E308
      Time = 1.7E308
      UseDefaultSeparators = True
      HideDateTimeParts = []
      MonthNames = 'Long'
    end
    object dtp_do1: TDateTimePicker
      Left = 480
      Height = 23
      Top = 113
      Width = 83
      CenturyFrom = 1941
      MaxDate = 2958465
      MinDate = -53780
      TabOrder = 12
      TrailingSeparator = False
      TextForNullDate = 'NULL'
      LeadingZeros = True
      Kind = dtkDate
      TimeFormat = tf24
      TimeDisplay = tdHMS
      DateMode = dmComboBox
      Date = 1.7E308
      Time = 1.7E308
      UseDefaultSeparators = True
      HideDateTimeParts = []
      MonthNames = 'Long'
    end
    object dtp_od2: TDateTimePicker
      Left = 328
      Height = 23
      Top = 136
      Width = 83
      CenturyFrom = 1941
      MaxDate = 2958465
      MinDate = -53780
      TabOrder = 13
      TrailingSeparator = False
      TextForNullDate = 'NULL'
      LeadingZeros = True
      Kind = dtkDate
      TimeFormat = tf24
      TimeDisplay = tdHMS
      DateMode = dmComboBox
      Date = 1.7E308
      Time = 1.7E308
      UseDefaultSeparators = True
      HideDateTimeParts = []
      MonthNames = 'Long'
    end
    object dtp_do2: TDateTimePicker
      Left = 480
      Height = 23
      Top = 136
      Width = 83
      CenturyFrom = 1941
      MaxDate = 2958465
      MinDate = -53780
      TabOrder = 14
      TrailingSeparator = False
      TextForNullDate = 'NULL'
      LeadingZeros = True
      Kind = dtkDate
      TimeFormat = tf24
      TimeDisplay = tdHMS
      DateMode = dmComboBox
      Date = 1.7E308
      Time = 1.7E308
      UseDefaultSeparators = True
      HideDateTimeParts = []
      MonthNames = 'Long'
    end
    object dtp_od3: TDateTimePicker
      Left = 328
      Height = 23
      Top = 160
      Width = 83
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
      Date = 1.7E308
      Time = 1.7E308
      UseDefaultSeparators = True
      HideDateTimeParts = []
      MonthNames = 'Long'
    end
    object dtp_do3: TDateTimePicker
      Left = 480
      Height = 23
      Top = 160
      Width = 83
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
      Date = 1.7E308
      Time = 1.7E308
      UseDefaultSeparators = True
      HideDateTimeParts = []
      MonthNames = 'Long'
    end
    object dtp_od4: TDateTimePicker
      Left = 328
      Height = 23
      Top = 184
      Width = 83
      CenturyFrom = 1941
      MaxDate = 2958465
      MinDate = -53780
      TabOrder = 17
      TrailingSeparator = False
      TextForNullDate = 'NULL'
      LeadingZeros = True
      Kind = dtkDate
      TimeFormat = tf24
      TimeDisplay = tdHMS
      DateMode = dmComboBox
      Date = 1.7E308
      Time = 1.7E308
      UseDefaultSeparators = True
      HideDateTimeParts = []
      MonthNames = 'Long'
    end
    object dtp_do4: TDateTimePicker
      Left = 480
      Height = 23
      Top = 184
      Width = 83
      CenturyFrom = 1941
      MaxDate = 2958465
      MinDate = -53780
      TabOrder = 18
      TrailingSeparator = False
      TextForNullDate = 'NULL'
      LeadingZeros = True
      Kind = dtkDate
      TimeFormat = tf24
      TimeDisplay = tdHMS
      DateMode = dmComboBox
      Date = 1.7E308
      Time = 1.7E308
      UseDefaultSeparators = True
      HideDateTimeParts = []
      MonthNames = 'Long'
    end
    object dtp_od5: TDateTimePicker
      Left = 328
      Height = 23
      Top = 224
      Width = 83
      CenturyFrom = 1941
      MaxDate = 2958465
      MinDate = -53780
      TabOrder = 19
      TrailingSeparator = False
      TextForNullDate = 'NULL'
      LeadingZeros = True
      Kind = dtkDate
      TimeFormat = tf24
      TimeDisplay = tdHMS
      DateMode = dmComboBox
      Date = 1.7E308
      Time = 1.7E308
      UseDefaultSeparators = True
      HideDateTimeParts = []
      MonthNames = 'Long'
    end
    object dtp_od6: TDateTimePicker
      Left = 328
      Height = 23
      Top = 247
      Width = 83
      CenturyFrom = 1941
      MaxDate = 2958465
      MinDate = -53780
      TabOrder = 20
      TrailingSeparator = False
      TextForNullDate = 'NULL'
      LeadingZeros = True
      Kind = dtkDate
      TimeFormat = tf24
      TimeDisplay = tdHMS
      DateMode = dmComboBox
      Date = 1.7E308
      Time = 1.7E308
      UseDefaultSeparators = True
      HideDateTimeParts = []
      MonthNames = 'Long'
    end
    object dtp_od7: TDateTimePicker
      Left = 328
      Height = 23
      Top = 271
      Width = 83
      CenturyFrom = 1941
      MaxDate = 2958465
      MinDate = -53780
      TabOrder = 21
      TrailingSeparator = False
      TextForNullDate = 'NULL'
      LeadingZeros = True
      Kind = dtkDate
      TimeFormat = tf24
      TimeDisplay = tdHMS
      DateMode = dmComboBox
      Date = 1.7E308
      Time = 1.7E308
      UseDefaultSeparators = True
      HideDateTimeParts = []
      MonthNames = 'Long'
    end
    object dtp_od8: TDateTimePicker
      Left = 328
      Height = 23
      Top = 295
      Width = 83
      CenturyFrom = 1941
      MaxDate = 2958465
      MinDate = -53780
      TabOrder = 22
      TrailingSeparator = False
      TextForNullDate = 'NULL'
      LeadingZeros = True
      Kind = dtkDate
      TimeFormat = tf24
      TimeDisplay = tdHMS
      DateMode = dmComboBox
      Date = 1.7E308
      Time = 1.7E308
      UseDefaultSeparators = True
      HideDateTimeParts = []
      MonthNames = 'Long'
    end
    object dtp_do5: TDateTimePicker
      Left = 480
      Height = 23
      Top = 224
      Width = 83
      CenturyFrom = 1941
      MaxDate = 2958465
      MinDate = -53780
      TabOrder = 23
      TrailingSeparator = False
      TextForNullDate = 'NULL'
      LeadingZeros = True
      Kind = dtkDate
      TimeFormat = tf24
      TimeDisplay = tdHMS
      DateMode = dmComboBox
      Date = 1.7E308
      Time = 1.7E308
      UseDefaultSeparators = True
      HideDateTimeParts = []
      MonthNames = 'Long'
    end
    object dtp_do6: TDateTimePicker
      Left = 480
      Height = 23
      Top = 247
      Width = 83
      CenturyFrom = 1941
      MaxDate = 2958465
      MinDate = -53780
      TabOrder = 24
      TrailingSeparator = False
      TextForNullDate = 'NULL'
      LeadingZeros = True
      Kind = dtkDate
      TimeFormat = tf24
      TimeDisplay = tdHMS
      DateMode = dmComboBox
      Date = 1.7E308
      Time = 1.7E308
      UseDefaultSeparators = True
      HideDateTimeParts = []
      MonthNames = 'Long'
    end
    object dtp_do7: TDateTimePicker
      Left = 480
      Height = 23
      Top = 271
      Width = 83
      CenturyFrom = 1941
      MaxDate = 2958465
      MinDate = -53780
      TabOrder = 25
      TrailingSeparator = False
      TextForNullDate = 'NULL'
      LeadingZeros = True
      Kind = dtkDate
      TimeFormat = tf24
      TimeDisplay = tdHMS
      DateMode = dmComboBox
      Date = 1.7E308
      Time = 1.7E308
      UseDefaultSeparators = True
      HideDateTimeParts = []
      MonthNames = 'Long'
    end
    object dtp_do8: TDateTimePicker
      Left = 480
      Height = 23
      Top = 295
      Width = 83
      CenturyFrom = 1941
      MaxDate = 2958465
      MinDate = -53780
      TabOrder = 26
      TrailingSeparator = False
      TextForNullDate = 'NULL'
      LeadingZeros = True
      Kind = dtkDate
      TimeFormat = tf24
      TimeDisplay = tdHMS
      DateMode = dmComboBox
      Date = 1.7E308
      Time = 1.7E308
      UseDefaultSeparators = True
      HideDateTimeParts = []
      MonthNames = 'Long'
    end
    object Label13: TLabel
      Left = 384
      Height = 15
      Top = 392
      Width = 29
      Caption = 'godz.'
      ParentColor = False
    end
    object ed_godz1: TEdit
      Left = 416
      Height = 23
      Top = 392
      Width = 40
      NumbersOnly = True
      TabOrder = 27
    end
    object Label14: TLabel
      Left = 384
      Height = 15
      Top = 416
      Width = 29
      Caption = 'godz.'
      ParentColor = False
    end
    object ed_godz2: TEdit
      Left = 416
      Height = 23
      Top = 416
      Width = 40
      NumbersOnly = True
      TabOrder = 28
    end
    object ed_miesiac2: TEdit
      Left = 480
      Height = 23
      Top = 416
      Width = 176
      TabOrder = 29
    end
    object Label15: TLabel
      Left = 16
      Height = 15
      Top = 336
      Width = 378
      Caption = 'Łączny czas usprawiedliwionych przerw w okresie rocznej pracy wynosił:'
      ParentColor = False
    end
    object ed_przerwa: TEdit
      Left = 408
      Height = 23
      Top = 328
      Width = 72
      TabOrder = 30
    end
    object dtp_dodnia: TDateTimePicker
      Left = 264
      Height = 23
      Top = 64
      Width = 83
      CenturyFrom = 1941
      MaxDate = 2958465
      MinDate = -53780
      TabOrder = 31
      TrailingSeparator = False
      TextForNullDate = 'NADAL'
      LeadingZeros = True
      Kind = dtkDate
      TimeFormat = tf24
      TimeDisplay = tdHMS
      DateMode = dmComboBox
      Date = 1.7E308
      Time = 1.7E308
      UseDefaultSeparators = True
      HideDateTimeParts = []
      MonthNames = 'Long'
    end
    object Label16: TLabel
      Left = 240
      Height = 15
      Top = 72
      Width = 14
      Caption = 'do'
      ParentColor = False
    end
    object Label17: TLabel
      Left = 304
      Height = 15
      Top = 24
      Width = 8
      Caption = 's.'
      ParentColor = False
    end
    object DBEdit4: TDBEdit
      Left = 480
      Height = 23
      Top = 456
      Width = 176
      DataField = 'forma'
      DataSource = DSZatUrlop
      ReadOnly = True
      CharCase = ecNormal
      MaxLength = 0
      TabOrder = 32
    end
    object DBEdit5: TDBEdit
      Left = 480
      Height = 23
      Top = 480
      Width = 176
      DataField = 'etat'
      DataSource = DSZatUrlop
      ReadOnly = True
      CharCase = ecNormal
      MaxLength = 0
      TabOrder = 33
    end
    object Label18: TLabel
      Left = 368
      Height = 15
      Top = 464
      Width = 102
      Caption = 'Forma zatrudnienia'
      ParentColor = False
    end
    object Label19: TLabel
      Left = 450
      Height = 15
      Top = 488
      Width = 20
      Caption = 'Etat'
      ParentColor = False
    end
    object Label20: TLabel
      Left = 16
      Height = 15
      Top = 488
      Width = 125
      Caption = 'Planowana data urlopu:'
      ParentColor = False
    end
    object dtp_urlop_planowany: TDateTimePicker
      Left = 152
      Height = 23
      Top = 480
      Width = 83
      CenturyFrom = 1941
      MaxDate = 2958465
      MinDate = -53780
      TabOrder = 34
      TrailingSeparator = False
      TextForNullDate = 'NULL'
      LeadingZeros = True
      Kind = dtkDate
      TimeFormat = tf24
      TimeDisplay = tdHMS
      DateMode = dmComboBox
      Date = 1.7E308
      Time = 1.7E308
      UseDefaultSeparators = True
      HideDateTimeParts = []
      MonthNames = 'Long'
    end
    object Panel_urlop_platny: TPanel
      Left = 680
      Height = 344
      Top = 176
      Width = 392
      ClientHeight = 344
      ClientWidth = 392
      TabOrder = 35
      object Panel5: TPanel
        Left = 1
        Height = 23
        Top = 1
        Width = 390
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Urlop płatny'
        Color = 11579392
        Font.CharSet = EASTEUROPE_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Quality = fqDraft
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 0
      end
      object btn_Drukuj_decyzje: TBitBtn
        Left = 8
        Height = 30
        Top = 304
        Width = 120
        Anchors = [akLeft, akBottom]
        Caption = 'Drukuj decyzję'
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
        OnClick = btn_Drukuj_decyzjeClick
        TabOrder = 1
      end
      object Label22: TLabel
        Left = 56
        Height = 15
        Top = 30
        Width = 176
        Caption = 'Wypłacone kwoty za nadgodziny:'
        ParentColor = False
      end
      object Label23: TLabel
        Left = 256
        Height = 15
        Top = 30
        Width = 128
        Caption = 'Przepracowane godziny:'
        ParentColor = False
      end
      object Label25: TLabel
        Left = 182
        Height = 32
        Top = 176
        Width = 156
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Wypłata za okres urlopu w/g stawek za dany miesiąc:'
        ParentColor = False
        WordWrap = True
      end
      object Panel6: TPanel
        Left = 8
        Height = 38
        Top = 120
        Width = 376
        BevelInner = bvLowered
        BevelOuter = bvNone
        ClientHeight = 38
        ClientWidth = 376
        TabOrder = 2
        object Label24: TLabel
          Left = 48
          Height = 15
          Top = 10
          Width = 179
          Caption = 'Stawka doliczana za nadgodziny:'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object ed_stawka_wyliczeniowa: TLSCurrencyEdit
          Left = 248
          Height = 23
          Top = 8
          Width = 80
          DisplayFormat = ',0.00 zł;-,0.00 zł'
          Font.Style = [fsBold]
          FloatFormat = ffCurrency
          MaxValue = 0
          MinValue = 0
          OnEditingDone = ed_stawka_wyliczeniowaChange
          ParentFont = False
          Round = True
          TabOrder = 0
          Value = 0
        end
      end
      object lbl_msc1: TLabel
        Left = 8
        Height = 15
        Top = 53
        Width = 65
        Caption = 'za STYCZEŃ'
        Font.Color = clGray
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lbl_msc2: TLabel
        Left = 8
        Height = 15
        Top = 77
        Width = 44
        Caption = 'za LUTY'
        Font.Color = clGray
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lbl_msc3: TLabel
        Left = 8
        Height = 15
        Top = 101
        Width = 62
        Caption = 'za MARZEC'
        Font.Color = clGray
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label21: TLabel
        Left = 8
        Height = 15
        Top = 193
        Width = 79
        Caption = 'Stawka za msc:'
        ParentColor = False
      end
      object Label26: TLabel
        Left = 92
        Height = 15
        Top = 219
        Width = 8
        Caption = '+'
        ParentColor = False
      end
      object Label27: TLabel
        Left = 92
        Height = 15
        Top = 243
        Width = 8
        Caption = '+'
        ParentColor = False
      end
      object ed_stawka_godz1: TLSCurrencyEdit
        Left = 160
        Height = 23
        Top = 48
        Width = 73
        DisplayFormat = ',0.00 zł;-,0.00 zł'
        MaxValue = 0
        MinValue = 0
        OnEditingDone = ed_stawka_godz1Change
        TabOrder = 3
        Value = 0
      end
      object ed_stawka_godz2: TLSCurrencyEdit
        Left = 160
        Height = 23
        Top = 72
        Width = 73
        DisplayFormat = ',0.00 zł;-,0.00 zł'
        MaxValue = 0
        MinValue = 0
        OnEditingDone = ed_stawka_godz1Change
        TabOrder = 4
        Value = 0
      end
      object ed_stawka_godz3: TLSCurrencyEdit
        Left = 160
        Height = 23
        Top = 96
        Width = 73
        DisplayFormat = ',0.00 zł;-,0.00 zł'
        MaxValue = 0
        MinValue = 0
        OnEditingDone = ed_stawka_godz1Change
        TabOrder = 5
        Value = 0
      end
      object ed_stawka_za_msc1: TLSCurrencyEdit
        Left = 14
        Height = 23
        Top = 216
        Width = 73
        DisplayFormat = ',0.00 zł;-,0.00 zł'
        MaxValue = 0
        MinValue = 0
        OnEditingDone = ed_stawka_za_msc1EditingDone
        TabOrder = 6
        Value = 0
      end
      object ed_stawka_za_msc2: TLSCurrencyEdit
        Left = 14
        Height = 23
        Top = 240
        Width = 73
        DisplayFormat = ',0.00 zł;-,0.00 zł'
        MaxValue = 0
        MinValue = 0
        OnEditingDone = ed_stawka_za_msc1EditingDone
        TabOrder = 7
        Value = 0
      end
      object ed_stawka_wyliczeniowa1: TLSCurrencyEdit
        Left = 104
        Height = 23
        Top = 216
        Width = 49
        DisplayFormat = ',0.00 zł;-,0.00 zł'
        MaxValue = 0
        MinValue = 0
        OnEditingDone = ed_stawka_za_msc1EditingDone
        TabOrder = 8
        Value = 0
      end
      object ed_stawka_wyliczeniowa2: TLSCurrencyEdit
        Left = 104
        Height = 23
        Top = 240
        Width = 49
        DisplayFormat = ',0.00 zł;-,0.00 zł'
        MaxValue = 0
        MinValue = 0
        OnEditingDone = ed_stawka_za_msc1EditingDone
        TabOrder = 9
        Value = 0
      end
      object ed_wyplata1: TLSCurrencyEdit
        Left = 256
        Height = 23
        Top = 216
        Width = 82
        Color = clYellow
        DisplayFormat = ',0.00 zł;-,0.00 zł'
        Font.Style = [fsBold]
        MaxValue = 0
        MinValue = 0
        ParentFont = False
        TabOrder = 10
        Value = 0
      end
      object ed_wyplata2: TLSCurrencyEdit
        Left = 256
        Height = 23
        Top = 240
        Width = 82
        Color = clYellow
        DisplayFormat = ',0.00 zł;-,0.00 zł'
        Font.Style = [fsBold]
        MaxValue = 0
        MinValue = 0
        ParentFont = False
        TabOrder = 11
        Value = 0
      end
      object btn_StawkiPlac: TBitBtn
        Left = 264
        Height = 30
        Top = 304
        Width = 120
        Anchors = [akLeft, akBottom]
        Caption = 'Stawki płac'
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000064000000640000000000000000000000000000000000
          000000000000C9843EEDC9843EFFC7813CFFC6803AFFC57E38FFC37B35FFC176
          30FFC1752EFFBD6F29FFB26227FA000000000000000000000000000000000000
          0000CE8C46AAF8E9D5FFF8E9D5FFF0D49FFFF8E9D5FFF8E9D5FFF0D49FFFF0D4
          9FFFF0D49FFFF0D49FFFEAC689FFB26227E60000000000000000000000000000
          0000D08F49A9F8E9D5FFD59850FFD59850FFF5E2C0FFD59850FFD59850FFEDCA
          80FFD59850FFD59850FFECCA8EFFB26227E40000000000000000000000000000
          0000D3944BA9F8EAD6FFFAF2EAFFEACFA7FFF8ECDEFFFAF2E8FFF5E9DAFFF3DD
          BAFFF9F0E5FFEBD3AFFFECCB90FFB26227E40000000000000000000000000000
          0000D59850AAF9EADAFFF6E8D4FFF0D49FFFF8ECDCFFF3E1C7FFF0D49FFFF1DA
          B8FFF0D49FFFECCA8EFFECCA8EFFB26227E50000000000000000000000000000
          0000D99E52A9FAEFE3FFDEAE69FFDEAE69FFF5E2C0FFDEAE69FFDEAE69FFF0D1
          8DFFDEAE69FFDEAE69FFECCB90FFBD6F29E40000000000000000000000000000
          0000DBA253AAFAEFE3FFFAF2EAFFEACFA7FFF8EAD6FFFAF2E8FFF5E9DAFFF2DC
          B5FFF9F0E5FFEBD3AFFFECCB90FFBD6F29E50000000000000000000000000000
          0000DFA857A9F9ECDBFFF3E1CBFFF3E1CBFFF8EBDCFFF3E1CBFFF3E1CBFFF3DF
          C1FFF3DFC1FFE5C5A1FFECCB90FFBD6F29E50000000000000000000000000000
          0000E0AD5BA9FAEFE3FFD39B5AFFD39B5AFFF5E3C4FFD59850FFD59850FFF3DF
          C1FF1A25F2FF3026B8FFECCB90FFBD6F29E50000000000000000000000000000
          0000E3B060A9FAEFE3FFFBF4ECFFEAD1ABFFF6E7CFFFFAF2EAFFF6EADDFFF3DF
          C1FF7A81F6FF8064B9FFECCB90FFBD6F29E40000000000000000000000000000
          0000E4B460A9FAEFE3FFF6E7CCFFF8ECDEFFF8ECDEFFF6E8D4FFF3E1C7FFF3DF
          C1FFEED19EFFEED19EFFECCB90FFC1752EE40000000000000000000000000000
          0000E7B964A9EAB951FFEAB84BFFE5AB39FFE3A42FFFDE981FFFDB9219FFD98D
          14FFD98D14FFD78A14FFCD8431FFCD8431E60000000000000000000000000000
          0000E9BD66A9FAECC7FFFAECC5FFF8E7BDFFF7E5B8FFF3DDA4FFF2D794FFEFD0
          84FFEECD7BFFEDCF81FFEDCF81FFD28A2FE40000000000000000000000000000
          0000ECC36CA9FAECC7FFFAECC7FFFAECC7FFF9EBC3FFF7E7BAFFF6E3B5FFF4DF
          AAFFF3DDA4FFF0D697FFF0D697FFD78A14E40000000000000000000000000000
          0000EEC76D9EEAB951FFEAB84BFFE5AB39FFE3A42FFFDE981FFFDB9219FFD98D
          14FFD98D14FFD78A14FFD78A14FFD78A14E30000000000000000000000000000
          000000000000EEC86FC5EEC86FFFEEC76DFFEEC76DFFEDC369FFECC266FFEBBE
          60FFEABC5DFFE9B656FFE9B351E4000000000000000000000000
        }
        OnClick = btn_StawkiPlacClick
        TabOrder = 12
      end
      object Label28: TLabel
        Left = 160
        Height = 15
        Top = 219
        Width = 8
        Caption = '='
        ParentColor = False
      end
      object Label29: TLabel
        Left = 160
        Height = 15
        Top = 243
        Width = 8
        Caption = '='
        ParentColor = False
      end
      object lbl_stawka1: TLabel
        Left = 176
        Height = 15
        Top = 219
        Width = 17
        Caption = '0 zł'
        ParentColor = False
      end
      object lbl_stawka2: TLabel
        Left = 176
        Height = 15
        Top = 243
        Width = 17
        Caption = '0 zł'
        ParentColor = False
      end
      object ed_przepracowane_godz1: TLSCurrencyEdit
        Left = 256
        Height = 23
        Top = 48
        Width = 73
        DisplayFormat = ',0.00;-,0.00'
        MaxValue = 0
        MinValue = 0
        OnEditingDone = ed_stawka_godz1Change
        TabOrder = 13
        Value = 0
      end
      object ed_przepracowane_godz2: TLSCurrencyEdit
        Left = 256
        Height = 23
        Top = 72
        Width = 73
        DisplayFormat = ',0.00;-,0.00'
        MaxValue = 0
        MinValue = 0
        OnEditingDone = ed_stawka_godz1Change
        TabOrder = 14
        Value = 0
      end
      object ed_przepracowane_godz3: TLSCurrencyEdit
        Left = 256
        Height = 23
        Top = 96
        Width = 73
        DisplayFormat = ',0.00;-,0.00'
        MaxValue = 0
        MinValue = 0
        OnEditingDone = ed_stawka_godz1Change
        TabOrder = 15
        Value = 0
      end
    end
  end
  object frReport1: TfrReport
    InitialZoom = pzDefault
    Options = [roSaveAndRestoreBookmarks]
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    DataType = dtDataSet
    Left = 600
    Top = 48
  end
  object ZQZatUrlop: TZQuery
    Connection = DM.ZConnection1
    ReadOnly = True
    SQL.Strings = (
      'SELECT '
      'zat.Nazwisko, '
      'zat.Imie, '
      'zat.Ojciec, '
      'zat.Urodzony, '
      'zat.miejsce_urodzenia, '
      'zat.zat_od, '
      'zat.zat_do, '
      'zat.etat, '
      'zat.nr_ewidencyjny, '
      'zat.urlop_od,'
      'zat.data_nastepnego_urlopu,'
      'sta.forma, '
      'sta.system, '
      'sta.nazwa'
      'FROM zat_zatrudnieni as zat'
      'LEFT OUTER JOIN zat_stanowiska as sta ON (zat.id_stanowiska = sta.id)'
      'WHERE zat.id = :id'
    )
    Params = <    
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    Left = 464
    Top = 48
    ParamData = <    
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object DSZatUrlop: TDataSource
    DataSet = ZQZatUrlop
    Left = 536
    Top = 48
  end
end
