object Listsend: TListsend
  Left = 277
  Top = 562
  Width = 696
  Height = 190
  BiDiMode = bdRightToLeft
  Caption = #1604#1610#1587#1578' '#1587#1610#1587#1578#1605#8204#1607#1575#1610' '#1603#1585#1575#1610#1607' '#1583#1575#1583#1607' '#1588#1583#1607
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDefault
  Visible = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 688
    Height = 163
    Align = alClient
    DataSource = DataSource1
    PopupMenu = PopupMenu1
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
        FieldName = 'SerialPage'
        Title.Alignment = taCenter
        Title.Caption = #1588#1605#1575#1585#1607' '#1576#1585#1711#1607
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Name'
        Title.Alignment = taCenter
        Title.Caption = #1606#1575#1605' '#1608' '#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'S.s'
        Title.Alignment = taCenter
        Title.Caption = #1588#1605#1575#1585#1607' '#1588#1606#1575#1587#1606#1575#1605#1607
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Type_s'
        Title.Alignment = taCenter
        Title.Caption = #1606#1575#1605' '#1583#1587#1578#1711#1575#1607
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Date_out'
        Title.Alignment = taCenter
        Title.Caption = #1578#1575#1585#1610#1582' '#1582#1585#1608#1580
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Date_in'
        Title.Alignment = taCenter
        Title.Caption = #1578#1575#1585#1610#1582' '#1576#1585#1711#1588#1578
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Total_Time'
        Title.Alignment = taCenter
        Title.Caption = #1605#1583#1578' '#1603#1585#1575#1610#1607
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Time_out'
        Title.Alignment = taCenter
        Title.Caption = #1587#1575#1593#1578' '#1582#1585#1608#1580
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'N_film'
        Title.Alignment = taCenter
        Title.Caption = #1588#1605#1575#1585#1607' '#1601#1610#1604#1605#8204#1607#1575
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Vadeyah'
        Title.Alignment = taCenter
        Title.Caption = #1608#1583#1610#1593#1607
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Totol_m'
        Title.Alignment = taCenter
        Title.Caption = #1605#1576#1604#1594' '#1603#1604
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Free_m'
        Title.Alignment = taCenter
        Title.Caption = #1575#1604#1576#1575#1602#1610
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tel'
        Title.Alignment = taCenter
        Title.Caption = #1588#1605#1575#1585#1607' '#1578#1604#1601#1606
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Adress'
        Title.Alignment = taCenter
        Title.Caption = #1570#1583#1585#1587
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TL_Control'
        Title.Alignment = taCenter
        Title.Caption = #1603#1606#1578#1585#1604
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T_rf'
        Title.Alignment = taCenter
        Title.Caption = #1578#1576#1583#1610#1604' RF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TL_sim'
        Title.Alignment = taCenter
        Title.Caption = #1587#1610#1605' '#1585#1575#1576#1591
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tL-tabdel'
        Title.Alignment = taCenter
        Title.Caption = #1578#1576#1583#1610#1604' '#1607#1606#1583#1610#8204#1603#1605
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tl_payeh'
        Title.Alignment = taCenter
        Title.Caption = #1662#1575#1610#1607
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TBack'
        Title.Alignment = taCenter
        Title.Caption = #1576#1585#1711#1588#1578
        Visible = True
      end>
  end
  object PopupMenu1: TPopupMenu
    Alignment = paCenter
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    Left = 88
    Top = 48
    object N1: TMenuItem
      Caption = #1603#1600#1585#1575#1610#1600#1607
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1593#1600#1600#1608#1583#1578
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #1608#1610#1585#1575#1610#1588
      OnClick = N3Click
    end
    object N4: TMenuItem
      Caption = #1670#1575#1662
      OnClick = N4Click
    end
  end
  object DataSource1: TDataSource
    DataSet = SendTable1
    Left = 24
    Top = 48
  end
  object SendTable1: TTable
    Active = True
    OnCalcFields = SendTable1CalcFields
    AutoRefresh = True
    Filter = 'Back = False'
    Filtered = True
    TableName = 'Send_resive.DB'
    Left = 54
    Top = 48
    object SendTable1SerialPage: TAutoIncField
      FieldName = 'SerialPage'
      ReadOnly = True
    end
    object SendTable1Name: TStringField
      FieldName = 'Name'
      Size = 40
    end
    object SendTable1Ss: TFloatField
      FieldName = 'S.s'
    end
    object SendTable1Type_s: TStringField
      FieldName = 'Type_s'
      Size = 15
    end
    object SendTable1Date_out: TStringField
      FieldName = 'Date_out'
      Size = 8
    end
    object SendTable1Date_in: TStringField
      FieldName = 'Date_in'
      Size = 8
    end
    object SendTable1Total_Time: TStringField
      FieldName = 'Total_Time'
      Size = 15
    end
    object SendTable1N_film: TStringField
      FieldName = 'N_film'
      Size = 17
    end
    object SendTable1Vadeyah: TStringField
      FieldName = 'Vadeyah'
      Size = 15
    end
    object SendTable1Totol_m: TFloatField
      FieldName = 'Totol_m'
    end
    object SendTable1Free_m: TFloatField
      FieldName = 'Free_m'
    end
    object SendTable1Tel: TFloatField
      FieldName = 'Tel'
    end
    object SendTable1Adress: TStringField
      FieldName = 'Adress'
      Size = 50
    end
    object SendTable1Lsim: TBooleanField
      FieldName = 'L-sim'
    end
    object SendTable1Lrf: TBooleanField
      FieldName = 'L-rf'
    end
    object SendTable1Lpayeh: TBooleanField
      FieldName = 'L-payeh'
    end
    object SendTable1Ltabdel: TBooleanField
      FieldName = 'L-tabdel'
    end
    object SendTable1Lcontrol: TBooleanField
      FieldName = 'L-control'
    end
    object SendTable1Back: TBooleanField
      FieldName = 'Back'
    end
    object SendTable1TL_sim: TStringField
      FieldKind = fkCalculated
      FieldName = 'TL_sim'
      Size = 5
      Calculated = True
    end
    object SendTable1T_rf: TStringField
      FieldKind = fkCalculated
      FieldName = 'T_rf'
      Size = 5
      Calculated = True
    end
    object SendTable1Tl_payeh: TStringField
      FieldKind = fkCalculated
      FieldName = 'Tl_payeh'
      Size = 5
      Calculated = True
    end
    object SendTable1tLtabdel: TStringField
      FieldKind = fkCalculated
      FieldName = 'tL-tabdel'
      Size = 5
      Calculated = True
    end
    object SendTable1TL_Control: TStringField
      FieldKind = fkCalculated
      FieldName = 'TL_Control'
      Size = 5
      Calculated = True
    end
    object SendTable1TBack: TStringField
      FieldKind = fkCalculated
      FieldName = 'TBack'
      Size = 9
      Calculated = True
    end
    object SendTable1Time_out: TStringField
      FieldName = 'Time_out'
    end
  end
end
