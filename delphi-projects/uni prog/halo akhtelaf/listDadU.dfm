object ListDadform: TListDadform
  Left = 652
  Top = 287
  Width = 1146
  Height = 477
  BiDiMode = bdRightToLeft
  Caption = #1583#1575#1583#1582#1608#1575#1587#1578#1607#1575
  Color = clMoneyGreen
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 1138
    Height = 450
    Align = alClient
    DataSource = DataM.queryDS
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = ARABIC_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Clase'
        Title.Alignment = taCenter
        Title.Caption = #1705#1604#1575#1587#1607
        Title.Color = clInfoBk
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Setdate'
        Title.Alignment = taCenter
        Title.Caption = #1578#1575#1585#1610#1582' '#1579#1576#1578
        Title.Color = clInfoBk
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Namef'
        Title.Alignment = taCenter
        Title.Caption = #1606#1575#1605' '#1608' '#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
        Title.Color = clInfoBk
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Idcode'
        Title.Alignment = taCenter
        Title.Caption = #1705#1583' '#1605#1604#1610
        Title.Color = clInfoBk
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Gender'
        Title.Alignment = taCenter
        Title.Caption = #1580#1606#1587#1610#1578
        Title.Color = clInfoBk
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Job'
        Title.Alignment = taCenter
        Title.Caption = #1588#1594#1604
        Title.Color = clInfoBk
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nfather'
        Title.Alignment = taCenter
        Title.Caption = #1606#1575#1605' '#1662#1583#1585
        Title.Color = clInfoBk
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Byear'
        Title.Alignment = taCenter
        Title.Caption = #1578#1575#1585#1610#1582' '#1578#1608#1604#1583
        Title.Color = clInfoBk
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Shcode'
        Title.Alignment = taCenter
        Title.Caption = #1588'.'#1588
        Title.Color = clInfoBk
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Res'
        Title.Alignment = taCenter
        Title.Caption = #1578#1575#1607#1604
        Title.Color = clInfoBk
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Study'
        Title.Alignment = taCenter
        Title.Caption = #1578#1607#1589#1610#1604#1575#1578
        Title.Color = clInfoBk
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Ywork'
        Title.Alignment = taCenter
        Title.Caption = #1587#1575#1576#1602#1607' '#1705#1575#1585
        Title.Color = clInfoBk
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Dateeject'
        Title.Alignment = taCenter
        Title.Caption = #1578#1575#1585#1610#1582' '#1575#1582#1585#1575#1580
        Title.Color = clInfoBk
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Treatytype'
        Title.Alignment = taCenter
        Title.Caption = #1606#1608#1593' '#1602#1585#1575#1585' '#1583#1575#1583
        Title.Color = clInfoBk
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Khname'
        Title.Alignment = taCenter
        Title.Caption = #1606#1575#1605' '#1582#1608#1575#1607#1575#1606
        Title.Color = clMenuHighlight
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Khnamef'
        Title.Alignment = taCenter
        Title.Caption = #1606#1575#1605' '#1662#1583#1585
        Title.Color = clMenuHighlight
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Khyb'
        Title.Alignment = taCenter
        Title.Caption = #1587#1575#1604' '#1578#1608#1604#1583
        Title.Color = clMenuHighlight
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Khaddr'
        Title.Alignment = taCenter
        Title.Caption = #1570#1583#1585#1587
        Title.Color = clMenuHighlight
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Khanamework'
        Title.Alignment = taCenter
        Title.Caption = #1606#1575#1605' '#1705#1575#1585#1711#1575#1607
        Title.Color = clMenu
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Khanamekarfarma'
        Title.Alignment = taCenter
        Title.Caption = #1705#1575#1585#1601#1585#1605#1575
        Title.Color = clMenu
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Khanaddr'
        Title.Alignment = taCenter
        Title.Caption = #1570#1583#1585#1587
        Title.Color = clMenu
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Khatypework'
        Title.Alignment = taCenter
        Title.Caption = #1601#1593#1575#1604#1610#1578' '#1575#1589#1604#1610
        Title.Color = clMenu
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Requesttype'
        Title.Alignment = taCenter
        Title.Caption = #1582#1608#1575#1587#1578#1607
        Title.Color = clMenu
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Note'
        Title.Alignment = taCenter
        Title.Caption = #1605#1578#1606
        Title.Color = clInfoBk
        Visible = True
      end>
  end
end
