object MainForm: TMainForm
  Left = 328
  Top = 171
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = '������ ����� ����� ���� 1.0'
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
      Caption = '������'
      object N2: TMenuItem
        Caption = '�����'
        ShortCut = 45
        OnClick = N2Click
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object N4: TMenuItem
        Caption = '����'
        ShortCut = 46
        OnClick = N4Click
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object N6: TMenuItem
        Caption = '����'
        ShortCut = 121
        OnClick = N6Click
      end
    end
    object N7: TMenuItem
      Caption = '�����'
      object N9: TMenuItem
        Caption = '���� �� �������� ���'
        ShortCut = 123
        OnClick = N9Click
      end
    end
    object N8: TMenuItem
      Caption = '�������'
      object N10: TMenuItem
        Caption = '���� ���� ��������'
        object N11: TMenuItem
          Caption = '��� ��'
          OnClick = N11Click
        end
        object N12: TMenuItem
          Caption = '�����'
          OnClick = N12Click
        end
        object N13: TMenuItem
          Caption = '����'
          OnClick = N13Click
        end
      end
      object N16: TMenuItem
        Caption = '����� ����� ����'
        ShortCut = 112
        OnClick = N16Click
      end
    end
    object N14: TMenuItem
      Caption = '��� '
      object N15: TMenuItem
        Caption = '�����'
        OnClick = N15Click
      end
    end
  end
end
