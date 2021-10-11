object Form1: TForm1
  Left = 433
  Top = 256
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Pinger'
  ClientHeight = 459
  ClientWidth = 303
  Color = clBtnFace
  Constraints.MinHeight = 32
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 41
    Width = 303
    Height = 418
    VertScrollBar.Smooth = True
    VertScrollBar.Style = ssFlat
    VertScrollBar.Tracking = True
    Align = alClient
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 303
    Height = 41
    Align = alTop
    TabOrder = 1
    object Button1: TButton
      Left = 8
      Top = 8
      Width = 81
      Height = 25
      Caption = #1042#1099#1093#1086#1076
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 112
      Top = 8
      Width = 81
      Height = 25
      Caption = #1054#1087#1094#1080#1080
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 216
      Top = 8
      Width = 81
      Height = 25
      Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
      TabOrder = 2
      OnClick = Button3Click
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Top = 48
  end
  object XPManifest1: TXPManifest
    Left = 24
    Top = 49
  end
end
