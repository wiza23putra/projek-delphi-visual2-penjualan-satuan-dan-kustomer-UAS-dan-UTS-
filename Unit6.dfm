object Supplier6: TSupplier6
  Left = 383
  Top = 137
  Width = 811
  Height = 559
  Caption = 'SUPPLIER'
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
    Left = 16
    Top = 8
    Width = 129
    Height = 16
    Caption = 'HALAMAN SUPPLIER'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 168
    Top = 8
    Width = 19
    Height = 16
    Caption = 'NIK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 168
    Top = 40
    Width = 33
    Height = 16
    Caption = 'Name'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 168
    Top = 72
    Width = 25
    Height = 16
    Caption = 'Telp'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 168
    Top = 104
    Width = 40
    Height = 16
    Caption = 'Alamat'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 168
    Top = 136
    Width = 31
    Height = 16
    Caption = 'Email'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 168
    Top = 168
    Width = 67
    Height = 16
    Caption = 'Perusahaan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 168
    Top = 200
    Width = 64
    Height = 16
    Caption = 'Nama Bank'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 168
    Top = 232
    Width = 59
    Height = 16
    Caption = 'Akun Bank'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 168
    Top = 264
    Width = 78
    Height = 16
    Caption = 'No Akun Bank'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edt1: TEdit
    Left = 272
    Top = 8
    Width = 217
    Height = 24
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 272
    Top = 40
    Width = 217
    Height = 24
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 272
    Top = 72
    Width = 217
    Height = 24
    TabOrder = 2
  end
  object edt4: TEdit
    Left = 272
    Top = 104
    Width = 217
    Height = 24
    TabOrder = 3
  end
  object edt5: TEdit
    Left = 272
    Top = 136
    Width = 217
    Height = 24
    TabOrder = 4
  end
  object edt6: TEdit
    Left = 272
    Top = 168
    Width = 217
    Height = 24
    TabOrder = 5
  end
  object edt7: TEdit
    Left = 272
    Top = 200
    Width = 217
    Height = 24
    TabOrder = 6
  end
  object edt8: TEdit
    Left = 272
    Top = 232
    Width = 217
    Height = 24
    TabOrder = 7
  end
  object edt9: TEdit
    Left = 272
    Top = 264
    Width = 217
    Height = 24
    TabOrder = 8
  end
  object dbgrd1: TDBGrid
    Left = 8
    Top = 352
    Width = 577
    Height = 153
    DataSource = DataModule4.ds_supplier
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object btn1: TButton
    Left = 168
    Top = 312
    Width = 75
    Height = 25
    Caption = 'INSERT'
    TabOrder = 10
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 264
    Top = 312
    Width = 75
    Height = 25
    Caption = 'UPDATE'
    TabOrder = 11
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 360
    Top = 312
    Width = 75
    Height = 25
    Caption = 'DELETE'
    TabOrder = 12
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 456
    Top = 312
    Width = 75
    Height = 25
    Caption = 'RESET'
    TabOrder = 13
    OnClick = btn4Click
  end
  object btn6: TButton
    Left = 72
    Top = 312
    Width = 75
    Height = 25
    Caption = 'NEW'
    TabOrder = 14
    OnClick = btn6Click
  end
  object btn5: TButton
    Left = 688
    Top = 312
    Width = 75
    Height = 25
    Caption = 'SEARCH'
    TabOrder = 15
  end
  object edt10: TEdit
    Left = 552
    Top = 312
    Width = 121
    Height = 24
    TabOrder = 16
    OnChange = edt10Change
  end
  object btn7: TButton
    Left = 600
    Top = 352
    Width = 75
    Height = 25
    Caption = 'REPORT'
    TabOrder = 17
    OnClick = btn7Click
  end
end
