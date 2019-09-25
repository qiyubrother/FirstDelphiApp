object Form1: TForm1
  Left = 686
  Top = 243
  Caption = 'Get'#26041#27861#35835#21462#32593#39029#36820#22238
  ClientHeight = 265
  ClientWidth = 745
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  DesignSize = (
    745
    265)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 5
    Width = 19
    Height = 13
    Caption = 'URL'
  end
  object Label2: TLabel
    Left = 8
    Top = 61
    Width = 30
    Height = 13
    Caption = 'Result'
  end
  object btnHttpGet: TButton
    Left = 662
    Top = 22
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'HttpGet'
    TabOrder = 0
    OnClick = btnHttpGetClick
    ExplicitLeft = 552
  end
  object editURL: TEdit
    Left = 8
    Top = 24
    Width = 648
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 1
    ExplicitWidth = 538
  end
  object MemoResult: TMemo
    Left = 8
    Top = 80
    Width = 729
    Height = 177
    Anchors = [akLeft, akTop, akRight, akBottom]
    Lines.Strings = (
      'MemoResult')
    TabOrder = 2
    ExplicitWidth = 619
  end
  object IdHTTP1: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 416
    Top = 152
  end
end
