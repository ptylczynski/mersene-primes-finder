object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
  ClientHeight = 446
  ClientWidth = 799
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 640
    Top = 296
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object Edit1: TEdit
    Left = 600
    Top = 416
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
    OnChange = Edit1Change
  end
  object Memo1: TMemo
    Left = 568
    Top = 321
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
end
