object FApollo1: TFApollo1
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Apollo1'
  ClientHeight = 338
  ClientWidth = 497
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 15
  object lblTransporteDescricao: TLabel
    Left = 104
    Top = 195
    Width = 51
    Height = 15
    Caption = 'Descri'#231#227'o'
  end
  object lblTransporteArmazenamento: TLabel
    Left = 104
    Top = 235
    Width = 88
    Height = 15
    Caption = 'Armazenamento'
  end
  object lblTransporteCustoKm: TLabel
    Left = 104
    Top = 275
    Width = 73
    Height = 15
    Caption = 'Custo por Km'
  end
  object edtTransporteArmazenamento: TEdit
    Left = 208
    Top = 232
    Width = 121
    Height = 23
    Enabled = False
    TabOrder = 0
  end
  object edtTransporteDescricao: TEdit
    Left = 208
    Top = 192
    Width = 121
    Height = 23
    Enabled = False
    TabOrder = 1
  end
  object edtTransporteCustoKm: TEdit
    Left = 208
    Top = 272
    Width = 121
    Height = 23
    Enabled = False
    TabOrder = 2
  end
  object rgTiposTransporte: TRadioGroup
    Left = 24
    Top = 24
    Width = 457
    Height = 105
    Caption = 'Tipos de Transporte'
    Items.Strings = (
      'Rodovi'#225'rio'
      'Ferrovi'#225'rio'
      'Dutovi'#225'rio'
      'Mar'#237'timo')
    TabOrder = 3
  end
  object btnBuscarTransporte: TButton
    Left = 104
    Top = 145
    Width = 289
    Height = 25
    Caption = 'Buscar'
    TabOrder = 4
    OnClick = btnBuscarTransporteClick
  end
  object btnLimparRetorno: TButton
    Left = 448
    Top = 305
    Width = 41
    Height = 25
    Caption = 'Limpar'
    DisabledImageName = 'btnLimparRetorno'
    TabOrder = 5
    OnClick = btnLimparRetornoClick
  end
end
