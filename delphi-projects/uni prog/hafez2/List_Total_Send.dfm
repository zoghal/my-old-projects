object List_total: TList_total
  Left = 636
  Top = 354
  BiDiMode = bdRightToLeft
  BorderStyle = bsToolWindow
  Caption = #1604#1610#1587#1578' '#1603#1604' '#1603#1585#1575#1610#1607#8204#1607#1575#1610' '#1602#1576#1604
  ClientHeight = 406
  ClientWidth = 933
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 933
    Height = 406
    Align = alClient
    DataSource = Listsend.DataSource1
    TabOrder = 0
    TitleFont.Charset = ARABIC_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnKeyPress = DBGrid1KeyPress
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
end
