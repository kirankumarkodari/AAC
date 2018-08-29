object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Client'
  ClientHeight = 281
  ClientWidth = 418
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 160
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Type text'
  end
  object Button1: TButton
    Left = 176
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Send'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 192
    Top = 168
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 2
  end
  object ClientSocket1: TClientSocket
    Active = False
    Address = 'wss://predix-toolkit.run.aws-usw02-pr.ice.predix.io'
    ClientType = ctNonBlocking
    Port = 0
    Left = 80
    Top = 49
  end
  object ServerSocket1: TServerSocket
    Active = False
    Port = 0
    ServerType = stNonBlocking
    Left = 56
    Top = 120
  end
end
