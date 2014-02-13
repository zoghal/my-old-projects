object List_total: TList_total
  Left = -46
  Top = 242
  BiDiMode = bdRightToLeft
  BorderStyle = bsToolWindow
  Caption = '·Ì”  ﬂ· ﬂ—«ÌÂùÂ«Ì ﬁ»·'
  ClientHeight = 406
  ClientWidth = 933
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
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
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnKeyPress = DBGrid1KeyPress
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
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Type_s'
        Title.Alignment = taCenter
        Title.Caption = '‰«„ œ” ê«Â'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Date_out'
        Title.Alignment = taCenter
        Title.Caption = ' «—ÌŒ Œ—ÊÃ'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Date_in'
        Title.Alignment = taCenter
        Title.Caption = ' «—ÌŒ »—ê‘ '
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Total_Time'
        Title.Alignment = taCenter
        Title.Caption = '„œ  ﬂ—«ÌÂ'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Time_out'
        Title.Alignment = taCenter
        Title.Caption = '”«⁄  Œ—ÊÃ'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'N_film'
        Title.Alignment = taCenter
        Title.Caption = '‘„«—Â ›Ì·„ùÂ«'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Vadeyah'
        Title.Alignment = taCenter
        Title.Caption = 'ÊœÌ⁄Â'
        Width = 64
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
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TL_Control'
        Title.Alignment = taCenter
        Title.Caption = 'ﬂ‰ —·'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T_rf'
        Title.Alignment = taCenter
        Title.Caption = ' »œÌ· RF'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TL_sim'
        Title.Alignment = taCenter
        Title.Caption = '”Ì„ —«»ÿ'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tL-tabdel'
        Title.Alignment = taCenter
        Title.Caption = ' »œÌ· Â‰œÌùﬂ„'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tl_payeh'
        Title.Alignment = taCenter
        Title.Caption = 'Å«ÌÂ'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TBack'
        Title.Alignment = taCenter
        Title.Caption = '»—ê‘ '
        Width = 64
        Visible = True
      end>
  end
end
