object editdrug: Teditdrug
  Left = 394
  Top = 157
  BiDiMode = bdRightToLeft
  BorderStyle = bsSingle
  Caption = #1608#1610#1585#1575#1610#1588' '#1583#1575#1585#1608
  ClientHeight = 294
  ClientWidth = 304
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
  object DBGrid2: TDBGrid
    Left = 0
    Top = 0
    Width = 304
    Height = 294
    Align = alClient
    DataSource = MainForm.DrugDataSource
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
        Title.Caption = #1606#1575#1605' '#1583#1575#1585#1608
        Width = 123
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'USE'
        PopupMenu = PopupMenu1
        Title.Alignment = taCenter
        Title.Caption = #1601#1575#1589#1604#1607' '#1586#1605#1575#1606#1610' '#1583#1575#1585#1608
        Visible = True
      end>
  end
  object PopupMenu1: TPopupMenu
    Left = 88
    Top = 152
    object N1: TMenuItem
      Caption = #1608#1610#1585#1575#1610#1588
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1582#1584#1601
      OnClick = N2Click
    end
  end
end
