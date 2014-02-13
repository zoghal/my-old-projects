object editbimar: Teditbimar
  Left = 210
  Top = 171
  BiDiMode = bdRightToLeft
  BorderStyle = bsSingle
  Caption = #1608#1610#1585#1575#1610#1588' '#1605#1588#1582#1589#1575#1578' '#1576#1610#1605#1575#1585
  ClientHeight = 275
  ClientWidth = 761
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
    Width = 761
    Height = 275
    Align = alClient
    DataSource = MainForm.BimarDataSource
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
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
        PopupMenu = PopupMenu1
        Title.Alignment = taCenter
        Title.Caption = #1603#1583' '#1575#1582#1578#1589#1575#1589#1610
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Name'
        PopupMenu = PopupMenu1
        Title.Alignment = taCenter
        Title.Caption = #1606#1575#1605
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Famili'
        PopupMenu = PopupMenu1
        Title.Alignment = taCenter
        Title.Caption = #1601#1575#1605#1610#1604#1610
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ID'
        PopupMenu = PopupMenu1
        Title.Alignment = taCenter
        Title.Caption = #1588'.'#1588#1606#1575#1587#1606#1575#1605#1607
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Addres'
        PopupMenu = PopupMenu1
        Title.Alignment = taCenter
        Title.Caption = #1570#8207#1583#1585#1587
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Code_meli'
        PopupMenu = PopupMenu1
        Title.Alignment = taCenter
        Title.Caption = #1603#1583' '#1605#1604#1610
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Father_n'
        PopupMenu = PopupMenu1
        Title.Alignment = taCenter
        Title.Caption = #1606#1575#1605' '#1662#1583#1585
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Room'
        PopupMenu = PopupMenu1
        Title.Alignment = taCenter
        Title.Caption = #1575#1578#1575#1602' '#1576#1587#1578#1585#1610
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Takht'
        PopupMenu = PopupMenu1
        Title.Alignment = taCenter
        Title.Caption = #1578#1582#1578'  '#1576#1587#1578#1585#1610
        Visible = True
      end>
  end
  object PopupMenu1: TPopupMenu
    Left = 176
    Top = 96
    object N1: TMenuItem
      Caption = #1608#1610#1585#1575#1610#1588
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1581#1584#1601
      OnClick = N2Click
    end
  end
end
