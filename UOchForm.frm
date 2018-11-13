object OchForm: TOchForm
  Left = 342
  Height = 800
  Top = 242
  Width = 831
  Caption = 'Karta Ochronna'
  ClientHeight = 800
  ClientWidth = 831
  KeyPreview = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  Position = poScreenCenter
  LCLVersion = '6.6'
  object Panel1: TPanel
    Left = 0
    Height = 42
    Top = 0
    Width = 831
    Align = alTop
    ClientHeight = 42
    ClientWidth = 831
    TabOrder = 0
    object DBNazwisko: TDBText
      Left = 16
      Height = 25
      Top = 8
      Width = 111
      DataField = 'NazwiskoImie'
      DataSource = DSOs
      Font.Height = -19
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object DBOjciec: TDBText
      AnchorSideLeft.Control = DBNazwisko
      AnchorSideLeft.Side = asrBottom
      Left = 157
      Height = 25
      Hint = 'Imię ojca'
      Top = 8
      Width = 76
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
    object lblCelaTA: TLabel
      AnchorSideLeft.Side = asrBottom
      Left = 632
      Height = 19
      Top = 8
      Width = 58
      BorderSpacing.Left = 10
      Caption = 'Cela TA'
      Font.CharSet = EASTEUROPE_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Pitch = fpVariable
      Font.Quality = fqDraft
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Visible = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Height = 222
    Top = 42
    Width = 831
    Align = alTop
    BorderSpacing.Bottom = 4
    ClientHeight = 222
    ClientWidth = 831
    TabOrder = 1
    object Panel_1: TPanel
      Left = 1
      Height = 220
      Top = 1
      Width = 172
      Align = alLeft
      BevelOuter = bvNone
      BorderStyle = bsSingle
      ClientHeight = 216
      ClientWidth = 168
      Color = clBtnFace
      ParentColor = False
      TabOrder = 0
      object Image_os: TImage
        Left = 0
        Height = 216
        Top = 0
        Width = 168
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
    object Panel3: TPanel
      Left = 173
      Height = 220
      Top = 1
      Width = 657
      Align = alClient
      BevelOuter = bvNone
      ClientHeight = 220
      ClientWidth = 657
      TabOrder = 1
      object Label2: TLabel
        Left = 16
        Height = 15
        Top = 8
        Width = 64
        Caption = 'Klasyfikacja:'
        ParentColor = False
      end
      object DBKlasyf: TDBText
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
      object Label3: TLabel
        Left = 168
        Height = 15
        Top = 8
        Width = 27
        Caption = 'POC:'
        ParentColor = False
      end
      object DBPOC: TDBText
        Left = 200
        Height = 15
        Top = 8
        Width = 40
        DataField = 'POC'
        DataSource = DSOs
        Font.Color = clBlue
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object btnRejestrZat: TBitBtn
        Left = 328
        Height = 30
        Top = 152
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
        TabOrder = 0
      end
      object btnRejestrProsb: TBitBtn
        Left = 488
        Height = 30
        Top = 152
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
        TabOrder = 1
      end
      object btnDodajWidzenie: TBitBtn
        Left = 16
        Height = 30
        Top = 184
        Width = 152
        Caption = 'Dodaj widzenie...'
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
        OnClick = btnDodajWidzenieClick
        TabOrder = 2
      end
      object DBCheckBox6: TDBCheckBox
        Left = 288
        Height = 23
        Top = 2
        Width = 90
        Caption = 'Grypsuje'
        DataField = 'GR'
        DataSource = DSOs
        ReadOnly = True
        TabOrder = 3
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBWychowawca: TDBText
        Left = 480
        Height = 15
        Top = 8
        Width = 88
        DataField = 'Wychowawca'
        DataSource = DSOs
        Font.Color = clNavy
        Font.Style = [fsItalic]
        ParentColor = False
        ParentFont = False
      end
      object Label1: TLabel
        Left = 400
        Height = 15
        Top = 8
        Width = 75
        Caption = 'Wychowawca:'
        Font.Style = [fsItalic]
        ParentColor = False
        ParentFont = False
      end
      object lblCelaPalaca: TLabel
        Left = 200
        Height = 15
        Top = 32
        Width = 60
        Caption = 'Cela Paląca'
        Font.Color = clBlue
        ParentColor = False
        ParentFont = False
        Visible = False
      end
      object lblCelaOchronna: TLabel
        AnchorSideLeft.Side = asrBottom
        Left = 288
        Height = 15
        Top = 32
        Width = 79
        BorderSpacing.Left = 10
        Caption = 'Cela Ochronna'
        Font.Color = clRed
        ParentColor = False
        ParentFont = False
        Visible = False
      end
      object Bevel1: TBevel
        Left = 16
        Height = 4
        Top = 57
        Width = 624
        Style = bsRaised
      end
      object btnDodajProsbe: TBitBtn
        Left = 488
        Height = 30
        Top = 184
        Width = 152
        Caption = 'Dodaj prośbę ...'
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
        OnClick = btnDodajProsbeClick
        TabOrder = 4
      end
      object sbtnWyslijWiad: TSpeedButton
        AnchorSideLeft.Control = DBWychowawca
        AnchorSideLeft.Side = asrBottom
        AnchorSideTop.Control = DBWychowawca
        AnchorSideTop.Side = asrCenter
        Left = 578
        Height = 22
        Hint = 'Wyślij wiadomość do wychowawcy.'
        Top = 4
        Width = 23
        BorderSpacing.Left = 10
        Flat = True
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000064000000640000000000000000000000000000000000
          0000000000000000000000000000994A15729749148900000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000994C16A0BC7027FF9A4C16BE000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000009E4E19B5DD9A22FFBC7027FF9F511ABD0000
          000000000000000000000000000000000000000000000000000000000000A659
          1EDDAE601FFFB66922FFB66922FFB56722FFE0A333FFDEA132FFBC7027FFB669
          22FFB66922FFB66922FFB66922FFAE601FFFA6591ED900000000BC7027E8E2AA
          3CFFE2AA3CFFE1A83CFFE1A83CFFE1A83CFFDFA53BFFDFA53BFFDFA53BFFE1A8
          3CFFE1A83CFFE1A83CFFE1A83CFFE2AA3CFFE2AA3CFFBC7027DCBC7027FFE4B0
          49FFE4B049FFE4B049FFE4B049FFE4B049FFE4B049FFE4B049FFE4B049FFE4B0
          49FFE4B049FFE4B049FFE4B049FFE4B049FFE4B049FFBC7027FFCD8A35FFE6B5
          52FFE6B552FFE6B552FFE6B552FFE6B552FFE6B552FFE6B552FFE6B552FFE6B5
          52FFE6B552FFE6B552FFE6B552FFE6B552FFE6B552FFCD8A35FFD59840FFEABD
          61FFEABE62FFDEA132FFDEA132FFEABD61FFEABD61FFDEA132FFDEA132FFEABE
          62FFEABD61FFDEA132FFDEA132FFECC064FFEABD61FFD59840FFD99D44FFEBC2
          69FFEAC065FFF9E6B8FFF9E6B8FFC6812FFFEDC56BFFF9E6B8FFF9E6B8FFC681
          2FFFECC46AFFF9E6B8FFF9E6B8FFC6812FFFECC469FFD89C42FFE3BC74FFF5DE
          A7FFF5DEA7FFFFFFFFFFFFFFFFFFDEA132FFECC873FFFFFFFFFFFFFFFFFFDEA1
          32FFF3D891FFFBF8F9FFFFFFFFFFDEA132FFF6DEA6FFE3BB72FFE6BF77FFF4DD
          A5FFF2DAA2FFD9AA60FFD9AA60FFF5DFAAFFF5DFA9FFD9AA60FFD9AA60FFF3DB
          A3FFF5DFA8FFD9AA60FFD9AA60FFF4DEA6FFF4DEA6FFE6BF77FFE9C67EFFF6E1
          ADFFF6E1ADFFF6E1AEFFF6E1AEFFF6E1ADFFF6E1ADFFF6E1AEFFF6E1AEFFF6E1
          ADFFF6E1ADFFF6E1ADFFF6E1AEFFF6E1ADFFF6E1ADFFE9C67EFFEACA82FFF7E3
          B1FFF7E3B1FFF7E3B1FFF7E3B1FFF7E3B1FFF7E3B1FFF7E3B1FFF7E3B1FFF7E3
          B1FFF7E3B1FFF7E3B1FFF7E3B1FFF7E3B1FFF7E3B1FFEACA82FFEACA82C8F8E4
          B4FFF8E4B3FFF8E4B3FFF8E4B3FFF8E4B3FFF8E4B3FFF8E4B3FFF8E4B3FFF8E4
          B3FFF8E4B3FFF8E4B3FFF8E4B3FFF8E4B3FFF8E4B4FFEACA82B600000000EACA
          82B3E3BB72FFE3BB72FFE6B552FFE2AC4CFFE2AC4CFFE2AC4CFFE2AC4CFFE2AC
          4CFFE2AC4CFFE6B552FFE3BB72FFE3BB72FFEACA82A400000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000
        }
        OnClick = sbtnWyslijWiadClick
        ShowHint = True
        ParentShowHint = False
      end
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Height = 532
    Top = 268
    Width = 831
    ActivePage = TabSheetUwagi
    Align = alClient
    Images = DM.ImageList1
    TabHeight = 25
    TabIndex = 0
    TabOrder = 2
    OnChange = PageControl1Change
    object TabSheetUwagi: TTabSheet
      Caption = 'Uwagi i Polecenia'
      ImageIndex = 28
    end
    object TabSheetWykazy: TTabSheet
      Caption = 'Wykazy'
      ImageIndex = 26
      TabVisible = False
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
    object TabSheetZatrudnienie: TTabSheet
      Caption = 'Zatrudnienie'
      ImageIndex = 5
    end
  end
  object ZQOs: TZQuery
    Connection = DM.ZConnection1
    ReadOnly = True
    SQL.Strings = (
      'SELECT'
      'os.IDO,'
      'os.NAZWISKO,'
      'os.IMIE,'
      'CONCAT_WS('' '',os.NAZWISKO, os.IMIE) as NazwiskoImie,'
      'os.OJCIEC,'
      'os.URODZ,'
      'os.PRZYJ,'
      'os.KLASYF,'
      'os.POC,'
      'os.STATUS,'
      'oi.GR,'
      'tc.Wychowawca'
      'FROM osadzeni os'
      'LEFT OUTER JOIN os_info oi ON oi.IDO = os.IDO'
      'LEFT OUTER Join typ_cel tc ON tc.POC = os.POC'
      'WHERE os.IDO = :IDO'
    )
    Params = <    
      item
        DataType = ftUnknown
        Name = 'IDO'
        ParamType = ptUnknown
      end>
    Left = 32
    Top = 72
    ParamData = <    
      item
        DataType = ftUnknown
        Name = 'IDO'
        ParamType = ptUnknown
      end>
  end
  object DSOs: TDataSource
    DataSet = ZQOs
    Left = 32
    Top = 136
  end
end
