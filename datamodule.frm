object DM: TDM
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  OldCreateOrder = False
  Height = 514
  HorizontalOffset = 383
  VerticalOffset = 176
  Width = 697
  object IniPropStorage1: TIniPropStorage
    StoredValues = <>
    IniFileName = 'config.ini'
    IniSection = 'CONFIG'
    left = 411
    top = 22
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cCP_UTF8
    AutoEncodeStrings = False
    ClientCodepage = 'utf8'
    Catalog = 'klodzko'
    Properties.Strings = (
      'codepage=utf8'
    )
    Connected = True
    HostName = '172.30.64.11'
    Port = 3306
    Database = 'klodzko'
    User = '153202jwlo'
    Password = 'molibden'
    Protocol = 'mysql-5'
    left = 28
    top = 18
  end
  object ZQOsadzeni: TZQuery
    Connection = ZConnection1
    ReadOnly = True
    SQL.Strings = (
      'SELECT'
      'IDO,'
      'NAZWISKO,'
      'IMIE,'
      'OJCIEC,'
      'URODZ,'
      'PRZYJ,'
      'KLASYF,'
      'POC,'
      'STATUS'
      'FROM osadzeni WHERE (NAZWISKO LIKE :nazwisko) OR (POC LIKE :poc) ;'
    )
    Params = <    
      item
        DataType = ftUnknown
        Name = 'nazwisko'
        ParamType = ptUnknown
      end    
      item
        DataType = ftUnknown
        Name = 'poc'
        ParamType = ptUnknown
      end>
    left = 28
    top = 120
    ParamData = <    
      item
        DataType = ftUnknown
        Name = 'nazwisko'
        ParamType = ptUnknown
      end    
      item
        DataType = ftUnknown
        Name = 'poc'
        ParamType = ptUnknown
      end>
  end
  object DSOsadzeni: TDataSource
    DataSet = ZQOsadzeni
    left = 28
    top = 176
  end
  object ZQTemp: TZQuery
    Connection = ZConnection1
    Params = <>
    left = 184
    top = 120
  end
end
