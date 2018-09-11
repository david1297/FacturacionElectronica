object Main: TMain
  Left = 0
  Top = 0
  Caption = 'Facturacion Electronica'
  ClientHeight = 476
  ClientWidth = 1187
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1187
    Height = 107
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 226
      Top = 8
      Width = 46
      Height = 13
      Caption = 'Num. Doc'
    end
    object Label2: TLabel
      Left = 306
      Top = 8
      Width = 53
      Height = 13
      Caption = 'Nit Tercero'
    end
    object Label3: TLabel
      Left = 20
      Top = 8
      Width = 92
      Height = 13
      Caption = 'Tipo de Documento'
    end
    object Label4: TLabel
      Left = 20
      Top = 54
      Width = 30
      Height = 13
      Caption = 'Desde'
    end
    object Label5: TLabel
      Left = 124
      Top = 54
      Width = 28
      Height = 13
      Caption = 'Hasta'
    end
    object Label7: TLabel
      Left = 554
      Top = 30
      Width = 93
      Height = 13
      Caption = 'Folios Restantes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object NFolios: TLabel
      Left = 616
      Top = 49
      Width = 22
      Height = 13
      Caption = 'Folio'
    end
    object Tipo_Doc: TDBLookupComboBox
      Left = 20
      Top = 27
      Width = 200
      Height = 21
      KeyField = 'CLASE'
      ListField = 'CLASE;DESCRIPCION'
      ListSource = DTip_Doc
      TabOrder = 0
    end
    object Numero_Doc: TEdit
      Left = 227
      Top = 27
      Width = 73
      Height = 21
      TabOrder = 1
    end
    object Nit_Tercero: TEdit
      Left = 306
      Top = 27
      Width = 242
      Height = 21
      TabOrder = 2
    end
    object Desde: TDateTimePicker
      Left = 20
      Top = 73
      Width = 89
      Height = 21
      Date = 43328.335339143520000000
      Time = 43328.335339143520000000
      TabOrder = 3
    end
    object Hasta: TDateTimePicker
      Left = 124
      Top = 73
      Width = 89
      Height = 21
      Date = 43328.335339143520000000
      Time = 43328.335339143520000000
      TabOrder = 4
    end
    object Consultar: TButton
      Left = 227
      Top = 69
      Width = 75
      Height = 32
      Caption = 'Consultar'
      TabOrder = 5
      OnClick = ConsultarClick
    end
    object Enviar: TButton
      Left = 308
      Top = 69
      Width = 75
      Height = 32
      Caption = 'Enviar'
      TabOrder = 6
      OnClick = EnviarClick
    end
    object PDF: TButton
      Left = 389
      Top = 69
      Width = 75
      Height = 32
      Caption = 'PDF'
      TabOrder = 7
      OnClick = PDFClick
    end
    object XML: TButton
      Left = 470
      Top = 69
      Width = 75
      Height = 32
      Caption = 'XML'
      TabOrder = 8
      OnClick = XMLClick
    end
    object Estado: TButton
      Left = 551
      Top = 69
      Width = 75
      Height = 32
      Caption = 'Estado'
      TabOrder = 9
      OnClick = EstadoClick
    end
    object Reenvio: TButton
      Left = 632
      Top = 69
      Width = 89
      Height = 32
      Caption = 'Reenviar Correo'
      TabOrder = 10
      OnClick = ReenvioClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 107
    Width = 1187
    Height = 369
    Align = alClient
    TabOrder = 1
    object Panel3: TPanel
      Left = 1
      Top = 352
      Width = 1185
      Height = 16
      Align = alBottom
      TabOrder = 1
      object Label8: TLabel
        Left = 1
        Top = 1
        Width = 165
        Height = 14
        Align = alLeft
        Alignment = taCenter
        Caption = '               Versi'#243'n 9.0.2 Profesional'
        Layout = tlCenter
        ExplicitHeight = 13
      end
      object Label9: TLabel
        Left = 166
        Top = 1
        Width = 1018
        Height = 14
        Align = alClient
        Alignment = taCenter
        Caption = 'Septiembre 2018'
        ExplicitWidth = 81
        ExplicitHeight = 13
      end
    end
    object Paginas: TPageControl
      Left = 1
      Top = 1
      Width = 1185
      Height = 351
      ActivePage = PDevoluciones
      Align = alClient
      TabOrder = 0
      object PDevoluciones: TTabSheet
        Caption = 'Devoluciones'
        object GridDevoluciones: TDBGridEh
          Left = 0
          Top = 0
          Width = 1177
          Height = 323
          Align = alClient
          DataSource = DDevolucion
          DynProps = <>
          TabOrder = 0
          VertScrollBar.SmoothStep = True
          OnGetCellParams = GridDevolucionesGetCellParams
          OnTitleBtnClick = GridDevolucionesTitleBtnClick
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'Nit'
              Footers = <>
              ReadOnly = True
              Width = 118
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'Nombre'
              Footers = <>
              ReadOnly = True
              Width = 200
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'EMAIL'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'E-Mail'
              Width = 150
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'TIPO'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Tipo'
              Width = 40
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'NUMBER'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'N'#250'mero'
              Width = 40
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'CRUCE'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Tipo. FV'
              Width = 45
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'INVC'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Num. FV'
              Width = 45
            end
            item
              CellButtons = <>
              DisplayFormat = '###,000.00'
              DynProps = <>
              EditButtons = <>
              FieldName = 'TOTAL'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Total'
              Width = 86
            end
            item
              CellButtons = <>
              Checkboxes = True
              DynProps = <>
              EditButtons = <>
              FieldName = 'Seleccionar'
              Footers = <>
              KeyList.Strings = (
                'True'
                'False')
              Title.TitleButton = True
              Width = 59
              WordWrap = False
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'Acuse'
              Footers = <>
              ReadOnly = True
              Width = 78
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'Estado'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Estado Acuse'
              Width = 78
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'Acuse'
              Footers = <>
              Title.Caption = 'Estado Documento'
              Width = 100
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'Estado'
              Footers = <>
              Title.Caption = 'Estado DIAN'
              Width = 68
              WordWrap = True
            end
            item
              CellButtons = <>
              CellDataIsLink = True
              DynProps = <>
              EditButtons = <>
              FieldName = 'LOGO'
              Footers = <>
              ImageList = ImageList1
              KeyList.Strings = (
                'EDITAR')
              ReadOnly = True
              Title.Caption = 'Actualizar E-mail'
              Width = 88
              OnCellDataLinkClick = EditarCorreoDevoluciones
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'Observaciones'
              Footers = <>
              ReadOnly = True
              Width = 100
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
      object PFacturas: TTabSheet
        Caption = 'Facturas'
        ImageIndex = 1
        object GridFacturas: TDBGridEh
          Left = 0
          Top = 0
          Width = 1177
          Height = 323
          Align = alClient
          DataSource = DFactura
          DynProps = <>
          TabOrder = 0
          VertScrollBar.SmoothStep = True
          OnGetCellParams = GridFacturasGetCellParams
          OnTitleBtnClick = GridFacturasTitleBtnClick
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'NIT'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Nit'
              Width = 118
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'NOMBRE'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Nombre'
              Width = 200
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'EMAIL'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'E-Mail'
              Width = 150
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'TIPO'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Tipo'
              Width = 40
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'NUMERO'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'N'#250'mero'
              Width = 40
            end
            item
              CellButtons = <>
              DisplayFormat = '###,000.00'
              DynProps = <>
              EditButtons = <>
              FieldName = 'TOTAL'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Total'
              Width = 86
            end
            item
              CellButtons = <>
              Checkboxes = True
              DynProps = <>
              EditButtons = <>
              FieldName = 'Seleccionar'
              Footers = <>
              KeyList.Strings = (
                'True'
                'False')
              Title.TitleButton = True
              Width = 59
              WordWrap = False
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'Acuse'
              Footers = <>
              ReadOnly = True
              Width = 78
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'Estado'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Estado Acuse'
              Width = 78
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'Acuse'
              Footers = <>
              Title.Caption = 'Estado Documento'
              Width = 100
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'Estado'
              Footers = <>
              Title.Caption = 'Estado DIAN'
              Width = 68
            end
            item
              CellButtons = <>
              CellDataIsLink = True
              DynProps = <>
              EditButtons = <>
              FieldName = 'LOGO'
              Footers = <>
              ImageList = ImageList1
              KeyList.Strings = (
                'EDITAR')
              ReadOnly = True
              Title.Caption = 'Actualizar E-mail'
              Width = 88
              OnCellDataLinkClick = EditarCorreoFacturas
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'Observaciones'
              Footers = <>
              ReadOnly = True
              Width = 100
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
      object PNotas: TTabSheet
        Caption = 'Notas'
        ImageIndex = 2
        object GridNotas: TDBGridEh
          Left = 0
          Top = 0
          Width = 1177
          Height = 323
          Align = alClient
          DataSource = DNota
          DynProps = <>
          TabOrder = 0
          VertScrollBar.SmoothStep = True
          OnGetCellParams = GridNotasGetCellParams
          OnTitleBtnClick = GridNotasTitleBtnClick
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'ID_N'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Nit'
              Width = 118
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'COMPANY'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Nombre'
              Width = 200
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'EMAIL'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'E-Mail'
              Width = 150
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'TIPO'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Tipo'
              Width = 41
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'BATCH'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'N'#250'mero'
              Width = 40
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'CRUCE'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Tipo. FV'
              Width = 45
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'INVC'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Num. FV'
              Width = 45
            end
            item
              CellButtons = <>
              DisplayFormat = '###,000.00'
              DynProps = <>
              EditButtons = <>
              FieldName = 'VALOR'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Total'
              Width = 86
            end
            item
              CellButtons = <>
              Checkboxes = True
              DynProps = <>
              EditButtons = <>
              FieldName = 'Seleccionar'
              Footers = <>
              KeyList.Strings = (
                'True'
                'False')
              Title.TitleButton = True
              Width = 59
              WordWrap = False
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'Acuse'
              Footers = <>
              ReadOnly = True
              Width = 78
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'Estado'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Estado Acuse'
              Width = 78
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'Acuse'
              Footers = <>
              Title.Caption = 'Estado Documento'
              Width = 100
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'Estado'
              Footers = <>
              Title.Caption = 'Estado  DIAN'
              Width = 68
            end
            item
              CellButtons = <>
              CellDataIsLink = True
              DynProps = <>
              EditButtons = <>
              FieldName = 'LOGO'
              Footers = <>
              ImageList = ImageList1
              KeyList.Strings = (
                'EDITAR')
              ReadOnly = True
              Title.Caption = 'Actualizar E-mail'
              Width = 88
              OnCellDataLinkClick = EditarCorreoNotas
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'Observaciones'
              Footers = <>
              Width = 100
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
    end
  end
  object Conexion: TFDConnection
    Params.Strings = (
      'Database=D:\SAIOPEN\NUTRITEC2017.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Protocol=TCPIP'
      'DriverID=FB')
    LoginPrompt = False
    Left = 40
    Top = 152
  end
  object QTip_Doc: TFDQuery
    AfterScroll = QTip_DocAfterScroll
    Connection = Conexion
    SQL.Strings = (
      'SELECT TIPO, CLASE, DESCRIPCION FROM TIPDOC'
      'WHERE TIPO in ('#39'FA'#39', '#39'ND'#39', '#39'NC'#39', '#39'DV'#39') and ENVIAFACELECT = '#39'S'#39
      'order by TIPO')
    Left = 96
    Top = 152
    object QTip_DocTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      FixedChar = True
      Size = 2
    end
    object QTip_DocCLASE: TStringField
      FieldName = 'CLASE'
      Origin = 'CLASE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 3
    end
    object QTip_DocDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      FixedChar = True
      Size = 35
    end
  end
  object DTip_Doc: TDataSource
    DataSet = QTip_Doc
    Left = 152
    Top = 152
  end
  object DFactura: TDataSource
    DataSet = MemFactura
    Left = 160
    Top = 216
  end
  object QFacDetalle: TFDQuery
    Connection = Conexion
    SQL.Strings = (
      
        'SELECT O1.item, I.descripcion, O1.qtyship, O1.price,O1.BONO,O1.C' +
        'ONTEO,O1.NUMERO_PEDIDO,U.DESCRIPCION AS UNIDAD,'
      
        '(O1.EXTEND - O1.TOTALDCT) TSIMPUESTO,(O1.extend + O1.VLR_IVA - O' +
        '1.TOTALDCT + O1.IMPCONSUMO)TOTAL,coalesce((O1.IMPCONSUMO/o1.exte' +
        'nd)*100,0) PORC_CONSUMO,'
      
        'o1.cod_unidad_venta uofmsales, O1.TOTALDCT,PORC_IVA,o1.vlr_iva,O' +
        '1.IMPCONSUMO VLR_CONSUMO,(O1.EXTEND - O1.TOTALDCT) BASE,O1.EXTEN' +
        'D,O1.SERIALES DESC_ADICIONAL'
      'FROM OEDET O1'
      'INNER JOIN ITEM I ON O1.item = I.ITEM'
      'INNER JOIN UNIDAD U ON O1.cod_unidad_venta = U.COD_UNIDAD'
      'where O1.tipo=:Tipo and O1.number=:number')
    Left = 160
    Top = 320
    ParamData = <
      item
        Name = 'TIPO'
        DataType = ftString
        ParamType = ptInput
        Value = 'F34'
      end
      item
        Name = 'NUMBER'
        DataType = ftInteger
        ParamType = ptInput
        Value = 303
      end>
    object QFacDetalleITEM: TStringField
      FieldName = 'ITEM'
      Origin = 'ITEM'
      Required = True
      FixedChar = True
      Size = 30
    end
    object QFacDetalleDESCRIPCION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 80
    end
    object QFacDetalleQTYSHIP: TFloatField
      FieldName = 'QTYSHIP'
      Origin = 'QTYSHIP'
    end
    object QFacDetallePRICE: TFloatField
      FieldName = 'PRICE'
      Origin = 'PRICE'
    end
    object QFacDetalleBONO: TStringField
      FieldName = 'BONO'
      Origin = 'BONO'
      FixedChar = True
      Size = 1
    end
    object QFacDetalleCONTEO: TIntegerField
      FieldName = 'CONTEO'
      Origin = 'CONTEO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QFacDetalleTSIMPUESTO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TSIMPUESTO'
      Origin = 'TSIMPUESTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QFacDetalleTOTAL: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      ProviderFlags = []
      ReadOnly = True
    end
    object QFacDetallePORC_CONSUMO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PORC_CONSUMO'
      Origin = 'PORC_CONSUMO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QFacDetalleUOFMSALES: TStringField
      FieldName = 'UOFMSALES'
      Origin = 'COD_UNIDAD_VENTA'
      FixedChar = True
      Size = 8
    end
    object QFacDetalleTOTALDCT: TFloatField
      FieldName = 'TOTALDCT'
      Origin = 'TOTALDCT'
    end
    object QFacDetallePORC_IVA: TFloatField
      FieldName = 'PORC_IVA'
      Origin = 'PORC_IVA'
    end
    object QFacDetalleVLR_IVA: TFloatField
      FieldName = 'VLR_IVA'
      Origin = 'VLR_IVA'
    end
    object QFacDetalleVLR_CONSUMO: TFloatField
      FieldName = 'VLR_CONSUMO'
      Origin = 'IMPCONSUMO'
    end
    object QFacDetalleBASE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'BASE'
      Origin = 'BASE'
      ProviderFlags = []
      ReadOnly = True
    end
    object QFacDetalleEXTEND: TFloatField
      FieldName = 'EXTEND'
      Origin = 'EXTEND'
    end
    object QFacDetalleDESC_ADICIONAL: TStringField
      FieldName = 'DESC_ADICIONAL'
      Origin = 'SERIALES'
      Size = 32000
    end
    object QFacDetalleNUMERO_PEDIDO: TIntegerField
      FieldName = 'NUMERO_PEDIDO'
    end
    object QFacDetalleUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Size = 80
    end
  end
  object QFacImpuestos: TFDQuery
    Connection = Conexion
    SQL.Strings = (
      
        'SELECT  SUM(O1.qtyship) QTYSHIP,coalesce((O1.IMPCONSUMO/o1.exten' +
        'd)*100,0) PORC_CONSUMO,'
      
        ' PORC_IVA,SUM(o1.vlr_iva) VLR_IVA,SUM(O1.IMPCONSUMO) VLR_CONSUMO' +
        ',SUM(O1.EXTEND - O1.TOTALDCT) BASE'
      'FROM oedet O1'
      'INNER JOIN ITEM I ON O1.item = I.ITEM'
      'where O1.tipo=:Tipo and O1.number=:number'
      'GROUP BY  PORC_CONSUMO,PORC_IVA')
    Left = 160
    Top = 379
    ParamData = <
      item
        Name = 'TIPO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'NUMBER'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QFacImpuestosQTYSHIP: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'QTYSHIP'
      Origin = 'QTYSHIP'
      ProviderFlags = []
      ReadOnly = True
    end
    object QFacImpuestosPORC_CONSUMO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PORC_CONSUMO'
      Origin = 'PORC_CONSUMO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QFacImpuestosPORC_IVA: TFloatField
      FieldName = 'PORC_IVA'
      Origin = 'PORC_IVA'
    end
    object QFacImpuestosVLR_IVA: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'VLR_IVA'
      Origin = 'VLR_IVA'
      ProviderFlags = []
      ReadOnly = True
    end
    object QFacImpuestosVLR_CONSUMO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'VLR_CONSUMO'
      Origin = 'VLR_CONSUMO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QFacImpuestosBASE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'BASE'
      Origin = 'BASE'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object ImageList1: TImageList
    Left = 208
    Top = 152
    Bitmap = {
      494C010101000800580010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      00000000000000000000000000000000000000000000D3D2CF31515151AE5151
      51AE515151AE515151AE515151AE515151AE515151AE515151AE515151AE5151
      51AE515151AE515151AEABA29272000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FFF9F8F6090000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C4C4C43B000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C4C4C43B000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C4C4C43B00000000000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF00000000000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C4C4C43B00000000000000000000
      00FF000000000000000000000000000000FF000000FF00000000000000000000
      0000000000FF0000000000000000000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C4C4C43B0000000000000000C4C1
      BC44000000FF00000000000000FFC9C3BA48D9D4CB37000000FF000000000000
      00FFCAC2B44F0000000000000000000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C4C4C43B00000000000000000000
      0000000000FF000000FF00000000000000000000000000000000000000FF0000
      00FF000000000000000000000000000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C4C4C43B00000000000000000000
      0000000000FF000000FF00000000000000000000000000000000020101FE0000
      00FF000000000000000000000000000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C4C4C43B00000000000000000000
      0000000000FF0000000000000000000000000000000000000000000000000000
      00FF000000000000000000000000000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C4C4C43B00000000000000000000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000FF0000000000000000000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C4C4C43B00000000000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF00000000000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C4C4C43B000000FF3E3D3BC40000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000544F46BC000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C4C4C43B000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000FF282828D72828
      28D7282828D7282828D7282828D7282828D7282828D7282828D7282828D72828
      28D7282828D7282828D7000000FFDAD4CA370000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000039342DD5000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF090602FD000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF0080010000000000008000000000000000
      3FFC0000000000003FFC0000000000005FFA0000000000006E76000000000000
      642600000000000073CE00000000000073CE00000000000077EE000000000000
      6FF60000000000005FFA0000000000001FF80000000000003FFC000000000000
      8000000000000000800100000000000000000000000000000000000000000000
      000000000000}
  end
  object MemFactura: TMemTableEh
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    OnFilterRecord = MemFacturaFilterRecord
    Left = 160
    Top = 264
    object MemFacturaNIT: TStringField
      FieldName = 'NIT'
      Origin = 'ID_N'
      Required = True
      FixedChar = True
      Size = 30
    end
    object MemFacturaEMAIL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      ProviderFlags = []
      FixedChar = True
      Size = 40
    end
    object MemFacturaTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 3
    end
    object MemFacturaNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMBER'
      Required = True
    end
    object MemFacturaSUBTOTAL: TFloatField
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
    end
    object MemFacturaTOTALIMP: TFloatField
      FieldName = 'TOTALIMP'
      Origin = 'SUBTOTAL'
      ProviderFlags = []
    end
    object MemFacturaTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
    end
    object MemFacturaADDR1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ADDR1'
      Origin = 'ADDR1'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 35
    end
    object MemFacturaVIVA: TFloatField
      FieldName = 'VIVA'
      Origin = 'SALESTAX'
    end
    object MemFacturaRETE: TFloatField
      FieldName = 'RETE'
      Origin = 'DISC1'
    end
    object MemFacturaRETICA: TFloatField
      FieldName = 'RETICA'
      Origin = 'DISC2'
    end
    object MemFacturaRETIVA: TFloatField
      FieldName = 'RETIVA'
      Origin = 'DISC3'
    end
    object MemFacturaIMPCONSUMO: TFloatField
      FieldName = 'IMPCONSUMO'
      Origin = 'IMPCONSUMO'
    end
    object MemFacturaPORC_RETE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PORC_RETE'
      Origin = 'PORC_RETE'
      ProviderFlags = []
      ReadOnly = True
    end
    object MemFacturaPORC_IVA: TMemoField
      FieldName = 'PORC_IVA'
      Origin = 'PORCENIVA'
      BlobType = ftMemo
    end
    object MemFacturaPORC_ICA: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PORC_ICA'
      Origin = 'PORC_ICA'
      ProviderFlags = []
      ReadOnly = True
    end
    object MemFacturaDESTOTAL: TFloatField
      FieldName = 'DESTOTAL'
    end
    object MemFacturaEstado: TStringField
      FieldName = 'Estado'
      KeyFields = 'Estado'
      Size = 40
    end
    object MemFacturaAcuse: TStringField
      FieldName = 'Acuse'
      Size = 40
    end
    object MemFacturaMEDIOS_PAGO: TStringField
      FieldName = 'MEDIOS_PAGO'
      Size = 5
    end
    object MemFacturaTIPO_RETENCION: TStringField
      FieldName = 'TIPO_RETENCION'
      Size = 500
    end
    object MemFacturaFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object MemFacturaHORCRE: TStringField
      FieldName = 'HORCRE'
      Size = 10
    end
    object MemFacturaDUEDATE: TSQLTimeStampField
      FieldName = 'DUEDATE'
    end
    object MemFacturaCOD_ISO: TStringField
      FieldName = 'COD_ISO'
      Size = 10
    end
    object MemFacturaPHONE1: TStringField
      FieldName = 'PHONE1'
    end
    object MemFacturaCOD_MONEDA: TStringField
      FieldName = 'COD_MONEDA'
    end
    object MemFacturaOTROSCARGOS: TFloatField
      FieldName = 'OTROSCARGOS'
    end
    object MemFacturaTASA: TFloatField
      FieldName = 'TASA'
    end
    object MemFacturaCOMMENTS: TStringField
      FieldName = 'COMMENTS'
      Size = 500
    end
    object MemFacturafecha_pago: TSQLTimeStampField
      FieldName = 'fecha_pago'
    end
    object MemFacturaDIAS_PAGO: TIntegerField
      FieldName = 'DIAS_PAGO'
    end
    object MemFacturaCONTACT1: TStringField
      FieldName = 'CONTACT1'
      Size = 120
    end
    object MemFacturaCARGO1: TStringField
      FieldName = 'CARGO1'
      Size = 120
    end
    object MemFacturaNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 800
    end
    object MemFacturaLOGO: TStringField
      FieldName = 'LOGO'
      Size = 80
    end
    object MemFacturaSUCCLIENTE: TIntegerField
      FieldName = 'SUCCLIENTE'
    end
    object MemFacturaSeleccionar: TStringField
      FieldName = 'Seleccionar'
      Size = 30
    end
    object MemFacturacufe: TStringField
      FieldName = 'cufe'
      Size = 1024
    end
    object MemFacturaObservaciones: TStringField
      FieldName = 'Observaciones'
      Size = 500
    end
    object MemFacturaPREFIJO_DIAN: TStringField
      FieldName = 'PREFIJO_DIAN'
      Size = 5
    end
    object MemFacturaRES_DIAN: TStringField
      FieldName = 'RES_DIAN'
      Size = 150
    end
    object MemFacturaFECHAINIFAC: TSQLTimeStampField
      FieldName = 'FECHAINIFAC'
    end
    object MemFacturaFECHAVENFAC: TSQLTimeStampField
      FieldName = 'FECHAVENFAC'
    end
    object MemFacturaNUMDESDE: TIntegerField
      FieldName = 'NUMDESDE'
    end
    object MemFacturaNUMHASTA: TIntegerField
      FieldName = 'NUMHASTA'
    end
    object MemFacturaOCNUMERO: TStringField
      FieldName = 'OCNUMERO'
    end
    object MemFacturaNROREMISION: TStringField
      FieldName = 'NROREMISION'
      Size = 100
    end
  end
  object MemDevolucion: TMemTableEh
    Params = <>
    OnFilterRecord = MemDevolucionFilterRecord
    Left = 40
    Top = 264
    object MemDevolucionTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object MemDevolucionNit: TStringField
      FieldName = 'Nit'
      Size = 50
    end
    object MemDevolucionEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object MemDevolucionTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 3
    end
    object MemDevolucionNUMBER: TIntegerField
      FieldName = 'NUMBER'
    end
    object MemDevolucionSUBTOTAL: TFloatField
      FieldName = 'SUBTOTAL'
    end
    object MemDevolucionTOTALIMP: TFloatField
      FieldName = 'TOTALIMP'
    end
    object MemDevolucionADDR1: TStringField
      FieldName = 'ADDR1'
      Size = 80
    end
    object MemDevolucionVIVA: TFloatField
      FieldName = 'VIVA'
    end
    object MemDevolucionRETE: TFloatField
      FieldName = 'RETE'
    end
    object MemDevolucionRETICA: TFloatField
      FieldName = 'RETICA'
    end
    object MemDevolucionRETIVA: TFloatField
      FieldName = 'RETIVA'
    end
    object MemDevolucionIMPCONSUMO: TFloatField
      FieldName = 'IMPCONSUMO'
    end
    object MemDevolucionPORC_RETE: TFloatField
      FieldName = 'PORC_RETE'
    end
    object MemDevolucionPORC_IVA: TMemoField
      FieldName = 'PORC_IVA'
      BlobType = ftMemo
    end
    object MemDevolucionPORC_ICA: TFloatField
      FieldName = 'PORC_ICA'
    end
    object MemDevolucionDESTOTAL: TFloatField
      FieldName = 'DESTOTAL'
    end
    object MemDevolucionCUFE: TStringField
      FieldName = 'CUFE'
      Size = 1024
    end
    object MemDevolucionEstado: TStringField
      FieldName = 'Estado'
      Size = 100
    end
    object MemDevolucionSeleccionar: TStringField
      FieldName = 'Seleccionar'
      Size = 80
    end
    object MemDevolucionAcuse: TStringField
      FieldName = 'Acuse'
      Size = 80
    end
    object MemDevolucionMEDIOS_PAGO: TStringField
      FieldName = 'MEDIOS_PAGO'
    end
    object MemDevolucionTIPO_RETENCION: TStringField
      FieldName = 'TIPO_RETENCION'
      Size = 80
    end
    object MemDevolucionFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object MemDevolucionHORCRE: TStringField
      FieldName = 'HORCRE'
    end
    object MemDevolucionDUEDATE: TSQLTimeStampField
      FieldName = 'DUEDATE'
    end
    object MemDevolucionCOD_ISO: TStringField
      FieldName = 'COD_ISO'
      Size = 120
    end
    object MemDevolucionPHONE1: TStringField
      FieldName = 'PHONE1'
    end
    object MemDevolucionCOD_MONEDA: TStringField
      FieldName = 'COD_MONEDA'
    end
    object MemDevolucionOTROSCARGOS: TFloatField
      FieldName = 'OTROSCARGOS'
    end
    object MemDevoluciontasa: TFloatField
      FieldName = 'tasa'
    end
    object MemDevolucionCOMMENTS: TStringField
      FieldName = 'COMMENTS'
      Size = 500
    end
    object MemDevolucionfecha_pago: TSQLTimeStampField
      FieldName = 'fecha_pago'
    end
    object MemDevolucionDIAS_PAGO: TIntegerField
      FieldName = 'DIAS_PAGO'
    end
    object MemDevolucionCONTACT1: TStringField
      FieldName = 'CONTACT1'
      Size = 120
    end
    object MemDevolucionCARGO1: TStringField
      FieldName = 'CARGO1'
      Size = 120
    end
    object MemDevolucionRES_DIAN: TStringField
      FieldName = 'RES_DIAN'
      Size = 150
    end
    object MemDevolucionINVC: TIntegerField
      FieldName = 'INVC'
    end
    object MemDevolucionFECHA_FV: TSQLTimeStampField
      FieldName = 'FECHA_FV'
    end
    object MemDevolucionCONCEPTO_DV: TStringField
      FieldName = 'CONCEPTO_DV'
    end
    object MemDevolucionENVIADO_DEV: TStringField
      FieldName = 'ENVIADO_DEV'
      Size = 80
    end
    object MemDevolucionCRUCE: TStringField
      FieldName = 'CRUCE'
    end
    object MemDevolucionDESC_COCEPTO: TStringField
      FieldName = 'DESC_COCEPTO'
      Size = 100
    end
    object MemDevolucionLOGO: TStringField
      FieldName = 'LOGO'
      Size = 80
    end
    object MemDevolucionSUCCLIENTE: TIntegerField
      FieldName = 'SUCCLIENTE'
    end
    object MemDevolucionNombre: TStringField
      DisplayWidth = 100
      FieldName = 'Nombre'
    end
    object MemDevolucionObservaciones: TStringField
      FieldName = 'Observaciones'
      Size = 500
    end
    object MemDevolucionPREFIJO_DIAN: TStringField
      FieldName = 'PREFIJO_DIAN'
      Size = 5
    end
    object MemDevolucionOCNUMERO: TStringField
      FieldName = 'OCNUMERO'
    end
  end
  object DDevolucion: TDataSource
    DataSet = MemDevolucion
    Left = 40
    Top = 216
  end
  object QDevDetalle: TFDQuery
    Connection = Conexion
    SQL.Strings = (
      
        'SELECT O1.item, I.descripcion, (O1.qtyship)*(-1) qtyship, O1.pri' +
        'ce,O1.BONO,O1.CONTEO,U.DESCRIPCION AS UNIDAD,'
      
        '((O1.EXTEND)*(-1) - (O1.TOTALDCT)*(-1)) TSIMPUESTO,((O1.extend)*' +
        '(-1) + (O1.VLR_IVA)*(-1) - (O1.TOTALDCT)*(-1) + (O1.IMPCONSUMO)*' +
        '(-1))TOTAL,'
      ''
      
        'coalesce(((O1.IMPCONSUMO)*(-1)/(o1.extend)*(-1))*100,0) PORC_CON' +
        'SUMO,'
      
        'o1.cod_unidad_venta uofmsales, (O1.TOTALDCT)*(-1) TOTALDCT,PORC_' +
        'IVA,(o1.vlr_iva)*(-1) vlr_iva,(O1.IMPCONSUMO)*(-1) VLR_CONSUMO,'
      
        '((O1.EXTEND)*(-1) - (O1.TOTALDCT)*(-1)) BASE,(O1.EXTEND)*(-1)EXT' +
        'END,O1.SERIALES DESC_ADICIONAL'
      'FROM oedet O1'
      'INNER JOIN ITEM I ON O1.item = I.ITEM'
      'INNER JOIN UNIDAD U ON O1.cod_unidad_venta = U.COD_UNIDAD'
      'where O1.tipo=:Tipo and O1.number=:number AND O1.QTYSHIP <> 0')
    Left = 40
    Top = 320
    ParamData = <
      item
        Name = 'TIPO'
        DataType = ftString
        ParamType = ptInput
        Value = 'DV'
      end
      item
        Name = 'NUMBER'
        DataType = ftInteger
        ParamType = ptInput
        Value = 6
      end>
    object QDevDetalleITEM: TStringField
      FieldName = 'ITEM'
      Origin = 'ITEM'
      Required = True
      FixedChar = True
      Size = 30
    end
    object QDevDetalleDESCRIPCION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 80
    end
    object QDevDetalleQTYSHIP: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'QTYSHIP'
      Origin = 'QTYSHIP'
      ProviderFlags = []
      ReadOnly = True
    end
    object QDevDetallePRICE: TFloatField
      FieldName = 'PRICE'
      Origin = 'PRICE'
    end
    object QDevDetalleBONO: TStringField
      FieldName = 'BONO'
      Origin = 'BONO'
      FixedChar = True
      Size = 1
    end
    object QDevDetalleCONTEO: TIntegerField
      FieldName = 'CONTEO'
      Origin = 'CONTEO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QDevDetalleTSIMPUESTO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TSIMPUESTO'
      Origin = 'TSIMPUESTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QDevDetalleTOTAL: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      ProviderFlags = []
      ReadOnly = True
    end
    object QDevDetallePORC_CONSUMO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PORC_CONSUMO'
      Origin = 'PORC_CONSUMO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QDevDetalleUOFMSALES: TStringField
      FieldName = 'UOFMSALES'
      Origin = 'COD_UNIDAD_VENTA'
      FixedChar = True
      Size = 8
    end
    object QDevDetalleTOTALDCT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TOTALDCT'
      Origin = 'TOTALDCT'
      ProviderFlags = []
      ReadOnly = True
    end
    object QDevDetallePORC_IVA: TFloatField
      FieldName = 'PORC_IVA'
      Origin = 'PORC_IVA'
    end
    object QDevDetalleVLR_IVA: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'VLR_IVA'
      Origin = 'VLR_IVA'
      ProviderFlags = []
      ReadOnly = True
    end
    object QDevDetalleVLR_CONSUMO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'VLR_CONSUMO'
      Origin = 'VLR_CONSUMO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QDevDetalleBASE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'BASE'
      Origin = 'BASE'
      ProviderFlags = []
      ReadOnly = True
    end
    object QDevDetalleEXTEND: TFloatField
      FieldName = 'EXTEND'
      Origin = 'EXTEND'
    end
    object QDevDetalleDESC_ADICIONAL: TStringField
      FieldName = 'DESC_ADICIONAL'
      Origin = 'SERIALES'
      Size = 32000
    end
    object QDevDetalleUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Size = 80
    end
  end
  object QDevImpuestos: TFDQuery
    Connection = Conexion
    SQL.Strings = (
      
        'SELECT  SUM(O1.qtyship)*(-1) QTYSHIP,coalesce((O1.IMPCONSUMO*(-1' +
        ')/o1.extend*(-1))*100,0) PORC_CONSUMO,'
      
        ' PORC_IVA,SUM(o1.vlr_iva*(-1)) VLR_IVA,SUM(O1.IMPCONSUMO*(-1)) V' +
        'LR_CONSUMO,SUM(O1.EXTEND*(-1) - O1.TOTALDCT*(-1)) BASE'
      'FROM oedet O1'
      'INNER JOIN ITEM I ON O1.item = I.ITEM'
      'where O1.tipo=:Tipo and O1.number=:number AND O1.QTYSHIP <> 0'
      'GROUP BY  PORC_CONSUMO,PORC_IVA')
    Left = 40
    Top = 379
    ParamData = <
      item
        Name = 'TIPO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'NUMBER'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QDevImpuestosQTYSHIP: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'QTYSHIP'
      Origin = 'QTYSHIP'
      ProviderFlags = []
      ReadOnly = True
    end
    object QDevImpuestosPORC_CONSUMO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PORC_CONSUMO'
      Origin = 'PORC_CONSUMO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QDevImpuestosPORC_IVA: TFloatField
      FieldName = 'PORC_IVA'
      Origin = 'PORC_IVA'
    end
    object QDevImpuestosVLR_IVA: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'VLR_IVA'
      Origin = 'VLR_IVA'
      ProviderFlags = []
      ReadOnly = True
    end
    object QDevImpuestosVLR_CONSUMO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'VLR_CONSUMO'
      Origin = 'VLR_CONSUMO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QDevImpuestosBASE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'BASE'
      Origin = 'BASE'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object DNota: TDataSource
    DataSet = MemNota
    Left = 264
    Top = 216
  end
  object MemNota: TMemTableEh
    Params = <>
    OnFilterRecord = MemNotaFilterRecord
    Left = 264
    Top = 264
    object MemNotaTIPO: TStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object MemNotaVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object MemNotaBATCH: TIntegerField
      FieldName = 'BATCH'
    end
    object MemNotaFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object MemNotaENVIADO: TStringField
      FieldName = 'ENVIADO'
    end
    object MemNotaDUEDATE: TSQLTimeStampField
      FieldName = 'DUEDATE'
    end
    object MemNotaCRUCE: TStringField
      FieldName = 'CRUCE'
    end
    object MemNotaID_N: TStringField
      FieldName = 'ID_N'
      Size = 80
    end
    object MemNotaMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Size = 1024
    end
    object MemNotaFECHA_FV: TSQLTimeStampField
      FieldName = 'FECHA_FV'
    end
    object MemNotaCUFE: TStringField
      FieldName = 'CUFE'
      Size = 1024
    end
    object MemNotaCONCEPTO_NOTAFE: TStringField
      FieldName = 'CONCEPTO_NOTAFE'
      Size = 10
    end
    object MemNotaINVC: TStringField
      FieldName = 'INVC'
    end
    object MemNotaSUBTOTAL: TFloatField
      FieldName = 'SUBTOTAL'
    end
    object MemNotaTIPO_RETENCION: TStringField
      FieldName = 'TIPO_RETENCION'
      Size = 80
    end
    object MemNotaRFAPLICADA: TStringField
      FieldName = 'RFAPLICADA'
    end
    object MemNotaEstado: TStringField
      FieldName = 'Estado'
      Size = 100
    end
    object MemNotaAcuse: TStringField
      FieldName = 'Acuse'
      Size = 80
    end
    object MemNotaCOD_ISO: TStringField
      FieldName = 'COD_ISO'
      Size = 120
    end
    object MemNotaPHONE1: TStringField
      FieldName = 'PHONE1'
    end
    object MemNotaCARGO1: TStringField
      FieldName = 'CARGO1'
      Size = 120
    end
    object MemNotaCONTACT1: TStringField
      FieldName = 'CONTACT1'
      Size = 120
    end
    object MemNotaADDR1: TStringField
      FieldName = 'ADDR1'
      Size = 120
    end
    object MemNotaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 120
    end
    object MemNotaCOMPANY: TStringField
      FieldName = 'COMPANY'
      Size = 800
    end
    object MemNotaLOGO: TStringField
      FieldName = 'LOGO'
      Size = 80
    end
    object MemNotaSUCCLIENTE: TIntegerField
      FieldName = 'SUCCLIENTE'
    end
    object MemNotaSeleccionar: TStringField
      FieldName = 'Seleccionar'
      Size = 30
    end
    object MemNotaPREFIJO_DIAN: TStringField
      FieldName = 'PREFIJO_DIAN'
      Size = 5
    end
    object MemNotaObservaciones: TStringField
      FieldName = 'Observaciones'
      Size = 500
    end
    object MemNotaRES_DIAN: TStringField
      FieldName = 'RES_DIAN'
      Size = 150
    end
    object MemNotaDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 200
    end
    object MemNotaFECHA_HORA: TStringField
      FieldName = 'FECHA_HORA'
    end
  end
  object QNotDetalle: TFDQuery
    Connection = Conexion
    SQL.Strings = (
      
        'SELECT DISTINCT C.ACCT CUENTA,A.APLI_IMPUESTO,A.PORCENRETENCION,' +
        'C.BASE,'
      
        'IIF(C.CRUCE IN(select T.CLASE FROM TIPDOC T WHERE T.TIPO = '#39'FA'#39')' +
        ' AND (A.APLI_IMPUESTO='#39#39' OR A.APLI_IMPUESTO IS NULL) ,'#39'S'#39','#39'N'#39') A' +
        'S PRINCIPAL,'
      
        '(C.debiT - (C.CREDIT * -1)) AS VALOR,c.TIPO, c.BATCH,CE.CONCEPTO' +
        '_NOTAFE, CE.ENVIADO,'
      'c.DUEDATE, c.cruce, c.invc, c.ID_N,MT.DESCRIPCION AS MOTIVO'
      'FROM CARPRODE c'
      'INNER JOIN CARPROEN CE ON C.tipo=CE.tipo AND C.batch=CE.batch'
      
        'INNER JOIN MOTIVOS_NOTAS MT ON (CE.CONCEPTO_NOTAFE =MT.CODIGO) A' +
        'ND (MT.TIPO=:CLASE)'
      'INNER JOIN ACCT A ON (A.ACCT=C.ACCT)'
      'WHERE C.tipo=:Tipo and C.batch=:BATCH '
      'ORDER BY   PRINCIPAL DESC,VALOR ASC ')
    Left = 264
    Top = 320
    ParamData = <
      item
        Name = 'CLASE'
        DataType = ftString
        ParamType = ptInput
        Value = 'NC'
      end
      item
        Name = 'TIPO'
        DataType = ftString
        ParamType = ptInput
        Value = 'NCE'
      end
      item
        Name = 'BATCH'
        DataType = ftInteger
        ParamType = ptInput
        Value = 5
      end>
    object QNotDetalleCUENTA: TFloatField
      FieldName = 'CUENTA'
      Origin = 'ACCT'
      Required = True
    end
    object QNotDetalleAPLI_IMPUESTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'APLI_IMPUESTO'
      Origin = 'APLI_IMPUESTO'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object QNotDetallePORCENRETENCION: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PORCENRETENCION'
      Origin = 'PORCENRETENCION'
      ProviderFlags = []
      ReadOnly = True
    end
    object QNotDetalleBASE: TFloatField
      FieldName = 'BASE'
      Origin = 'BASE'
    end
    object QNotDetallePRINCIPAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRINCIPAL'
      Origin = 'PRINCIPAL'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object QNotDetalleVALOR: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR'
      Origin = 'VALOR'
      ProviderFlags = []
      ReadOnly = True
    end
    object QNotDetalleTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      FixedChar = True
      Size = 3
    end
    object QNotDetalleBATCH: TIntegerField
      FieldName = 'BATCH'
      Origin = 'BATCH'
      Required = True
    end
    object QNotDetalleCONCEPTO_NOTAFE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONCEPTO_NOTAFE'
      Origin = 'CONCEPTO_NOTAFE'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 5
    end
    object QNotDetalleENVIADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ENVIADO'
      Origin = 'ENVIADO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object QNotDetalleDUEDATE: TSQLTimeStampField
      FieldName = 'DUEDATE'
      Origin = 'DUEDATE'
    end
    object QNotDetalleCRUCE: TStringField
      FieldName = 'CRUCE'
      Origin = 'CRUCE'
      FixedChar = True
      Size = 3
    end
    object QNotDetalleINVC: TStringField
      FieldName = 'INVC'
      Origin = 'INVC'
      FixedChar = True
      Size = 15
    end
    object QNotDetalleID_N: TStringField
      FieldName = 'ID_N'
      Origin = 'ID_N'
      Required = True
      FixedChar = True
      Size = 30
    end
    object QNotDetalleMOTIVO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MOTIVO'
      Origin = 'DESCRIPCION'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
  object QSys: TFDQuery
    Connection = Conexion
    SQL.Strings = (
      
        'select retei,FEDID,COMPANY,ADDRESS1,ADDRESS2,PHONE,CITY,MFACT fr' +
        'om sys')
    Left = 264
    Top = 152
    object QSysRETEI: TFloatField
      FieldName = 'RETEI'
      Origin = 'RETEI'
    end
    object QSysFEDID: TStringField
      FieldName = 'FEDID'
      Origin = 'FEDID'
      FixedChar = True
      Size = 30
    end
    object QSysCOMPANY: TStringField
      FieldName = 'COMPANY'
      Origin = 'COMPANY'
      FixedChar = True
      Size = 100
    end
    object QSysADDRESS1: TStringField
      FieldName = 'ADDRESS1'
      Origin = 'ADDRESS1'
      FixedChar = True
      Size = 33
    end
    object QSysPHONE: TStringField
      FieldName = 'PHONE'
      Origin = 'PHONE'
      FixedChar = True
      Size = 12
    end
    object QSysCITY: TStringField
      FieldName = 'CITY'
      Origin = 'CITY'
      FixedChar = True
      Size = 30
    end
    object QSysADDRESS2: TStringField
      FieldName = 'ADDRESS2'
      Size = 33
    end
    object QSysMFACT: TMemoField
      FieldName = 'MFACT'
      Origin = 'MFACT'
      BlobType = ftMemo
    end
  end
  object QSeriales: TFDQuery
    Connection = Conexion
    SQL.Strings = (
      
        'SELECT NOSERIE FROM ITEMACT WHERE ITEM = :ITEM AND TIPO = :TIPO ' +
        'AND BATCH= :BATCH')
    Left = 368
    Top = 331
    ParamData = <
      item
        Name = 'ITEM'
        DataType = ftString
        ParamType = ptInput
        Value = '03'
      end
      item
        Name = 'TIPO'
        DataType = ftString
        ParamType = ptInput
        Size = 10
        Value = 'F34'
      end
      item
        Name = 'BATCH'
        DataType = ftInteger
        ParamType = ptInput
        Value = 303
      end>
    object QSerialesNOSERIE: TStringField
      FieldName = 'NOSERIE'
      Origin = 'NOSERIE'
      FixedChar = True
      Size = 50
    end
  end
end
