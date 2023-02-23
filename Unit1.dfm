object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 450
  ClientWidth = 336
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 24
    Width = 33
    Height = 16
    Caption = 'CNPJ:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 51
    Width = 27
    Height = 16
    Caption = 'CEP:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 42
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 169
    Top = 22
    Width = 98
    Height = 25
    Caption = 'Consulta'
    TabOrder = 1
    OnClick = Button1Click
  end
  object memo1: TMemo
    Left = 8
    Top = 88
    Width = 289
    Height = 354
    ScrollBars = ssBoth
    TabOrder = 2
  end
  object Edit2: TEdit
    Left = 42
    Top = 51
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Button2: TButton
    Left = 169
    Top = 49
    Width = 98
    Height = 25
    Caption = 'Consulta'
    TabOrder = 4
    OnClick = Button2Click
  end
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'https://viacep.com.br/ws'
    Params = <>
    Left = 304
    Top = 104
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 304
    Top = 152
  end
  object RESTResponse1: TRESTResponse
    ContentType = 'text/html'
    Left = 304
    Top = 208
  end
end
