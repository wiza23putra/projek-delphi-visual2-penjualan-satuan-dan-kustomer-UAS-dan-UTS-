object Penjualan8: TPenjualan8
  Left = 526
  Top = 131
  Width = 810
  Height = 547
  Caption = 'PENJUALAN'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 141
    Height = 16
    Caption = 'HALAMAN PENJUALAN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 168
    Top = 32
    Width = 40
    Height = 16
    Caption = 'Invoice'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 168
    Top = 64
    Width = 29
    Height = 16
    Caption = 'Total'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 168
    Top = 96
    Width = 32
    Height = 16
    Caption = 'Bayar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 168
    Top = 128
    Width = 45
    Height = 16
    Caption = 'Kembali'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 168
    Top = 160
    Width = 46
    Height = 16
    Caption = 'Tanggal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 168
    Top = 192
    Width = 67
    Height = 16
    Caption = 'kustomer id'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 168
    Top = 224
    Width = 39
    Height = 16
    Caption = 'user id'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edt1: TEdit
    Left = 272
    Top = 32
    Width = 217
    Height = 24
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 272
    Top = 64
    Width = 217
    Height = 24
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 272
    Top = 96
    Width = 217
    Height = 24
    TabOrder = 2
  end
  object edt4: TEdit
    Left = 272
    Top = 128
    Width = 217
    Height = 24
    Enabled = False
    TabOrder = 3
  end
  object dbgrd1: TDBGrid
    Left = 8
    Top = 331
    Width = 617
    Height = 158
    DataSource = DataModule4.ds_penjualan
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object btn1: TButton
    Left = 176
    Top = 280
    Width = 75
    Height = 25
    Caption = 'INSERT'
    TabOrder = 5
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 272
    Top = 280
    Width = 75
    Height = 25
    Caption = 'UPDATE'
    TabOrder = 6
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 368
    Top = 280
    Width = 75
    Height = 25
    Caption = 'DELETE'
    TabOrder = 7
    OnClick = btn3Click
  end
  object edt6: TEdit
    Left = 272
    Top = 192
    Width = 217
    Height = 24
    TabOrder = 8
  end
  object edt7: TEdit
    Left = 272
    Top = 224
    Width = 217
    Height = 24
    TabOrder = 9
  end
  object dtp1: TDateTimePicker
    Left = 272
    Top = 160
    Width = 217
    Height = 24
    Date = 45444.597614456020000000
    Time = 45444.597614456020000000
    TabOrder = 10
  end
  object btn6: TButton
    Left = 80
    Top = 280
    Width = 75
    Height = 25
    Caption = 'NEW'
    TabOrder = 11
    OnClick = btn6Click
  end
  object btn4: TButton
    Left = 464
    Top = 280
    Width = 75
    Height = 25
    Caption = 'RESET'
    TabOrder = 12
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 692
    Top = 280
    Width = 75
    Height = 25
    Caption = 'SEARCH'
    TabOrder = 13
  end
  object edt10: TEdit
    Left = 558
    Top = 280
    Width = 121
    Height = 24
    TabOrder = 14
    OnChange = edt10Change
  end
  object btn7: TButton
    Left = 648
    Top = 328
    Width = 75
    Height = 25
    Caption = 'REPORT'
    TabOrder = 15
    OnClick = btn7Click
  end
end
