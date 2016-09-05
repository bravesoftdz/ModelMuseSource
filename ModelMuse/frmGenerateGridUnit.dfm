inherited frmGenerateGrid: TfrmGenerateGrid
  Left = 551
  Top = 437
  Width = 355
  Height = 296
  HelpType = htKeyword
  HelpKeyword = 'Generate_Grid_Dialog_Box'
  ActiveControl = cbSpecifyGridAngle
  AutoScroll = True
  AutoSize = True
  Caption = 'Generate Grid'
  ExplicitWidth = 355
  ExplicitHeight = 296
  PixelsPerInch = 120
  TextHeight = 18
  object lblGridAngle: TLabel
    AlignWithMargins = True
    Left = 128
    Top = 44
    Width = 144
    Height = 18
    Margins.Left = 8
    Margins.Top = 8
    Margins.Right = 8
    Margins.Bottom = 8
    Caption = 'Grid angle (degrees)'
  end
  object cbSpecifyGridAngle: TCheckBox
    AlignWithMargins = True
    Left = 16
    Top = 8
    Width = 305
    Height = 31
    Margins.Left = 8
    Margins.Top = 8
    Margins.Right = 8
    Margins.Bottom = 8
    Caption = 'Calculate grid angle automatically'
    Checked = True
    State = cbChecked
    TabOrder = 0
    OnClick = cbSpecifyGridAngleClick
  end
  object rdeGridAngle: TRbwDataEntry
    AlignWithMargins = True
    Left = 16
    Top = 40
    Width = 101
    Height = 28
    Cursor = crIBeam
    Margins.Left = 8
    Margins.Top = 8
    Margins.Right = 8
    Margins.Bottom = 8
    Color = clBtnFace
    Enabled = False
    TabOrder = 1
    Text = '0'
    DataType = dtReal
    Max = 1.000000000000000000
    ChangeDisabledColor = True
  end
  object btnCancel: TBitBtn
    AlignWithMargins = True
    Left = 238
    Top = 208
    Width = 91
    Height = 33
    Margins.Left = 8
    Margins.Top = 8
    Margins.Right = 8
    Margins.Bottom = 8
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 5
  end
  object btnOK: TBitBtn
    AlignWithMargins = True
    Left = 142
    Top = 208
    Width = 91
    Height = 33
    Margins.Left = 8
    Margins.Top = 8
    Margins.Right = 8
    Margins.Bottom = 8
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 4
    OnClick = btnOKClick
  end
  object btnHelp: TBitBtn
    AlignWithMargins = True
    Left = 46
    Top = 208
    Width = 91
    Height = 33
    Margins.Left = 8
    Margins.Top = 8
    Margins.Right = 8
    Margins.Bottom = 8
    Kind = bkHelp
    NumGlyphs = 2
    TabOrder = 3
    OnClick = btnHelpClick
  end
  object gbGridSmoothing: TGroupBox
    AlignWithMargins = True
    Left = 8
    Top = 72
    Width = 321
    Height = 129
    Margins.Left = 8
    Margins.Top = 8
    Margins.Right = 8
    Margins.Bottom = 8
    Caption = 'Grid Smoothing'
    TabOrder = 2
    object lblCriterion: TLabel
      AlignWithMargins = True
      Left = 8
      Top = 92
      Width = 166
      Height = 18
      Margins.Left = 8
      Margins.Top = 8
      Margins.Right = 8
      Margins.Bottom = 8
      Caption = 'Grid smoothing criterion'
      Enabled = False
    end
    object cbColumns: TCheckBox
      AlignWithMargins = True
      Left = 8
      Top = 56
      Width = 100
      Height = 30
      Margins.Left = 8
      Margins.Top = 8
      Margins.Right = 8
      Margins.Bottom = 8
      Caption = 'Columns'
      Checked = True
      Enabled = False
      State = cbChecked
      TabOrder = 1
    end
    object cbSmoothGrid: TCheckBox
      AlignWithMargins = True
      Left = 8
      Top = 19
      Width = 153
      Height = 31
      Margins.Left = 8
      Margins.Top = 8
      Margins.Right = 8
      Margins.Bottom = 8
      Caption = 'Smooth grid '
      TabOrder = 0
      OnClick = cbSmoothGridClick
    end
    object cbRows: TCheckBox
      AlignWithMargins = True
      Left = 120
      Top = 56
      Width = 81
      Height = 30
      Margins.Left = 8
      Margins.Top = 8
      Margins.Right = 8
      Margins.Bottom = 8
      Caption = 'Rows'
      Checked = True
      Enabled = False
      State = cbChecked
      TabOrder = 2
    end
    object cbLayers: TCheckBox
      AlignWithMargins = True
      Left = 208
      Top = 56
      Width = 100
      Height = 30
      Margins.Left = 8
      Margins.Top = 8
      Margins.Right = 8
      Margins.Bottom = 8
      Caption = 'Layers'
      Checked = True
      Enabled = False
      State = cbChecked
      TabOrder = 3
    end
    object rdeCriterion: TRbwDataEntry
      AlignWithMargins = True
      Left = 208
      Top = 88
      Width = 100
      Height = 28
      Cursor = crIBeam
      Margins.Left = 8
      Margins.Top = 8
      Margins.Right = 8
      Margins.Bottom = 8
      Color = clBtnFace
      Enabled = False
      TabOrder = 4
      Text = '1.2'
      DataType = dtReal
      Max = 1.000000000000000000
      Min = 1.000000000000000000
      CheckMin = True
      ChangeDisabledColor = True
    end
  end
end