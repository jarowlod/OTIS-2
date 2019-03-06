object KwatPlanWyjazdowAdd: TKwatPlanWyjazdowAdd
  Left = 334
  Height = 303
  Top = 226
  Width = 617
  Caption = 'Plan Wyjazdów'
  ClientHeight = 303
  ClientWidth = 617
  OnCreate = FormCreate
  LCLVersion = '6.6'
  object Panel2: TPanel
    Left = 0
    Height = 40
    Top = 263
    Width = 617
    Align = alBottom
    BevelOuter = bvNone
    ClientHeight = 40
    ClientWidth = 617
    TabOrder = 0
    object btnOK: TBitBtn
      Left = 400
      Height = 30
      Top = 1
      Width = 100
      Anchors = [akTop, akRight]
      DefaultCaption = True
      Kind = bkOK
      ModalResult = 1
      OnClick = btnOKClick
      TabOrder = 0
    end
    object btnAnuluj: TBitBtn
      Left = 511
      Height = 30
      Top = 1
      Width = 100
      Anchors = [akTop, akRight]
      Cancel = True
      DefaultCaption = True
      Kind = bkCancel
      ModalResult = 2
      TabOrder = 1
    end
  end
  object Panel5: TPanel
    Left = 0
    Height = 50
    Top = 0
    Width = 617
    Align = alTop
    BevelOuter = bvNone
    ClientHeight = 50
    ClientWidth = 617
    Color = clWhite
    ParentColor = False
    TabOrder = 1
    object plGradient2: TplGradient
      Left = 0
      Height = 50
      Top = 0
      Width = 617
      Align = alClient
      BevelWidth = 1
      BevelStyle = bvNone
      Buffered = True
      Direction = gdUpLeft
      ColorStart = clSkyBlue
      ColorEnd = clWhite
      StepWidth = 1
      Style = gsHorizontal
    end
    object Label1: TLabel
      Left = 64
      Height = 19
      Top = 16
      Width = 117
      Caption = 'Plan Wyjazdów'
      Font.CharSet = EASTEUROPE_CHARSET
      Font.Color = 16731983
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Pitch = fpVariable
      Font.Quality = fqDraft
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Image1: TImage
      Left = 16
      Height = 32
      Top = 9
      Width = 32
      Picture.Data = {
        1754506F727461626C654E6574776F726B47726170686963A502000089504E47
        0D0A1A0A0000000D49484452000000100000001008060000001FF3FF61000000
        0467414D410000AFC837058AE90000001974455874536F667477617265004164
        6F626520496D616765526561647971C9653C000002374944415438CBDD92ED4B
        536118C6CF1FD0A720E8452228C8230A2E320D6B0E3398E5CBA8287AA16C9CE3
        42A7C9322A96E4C6DA39B2931BE5489699964CCB9A2E97CDB9182D190845E964
        CDB9148369B8F4437DB03EC4D5730E15832284BEF5C0C5F376DFBFFBE67A1E0A
        00F52FA2FE23404953680D91771F3792509A82C9BD8D8164E1657FB2E0A2F773
        7EBD6729EF6CFF8BED558F947F03C479770CDEB1247C631FF1F4F502065E2DC0
        43E41A9D87E08A229BBDFFED8F0092BC4A6509C176A70FA77466B407E650D7D4
        8D6AB3132A8D11E6BE1930E739ACCFABC06F0092BC96B4FDD2D0FB16750D16D4
        F04ED806DF8335DC43296340B1BA1117BAA6A0D671C829AB459AE21C361F7244
        37A96E6E950024D9C5B926F13CB224556EF6CC82EF9F81F1E134F4DD71D4DF8D
        A1B67D120D3D7174041268F327C008416C2CB58F4A0062D8577F78110E72210C
        CCE22A69F7CA8377B8E49C82AE3306EDED282A5B23D0B4B4A2A6E5242A9BCB71
        82536207CB226DFF8DD514711BC3E38BB0763CC11E65198ACB0F432F74A267E4
        03BA82F35255A3F3160CBDA7E199B0E3CD9C0FD6E12A1CB16621E7CC1607252B
        3A8AACDC42D0199990CBE5502814A033B391917F00F43639D265BB71DC540477
        D80677E4BA6822043F0BAB5F83DCEA755F7EB949D3F434C330D06AB520EB70AA
        D3257A190627DA903A1E8FDB45005201BB884244CF888EA502766A372C5B7C6A
        703EE919C10D55FCEC607945DF95049A0E0AE9B8E663A4CAE22CEEC9B9B0E23F
        4F8279A24F62DB3F665E3CFF0E880AB26477DD818D0000000049454E44AE4260
        82
      }
      Stretch = True
    end
  end
  object Label2: TLabel
    Left = 15
    Height = 15
    Top = 73
    Width = 60
    Caption = 'Samochód:'
    ParentColor = False
  end
  object Label3: TLabel
    Left = 15
    Height = 15
    Top = 104
    Width = 51
    Caption = 'Kierowca:'
    ParentColor = False
  end
  object Label4: TLabel
    Left = 15
    Height = 15
    Top = 136
    Width = 73
    Caption = 'Data wyjazdu:'
    ParentColor = False
  end
  object Label5: TLabel
    Left = 15
    Height = 15
    Top = 168
    Width = 75
    Caption = 'Data powrotu:'
    ParentColor = False
  end
  object Label6: TLabel
    Left = 15
    Height = 15
    Top = 200
    Width = 20
    Caption = 'Cel:'
    ParentColor = False
  end
  object Label7: TLabel
    Left = 15
    Height = 15
    Top = 232
    Width = 36
    Caption = 'Uwagi:'
    ParentColor = False
  end
  object edSamochod: TEdit
    Left = 112
    Height = 23
    Top = 65
    Width = 208
    MaxLength = 50
    TabOrder = 2
  end
  object edKierowca: TEdit
    Left = 112
    Height = 23
    Top = 96
    Width = 208
    MaxLength = 60
    TabOrder = 3
  end
  object edCel: TEdit
    Left = 112
    Height = 23
    Top = 192
    Width = 496
    MaxLength = 200
    TabOrder = 4
  end
  object edUwagi: TEdit
    Left = 112
    Height = 23
    Top = 224
    Width = 496
    MaxLength = 200
    TabOrder = 5
  end
  object SpeedButton1: TSpeedButton
    Left = 320
    Height = 22
    Top = 66
    Width = 32
    Images = DM.ImageList1
    ImageIndex = 51
  end
  object teGodzWyjazdu: TTimeEdit
    Left = 240
    Height = 23
    Top = 130
    Width = 79
    DefaultNow = True
    ButtonWidth = 23
    NumGlyphs = 1
    MaxLength = 0
    TabOrder = 6
    Text = 'teGodzWyjazdu'
  end
  object dtpData_wyjazdu: TDateTimePicker
    Left = 112
    Height = 23
    Top = 130
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
    TimeDisplay = tdHM
    DateMode = dmComboBox
    Date = 43529
    Time = 0.592270277775242
    UseDefaultSeparators = True
    HideDateTimeParts = []
    MonthNames = 'Long'
    OnChange = dtpData_wyjazduChange
  end
  object teGodzPowrotu: TTimeEdit
    Left = 240
    Height = 23
    Top = 160
    Width = 79
    DefaultNow = True
    ButtonWidth = 23
    NumGlyphs = 1
    MaxLength = 0
    TabOrder = 8
    Text = 'teGodzPowrotu'
  end
  object dtpData_Powrotu: TDateTimePicker
    Left = 112
    Height = 23
    Top = 160
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
    TimeDisplay = tdHM
    DateMode = dmComboBox
    Date = 43529
    Time = 0.592270277775242
    UseDefaultSeparators = True
    HideDateTimeParts = []
    MonthNames = 'Long'
  end
end
