object dm: Tdm
  OldCreateOrder = False
  Left = 214
  Top = 134
  Height = 274
  Width = 292
  object DSKala: TDataSource
    DataSet = Tkala
    Left = 32
    Top = 16
  end
  object Tkala: TTable
    Active = True
    TableName = 'kala.db'
    Left = 80
    Top = 16
  end
  object DSuser: TDataSource
    DataSet = Tuser
    Left = 32
    Top = 64
  end
  object Dcustomer: TDataSource
    DataSet = Tcustomer
    Left = 32
    Top = 115
  end
  object Tcustomer: TTable
    Active = True
    TableName = 'customer.db'
    Left = 80
    Top = 115
  end
  object Dinout: TDataSource
    DataSet = Tinout
    Left = 32
    Top = 171
  end
  object Tinout: TTable
    Active = True
    TableName = 'inout.db'
    Left = 80
    Top = 171
  end
  object DataSource1: TDataSource
    DataSet = Query
    Left = 160
    Top = 32
  end
  object Query: TQuery
    AutoCalcFields = False
    CachedUpdates = True
    AutoRefresh = True
    Constrained = True
    Left = 208
    Top = 32
  end
  object Tuser: TTable
    Active = True
    TableName = 'userdb.DB'
    Left = 80
    Top = 65
  end
end
