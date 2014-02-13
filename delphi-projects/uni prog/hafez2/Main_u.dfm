object MainForm: TMainForm
  Left = 328
  Top = 171
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1576#1585#1606#1575#1605#1607' '#1603#1585#1575#1610#1607' '#1587#1610#1587#1578#1605' '#1606#1587#1582#1607' 1.0'
  ClientHeight = 167
  ClientWidth = 455
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  Visible = True
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 32
    Top = 24
    object N1: TMenuItem
      Caption = #1593#1605#1604#1610#1575#1578
      object N2: TMenuItem
        Caption = #1603#1585#1575#1610#1607
        ShortCut = 45
        OnClick = N2Click
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object N4: TMenuItem
        Caption = #1593#1608#1583#1578
        ShortCut = 46
        OnClick = N4Click
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object N6: TMenuItem
        Caption = #1582#1585#1608#1580
        ShortCut = 121
        OnClick = N6Click
      end
    end
    object N7: TMenuItem
      Caption = #1711#1586#1575#1585#1588
      object N9: TMenuItem
        Caption = #1604#1610#1587#1578' '#1603#1604' '#1603#1585#1575#1610#1607#8204#1607#1575#1610' '#1602#1576#1604
        ShortCut = 123
        OnClick = N9Click
      end
    end
    object N8: TMenuItem
      Caption = #1575#1605#1603#1575#1606#1575#1578
      object N10: TMenuItem
        Caption = #1605#1585#1578#1576' '#1587#1575#1586#1610' '#1662#1606#1580#1585#1607#1583#1607#1575
        object N11: TMenuItem
          Caption = #1585#1608#1610' '#1607#1605
          OnClick = N11Click
        end
        object N12: TMenuItem
          Caption = #1593#1605#1608#1583#1610
          OnClick = N12Click
        end
        object N13: TMenuItem
          Caption = #1575#1601#1602#1610
          OnClick = N13Click
        end
      end
      object N16: TMenuItem
        Caption = #1578#1594#1610#1610#1585' '#1662#1606#1580#1585#1607' '#1601#1593#1575#1604
        ShortCut = 112
        OnClick = N16Click
      end
    end
    object N14: TMenuItem
      Caption = #1603#1605#1603' '
      object N15: TMenuItem
        Caption = #1605#1593#1585#1601#1610
        OnClick = N15Click
      end
    end
  end
end
