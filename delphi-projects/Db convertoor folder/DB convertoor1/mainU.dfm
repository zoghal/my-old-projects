object Mainform: TMainform
  Left = 94
  Top = 110
  Width = 912
  Height = 472
  Caption = 'r'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 904
    Height = 407
    Align = alClient
    BiDiMode = bdRightToLeft
    Caption = ' '#1580#1583#1608#1604' '#1575#1589#1604#1610' '
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 311
      Top = 152
      Width = 266
      Height = 13
      Caption = #1583#1585' '#1581#1575#1604' '#1581#1575#1590#1585' '#1607#1610#1670#1711#1608#1606#1607' '#1580#1583#1608#1604#1610' '#1576#1607' '#1576#1585#1606#1575#1605#1607' '#1605#1593#1585#1601#1610' '#1606#1588#1583#1607' '#1575#1587#1578
    end
    object Splitter1: TSplitter
      Left = 2
      Top = 261
      Width = 900
      Height = 3
      Cursor = crVSplit
      Align = alBottom
      Beveled = True
      Color = clYellow
      ParentColor = False
      Visible = False
      OnMoved = Splitter1Moved
    end
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 900
      Height = 246
      Align = alClient
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Visible = False
    end
    object GroupBox2: TGroupBox
      Left = 2
      Top = 264
      Width = 900
      Height = 141
      Align = alBottom
      BiDiMode = bdRightToLeft
      Caption = ' '#1606#1605#1575#1610#1588' '#1580#1583#1608#1604' '#1578#1576#1583#1610#1604' '#1588#1583#1607' '
      ParentBiDiMode = False
      TabOrder = 1
      Visible = False
      object DBGrid2: TDBGrid
        Left = 2
        Top = 15
        Width = 896
        Height = 124
        Align = alClient
        DataSource = DataSource2
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ARABIC_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 407
    Width = 904
    Height = 19
    BiDiMode = bdRightToLeftReadingOnly
    Panels = <
      item
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        Width = 50
      end>
    ParentBiDiMode = False
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 393
    Top = 62
  end
  object Table1: TTable
    ObjectView = True
    AutoRefresh = True
    StoreDefs = True
    Left = 425
    Top = 62
  end
  object Table2: TTable
    AutoRefresh = True
    Left = 424
    Top = 94
  end
  object DataSource2: TDataSource
    DataSet = Table2
    Left = 392
    Top = 94
  end
  object OpenDialog1: TOpenDialog
    Filter = '*.DB|*.DB'
    Left = 80
    Top = 88
  end
  object DataSource3: TDataSource
    DataSet = Table3
    Left = 184
    Top = 88
  end
  object Table3: TTable
    Active = True
    AutoRefresh = True
    FieldDefs = <
      item
        Name = 'Sever'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'User'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Pass'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DataBase'
        DataType = ftString
        Size = 20
      end>
    StoreDefs = True
    TableName = 'setting.db'
    Left = 152
    Top = 88
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password="";Persist Security Info=True;User ' +
      'ID=sa;Initial Catalog=test;Use Procedure for Prepare=1;Auto Tran' +
      'slate=True;Packet Size=4096;Workstation ID=SERVER01;Use Encrypti' +
      'on for Data=False;Tag with column collation when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 224
    Top = 88
  end
  object ADOCommand1: TADOCommand
    Connection = ADOConnection1
    Parameters = <>
    Left = 264
    Top = 88
  end
  object SaveDialog1: TSaveDialog
    Filter = 'Table(Paradox 3,4,5)|*.DB'
    Title = 'Save Table OF Paradox'
    Left = 112
    Top = 88
  end
  object MainMenu1: TMainMenu
    BiDiMode = bdRightToLeftNoAlign
    OwnerDraw = True
    ParentBiDiMode = False
    Left = 344
    Top = 88
    object N1: TMenuItem
      Caption = #1662#1585#1608#1606#1583#1607
      object N2: TMenuItem
        Caption = #1582#1608#1575#1606#1583#1606' '#1576#1575#1606#1603' '#1575#1591#1604#1575#1593#1575#1578#1610' '
        ShortCut = 16463
        OnClick = N2Click
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object N3: TMenuItem
        Caption = #1582#1585#1608#1580
        ShortCut = 16472
        OnClick = N3Click
      end
    end
    object N5: TMenuItem
      Caption = #1578#1576#1583#1610#1604#1575#1578
      object N6: TMenuItem
        Caption = #1575#1587' '#1603#1610#1608' '#1575#1604
        object N15: TMenuItem
          Caption = #1578#1576#1583#1610#1604' '#1603#1575#1605#1604
          OnClick = N15Click
        end
        object N16: TMenuItem
          Caption = '-'
        end
        object N17: TMenuItem
          Caption = #1583#1604#1582#1608#1575#1607
          OnClick = N17Click
        end
      end
      object N7: TMenuItem
        Caption = '-'
      end
      object N11: TMenuItem
        Caption = #1662#1575#1585#1608#1583#1603#1587
        object N18: TMenuItem
          Caption = #1578#1576#1583#1610#1604' '#1603#1575#1605#1604
          OnClick = N18Click
        end
        object N20: TMenuItem
          Caption = '-'
        end
        object N19: TMenuItem
          Caption = #1583#1604#1582#1608#1575#1607
          OnClick = N19Click
        end
      end
    end
    object N12: TMenuItem
      Caption = #1578#1606#1592#1610#1605#1575#1578
      object N13: TMenuItem
        Caption = #1582#1575#1589#1610#1578' '
        OnClick = N13Click
      end
      object N14: TMenuItem
        Caption = '-'
      end
      object N10: TMenuItem
        Caption = #1606#1605#1575#1610#1588#1711#1585' '#1578#1576#1583#1610#1604' '#1580#1583#1608#1604
        OnClick = N10Click
      end
    end
    object N8: TMenuItem
      Caption = #1603#1605#1603
      object N9: TMenuItem
        Caption = #1583#1585#1576#1575#1585#1607' '#1576#1585#1606#1575#1605#1607
      end
    end
  end
end
