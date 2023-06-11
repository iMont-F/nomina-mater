object FApollo2: TFApollo2
  Left = 0
  Top = 0
  Caption = 'Apollo2'
  ClientHeight = 586
  ClientWidth = 749
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object btnDuvida: TSpeedButton
    Left = 718
    Top = 8
    Width = 23
    Height = 22
    DisabledImageName = 'btnDuvida'
    Caption = '?'
    OnClick = btnDuvidaClick
  end
  object rgConcentrador: TRadioGroup
    Left = 136
    Top = 56
    Width = 473
    Height = 65
    Caption = 'Concentrador'
    Columns = 3
    ItemIndex = 0
    Items.Strings = (
      'CompanyTec'
      'EzTech'
      'Gen'#233'rico')
    TabOrder = 0
  end
  object gbLog: TGroupBox
    Left = 16
    Top = 248
    Width = 713
    Height = 321
    Caption = 'Log'
    TabOrder = 1
    object mmLog: TMemo
      Left = 2
      Top = 17
      Width = 709
      Height = 302
      Align = alClient
      ReadOnly = True
      TabOrder = 0
      ExplicitTop = 16
      ExplicitHeight = 198
    end
  end
  object btnConectar: TButton
    Left = 48
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Conectar'
    TabOrder = 2
    OnClick = btnConectarClick
  end
  object btnStatus: TButton
    Left = 160
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Status'
    TabOrder = 3
    OnClick = btnStatusClick
  end
  object btnEnviar: TButton
    Left = 272
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 4
    OnClick = btnEnviarClick
  end
  object btnReceber: TButton
    Left = 384
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Receber'
    TabOrder = 5
    OnClick = btnReceberClick
  end
  object btnDesconectar: TButton
    Left = 496
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Desconectar'
    TabOrder = 6
    OnClick = btnDesconectarClick
  end
  object btnLimpar: TButton
    Left = 608
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Limpar'
    TabOrder = 7
    OnClick = btnLimparClick
  end
end
