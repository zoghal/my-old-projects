object listtable: Tlisttable
  Left = 232
  Top = 331
  BiDiMode = bdRightToLeft
  BorderStyle = bsSingle
  Caption = #1604#1610#1587#1578' '#1576#1585#1606#1575#1605#1607' '#1583#1575#1585#1608#1610#1610' '#1576#1610#1605#1575#1585#1575#1606
  ClientHeight = 452
  ClientWidth = 741
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 741
    Height = 452
    Align = alClient
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Code'
        Title.Alignment = taCenter
        Title.Caption = #1603#1583' '#1575#1582#1589#1575#1589#1610' '#1576#1610#1605#1575#1585
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Name'
        Title.Alignment = taCenter
        Title.Caption = #1606#1575#1605
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
        Title.Caption = #1575#1578#1601#1575#1602' '#1576#1587#1578#1585#1610
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Takht'
        Title.Alignment = taCenter
        Title.Caption = #1588#1605#1575#1585#1607' '#1578#1582#1578
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Name_1'
        Title.Alignment = taCenter
        Title.Caption = #1606#1575#1605' '#1583#1575#1585#1608'  '#1605#1589#1585#1601#1610
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'LasttimeUse'
        Title.Alignment = taCenter
        Title.Caption = #1586#1605#1575#1606' '#1605#1589#1585#1601' '#1576#1593#1583#1610
        Visible = True
      end>
  end
  object Query1: TQuery
    Active = True
    AutoRefresh = True
    SQL.Strings = (
      'select * from bimar,drug,tempt '
      'where   tempt.Codeb = bimar.Code AND tempt.Coded = drug.Code'
      ''
      '')
    Left = 64
    Top = 56
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 64
    Top = 96
  end
end
