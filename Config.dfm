object Form4: TForm4
  Left = 586
  Top = 173
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Configura'#231#245'es'
  ClientHeight = 286
  ClientWidth = 428
  Color = clActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 16
    Top = 8
    Width = 335
    Height = 57
    Caption = 'Configura'#231#245'es'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -48
    Font.Name = 'News706 BT'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GroupBox2: TGroupBox
    Left = 16
    Top = 96
    Width = 161
    Height = 177
    Caption = 'Monitor Secund'#225'rio'
    TabOrder = 2
    object Label3: TLabel
      Left = 8
      Top = 72
      Width = 34
      Height = 13
      Caption = 'Height:'
    end
    object Label4: TLabel
      Left = 8
      Top = 24
      Width = 31
      Height = 13
      Caption = 'Width:'
    end
    object Label1: TLabel
      Left = 8
      Top = 120
      Width = 21
      Height = 13
      Caption = 'Left:'
    end
  end
  object Edit3: TEdit
    Left = 24
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit4: TEdit
    Left = 24
    Top = 184
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 304
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 304
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Voltar'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 24
    Top = 232
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object CheckBox1: TCheckBox
    Left = 16
    Top = 72
    Width = 217
    Height = 17
    Caption = 'Monitor Secund'#225'rio (Ativado/Desativado)'
    TabOrder = 6
    OnClick = CheckBox1Click
  end
  object Button3: TButton
    Left = 296
    Top = 120
    Width = 89
    Height = 33
    Caption = 'Redefinir Padr'#227'o'
    TabOrder = 7
    OnClick = Button3Click
  end
end
