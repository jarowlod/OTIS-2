object ViewUwagiOch: TViewUwagiOch
  Left = 396
  Height = 395
  Top = 222
  Width = 602
  Align = alClient
  BorderStyle = bsNone
  Caption = 'ViewUwagiOch'
  ClientHeight = 395
  ClientWidth = 602
  OnClose = FormClose
  OnCreate = FormCreate
  LCLVersion = '6.3'
  object PanelCenter: TPanel
    Left = 0
    Height = 371
    Top = 24
    Width = 602
    Align = alClient
    BevelOuter = bvNone
    ClientHeight = 371
    ClientWidth = 602
    TabOrder = 0
    object PanelKierownika: TPanel
      AnchorSideLeft.Control = PanelCenter
      AnchorSideTop.Control = PanelCenter
      AnchorSideTop.Side = asrCenter
      AnchorSideRight.Control = PanelCenter
      AnchorSideRight.Side = asrBottom
      Left = 0
      Height = 24
      Top = 173
      Width = 602
      Anchors = [akTop, akLeft, akRight]
      BevelOuter = bvNone
      Caption = 'Uwagi Kierownika'
      ClientHeight = 24
      ClientWidth = 602
      Color = 8684799
      ParentColor = False
      TabOrder = 0
      object DBText9: TDBText
        Left = 559
        Height = 24
        Top = 0
        Width = 43
        Align = alRight
        DataField = 'Data'
        DataSource = DSUwagiKierownika
        ParentColor = False
      end
      object DBNavigator2: TDBNavigator
        Left = 0
        Height = 24
        Top = 0
        Width = 105
        Align = alLeft
        BevelOuter = bvNone
        ChildSizing.EnlargeHorizontal = crsScaleChilds
        ChildSizing.EnlargeVertical = crsScaleChilds
        ChildSizing.ShrinkHorizontal = crsScaleChilds
        ChildSizing.ShrinkVertical = crsScaleChilds
        ChildSizing.Layout = cclLeftToRightThenTopToBottom
        ChildSizing.ControlsPerLine = 100
        ClientHeight = 24
        ClientWidth = 105
        DataSource = DSUwagiKierownika
        Options = []
        TabOrder = 0
        VisibleButtons = [nbPost, nbCancel]
      end
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
      Height = 174
      Top = 197
      Width = 602
      Align = alCustom
      Anchors = [akTop, akLeft, akRight, akBottom]
      Color = 15790335
      DataField = 'UWAGI'
      DataSource = DSUwagiKierownika
      ScrollBars = ssAutoBoth
      TabOrder = 1
    end
    object DBMemoUwagiOch: TDBMemo
      AnchorSideLeft.Control = PanelCenter
      AnchorSideTop.Control = PanelCenter
      AnchorSideRight.Control = PanelCenter
      AnchorSideRight.Side = asrBottom
      AnchorSideBottom.Control = PanelKierownika
      Left = 0
      Height = 173
      Top = 0
      Width = 602
      Align = alCustom
      Anchors = [akTop, akLeft, akRight, akBottom]
      DataField = 'UWAGI'
      DataSource = DSUwagi
      ScrollBars = ssAutoBoth
      TabOrder = 2
    end
  end
  object Panel3: TPanel
    Left = 0
    Height = 24
    Top = 0
    Width = 602
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Uwagi Ochrony'
    ClientHeight = 24
    ClientWidth = 602
    TabOrder = 1
    object DBText4: TDBText
      Left = 559
      Height = 24
      Top = 0
      Width = 43
      Align = alRight
      DataField = 'Data'
      DataSource = DSUwagi
      ParentColor = False
    end
    object DBNavigator1: TDBNavigator
      Left = 0
      Height = 24
      Top = 0
      Width = 105
      Align = alLeft
      BevelOuter = bvNone
      ChildSizing.EnlargeHorizontal = crsScaleChilds
      ChildSizing.EnlargeVertical = crsScaleChilds
      ChildSizing.ShrinkHorizontal = crsScaleChilds
      ChildSizing.ShrinkVertical = crsScaleChilds
      ChildSizing.Layout = cclLeftToRightThenTopToBottom
      ChildSizing.ControlsPerLine = 100
      ClientHeight = 24
      ClientWidth = 105
      DataSource = DSUwagi
      Options = []
      TabOrder = 0
      VisibleButtons = [nbPost, nbCancel]
    end
  end
  object ZQUwagi: TZQuery
    Connection = DM.ZConnection1
    BeforePost = ZQUwagiBeforePost
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
    Left = 424
    Top = 32
    ParamData = <    
      item
        DataType = ftUnknown
        Name = 'ido'
        ParamType = ptUnknown
      end>
  end
  object DSUwagi: TDataSource
    DataSet = ZQUwagi
    Left = 424
    Top = 88
  end
  object ZQUwagiKierownika: TZQuery
    Connection = DM.ZConnection1
    BeforePost = ZQUwagiKierownikaBeforePost
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
    Left = 424
    Top = 240
    ParamData = <    
      item
        DataType = ftUnknown
        Name = 'ido'
        ParamType = ptUnknown
      end>
  end
  object DSUwagiKierownika: TDataSource
    DataSet = ZQUwagiKierownika
    Left = 424
    Top = 296
  end
end
