object List_system: TList_system
  Left = 276
  Top = 144
  Width = 699
  Height = 187
  BiDiMode = bdRightToLeft
  Caption = '·Ì”  ”Ì” „Â«Ì „ÊÃÊœ'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
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
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Type'
        Title.Alignment = taCenter
        Title.Caption = '‰«„ ”Ì” „'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Note'
        Title.Alignment = taCenter
        Title.Caption = ' Ê÷ÌÕ« '
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tbacked'
        Title.Alignment = taCenter
        Title.Caption = 'ﬂ—«ÌÂ'
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
      Caption = '«÷‹«›‹Â'
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = 'Õ‹‹‹–›'
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = 'ÊÌ—«Ì‘'
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
