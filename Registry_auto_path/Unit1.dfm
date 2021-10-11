object Form1: TForm1
  Left = 218
  Top = 129
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Registry auto path'
  ClientHeight = 74
  ClientWidth = 498
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 120
  TextHeight = 16
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 30
    Height = 16
    Caption = 'Path:'
  end
  object Edit1: TEdit
    Left = 48
    Top = 8
    Width = 441
    Height = 24
    TabOrder = 0
    Text = 'HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Cdrom'
  end
  object Button1: TButton
    Left = 8
    Top = 40
    Width = 481
    Height = 25
    Caption = 'Open Registry Editor'
    TabOrder = 1
    OnClick = Button1Click
  end
end
