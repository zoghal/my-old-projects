object Form1: TForm1
  Left = 284
  Top = 113
  Width = 434
  Height = 565
  Caption = 'Mail ExtractoR'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object memo2: TMemo
    Left = 3
    Top = 252
    Width = 200
    Height = 200
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object memo1: TMemo
    Left = 3
    Top = 6
    Width = 200
    Height = 200
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object Memo3: TMemo
    Left = 208
    Top = 8
    Width = 200
    Height = 200
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object Memo4: TMemo
    Left = 208
    Top = 253
    Width = 200
    Height = 200
    ScrollBars = ssVertical
    TabOrder = 3
  end
  object Button3: TButton
    Left = 24
    Top = 212
    Width = 130
    Height = 30
    Caption = 'Save Gmail List'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 24
    Top = 456
    Width = 130
    Height = 30
    Caption = 'Save Yahoo List'
    TabOrder = 5
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 240
    Top = 212
    Width = 130
    Height = 30
    Caption = 'Save MSN List'
    TabOrder = 6
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 240
    Top = 456
    Width = 130
    Height = 30
    Caption = 'Save Other List'
    TabOrder = 7
    OnClick = Button6Click
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 500
    Width = 426
    Height = 19
    Panels = <
      item
        Text = 'Import :'
        Width = 100
      end
      item
        Text = 'Export :'
        Width = 100
      end>
  end
  object OpenDialog1: TOpenDialog
    Filter = '*.Txt|*.TXT'
    Left = 656
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 224
    Top = 16
  end
  object Table1: TTable
    TableName = 'emil.db'
    Left = 256
    Top = 16
    object Table1Emil: TStringField
      FieldName = 'Emil'
      Size = 30
    end
  end
  object MainMenu1: TMainMenu
    Left = 344
    Top = 24
    object File1: TMenuItem
      Caption = 'File'
      object OpenFile1: TMenuItem
        Caption = 'Open File'
        OnClick = OpenFile1Click
      end
      object Exit1: TMenuItem
        Caption = 'Exit'
        OnClick = Exit1Click
      end
    end
    object process1: TMenuItem
      Caption = 'Process'
      object Start1: TMenuItem
        Caption = 'Start'
        OnClick = Start1Click
      end
    end
    object Help1: TMenuItem
      Caption = 'Help'
      object About1: TMenuItem
        Caption = 'About'
        OnClick = About1Click
      end
    end
  end
end
