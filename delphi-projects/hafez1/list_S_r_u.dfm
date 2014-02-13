object Listsend: TListsend
  Left = 215
  Top = 287
  Width = 696
  Height = 190
  BiDiMode = bdRightToLeft
  Caption = '·Ì”  ”Ì” „ùÂ«Ì ﬂ—«ÌÂ œ«œÂ ‘œÂ'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
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
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'SerialPage'
        Title.Alignment = taCenter
        Title.Caption = '‘„«—Â »—êÂ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Name'
        Title.Alignment = taCenter
        Title.Caption = '‰«„ Ê ‰«„ Œ«‰Ê«œêÌ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'S.s'
        Title.Alignment = taCenter
        Title.Caption = '‘„«—Â ‘‰«”‰«„Â'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Type_s'
        Title.Alignment = taCenter
        Title.Caption = '‰«„ œ” ê«Â'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Date_out'
        Title.Alignment = taCenter
        Title.Caption = ' «—ÌŒ Œ—ÊÃ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Date_in'
        Title.Alignment = taCenter
        Title.Caption = ' «—ÌŒ »—ê‘ '
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Total_Time'
        Title.Alignment = taCenter
        Title.Caption = '„œ  ﬂ—«ÌÂ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Time_out'
        Title.Alignment = taCenter
        Title.Caption = '”«⁄  Œ—ÊÃ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'N_film'
        Title.Alignment = taCenter
        Title.Caption = '‘„«—Â ›Ì·„ùÂ«'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Vadeyah'
        Title.Alignment = taCenter
        Title.Caption = 'ÊœÌ⁄Â'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Totol_m'
        Title.Alignment = taCenter
        Title.Caption = '„»·€ ﬂ·'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Free_m'
        Title.Alignment = taCenter
        Title.Caption = '«·»«ﬁÌ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tel'
        Title.Alignment = taCenter
        Title.Caption = '‘„«—Â  ·›‰'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Adress'
        Title.Alignment = taCenter
        Title.Caption = '¬œ—”'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TL_Control'
        Title.Alignment = taCenter
        Title.Caption = 'ﬂ‰ —·'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T_rf'
        Title.Alignment = taCenter
        Title.Caption = ' »œÌ· RF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TL_sim'
        Title.Alignment = taCenter
        Title.Caption = '”Ì„ —«»ÿ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tL-tabdel'
        Title.Alignment = taCenter
        Title.Caption = ' »œÌ· Â‰œÌùﬂ„'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tl_payeh'
        Title.Alignment = taCenter
        Title.Caption = 'Å«ÌÂ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TBack'
        Title.Alignment = taCenter
        Title.Caption = '»—ê‘ '
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
      Caption = 'ﬂ‹—«Ì‹Â'
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = '⁄‹‹Êœ '
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = 'ÊÌ—«Ì‘'
      OnClick = N3Click
    end
    object N4: TMenuItem
      Caption = 'ç«Å'
      OnClick = N4Click
    end
  end
  object DataSource1: TDataSource
    DataSet = SendTable1
    Left = 24
    Top = 48
  end
  object SendTable1: TTable
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
