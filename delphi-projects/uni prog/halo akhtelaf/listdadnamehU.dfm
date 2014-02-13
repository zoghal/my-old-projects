object listdadnamehform: Tlistdadnamehform
  Left = 281
  Top = 296
  BiDiMode = bdRightToLeft
  BorderStyle = bsSingle
  Caption = #1583#1575#1583#1606#1575#1605#1607' '#1607#1575' ('#1604#1610#1587#1578' '#1662#1585#1608#1606#1583#1607' '#1607#1575#1610' '#1605#1582#1578#1608#1605#1607')'
  ClientHeight = 473
  ClientWidth = 862
  Color = clBtnFace
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
    Width = 862
    Height = 473
    Align = alClient
    DataSource = DataM.queryDS
    TabOrder = 0
    TitleFont.Charset = ARABIC_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Color = clWhite
        Expanded = False
        FieldName = 'Coded'
        Title.Alignment = taCenter
        Title.Caption = #1588#1605#1575#1585#1607' '#1583#1575#1583#1606#1575#1605#1607
        Title.Color = clSkyBlue
        Visible = True
      end
      item
        Color = clWhite
        Expanded = False
        FieldName = 'Date'
        Title.Alignment = taCenter
        Title.Caption = #1578#1575#1585#1610#1582' '#1579#1576#1578
        Title.Color = clSkyBlue
        Visible = True
      end
      item
        Color = clWhite
        Expanded = False
        FieldName = 'Clase'
        Title.Alignment = taCenter
        Title.Caption = #1588#1605#1575#1585#1607' '#1705#1604#1575#1587#1607
        Title.Color = clSkyBlue
        Visible = True
      end
      item
        Color = clWhite
        Expanded = False
        FieldName = 'Khahan'
        Title.Alignment = taCenter
        Title.Caption = #1582#1608#1575#1607#1575#1606
        Title.Color = clSkyBlue
        Visible = True
      end
      item
        Color = clWhite
        Expanded = False
        FieldName = 'Khandeh'
        Title.Alignment = taCenter
        Title.Caption = #1582#1608#1575#1606#1583#1607
        Title.Color = clSkyBlue
        Visible = True
      end
      item
        Color = clWhite
        Expanded = False
        FieldName = 'Khastar'
        Title.Alignment = taCenter
        Title.Caption = #1582#1608#1575#1587#1578#1607
        Title.Color = clSkyBlue
        Visible = True
      end
      item
        Color = clWhite
        Expanded = False
        FieldName = 'Kholase'
        Title.Alignment = taCenter
        Title.Caption = #1582#1604#1575#1589#1607
        Title.Color = clSkyBlue
        Visible = True
      end
      item
        Color = clWhite
        Expanded = False
        FieldName = 'Vote'
        Title.Alignment = taCenter
        Title.Caption = #1585#1575#1610
        Title.Color = clSkyBlue
        Visible = True
      end>
  end
end
