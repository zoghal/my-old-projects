object MainForm: TMainForm
  Left = 254
  Top = 182
  BiDiMode = bdRightToLeft
  BorderStyle = bsSingle
  Caption = #1587#1610#1587#1578#1605' '#1605#1583#1585#1610#1578' '#1583#1575#1585#1608#1610' '#1576#1610#1605#1575#1585
  ClientHeight = 434
  ClientWidth = 692
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu2
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid4: TDBGrid
    Left = 0
    Top = 0
    Width = 692
    Height = 434
    Align = alClient
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = ARABIC_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Name'
        Title.Alignment = taCenter
        Title.Caption = #1606#1575#1605' '#1576#1610#1605#1575#1585
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Famili'
        Title.Alignment = taCenter
        Title.Caption = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Room'
        Title.Alignment = taCenter
        Title.Caption = #1588#1605#1575#1585#1607' '#1575#1578#1575#1602
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Takht'
        Title.Alignment = taCenter
        Title.Caption = #1588#1605#1575#1585#1607' '#1578#1582#1578' '#1576#1587#1578#1585#1610
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Name_1'
        Title.Alignment = taCenter
        Title.Caption = #1606#1575#1605' '#1583#1575#1585#1608
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'LasttimeUse'
        Title.Alignment = taCenter
        Title.Caption = #1570#1582#1585#1610#1606' '#1586#1605#1575#1606' '#1605#1589#1585#1601
        Visible = True
      end>
  end
  object MainMenu2: TMainMenu
    Left = 40
    Top = 160
    object N1: TMenuItem
      Caption = #1605#1583#1610#1585#1610#1578
      object N2: TMenuItem
        Caption = #1575#1610#1580#1575#1583' '#1576#1585#1606#1575#1605#1607' '#1583#1575#1585#1608#1610#1610
        OnClick = N2Click
      end
      object N3: TMenuItem
        Caption = #1583#1575#1585#1608#1610' '#1580#1583#1610#1583
        OnClick = N3Click
      end
      object N4: TMenuItem
        Caption = #1576#1610#1605#1575#1585' '#1580#1583#1610#1583
        OnClick = N4Click
      end
    end
    object N5: TMenuItem
      Caption = #1608#1610#1585#1575#1610#1588
      object N6: TMenuItem
        Caption = #1608#1610#1585#1575#1610#1588' '#1583#1575#1585#1608
        OnClick = N6Click
      end
      object N7: TMenuItem
        Caption = #1608#1610#1585#1575#1610#1588' '#1605#1585#1610#1590
        OnClick = N7Click
      end
      object N8: TMenuItem
        Caption = #1604#1610#1587#1578' '#1576#1585#1606#1575#1605#1607' '#1583#1575#1585#1608#1610#1610
        OnClick = N8Click
      end
    end
  end
  object BimarTable: TTable
    Active = True
    AutoRefresh = True
    TableName = 'bimar.db'
    Left = 16
    Top = 312
    object BimarTableCode: TAutoIncField
      FieldName = 'Code'
      ReadOnly = True
    end
    object BimarTableName: TStringField
      FieldName = 'Name'
    end
    object BimarTableFamili: TStringField
      FieldName = 'Famili'
      Size = 30
    end
    object BimarTableID: TFloatField
      FieldName = 'ID'
    end
    object BimarTableAddres: TStringField
      FieldName = 'Addres'
      Size = 80
    end
    object BimarTableCode_meli: TStringField
      FieldName = 'Code_meli'
      Size = 10
    end
    object BimarTableFather_n: TStringField
      FieldName = 'Father_n'
    end
    object BimarTableRoom: TFloatField
      FieldName = 'Room'
    end
    object BimarTableTakht: TFloatField
      FieldName = 'Takht'
    end
  end
  object BimarDataSource: TDataSource
    DataSet = BimarTable
    Left = 16
    Top = 344
  end
  object DrugTable: TTable
    Active = True
    AutoRefresh = True
    TableName = 'DRUG.db'
    Left = 48
    Top = 312
    object DrugTableCode: TAutoIncField
      FieldName = 'Code'
      ReadOnly = True
    end
    object DrugTableName: TStringField
      FieldName = 'Name'
    end
    object DrugTableUSE: TFloatField
      FieldName = 'USE'
    end
  end
  object DrugDataSource: TDataSource
    DataSet = DrugTable
    Left = 48
    Top = 344
  end
  object TableTable: TTable
    Active = True
    AutoRefresh = True
    TableName = 'tempt.db'
    Left = 80
    Top = 312
    object TableTableCodeb: TFloatField
      DisplayWidth = 12
      FieldName = 'Codeb'
    end
    object TableTableCoded: TFloatField
      DisplayWidth = 13
      FieldName = 'Coded'
    end
    object TableTableLasttimeUse: TTimeField
      DisplayWidth = 12
      FieldName = 'LasttimeUse'
    end
    object TableTableOk: TBooleanField
      DisplayWidth = 6
      FieldName = 'Ok'
    end
  end
  object TableDataSource: TDataSource
    DataSet = TableTable
    Left = 80
    Top = 344
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 96
    Top = 208
  end
  object Query1: TQuery
    Left = 112
    Top = 312
    object Query1Code: TIntegerField
      FieldName = 'Code'
    end
    object Query1Name: TStringField
      FieldName = 'Name'
    end
    object Query1Famili: TStringField
      FieldName = 'Famili'
      Size = 30
    end
    object Query1ID: TFloatField
      FieldName = 'ID'
    end
    object Query1Addres: TStringField
      FieldName = 'Addres'
      Size = 80
    end
    object Query1Code_meli: TStringField
      FieldName = 'Code_meli'
      Size = 10
    end
    object Query1Father_n: TStringField
      FieldName = 'Father_n'
    end
    object Query1Room: TFloatField
      FieldName = 'Room'
    end
    object Query1Takht: TFloatField
      FieldName = 'Takht'
    end
    object Query1Code_1: TIntegerField
      FieldName = 'Code_1'
    end
    object Query1Name_1: TStringField
      FieldName = 'Name_1'
    end
    object Query1USE: TFloatField
      FieldName = 'USE'
    end
    object Query1Codeb: TFloatField
      FieldName = 'Codeb'
    end
    object Query1Coded: TFloatField
      FieldName = 'Coded'
    end
    object Query1LasttimeUse: TTimeField
      FieldName = 'LasttimeUse'
    end
    object Query1Ok: TBooleanField
      FieldName = 'Ok'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 112
    Top = 344
  end
end
