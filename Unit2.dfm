object Form2: TForm2
  Left = 359
  Top = 285
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1050#1086#1084#1087#1100#1102#1090#1077#1088#1099
  ClientHeight = 544
  ClientWidth = 285
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 0
    Top = 81
    Width = 285
    Height = 422
    Align = alClient
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 285
    Height = 81
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 80
      Top = 0
      Width = 110
      Height = 13
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1082#1086#1084#1087#1100#1102#1090#1077#1088
    end
    object ipedit: TLabeledEdit
      Left = 4
      Top = 32
      Width = 89
      Height = 21
      BevelKind = bkFlat
      BevelOuter = bvRaised
      BorderStyle = bsNone
      EditLabel.Width = 10
      EditLabel.Height = 13
      EditLabel.Caption = 'IP'
      TabOrder = 0
    end
    object comedit: TLabeledEdit
      Left = 96
      Top = 32
      Width = 185
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      EditLabel.Width = 50
      EditLabel.Height = 13
      EditLabel.Caption = #1054#1087#1080#1089#1072#1085#1080#1077
      TabOrder = 1
    end
    object Button4: TButton
      Left = 88
      Top = 56
      Width = 113
      Height = 25
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      TabOrder = 2
      OnClick = Button4Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 503
    Width = 285
    Height = 41
    Align = alBottom
    TabOrder = 2
    object Button1: TButton
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = #1054#1082
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 104
      Top = 8
      Width = 75
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 200
      Top = 8
      Width = 75
      Height = 25
      Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
      TabOrder = 2
      OnClick = Button3Click
    end
  end
end
