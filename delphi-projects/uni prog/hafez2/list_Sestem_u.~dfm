object List_system: TList_system
  Left = 276
  Top = 144
  Width = 699
  Height = 187
  BiDiMode = bdRightToLeft
  Caption = #1604#1610#1587#1578' '#1587#1610#1587#1578#1605#1607#1575#1610' '#1605#1608#1580#1608#1583
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  ParentBiDiMode = False
  PopupMenu = ListSystemPopupMenu1
  Position = poDefault
  Visible = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 691
    Height = 160
    Align = alClient
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = ARABIC_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Type'
        Title.Alignment = taCenter
        Title.Caption = #1606#1575#1605' '#1587#1610#1587#1578#1605
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Note'
        Title.Alignment = taCenter
        Title.Caption = #1578#1608#1590#1610#1581#1575#1578
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tbacked'
        Title.Alignment = taCenter
        Title.Caption = #1603#1585#1575#1610#1607
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = SystemTable1
    Left = 32
    Top = 56
  end
  object ListSystemPopupMenu1: TPopupMenu
    Alignment = paCenter
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    Left = 96
    Top = 56
    object N1: TMenuItem
      Caption = #1575#1590#1600#1575#1601#1600#1607
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1581#1600#1600#1600#1584#1601
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #1608#1610#1585#1575#1610#1588
      OnClick = N3Click
    end
  end
  object SystemTable1: TTable
    OnCalcFields = SystemTable1CalcFields
    AutoRefresh = True
    Filter = 'backed = false'
    Filtered = True
    TableName = 'System.DB'
    Left = 64
    Top = 56
    object SystemTable1Type: TStringField
      DisplayWidth = 20
      FieldName = 'Type'
      Size = 15
    end
    object SystemTable1Note: TStringField
      FieldName = 'Note'
      Size = 50
    end
    object SystemTable1Backed: TBooleanField
      FieldName = 'Backed'
    end
    object SystemTable1Tbacked: TStringField
      FieldKind = fkCalculated
      FieldName = 'Tbacked'
      Size = 9
      Calculated = True
    end
  end
end
