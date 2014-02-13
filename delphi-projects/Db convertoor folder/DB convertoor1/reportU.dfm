object ReprtForm: TReprtForm
  Left = 195
  Top = 433
  Width = 696
  Height = 238
  Caption = 'ReprtForm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox2: TGroupBox
    Left = 0
    Top = 0
    Width = 688
    Height = 204
    Align = alClient
    BiDiMode = bdRightToLeft
    Caption = ' '#1606#1605#1575#1610#1588' '#1580#1583#1608#1604' '#1578#1576#1583#1610#1604' '#1588#1583#1607' '
    ParentBiDiMode = False
    TabOrder = 0
    object DBGrid2: TDBGrid
      Left = 2
      Top = 15
      Width = 684
      Height = 187
      Align = alClient
      DataSource = Mainform.DataSource2
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Visible = False
    end
  end
end
