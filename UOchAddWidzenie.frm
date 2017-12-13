object OchAddWidzenie: TOchAddWidzenie
  Left = 407
  Height = 568
  Top = 229
  Width = 964
  Caption = 'Dodaj widzenie'
  ClientHeight = 568
  ClientWidth = 964
  OnCreate = FormCreate
  OnShow = FormShow
  Position = poOwnerFormCenter
  LCLVersion = '6.3'
  object Panel2: TPanel
    Left = 0
    Height = 40
    Top = 528
    Width = 964
    Align = alBottom
    BevelOuter = bvNone
    ClientHeight = 40
    ClientWidth = 964
    TabOrder = 0
    object btnOK: TBitBtn
      Left = 747
      Height = 30
      Top = 8
      Width = 100
      Anchors = [akTop, akRight]
      DefaultCaption = True
      Kind = bkOK
      ModalResult = 1
      TabOrder = 0
    end
    object btnAnuluj: TBitBtn
      Left = 858
      Height = 30
      Top = 8
      Width = 100
      Anchors = [akTop, akRight]
      Cancel = True
      DefaultCaption = True
      Kind = bkCancel
      ModalResult = 2
      TabOrder = 1
    end
  end
  object Panel1: TPanel
    Left = 0
    Height = 218
    Top = 0
    Width = 964
    Align = alTop
    ClientHeight = 218
    ClientWidth = 964
    TabOrder = 1
    object Label1: TLabel
      Left = 15
      Height = 15
      Top = 59
      Width = 205
      Caption = 'Czas trwania widzenia (regulaminowe):'
      ParentColor = False
    end
    object Label2: TLabel
      Left = 15
      Height = 15
      Top = 156
      Width = 147
      Caption = 'Sposób udzielenia widzenia:'
      ParentColor = False
    end
    object cbSposob: TComboBox
      Left = 168
      Height = 23
      Top = 152
      Width = 312
      DropDownCount = 10
      ItemHeight = 15
      ItemIndex = 0
      Items.Strings = (
        'K - UMOŻLIWIAJĄCE BEZPOŚREDNI KONTAKT'
        'BO - BEZ DOZORU'
        'OP - W ODDZIELNYM POMIESZCZENIU BEZ DOZORU'
        'BK - UNIEMOŻLIWIAJĄCE BEZPOŚREDNI KONTAKT'
      )
      Style = csDropDownList
      TabOrder = 0
      Text = 'K - UMOŻLIWIAJĄCE BEZPOŚREDNI KONTAKT'
    end
    object Label3: TLabel
      Left = 15
      Height = 15
      Top = 188
      Width = 36
      Caption = 'Uwagi:'
      ParentColor = False
    end
    object edUwagi: TEdit
      Left = 56
      Height = 23
      Top = 185
      Width = 424
      TabOrder = 1
    end
    object SpinEdit1: TSpinEdit
      Left = 224
      Height = 23
      Top = 56
      Width = 50
      MaxValue = 180
      TabOrder = 2
    end
    object SpinEdit2: TSpinEdit
      Left = 224
      Height = 23
      Top = 80
      Width = 50
      MaxValue = 180
      TabOrder = 3
    end
    object btnRejestrProsb: TBitBtn
      Left = 806
      Height = 30
      Top = 184
      Width = 152
      Anchors = [akRight, akBottom]
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
      TabOrder = 4
    end
    object Panel3: TPanel
      Left = 1
      Height = 39
      Top = 1
      Width = 962
      Align = alTop
      BevelOuter = bvNone
      ClientHeight = 39
      ClientWidth = 962
      Color = clWhite
      ParentColor = False
      TabOrder = 5
      object lblNazwisko: TLabel
        Left = 15
        Height = 19
        Top = 8
        Width = 110
        Caption = 'Nazwisko Imię'
        Font.CharSet = EASTEUROPE_CHARSET
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Quality = fqDraft
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lblKlasyf: TLabel
        AnchorSideLeft.Control = lblNazwisko
        AnchorSideLeft.Side = asrBottom
        Left = 175
        Height = 18
        Top = 8
        Width = 42
        BorderSpacing.Left = 50
        Caption = 'Klasyf'
        Font.CharSet = EASTEUROPE_CHARSET
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Quality = fqDraft
        ParentColor = False
        ParentFont = False
      end
      object lblPoc: TLabel
        AnchorSideLeft.Control = lblKlasyf
        AnchorSideLeft.Side = asrBottom
        Left = 267
        Height = 18
        Top = 8
        Width = 35
        BorderSpacing.Left = 50
        Caption = 'POC'
        Font.CharSet = EASTEUROPE_CHARSET
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Quality = fqDraft
        ParentColor = False
        ParentFont = False
      end
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Height = 310
    Top = 218
    Width = 964
    ActivePage = TabSheetOsoby
    Align = alClient
    Images = DM.ImageList1
    TabHeight = 25
    TabIndex = 0
    TabOrder = 2
    object TabSheetOsoby: TTabSheet
      Caption = 'Osoby uprawnione do widzenia'
      ClientHeight = 277
      ClientWidth = 956
      ImageIndex = 8
      object Panel5: TPanel
        Left = 0
        Height = 277
        Top = 0
        Width = 338
        Align = alLeft
        BevelOuter = bvNone
        ClientHeight = 277
        ClientWidth = 338
        TabOrder = 0
        object RxDBGrid3: TRxDBGrid
          Left = 0
          Height = 253
          Top = 24
          Width = 338
          ColumnDefValues.BlobText = '(blob)'
          TitleButtons = True
          AutoSort = True
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
              Filter.AllValue = '(All values)'
              Filter.EmptyFont.Style = [fsItalic]
              Filter.ItemIndex = -1
              Footer.ValueType = fvtCount
              Footers = <>
            end          
            item
              Title.Alignment = taCenter
              Title.Orientation = toHorizontal
              Title.Caption = 'Imie'
              Width = 100
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
              Title.Caption = 'Pokrewienstwo'
              Width = 100
              FieldName = 'Pokrewienstwo'
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
          FooterOptions.Active = True
          FooterOptions.Color = clSilver
          FooterOptions.RowCount = 1
          FooterOptions.Style = tsNative
          FooterOptions.DrawFullLine = False
          SearchOptions.QuickSearchOptions = [loCaseInsensitive, loPartialKey]
          SearchOptions.FromStart = False
          OptionsRx = [rdgFooterRows, rdgCaseInsensitiveSort, rdgWordWrap]
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
          DataSource = DSOsoby
          DefaultRowHeight = 19
          FixedColor = clNone
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgHeaderHotTracking, dgHeaderPushedLook, dgDisableDelete, dgDisableInsert, dgTruncCellHints, dgCellEllipsis]
          ReadOnly = True
          TabOrder = 0
          TitleFont.CharSet = EASTEUROPE_CHARSET
          TitleFont.Pitch = fpVariable
          TitleFont.Quality = fqDraft
          TitleStyle = tsNative
        end
        object Label4: TLabel
          Left = 0
          Height = 24
          Top = 0
          Width = 338
          Align = alTop
          Alignment = taCenter
          AutoSize = False
          Caption = 'Osoby odwiedzające'
          Font.CharSet = EASTEUROPE_CHARSET
          Font.Color = clGray
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Quality = fqDraft
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentColor = False
          ParentFont = False
        end
      end
      object Panel6: TPanel
        Left = 338
        Height = 277
        Top = 0
        Width = 64
        Align = alLeft
        ClientHeight = 277
        ClientWidth = 64
        TabOrder = 1
        object btnDodaj: TBitBtn
          Left = 8
          Height = 30
          Hint = 'Dodaj pozycję'
          Top = 56
          Width = 43
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000064000000640000000000000000000000000000000000
            00000000000000000000000000000000000000000000E56508FFE46A0CFF0000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000E6670AFFE5801AFFE57816FF0000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000E76907FFED9A2EFFF0B03EFFE26E10FF0000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000E96F08FFEEA139FFF8CB5DFFE99B36FFDC700EFF0000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000ED7709FFEFAE4AFFF9D06FFFF7C054FFDF9737FFD77821FFE082
            25FFDC781FFFDC7819FFDB7213FFDA6B0FFFDA680AFFD35008FF000000000000
            0000EE7F0AFFF4BB5FFFFAD885FFF7C765FFF6C059FFEDAF4AFFEAAA41FFE7A5
            35FFE89E2BFFE79321FFE48919FFE28211FFE37D0AFFCB4B00FF00000000F188
            0CFFF6C671FFFCE19FFFF9CE7AFFF7CA6DFFF6C361FFF6C055FFF6BA4AFFF4B3
            3EFFF3AA33FFF1A329FFF09A1FFFEF9217FFEE8B0FFFCE4E02FFF39714FFF9DC
            9BFFFEEFD0FFFAD788FFF9D383FFF8CF77FFF7C869FFF5C15BFFF4BB51FFF2B6
            45FFF1AC39FFF0A530FFEE9D26FFED941CFFEF9115FFD05406FFF2950EFFF8CF
            87FFFFF9ECFFFCE1ACFFF9D583FFF8D27FFFF7CB72FFF6C563FFF4BD54FFF3B5
            44FFF2AF3BFFF0A632FFEF9F26FFED951DFFF09718FFD65908FF00000000F386
            01FFF5C170FFFFFAECFFFCE2ADFFF9D17DFFF8CF7AFFF7C868FFF6C56AFFF4C2
            61FFF3BB53FFF2B447FFF0AE3DFFEFA532FFF09F20FFDA6009FF000000000000
            0000F17D00FFF5BB68FFFFFAEBFFFBE1ADFFF9CE70FFF8CC70FFFBE7B6FFFAEA
            BEFFF9E2ABFFF8DE9CFFF6D88AFFF6D47FFFF6C34EFFD96209FF000000000000
            000000000000EF7800FFF2B35CFFFEF8E4FFFCE7BFFFF8D17CFFF2A73FFBF1A1
            37FFF0A031FFEF9A2BFFED9125FFEC8821FFEC8A21FFDF640FFF000000000000
            00000000000000000000EE7000FFF1AC50FFFEFDF1FFF9D593FFEA7803FF0000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000ED6F00FFF1AA55FFFAE39FFFED8F1BFF0000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000ED7104FFEEA031FFED9525FF0000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000EF8307FFED820BFF0000
            0000000000000000000000000000000000000000000000000000
          }
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
        object btnUsun: TBitBtn
          Left = 8
          Height = 30
          Hint = 'Usuń pozycję'
          Top = 96
          Width = 43
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000064000000640000000000000000000000000000000000
            00000000000000000000000000000000000000000000C05500FFC05500FF0000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000BF5400FFD47A0BFFC055
            00FF000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000BE5100FFF4BA23FFD577
            08FFC9681AFF0000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000BE5100FFE69101FFF0AD
            15FFD47608FFC96819FF00000000000000000000000000000000CA6713FFC45E
            06FFC45E07FFC55F08FFC56009FFC5600AFFC5610BFFCA6709FFE99300FFE18B
            00FFF0A90EFFD0730AFFC96818FF000000000000000000000000DC8C25FFFFE7
            67FFFFD555FFFDCD47FFFCC63EFFF8BC33FFF5B427FFF3AB1CFFED9F12FFE995
            05FFE48C00FFED9E02FFCE720CFFC96817FF0000000000000000DE9128FFFFE6
            76FFFAD063FFF8CD56FFF7CA4DFFF6C443FFF4BD39FFF2B32FFFEFA824FFEEA4
            1AFFEC9C0EFFE68F02FFEF9B00FFD27C16FFC76312FF00000000E3982EFFFFEB
            83FFFBDA6FFFF9D365FFF9CF5CFFF7C952FFF6C749FFF5BF40FFF3B635FFF1B0
            2CFFEFA921FFEDA418FFE68A00FFF6BF29FFEDBD65FFC96511FFE9A231FFFFF0
            8EFFFDE17AFFFCDC72FFFBD769FFF9D260FFF8CB55FFF7C84EFFF5C547FFF4BD
            3CFFF3B534FFEFA71BFFF2B62BFFF5D675FFDD963BFFC5600DFFEDAC38FFFFF4
            9DFFFEE789FFFEE380FFFDE07AFFFBDC71FFFBD769FFFAD261FFF7CD55FFF6C9
            51FFF5BD36FFF2BD38FFFCDC6EFFDE922CFFC45D0BFF00000000F1BC5AFFFFFF
            FAFFFFFFE3FFFFFFE0FFFFFEDDFFFFFCD8FFFFFDD9FFFFF7C7FFFBD463FFF8C9
            47FFF7D474FFFEE68CFFE3931FFFC45D0DFF0000000000000000EEA42AFFEEB1
            44FFEDAB3EFFECAA3DFFEBA83CFFEAA83DFFE8A037FFE7A33BFFFDDE67FFFDE9
            A2FFFFF3B1FFE59F2EFFC25809FF000000000000000000000000000000000000
            00000000000000000000000000000000000000000000ECA01AFFFFFBC8FFFFFC
            CCFFE5A540FFC15707FF00000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000F3B83BFFFFFEC8FFE5A6
            3FFFC15605FF0000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000F8BE33FFE4A541FFC155
            05FF000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000DA8A26FFC15708FF0000
            0000000000000000000000000000000000000000000000000000
          }
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
        end
        object btnDopiszOsobe: TBitBtn
          Left = 8
          Height = 30
          Hint = 'Dopisz osobę ...'
          Top = 152
          Width = 43
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
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
        end
      end
      object Panel7: TPanel
        Left = 402
        Height = 277
        Top = 0
        Width = 554
        Align = alClient
        BevelOuter = bvNone
        ClientHeight = 277
        ClientWidth = 554
        TabOrder = 2
        object RxDBGrid4: TRxDBGrid
          Left = 0
          Height = 253
          Top = 24
          Width = 554
          ColumnDefValues.BlobText = '(blob)'
          TitleButtons = True
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
          FooterOptions.Active = True
          FooterOptions.Color = clSilver
          FooterOptions.RowCount = 1
          FooterOptions.Style = tsNative
          FooterOptions.DrawFullLine = False
          SearchOptions.QuickSearchOptions = [loCaseInsensitive, loPartialKey]
          SearchOptions.FromStart = False
          OptionsRx = [rdgFooterRows, rdgCaseInsensitiveSort, rdgWordWrap]
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
          DataSource = DSUprawnione
          DefaultRowHeight = 19
          FixedColor = clNone
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgHeaderHotTracking, dgHeaderPushedLook, dgDisableDelete, dgDisableInsert, dgTruncCellHints, dgCellEllipsis]
          ReadOnly = True
          TabOrder = 0
          TitleFont.CharSet = EASTEUROPE_CHARSET
          TitleFont.Height = -16
          TitleFont.Name = 'Calibri'
          TitleFont.Pitch = fpVariable
          TitleFont.Quality = fqDraft
          TitleStyle = tsNative
        end
        object Label5: TLabel
          Left = 0
          Height = 24
          Top = 0
          Width = 554
          Align = alTop
          Alignment = taCenter
          AutoSize = False
          Caption = 'Osoby uprawnione do widzeń'
          Font.CharSet = EASTEUROPE_CHARSET
          Font.Color = clGray
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Quality = fqDraft
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentColor = False
          ParentFont = False
        end
      end
    end
    object TabSheetWidzenia: TTabSheet
      Caption = 'Widzenia'
      ClientHeight = 277
      ClientWidth = 740
      ImageIndex = 21
      object RxDBGrid2: TRxDBGrid
        Left = 0
        Height = 277
        Top = 0
        Width = 740
        ColumnDefValues.BlobText = '(blob)'
        TitleButtons = True
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
        FooterOptions.Style = tsNative
        FooterOptions.DrawFullLine = False
        SearchOptions.QuickSearchOptions = [loCaseInsensitive, loPartialKey]
        SearchOptions.FromStart = False
        OptionsRx = [rdgAllowSortForm, rdgCaseInsensitiveSort, rdgWordWrap, rdgDisableWordWrapTitles]
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
        DefaultRowHeight = 24
        FixedColor = clNone
        FixedCols = 0
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgHeaderHotTracking, dgHeaderPushedLook, dgAnyButtonCanSelect, dgDisableDelete, dgDisableInsert, dgCellHints, dgTruncCellHints, dgCellEllipsis]
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 0
        TitleStyle = tsNative
      end
    end
    object TabSheetWykazy: TTabSheet
      Caption = 'Wykazy'
      ClientHeight = 277
      ClientWidth = 740
      ImageIndex = 26
      object RxDBGrid1: TRxDBGrid
        Left = 0
        Height = 277
        Top = 0
        Width = 740
        ColumnDefValues.BlobText = '(blob)'
        TitleButtons = True
        AutoSort = True
        Columns = <        
          item
            Title.Alignment = taCenter
            Title.Orientation = toHorizontal
            Title.Caption = 'Kategoria'
            Width = 150
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
            Title.Alignment = taCenter
            Title.Orientation = toHorizontal
            Title.Caption = 'Uwagi'
            Width = 300
            FieldName = 'Uwagi'
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
            Title.Caption = 'Użytkownik'
            Width = 100
            FieldName = 'user_dodania'
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
            Title.Caption = 'Data'
            Width = 90
            FieldName = 'data_dodania'
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
        FooterOptions.Style = tsNative
        FooterOptions.DrawFullLine = False
        SearchOptions.QuickSearchOptions = [loCaseInsensitive, loPartialKey]
        SearchOptions.FromStart = False
        OptionsRx = [rdgAllowSortForm, rdgCaseInsensitiveSort, rdgWordWrap, rdgDisableWordWrapTitles]
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
        DataSource = DSRejWyk
        DefaultRowHeight = 24
        FixedColor = clNone
        FixedCols = 0
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgHeaderHotTracking, dgHeaderPushedLook, dgAnyButtonCanSelect, dgDisableDelete, dgDisableInsert, dgCellHints, dgTruncCellHints, dgCellEllipsis]
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 0
        TitleStyle = tsNative
      end
    end
    object TabSheetUwagi: TTabSheet
      Caption = 'Uwagi i Polecenia'
      ClientHeight = 277
      ClientWidth = 740
      ImageIndex = 28
      object Panel4: TPanel
        Left = 0
        Height = 24
        Top = 0
        Width = 740
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Uwagi Ochrony'
        ClientHeight = 24
        ClientWidth = 740
        TabOrder = 0
        object DBText4: TDBText
          Left = 697
          Height = 24
          Top = 0
          Width = 43
          Align = alRight
          DataField = 'Data'
          DataSource = DSUwagi
          ParentColor = False
        end
      end
      object PanelCenter: TPanel
        Left = 0
        Height = 253
        Top = 24
        Width = 740
        Align = alClient
        BevelOuter = bvNone
        ClientHeight = 253
        ClientWidth = 740
        TabOrder = 1
        object PanelKierownika: TPanel
          AnchorSideLeft.Control = PanelCenter
          AnchorSideTop.Control = PanelCenter
          AnchorSideTop.Side = asrCenter
          AnchorSideRight.Control = PanelCenter
          AnchorSideRight.Side = asrBottom
          Left = 0
          Height = 24
          Top = 114
          Width = 740
          Anchors = [akTop, akLeft, akRight]
          BevelOuter = bvNone
          Caption = 'Uwagi Kierownika'
          ClientHeight = 24
          ClientWidth = 740
          Color = 8684799
          ParentColor = False
          TabOrder = 0
          object DBText9: TDBText
            Left = 697
            Height = 24
            Top = 0
            Width = 43
            Align = alRight
            DataField = 'Data'
            DataSource = DSUwagiKierownika
            ParentColor = False
          end
        end
        object DBMemoUwagiOch: TDBMemo
          AnchorSideLeft.Control = PanelCenter
          AnchorSideTop.Control = PanelCenter
          AnchorSideRight.Control = PanelCenter
          AnchorSideRight.Side = asrBottom
          AnchorSideBottom.Control = PanelKierownika
          Left = 0
          Height = 114
          Top = 0
          Width = 740
          Align = alCustom
          Anchors = [akTop, akLeft, akRight, akBottom]
          DataField = 'UWAGI'
          DataSource = DSUwagi
          ScrollBars = ssAutoBoth
          TabOrder = 1
        end
        object DBMemoUwagiKier: TDBMemo
          AnchorSideLeft.Control = PanelCenter
          AnchorSideTop.Control = PanelKierownika
          AnchorSideTop.Side = asrBottom
          AnchorSideRight.Control = PanelCenter
          AnchorSideRight.Side = asrBottom
          AnchorSideBottom.Control = PanelCenter
          AnchorSideBottom.Side = asrBottom
          Left = 0
          Height = 115
          Top = 138
          Width = 740
          Align = alCustom
          Anchors = [akTop, akLeft, akRight, akBottom]
          Color = 15790335
          DataField = 'UWAGI'
          DataSource = DSUwagiKierownika
          ReadOnly = True
          ScrollBars = ssAutoBoth
          TabOrder = 2
        end
      end
    end
  end
  object DSRejWyk: TDataSource
    DataSet = ZQRejWyk
    Left = 360
    Top = 344
  end
  object ZQRejWyk: TZQuery
    Connection = DM.ZConnection1
    ReadOnly = True
    SQL.Strings = (
      'SELECT'
      'kat.Opis,'
      'wyk.Uwagi,'
      'wyk.IDO,'
      'wyk.Kategoria,'
      'wyk.data_dodania,'
      'wyk.user_dodania'
      'FROM uwagi_wykazy as wyk'
      'JOIN katalog_wykazow as kat ON kat.ID = wyk.Kategoria'
      'WHERE wyk.IDO = :ido'
    )
    Params = <    
      item
        DataType = ftUnknown
        Name = 'ido'
        ParamType = ptUnknown
      end>
    Left = 360
    Top = 288
    ParamData = <    
      item
        DataType = ftUnknown
        Name = 'ido'
        ParamType = ptUnknown
      end>
  end
  object ZQUwagi: TZQuery
    Connection = DM.ZConnection1
    SQL.Strings = (
      'SELECT'
      'IDO,'
      'UWAGI,'
      'Data'
      'FROM uwagi'
      'WHERE IDO = :ido'
    )
    Params = <    
      item
        DataType = ftUnknown
        Name = 'ido'
        ParamType = ptUnknown
      end>
    Left = 416
    Top = 288
    ParamData = <    
      item
        DataType = ftUnknown
        Name = 'ido'
        ParamType = ptUnknown
      end>
  end
  object DSUwagi: TDataSource
    DataSet = ZQUwagi
    Left = 416
    Top = 344
  end
  object ZQUwagiKierownika: TZQuery
    Connection = DM.ZConnection1
    ReadOnly = True
    SQL.Strings = (
      'SELECT'
      'IDO,'
      'UWAGI,'
      'Data'
      'FROM uwagi_kierownika'
      'WHERE IDO = :ido'
    )
    Params = <    
      item
        DataType = ftUnknown
        Name = 'ido'
        ParamType = ptUnknown
      end>
    Left = 416
    Top = 408
    ParamData = <    
      item
        DataType = ftUnknown
        Name = 'ido'
        ParamType = ptUnknown
      end>
  end
  object DSUwagiKierownika: TDataSource
    DataSet = ZQUwagiKierownika
    Left = 416
    Top = 464
  end
  object MemOsoby: TRxMemoryData
    FieldDefs = <    
      item
        Name = 'ID'
        DataType = ftInteger
      end    
      item
        Name = 'Nazwisko'
        DataType = ftString
        Size = 100
      end    
      item
        Name = 'Imie'
        DataType = ftString
        Size = 100
      end    
      item
        Name = 'Pokrewienstwo'
        DataType = ftString
        Size = 100
      end>
    PacketRecords = 0
    Left = 56
    Top = 408
  end
  object DSOsoby: TDataSource
    DataSet = MemOsoby
    Left = 56
    Top = 464
  end
  object ZQUprawnione: TZQuery
    Connection = DM.ZConnection1
    ReadOnly = True
    SQL.Strings = (
      'SELECT '
      'Nazwisko, '
      'Imie,'
      'Adres, '
      'ID, '
      'Pokrew, '
      'uwagi,'
      'Skreslona '
      'FROM uprawnione'
      'WHERE (IDO=:ido)'
      'ORDER BY Nazwisko'
    )
    Params = <    
      item
        DataType = ftUnknown
        Name = 'ido'
        ParamType = ptUnknown
      end>
    Left = 144
    Top = 408
    ParamData = <    
      item
        DataType = ftUnknown
        Name = 'ido'
        ParamType = ptUnknown
      end>
  end
  object DSUprawnione: TDataSource
    DataSet = ZQUprawnione
    Left = 144
    Top = 464
  end
end
