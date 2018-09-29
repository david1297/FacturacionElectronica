unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.Samples.Calendar,
  Vcl.ComCtrls, Data.DB, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.CheckLst,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.DApt, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteVDataSet,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, MemTableDataEh, MemTableEh, Vcl.DBCtrls,
  Vcl.Mask, DBCtrlsEh, System.NetEncoding, System.Threading, Activex,
  Generics.Collections, RegularExpressions, StrUtils, Xml.xmldom, Xml.XMLIntf,
  Xml.XMLDoc,
  InvokeRegistry,
  System.ImageList, Vcl.ImgList, uFacNutritec, Carvajal, EditarCorreo,
  Factory, Service;

type
  TConfig = class
  private
    FCodigo: Integer;
    FNombre: String;
    FValor_String: String;
    FValor_Entero: Integer;
    FValor_Blob: String;
    FUrl: String;
    FProv: String;
    FUser: String;
    FPass: String;
    FRuta: String;
  public
    property Codigo: Integer read FCodigo write FCodigo;
    property Nombre: String read FNombre write FNombre;
    property Valor_String: String read FValor_String write FValor_String;
    property Valor_Entero: Integer read FValor_Entero write FValor_Entero;
    property Url: String read FUrl write FUrl;
    property Prov: String read FProv write FProv;
    property User: String read FUser write FUser;
    property Pass: String read FPass write FPass;
    property Ruta: String read FRuta write FRuta;
    property Valor_Blob: String read FValor_Blob write FValor_Blob;
  end;

  TMain = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Tipo_Doc: TDBLookupComboBox;
    Numero_Doc: TEdit;
    Nit_Tercero: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Desde: TDateTimePicker;
    Hasta: TDateTimePicker;
    Consultar: TButton;
    Enviar: TButton;
    PDF: TButton;
    Xml: TButton;
    Estado: TButton;
    Reenvio: TButton;
    Paginas: TPageControl;
    PDevoluciones: TTabSheet;
    PFacturas: TTabSheet;
    PNotas: TTabSheet;
    GridDevoluciones: TDBGridEh;
    GridFacturas: TDBGridEh;
    GridNotas: TDBGridEh;
    Conexion: TFDConnection;
    QTip_Doc: TFDQuery;
    QTip_DocTIPO: TStringField;
    QTip_DocCLASE: TStringField;
    QTip_DocDESCRIPCION: TStringField;
    DTip_Doc: TDataSource;
    Label7: TLabel;
    NFolios: TLabel;
    DFactura: TDataSource;
    QFacDetalle: TFDQuery;
    QFacDetalleITEM: TStringField;
    QFacDetalleDESCRIPCION: TStringField;
    QFacDetalleQTYSHIP: TFloatField;
    QFacDetallePRICE: TFloatField;
    QFacDetalleBONO: TStringField;
    QFacDetalleCONTEO: TIntegerField;
    QFacDetalleTSIMPUESTO: TFloatField;
    QFacDetalleTOTAL: TFloatField;
    QFacDetallePORC_CONSUMO: TFloatField;
    QFacDetalleUOFMSALES: TStringField;
    QFacDetalleTOTALDCT: TFloatField;
    QFacDetallePORC_IVA: TFloatField;
    QFacDetalleVLR_IVA: TFloatField;
    QFacDetalleVLR_CONSUMO: TFloatField;
    QFacDetalleBASE: TFloatField;
    QFacDetalleEXTEND: TFloatField;
    QFacDetalleDESC_ADICIONAL: TStringField;
    QFacImpuestos: TFDQuery;
    QFacImpuestosQTYSHIP: TFloatField;
    QFacImpuestosPORC_CONSUMO: TFloatField;
    QFacImpuestosPORC_IVA: TFloatField;
    QFacImpuestosVLR_IVA: TFloatField;
    QFacImpuestosVLR_CONSUMO: TFloatField;
    QFacImpuestosBASE: TFloatField;
    ImageList1: TImageList;
    MemFactura: TMemTableEh;
    MemFacturaNIT: TStringField;
    MemFacturaEMAIL: TStringField;
    MemFacturaTIPO: TStringField;
    MemFacturaNUMERO: TIntegerField;
    MemFacturaSUBTOTAL: TFloatField;
    MemFacturaTOTALIMP: TFloatField;
    MemFacturaTOTAL: TFloatField;
    MemFacturaADDR1: TStringField;
    MemFacturaVIVA: TFloatField;
    MemFacturaRETE: TFloatField;
    MemFacturaRETICA: TFloatField;
    MemFacturaRETIVA: TFloatField;
    MemFacturaIMPCONSUMO: TFloatField;
    MemFacturaPORC_RETE: TFloatField;
    MemFacturaPORC_IVA: TMemoField;
    MemFacturaPORC_ICA: TFloatField;
    MemFacturaDESTOTAL: TFloatField;
    MemFacturaEstado: TStringField;
    MemFacturaAcuse: TStringField;
    MemFacturaMEDIOS_PAGO: TStringField;
    MemFacturaTIPO_RETENCION: TStringField;
    MemFacturaFECHA: TSQLTimeStampField;
    MemFacturaHORCRE: TStringField;
    MemFacturaDUEDATE: TSQLTimeStampField;
    MemFacturaCOD_ISO: TStringField;
    MemFacturaPHONE1: TStringField;
    MemFacturaCOD_MONEDA: TStringField;
    MemFacturaOTROSCARGOS: TFloatField;
    MemFacturaTASA: TFloatField;
    MemFacturaCOMMENTS: TStringField;
    MemFacturafecha_pago: TSQLTimeStampField;
    MemFacturaDIAS_PAGO: TIntegerField;
    MemFacturaCONTACT1: TStringField;
    MemFacturaCARGO1: TStringField;
    MemFacturaNOMBRE: TStringField;
    MemFacturaLOGO: TStringField;
    MemFacturaSUCCLIENTE: TIntegerField;
    MemFacturaSeleccionar: TStringField;
    MemFacturacufe: TStringField;
    MemDevolucion: TMemTableEh;
    DDevolucion: TDataSource;
    MemDevolucionTOTAL: TFloatField;
    MemDevolucionNit: TStringField;
    MemDevolucionEMAIL: TStringField;
    MemDevolucionTIPO: TStringField;
    MemDevolucionNUMBER: TIntegerField;
    MemDevolucionSUBTOTAL: TFloatField;
    MemDevolucionTOTALIMP: TFloatField;
    MemDevolucionADDR1: TStringField;
    MemDevolucionVIVA: TFloatField;
    MemDevolucionRETE: TFloatField;
    MemDevolucionRETICA: TFloatField;
    MemDevolucionRETIVA: TFloatField;
    MemDevolucionIMPCONSUMO: TFloatField;
    MemDevolucionPORC_RETE: TFloatField;
    MemDevolucionPORC_IVA: TMemoField;
    MemDevolucionPORC_ICA: TFloatField;
    MemDevolucionDESTOTAL: TFloatField;
    MemDevolucionCUFE: TStringField;
    MemDevolucionEstado: TStringField;
    MemDevolucionSeleccionar: TStringField;
    MemDevolucionAcuse: TStringField;
    MemDevolucionMEDIOS_PAGO: TStringField;
    MemDevolucionTIPO_RETENCION: TStringField;
    MemDevolucionFECHA: TSQLTimeStampField;
    MemDevolucionHORCRE: TStringField;
    MemDevolucionDUEDATE: TSQLTimeStampField;
    MemDevolucionCOD_ISO: TStringField;
    MemDevolucionPHONE1: TStringField;
    MemDevolucionCOD_MONEDA: TStringField;
    MemDevolucionOTROSCARGOS: TFloatField;
    MemDevoluciontasa: TFloatField;
    MemDevolucionCOMMENTS: TStringField;
    MemDevolucionfecha_pago: TSQLTimeStampField;
    MemDevolucionDIAS_PAGO: TIntegerField;
    MemDevolucionCONTACT1: TStringField;
    MemDevolucionCARGO1: TStringField;
    MemDevolucionINVC: TIntegerField;
    MemDevolucionFECHA_FV: TSQLTimeStampField;
    MemDevolucionCONCEPTO_DV: TStringField;
    MemDevolucionENVIADO_DEV: TStringField;
    MemDevolucionCRUCE: TStringField;
    MemDevolucionDESC_COCEPTO: TStringField;
    MemDevolucionLOGO: TStringField;
    MemDevolucionSUCCLIENTE: TIntegerField;
    QDevDetalle: TFDQuery;
    QDevDetalleITEM: TStringField;
    QDevDetalleDESCRIPCION: TStringField;
    QDevDetalleQTYSHIP: TFloatField;
    QDevDetallePRICE: TFloatField;
    QDevDetalleBONO: TStringField;
    QDevDetalleCONTEO: TIntegerField;
    QDevDetalleTSIMPUESTO: TFloatField;
    QDevDetalleTOTAL: TFloatField;
    QDevDetallePORC_CONSUMO: TFloatField;
    QDevDetalleUOFMSALES: TStringField;
    QDevDetalleTOTALDCT: TFloatField;
    QDevDetallePORC_IVA: TFloatField;
    QDevDetalleVLR_IVA: TFloatField;
    QDevDetalleVLR_CONSUMO: TFloatField;
    QDevDetalleBASE: TFloatField;
    QDevDetalleEXTEND: TFloatField;
    QDevDetalleDESC_ADICIONAL: TStringField;
    QDevImpuestos: TFDQuery;
    QDevImpuestosQTYSHIP: TFloatField;
    QDevImpuestosPORC_CONSUMO: TFloatField;
    QDevImpuestosPORC_IVA: TFloatField;
    QDevImpuestosVLR_IVA: TFloatField;
    QDevImpuestosVLR_CONSUMO: TFloatField;
    QDevImpuestosBASE: TFloatField;
    DNota: TDataSource;
    MemNota: TMemTableEh;
    QNotDetalle: TFDQuery;
    QNotDetalleCUENTA: TFloatField;
    QNotDetalleAPLI_IMPUESTO: TStringField;
    QNotDetallePORCENRETENCION: TFloatField;
    QNotDetalleBASE: TFloatField;
    QNotDetallePRINCIPAL: TStringField;
    QNotDetalleVALOR: TFloatField;
    QNotDetalleTIPO: TStringField;
    QNotDetalleBATCH: TIntegerField;
    QNotDetalleCONCEPTO_NOTAFE: TStringField;
    QNotDetalleENVIADO: TStringField;
    QNotDetalleDUEDATE: TSQLTimeStampField;
    QNotDetalleCRUCE: TStringField;
    QNotDetalleINVC: TStringField;
    QNotDetalleID_N: TStringField;
    QNotDetalleMOTIVO: TStringField;
    MemNotaTIPO: TStringField;
    MemNotaVALOR: TFloatField;
    MemNotaBATCH: TIntegerField;
    MemNotaFECHA: TSQLTimeStampField;
    MemNotaENVIADO: TStringField;
    MemNotaDUEDATE: TSQLTimeStampField;
    MemNotaCRUCE: TStringField;
    MemNotaID_N: TStringField;
    MemNotaMOTIVO: TStringField;
    MemNotaFECHA_FV: TSQLTimeStampField;
    MemNotaCUFE: TStringField;
    MemNotaCONCEPTO_NOTAFE: TStringField;
    MemNotaINVC: TStringField;
    MemNotaSUBTOTAL: TFloatField;
    MemNotaTIPO_RETENCION: TStringField;
    MemNotaRFAPLICADA: TStringField;
    MemNotaEstado: TStringField;
    MemNotaAcuse: TStringField;
    MemNotaCOD_ISO: TStringField;
    MemNotaPHONE1: TStringField;
    MemNotaCARGO1: TStringField;
    MemNotaCONTACT1: TStringField;
    MemNotaADDR1: TStringField;
    MemNotaEMAIL: TStringField;
    MemNotaCOMPANY: TStringField;
    MemNotaLOGO: TStringField;
    MemNotaSUCCLIENTE: TIntegerField;
    MemNotaSeleccionar: TStringField;
    QSys: TFDQuery;
    QSysRETEI: TFloatField;
    QSysFEDID: TStringField;
    QSysCOMPANY: TStringField;
    MemDevolucionNombre: TStringField;
    MemFacturaObservaciones: TStringField;
    MemDevolucionObservaciones: TStringField;
    MemNotaObservaciones: TStringField;
    QSysADDRESS1: TStringField;
    QSysPHONE: TStringField;
    QSysCITY: TStringField;
    QSysADDRESS2: TStringField;
    Label9: TLabel;
    Panel3: TPanel;
    Label8: TLabel;
    MemFacturaPREFIJO_DIAN: TStringField;
    MemFacturaRES_DIAN: TStringField;
    MemFacturaFECHAINIFAC: TSQLTimeStampField;
    MemFacturaFECHAVENFAC: TSQLTimeStampField;
    MemFacturaNUMDESDE: TIntegerField;
    MemFacturaNUMHASTA: TIntegerField;
    QSeriales: TFDQuery;
    QSerialesNOSERIE: TStringField;
    MemDevolucionPREFIJO_DIAN: TStringField;
    MemNotaPREFIJO_DIAN: TStringField;
    MemNotaRES_DIAN: TStringField;
    MemDevolucionRES_DIAN: TStringField;
    MemFacturaOCNUMERO: TStringField;
    MemFacturaNROREMISION: TStringField;
    QFacDetalleNUMERO_PEDIDO: TIntegerField;
    QSysMFACT: TMemoField;
    QFacDetalleUNIDAD: TStringField;
    QDevDetalleUNIDAD: TStringField;
    MemNotaDESCRIPCION: TStringField;
    MemNotaFECHA_HORA: TStringField;
    MemDevolucionOCNUMERO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure ConsultarClick(Sender: TObject);
    procedure EnviarClick(Sender: TObject);
    procedure QTip_DocAfterScroll(DataSet: TDataSet);
    procedure GridFacturasGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure GridFacturasTitleBtnClick(Sender: TObject; ACol: Integer;
      Column: TColumnEh);
    procedure GridDevolucionesGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure GridDevolucionesTitleBtnClick(Sender: TObject; ACol: Integer;
      Column: TColumnEh);
    procedure PDFClick(Sender: TObject);
    procedure XMLClick(Sender: TObject);
    procedure EstadoClick(Sender: TObject);
    procedure ReenvioClick(Sender: TObject);
    procedure EditarCorreoDevoluciones(Grid: TCustomDBGridEh;
      Column: TColumnEh);
    procedure EditarCorreoFacturas(Grid: TCustomDBGridEh; Column: TColumnEh);
    procedure EditarCorreoNotas(Grid: TCustomDBGridEh; Column: TColumnEh);
    procedure MemDevolucionFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure MemFacturaFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure MemNotaFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure GridNotasTitleBtnClick(Sender: TObject; ACol: Integer;
      Column: TColumnEh);
    procedure GridNotasGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);

  private
    { Private declarations }
    vListaGrids: TDictionary<TTabSheet, TDBGridEh>;
    vCheckFacturas: TDictionary<Integer, String>;
  public
    { Public declarations }
    function GetCliente(Nit: Integer): Cliente;
    function GetFoliosRestantes: FoliosRemainingResponse2;
    function TraeConfig(pConexion: TFDConnection; pCodigo: Integer): TConfig;
    procedure ConsultaFacturas;
    procedure ConsultaDevoluciones;
    procedure ConsultaNotas(pNota: String);

  var
    iFactura: IXMLFACTURA;
    vUrl: String;
    vProv: String;
    vUser: String;
    vPass: String;
    vRuta: String;
    vlTokenEmpresa, vlTokenPassword: String;
    vSubCliente: Integer;
    vCliente: String;
    vDocumento: string;
  end;

const
  CNS_EMAIL = '^((?>[a-zA-Z\d!#$%&''*+\-/=?^_`{|}~]+\x20*' +
    '|"((?=[\x01-\x7f])[^"\\]|\\[\x01-\x7f])*"\' +
    'x20*)*(?<angle><))?((?!\.)(?>\.?[a-zA-Z\d!' +
    '#$%&''*+\-/=?^_`{|}~]+)+|"((?=[\x01-\x7f])' +
    '[^"\\]|\\[\x01-\x7f])*")@(((?!-)[a-zA-Z\d\' +
    '-]+(?<!-)\.)+[a-zA-Z]{2,}|\[(((?(?<!\[)\.)' +
    '(25[0-5]|2[0-4]\d|[01]?\d?\d)){4}|[a-zA-Z\' +
    'd\-]*[a-zA-Z\d]:((?=[\x01-\x7f])[^\\\[\]]|' +
    '\\[\x01-\x7f])+)\])(?(angle)>)$';

var
  Main: TMain;

implementation

{$R *.dfm}



procedure TMain.ConsultaDevoluciones;
var
  vQ: TFDQuery;
begin
  if (MemFactura.Active = True) then
  begin
    MemFactura.Close;
  end
  else if (MemNota.Active = True) then
  begin
    MemNota.Close;
  end;
  vQ := TFDQuery.Create(nil);
  try
    vQ.Connection := Conexion;
    vQ.Close;
    vQ.SQL.Clear;
    vQ.SQL.Add
      ('SELECT  ''EDITAR''  LOGO,O.HORCRE,p.fecha fecha_pago,o.OCNUMERO,p.DIAS DIAS_PAGO,o.COMMENTS,O.OTROSCARGOS,O.COD_MONEDA,C.PHONE1,PA.COD_ISO,O.FECHA, O.DUEDATE,O.ID_N NIT, S.email EMAIL,O.CONCEPTO_DV,O.ENVIADO_DEV,O.dev_tipofac CRUCE, O.dev_factura INVC, '
      + '(select fv.cufe from oe fv where fv.tipo=O.dev_tipofac and fv.number=o.dev_factura) CUFE,'
      + ' (select fv.fecha from oe fv where fv.tipo=O.dev_tipofac and fv.number=o.dev_factura) FECHA_FV,S.SUCCLIENTE,TI.PREFIJO_DIAN,TI.RES_DIAN,'
      + ' O.TIPO, O.NUMBER , (O.SUBTOTAL)*(-1) SUBTOTAL,(O.SALESTAX)*(-1) TOTALIMP,'
      + ' (O.TOTAL)*(-1) TOTAL, C.addr1,' +
      ' FP.tipo AS medios_pago, (O.salestax)*(-1) VIVA,' +
      ' (O.disc1)*(-1) RETE, (O.disc2)*(-1) RETICA, (O.disc3)*(-1) RETIVA, (O.impconsumo)*(-1) impconsumo,R.porcentaje  porc_rete, substring(R.tipo_retencion from 1 for 1) tipo_retencion'
      + ' , o.porceniva Porc_Iva, (select R2.porcentaje from reten R2 where R2.tipo=cs.codica) porc_ica, ''False'' SELECCIONAR, O.cufe, (O.destotal)*(-1)destotal,'
      + ' S.CONTACT1,S.CARGO1,coalesce(MT.TASA,1) tasa,OC.DESCRIPCION AS DESC_COCEPTO,C.COMPANY as Nombre'
      + ' FROM OE O ' + ' INNER JOIN CUST C ON O.ID_N=C.ID_N' +
      ' INNER JOIN SHIPTO S ON C.ID_N=S.ID_N and O.SHIPTO2=S.SUCCLIENTE' +
      ' LEFT JOIN PAGOS P ON O.id_empresa=P.empresa AND O.id_sucursal=P.sucursal AND O.tipo=P.tipo AND O.number=P.numero'
      + ' LEFT JOIN FOR_PAGO FP ON P.concepto=FP.concepto' +
      ' LEFT JOIN RETEN R ON O.RFAPLICADA=R.tipo' +
      ' INNER JOIN CIUDADES CS ON C.city=CS.ciudad' +
      ' INNER JOIN OECONCEPTOS OC ON O.CONCEPTO_DV = OC.TIPO AND OC.APLICA = ''FE'''
      + ' LEFT JOIN MONEDA_TASAS MT ON O.COD_MONEDA=MT.CODIGO AND O.FECHA = MT.FECHA'
      + ' INNER JOIN PAISES PA ON (C.PAIS = PA.PAIS)' +
      ' INNER JOIN TIPDOC TI ON (TI.CLASE = O.TIPO)'+
      ' INNER JOIN SYS SY ON O.ID_EMPRESA =SY.E ' + ' WHERE' +
      ' (SELECT t.TIPO FROM TIPDOC t WHERE t.CLASE = O.TIPO) IN (''DV'') and (SELECT t2.TIPO FROM TIPDOC t2 WHERE t2.CLASE = O.dev_tipofac) IN (''FA'') and'
      + ' coalesce((select fv.cufe from oe fv where fv.tipo=O.dev_tipofac and fv.number=o.dev_factura), '''') <> '''' and O.FECHA BETWEEN :FI and :FF');

    vQ.ParamByName('FI').AsDate := Desde.Date;

    vQ.ParamByName('FF').AsDate := Hasta.Date;
    if Tipo_Doc.Text <> '' then
      vQ.SQL.Add(' AND O.TIPO = ''' + QTip_DocCLASE.AsString + '''');
    if Numero_Doc.Text <> EmptyStr then
      vQ.SQL.Add(' AND O.NUMBER = ''' + Numero_Doc.Text + '''');
    if Nit_Tercero.Text <> EmptyStr then
      vQ.SQL.Add(' AND O.ID_N = ''' + Nit_Tercero.Text + '''');
    vQ.SQL.Add(' ORDER BY O.TIPO, O.NUMBER');

    MemDevolucion.Close;
    MemDevolucion.CreateDataSet;
    MemDevolucion.Open;
    MemDevolucion.LoadFromDataSet(vQ, -1, TLoadMode.lmAppend, True);
  finally
    vQ.DisposeOf;
  end;
end;

procedure TMain.ConsultaFacturas;
var
  vQ: TFDQuery;
begin
  if (MemDevolucion.Active = True) then
  begin
    MemDevolucion.Close;
  end
  else if (MemNota.Active = True) then
  begin
    MemNota.Close;
  end;
  vQ := TFDQuery.Create(nil);
  try
    vQ.Connection := Conexion;
    vQ.Close;
    vQ.SQL.Clear;
    vQ.SQL.Add
      ('SELECT ''EDITAR''  LOGO,S.SUCCLIENTE,o.OCNUMERO,O.NROREMISION,c.company NOMBRE,S.CONTACT1,S.CARGO1,coalesce(MT.TASA,1) tasa,p.fecha fecha_pago,p.DIAS DIAS_PAGO,o.COMMENTS,'
      + ' O.OTROSCARGOS,IIF(O.COD_MONEDA =''DOLAR'',''COP'',O.COD_MONEDA) COD_MONEDA,C.PHONE1,PA.COD_ISO,O.ID_N NIT,S.email EMAIL,O.TIPO,O.FECHA,'
      + ' O.HORCRE,O.DUEDATE,O.NUMBER NUMERO,O.SUBTOTAL,O.SALESTAX TOTALIMP,O.TOTAL,TI.PREFIJO_DIAN,TI.RES_DIAN,'
      + ' O.CUFE,C.addr1,FP.tipo AS medios_pago,O.salestax VIVA,O.disc1 RETE, O.disc2 RETICA,O.disc3 RETIVA,'
      + ' O.impconsumo,R.porcentaje porc_rete,'
      +' FA.NUMDESDE,FA.NUMHASTA,FA.FECHAVENFAC,FA.FECHAINIFAC,'+
      ' substring(R.tipo_retencion from 1 for 1) tipo_retencion,o.porceniva Porc_Iva,'
      + ' (select R2.porcentaje from reten R2 where R2.tipo=cs.codica) porc_ica,''False'' SELECCIONAR,'
      + '  O.destotal' + ' FROM OE O' + ' INNER JOIN CUST C ON O.ID_N=C.ID_N' +
      ' INNER JOIN SHIPTO S ON C.ID_N=S.ID_N and O.SHIPTO2=S.SUCCLIENTE' +
      ' LEFT JOIN PAGOS P ON O.id_empresa=P.empresa AND O.id_sucursal=P.sucursal AND O.tipo=P.tipo AND O.number=P.numero'
      + ' LEFT JOIN FOR_PAGO FP ON P.concepto=FP.concepto' +
      ' LEFT JOIN RETEN R ON O.RFAPLICADA=R.tipo' +
      ' INNER JOIN PAISES PA ON (C.PAIS = PA.PAIS)' +
      ' INNER JOIN CIUDADES CS ON C.city=CS.ciudad' +
      ' INNER JOIN TIPDOC TI ON (TI.CLASE = O.TIPO)' +
      ' INNER JOIN FATIPDOC FA ON (O.ID_USUARIO = FA.ID_USUARIO)' +
      ' LEFT JOIN MONEDA_TASAS MT ON O.COD_MONEDA=MT.CODIGO AND O.FECHA = MT.FECHA where O.FECHA BETWEEN :FI and :FF');
    vQ.ParamByName('FI').AsDate := Desde.Date;
    vQ.ParamByName('FF').AsDate := Hasta.Date;
    if Tipo_Doc.Text <> '' then
      vQ.SQL.Add(' AND O.TIPO = ''' + QTip_DocCLASE.AsString + '''');
    if Numero_Doc.Text <> EmptyStr then
      vQ.SQL.Add(' AND O.NUMBER = ''' + Numero_Doc.Text + '''');
    if Nit_Tercero.Text <> EmptyStr then
      vQ.SQL.Add(' AND O.ID_N = ''' + Nit_Tercero.Text + '''');
    vQ.SQL.Add(' ORDER BY O.TIPO, O.NUMBER');

    MemFactura.Close;
    MemFactura.CreateDataSet;
    MemFactura.Open;
    MemFactura.LoadFromDataSet(vQ, -1, TLoadMode.lmAppend, True);
  finally
    vQ.DisposeOf;
  end;
end;

procedure TMain.ConsultaNotas(pNota: String);
var
  vQ: TFDQuery;
begin
  if (MemFactura.Active = True) then
  begin
    MemFactura.Close;
  end
  else if (MemDevolucion.Active = True) then
  begin
    MemDevolucion.Close;
  end;

  vQ := TFDQuery.Create(nil);
  try
    vQ.Connection := Conexion;
    vQ.Close;
    vQ.SQL.Clear;
    vQ.SQL.Add
      ('SELECT DISTINCT ''EDITAR''  LOGO,S.SUCCLIENTE,CE.FECHA_HORA, cu.company,S.email EMAIL,CU.addr1,S.CONTACT1,S.CARGO1,CU.PHONE1,PA.COD_ISO,MT.DESCRIPCION AS MOTIVO,CE.TIPO, CE.BATCH, CE.FECHA, CE.CONCEPTO_NOTAFE, CE.ENVIADO,'
      + ' O.SUBTOTAL,substring(R.tipo_retencion from 1 for 1) TIPO_RETENCION,' +
      ' cE.DUEDATE, c.cruce, c.invc, CE.ID_N,''False'' SELECCIONAR,TI.PREFIJO_DIAN,TI.RES_DIAN,' +
      ' CE.TOTAL AS VALOR,O.cufe, O.FECHA FECHA_FV,O.RFAPLICADA,CE.OBSERV DESCRIPCION ' +
      ' FROM CARPROEN CE ' +
      ' INNER JOIN  CARPRODE C ON C.tipo=CE.tipo AND C.batch=CE.batch' +
      ' INNER JOIN SHIPTO S ON C.ID_N=S.ID_N AND CE.SHIPTO = S.SUCCLIENTE ' +
      ' INNER JOIN CUST CU ON C.ID_N=CU.ID_N' +
      ' INNER JOIN PAISES PA ON (CU.PAIS = PA.PAIS)' +
      ' INNER JOIN TIPDOC TI ON (TI.CLASE = C.TIPO)'+
      ' INNER JOIN OE O  ON O.tipo = c.cruce and O.number = iif(coalesce(c.invc, 0) = '''', 0, coalesce(c.invc, 0))'
      + ' LEFT JOIN RETEN R ON O.RFAPLICADA=R.tipo' +
      ' INNER JOIN MOTIVOS_NOTAS MT ON (CE.CONCEPTO_NOTAFE =MT.CODIGO) AND (MT.TIPO='
      + QuotedStr(QTip_DocTIPO.AsString) + ')' +
      ' WHERE (SELECT t.TIPO FROM TIPDOC t WHERE t.CLASE = c.TIPO) IN (' + pNota
      + ') and' +
      ' (SELECT t2.TIPO FROM TIPDOC t2 WHERE t2.CLASE = c.CRUCE) IN (''FA'') ' +
      ' and coalesce(O.cufe, '''') <> '''' and CE.FECHA BETWEEN :FI and :FF');

    vQ.ParamByName('FI').AsDate := Desde.Date;

    vQ.ParamByName('FF').AsDate := Hasta.Date;
    if Tipo_Doc.Text <> '' then
      vQ.SQL.Add(' AND CE.TIPO = ''' + QTip_DocCLASE.AsString + '''');
    if Numero_Doc.Text <> EmptyStr then
      vQ.SQL.Add(' AND CE.NUMBER = ''' + Numero_Doc.Text + '''');
    if Nit_Tercero.Text <> EmptyStr then
      vQ.SQL.Add(' AND CE.ID_N = ''' + Nit_Tercero.Text + '''');
    vQ.SQL.Add(' ORDER BY CE.TIPO, CE.BATCH');

    MemNota.Close;
    MemNota.CreateDataSet;
    MemNota.Open;
    MemNota.LoadFromDataSet(vQ, -1, TLoadMode.lmAppend, True);
  finally
    vQ.DisposeOf;
  end;
end;

procedure TMain.ConsultarClick(Sender: TObject);
begin
  if Paginas.ActivePage = PFacturas then
    ConsultaFacturas
  else if Paginas.ActivePage = PNotas then
    ConsultaNotas(QuotedStr('ND') + ',' + QuotedStr('NC'))
  else if Paginas.ActivePage = PDevoluciones then
    ConsultaDevoluciones;
end;

procedure TMain.EnviarClick(Sender: TObject);
begin
  if (vProv = 'C') then
  begin
    if Paginas.ActivePage = PFacturas then
      PCarvajal.Create.EnviarFacturas
    else if Paginas.ActivePage = PNotas then
      PCarvajal.Create.EnviarNotas
    else if Paginas.ActivePage = PDevoluciones then
      PCarvajal.Create.EnviarDevoluciones;
    if not Assigned(Sender) then
      Application.Terminate;
  end
  else if (vProv = 'F') then
  begin
    if Paginas.ActivePage = PFacturas then
      PFactory.Create.EnviarFacturas
    else if Paginas.ActivePage = PNotas then
      PFactory.Create.EnviarNotas
    else if Paginas.ActivePage = PDevoluciones then
      PFactory.Create.EnviarDevoluciones;
    if not Assigned(Sender) then
      Application.Terminate;
  end;
end;

procedure TMain.EstadoClick(Sender: TObject);
begin
  if (vProv = 'C') then
  begin
    if Paginas.ActivePage = PFacturas then
      PCarvajal.Create.EstadoFacturas
    else if Paginas.ActivePage = PNotas then
      PCarvajal.Create.EstadoNotas
    else if Paginas.ActivePage = PDevoluciones then
      PCarvajal.Create.EstadoDevoluciones;
    if not Assigned(Sender) then
      Application.Terminate;
  end
  else if (vProv = 'F') then
  begin
    if Paginas.ActivePage = PFacturas then
      PFactory.Create.EstadoFacturas
    else if Paginas.ActivePage = PNotas then
      PFactory.Create.EstadoNotas
    else if Paginas.ActivePage = PDevoluciones then
      PFactory.Create.EstadoDevoluciones;
    if not Assigned(Sender) then
      Application.Terminate;
  end;
end;

procedure TMain.FormCreate(Sender: TObject);
var
  vRespues: FoliosRemainingResponse2;
  vFactura: FacturaGeneral2;
begin
  vListaGrids := TDictionary<TTabSheet, TDBGridEh>.Create;
  vListaGrids.Add(PFacturas, GridFacturas);
  vListaGrids.Add(PNotas, GridNotas);
  vListaGrids.Add(PDevoluciones, GridDevoluciones);
  if ParamCount > 1 then
  begin
    Conexion.Connected := False;
    Conexion.Params.VALUES['driverid'] := 'FB';
    Conexion.Params.VALUES['DATABASE'] := ParamStr(3);
    Conexion.Params.VALUES['user_name'] := 'SYSDBA';
    Conexion.Params.VALUES['PASSWORD'] := 'masterkey';
    Conexion.Params.VALUES['Protocol'] := 'ipTCPIP';
  end;
  vlTokenEmpresa := TraeConfig(Conexion, 1).Nombre;
  vlTokenPassword := TraeConfig(Conexion, 1).Valor_String;
  vUrl := TraeConfig(Conexion, 1).Url;
  vProv := TraeConfig(Conexion, 1).Prov;
  vUser := TraeConfig(Conexion, 1).User;
  vPass := TraeConfig(Conexion, 1).Pass;
  vRuta := TraeConfig(Conexion, 1).Ruta;

  if (vProv = 'F') then
  begin
    vRespues := GetFoliosRestantes;
    if vRespues.Codigo <> 200 then
    begin
      MessageDlg(vRespues.mensaje, TMsgDlgType.mtError, [TMsgDlgBtn.mbOK], 0);
      Application.Terminate;
    end;
    NFolios.Caption := vRespues.FoliosRestantes.ToString;
    if (vRespues.FoliosRestantes <= TraeConfig(Conexion, 1).Valor_Entero) then
    begin
      MessageDlg('Cantidad mínima de Folios alcanzada', TMsgDlgType.mtWarning,
        [TMsgDlgBtn.mbOK], 0);
      NFolios.Font.Color := clRed;
      NFolios.Font.Style := NFolios.Font.Style + [TFontStyle.fsBold];
    end;
  end;
  vCheckFacturas := TDictionary<Integer, String>.Create;
  Desde.Date := Date;
  Hasta.Date := Date;
  QTip_Doc.Close;
  QTip_Doc.Open;
  if ParamCount > 4 then
  begin
    QTip_Doc.Locate('CLASE', ParamStr(4), [loPartialKey]);
    Tipo_Doc.KeyValue := QTip_DocCLASE.AsString;
    Numero_Doc.Text := ParamStr(5);
    ConsultarClick(Sender);
    Paginas.ActivePage.Visible := True;
    vListaGrids.Items[Paginas.ActivePage].DataSource.DataSet.Edit;
    vListaGrids.Items[Paginas.ActivePage].DataSource.DataSet.FieldByName
      ('Seleccionar').AsString := 'True';
    vListaGrids.Items[Paginas.ActivePage].DataSource.DataSet.Post;
    if ((QTip_DocTIPO.AsString = QTip_DocTIPO.AsString) and
      (Numero_Doc.Text <> '')) then
    begin
      EnviarClick(nil);
      Application.Terminate;
    end;
  end;
  if (vProv = 'F') then
  begin
    Main.GridDevoluciones.Columns[11].Visible := False;
    Main.GridDevoluciones.Columns[12].Visible := False;
    Main.GridFacturas.Columns[9].Visible := False;
    Main.GridFacturas.Columns[10].Visible := False;
    Main.GridNotas.Columns[11].Visible := False;
    Main.GridNotas.Columns[12].Visible := False;
  end;
  if (vProv = 'C') then
  begin
    Main.GridDevoluciones.Columns[9].Visible := False;
    Main.GridDevoluciones.Columns[10].Visible := False;
    Main.GridFacturas.Columns[7].Visible := False;
    Main.GridFacturas.Columns[8].Visible := False;
    Main.GridNotas.Columns[9].Visible := False;
    Main.GridNotas.Columns[10].Visible := False;
    Main.Label7.Visible := False;
    Main.NFolios.Visible := False;
    Main.Reenvio.Visible := False;
  end;

end;

function TMain.GetCliente(Nit: Integer): Cliente;
var
  vQ: TFDQuery;
begin
  vQ := TFDQuery.Create(nil);
  try
    vQ.Connection := Conexion;
    vQ.Open('SELECT C.ID_N,C.COMPANY NOMBRE, S.email EMAIL, T.primer_apellido,T.SEGUNDO_apellido, C.city,'
      + 'C.departamento, C.addr1, C.pais,T.PRIMER_nombre, T.segundo_nombre,' +
      'T.tdoc, T.tipo_contribuyente, iif(C.tipoemp = 3,0,2) REGIMEN, ''False'' Seleccionar '
      + 'FROM CUST C, TRIBUTARIA T ' +
      'INNER JOIN SHIPTO S ON C.ID_N=S.ID_N  where C.id_n = ' + Nit.ToString +
      ' and  C.ID_N=T.ID_N');

    Result := Service.Cliente.Create;

    if (vQ.FieldByName('tipo_contribuyente').AsString = '0') or
      (vQ.FieldByName('tipo_contribuyente').AsString = '2') then
    begin
      Result.tipoPersona := '2';
      Result.apellido := (vQ.FieldByName('PRIMER_APELLIDO').AsString + ' ' +
        vQ.FieldByName('SEGUNDO_APELLIDO').AsString);
      Result.segundoNombre := vQ.FieldByName('SEGUNDO_NOMBRE').AsString;
      Result.nombreRazonSocial := vQ.FieldByName('PRIMER_NOMBRE').AsString;
    END
    else
    BEGIN
      Result.nombreRazonSocial := vQ.FieldByName('NOMBRE').AsString;
      Result.tipoPersona := vQ.FieldByName('TIPO_CONTRIBUYENTE').AsString;
    end;
    Result.ciudad := vQ.FieldByName('CITY').AsString;
    Result.departamento := vQ.FieldByName('DEPARTAMENTO').AsString;
    Result.direccion := vQ.FieldByName('ADDR1').AsString;
    Result.email := vQ.FieldByName('EMAIL').AsString;
    Result.notificar := Ifthen(TRegEx.IsMatch(vQ.FieldByName('EMAIL').AsString,
      CNS_EMAIL), 'SI', 'NO');
    Result.numeroDocumento := Nit.ToString;
    Result.PAIS := 'CO';
    Result.tipoIdentificacion := vQ.FieldByName('TDOC').AsString;
    Result.Nit := vQ.FieldByName('ID_N').AsString;
    Result.regimen := vQ.FieldByName('REGIMEN').AsString;
  finally
    vQ.DisposeOf;
  end;
end;

function TMain.GetFoliosRestantes: FoliosRemainingResponse2;
begin
  Result := Service.GetIService().foliosRestantes(vlTokenEmpresa,
    vlTokenPassword);
end;

procedure TMain.EditarCorreoDevoluciones(Grid: TCustomDBGridEh;
  Column: TColumnEh);
begin
  vSubCliente := MemDevolucionSUCCLIENTE.AsInteger;
  vCliente := MemDevolucionNit.AsString;
  vDocumento := MemDevolucionTIPO.AsString + ' ' + MemDevolucionNUMBER.AsString;
  Form1 := TForm1.Create(Self);
  Form1.ShowModal;
  Form1.Free;
end;

procedure TMain.GridDevolucionesGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (MemDevolucionENVIADO_DEV.AsString = 'S') then
    Background := $507FFF;
end;

procedure TMain.GridDevolucionesTitleBtnClick(Sender: TObject; ACol: Integer;
  Column: TColumnEh);
var
  vBook: TBookmark;
begin
  if (Column.FieldName = 'Seleccionar') and (MemDevolucion.Active = True) then
  begin
    vBook := MemDevolucion.GetBookmark;
    MemDevolucion.DisableControls;
    try
      MemDevolucion.First;
      while not MemDevolucion.Eof do
      begin
        MemDevolucion.Edit;
        if MemDevolucion.FieldByName('Seleccionar').AsString = 'True' then
          MemDevolucion.FieldByName('Seleccionar').AsString := 'False'
        else
          MemDevolucion.FieldByName('Seleccionar').AsString := 'True';
        MemDevolucion.Next;
      end;
    finally
      MemDevolucion.GotoBookmark(vBook);
      MemDevolucion.FreeBookmark(vBook);
      MemDevolucion.EnableControls;
    end;
  end;
end;

procedure TMain.EditarCorreoFacturas(Grid: TCustomDBGridEh; Column: TColumnEh);
begin
  vSubCliente := MemFacturaSUCCLIENTE.AsInteger;
  vCliente := MemFacturaNIT.AsString;
  vDocumento := MemFacturaTIPO.AsString + ' ' + MemFacturaNUMERO.AsString;
  Form1 := TForm1.Create(Self);
  Form1.ShowModal;
  Form1.Free;
end;

procedure TMain.GridFacturasGetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  if MemFacturacufe.AsString <> '' then
    Background := $507FFF;
end;

procedure TMain.GridFacturasTitleBtnClick(Sender: TObject; ACol: Integer;
  Column: TColumnEh);
var
  vBook: TBookmark;
begin
  if (Column.FieldName = 'Seleccionar') and (MemFactura.Active = True) then
  begin
    vBook := MemFactura.GetBookmark;
    MemFactura.DisableControls;
    try
      MemFactura.First;
      while not MemFactura.Eof do
      begin
        MemFactura.Edit;
        if MemFactura.FieldByName('Seleccionar').AsString = 'True' then
          MemFactura.FieldByName('Seleccionar').AsString := 'False'
        else
          MemFactura.FieldByName('Seleccionar').AsString := 'True';
        MemFactura.Next;
      end;
    finally
      MemFactura.GotoBookmark(vBook);
      MemFactura.FreeBookmark(vBook);
      MemFactura.EnableControls;
    end;
  end;
end;

procedure TMain.EditarCorreoNotas(Grid: TCustomDBGridEh; Column: TColumnEh);
begin
  vSubCliente := MemNotaSUCCLIENTE.AsInteger;
  vCliente := MemNotaID_N.AsString;
  vDocumento := MemNotaTIPO.AsString + ' ' + MemNotaBATCH.AsString;
  Form1 := TForm1.Create(Self);
  Form1.ShowModal;
  Form1.Free;
end;

procedure TMain.GridNotasGetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  if (MemNotaENVIADO.AsString = 'S') then
    Background := $507FFF;
end;

procedure TMain.GridNotasTitleBtnClick(Sender: TObject; ACol: Integer;
  Column: TColumnEh);
var
  vBook: TBookmark;
begin
  if (Column.FieldName = 'Seleccionar') and (MemNota.Active = True) then
  begin
    vBook := MemNota.GetBookmark;
    MemNota.DisableControls;
    try
      MemNota.First;
      while not MemNota.Eof do
      begin
        MemNota.Edit;
        if MemNota.FieldByName('Seleccionar').AsString = 'True' then
          MemNota.FieldByName('Seleccionar').AsString := 'False'
        else
          MemNota.FieldByName('Seleccionar').AsString := 'True';
        MemNota.Next;
      end;
    finally
      MemNota.GotoBookmark(vBook);
      MemNota.FreeBookmark(vBook);
      MemNota.EnableControls;
    end;
  end;
end;

procedure TMain.MemDevolucionFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  Accept := (MemDevolucionSeleccionar.AsString = 'True');
end;

procedure TMain.MemFacturaFilterRecord(DataSet: TDataSet; var Accept: Boolean);
begin
  Accept := (MemFacturaSeleccionar.AsString = 'True');
end;

procedure TMain.MemNotaFilterRecord(DataSet: TDataSet; var Accept: Boolean);
begin
  Accept := (MemNotaSeleccionar.AsString = 'True');
end;

procedure TMain.PDFClick(Sender: TObject);
begin
  if (vProv = 'C') then
  begin
    if Paginas.ActivePage = PFacturas then
      PCarvajal.Create.PdfFacturas
    else if Paginas.ActivePage = PNotas then
      PCarvajal.Create.PdfNotas
    else if Paginas.ActivePage = PDevoluciones then
      PCarvajal.Create.PdfDevoluciones;
    if not Assigned(Sender) then
      Application.Terminate;
  end
  else if (vProv = 'F') then
  begin
    if Paginas.ActivePage = PFacturas then
      PFactory.Create.PdfFacturas
    else if Paginas.ActivePage = PNotas then
      PFactory.Create.PdfNotas
    else if Paginas.ActivePage = PDevoluciones then
      PFactory.Create.PdfDevoluciones;
    if not Assigned(Sender) then
      Application.Terminate;
  end;
end;

procedure TMain.QTip_DocAfterScroll(DataSet: TDataSet);
begin
  PFacturas.TabVisible := (QTip_DocTIPO.AsString = 'FA');
  PNotas.TabVisible := ((QTip_DocTIPO.AsString = 'ND') or
    (QTip_DocTIPO.AsString = 'NC'));
  PDevoluciones.TabVisible := (QTip_DocTIPO.AsString = 'DV');
end;

procedure TMain.ReenvioClick(Sender: TObject);
begin
  if (vProv = 'F') then
  begin
    if Paginas.ActivePage = PFacturas then
      PFactory.Create.CorreoFacturas
    else if Paginas.ActivePage = PNotas then
      PFactory.Create.CorreoNotas
    else if Paginas.ActivePage = PDevoluciones then
      PFactory.Create.CorreoDevoluciones;
    if not Assigned(Sender) then
      Application.Terminate;
  end;
end;

function TMain.TraeConfig(pConexion: TFDConnection; pCodigo: Integer): TConfig;
var
  vQ: TFDQuery;
begin
  vQ := TFDQuery.Create(nil);
  try
    vQ.Connection := pConexion;
    vQ.Open('select Ruta,CODIGO, NOMBRE, url_service, VALOR_STRING, VALOR_ENTERO, '
      + 'PROVEEDOR_FE,USERNAME,PASS from CONFIG ');
    Result := TConfig.Create;
    Result.Codigo := vQ.FieldByName('CODIGO').AsInteger;
    Result.Nombre := vQ.FieldByName('NOMBRE').AsString;
    Result.Valor_String := vQ.FieldByName('VALOR_STRING').AsString;
    Result.Valor_Entero := vQ.FieldByName('VALOR_ENTERO').AsInteger;
    Result.Url := vQ.FieldByName('url_service').AsString;
    Result.Prov := vQ.FieldByName('PROVEEDOR_FE').AsString;
    Result.User := vQ.FieldByName('USERNAME').AsString;
    Result.Pass := vQ.FieldByName('PASS').AsString;
    Result.Ruta := vQ.FieldByName('Ruta').AsString;
  finally
    vQ.DisposeOf;
  end;
end;

procedure TMain.XMLClick(Sender: TObject);
begin
  if (vProv = 'C') then
  begin
    if Paginas.ActivePage = PFacturas then
      PCarvajal.Create.XmlFacturas
    else if Paginas.ActivePage = PNotas then
      PCarvajal.Create.XmlNotas
    else if Paginas.ActivePage = PDevoluciones then
      PCarvajal.Create.XmlDevoluciones;
    if not Assigned(Sender) then
      Application.Terminate;
  end
  else if (vProv = 'F') then
  begin
    if Paginas.ActivePage = PFacturas then
      PFactory.Create.XmlFacturas
    else if Paginas.ActivePage = PNotas then
      PFactory.Create.XmlNotas
    else if Paginas.ActivePage = PDevoluciones then
      PFactory.Create.XmlDevoluciones;
    if not Assigned(Sender) then
      Application.Terminate;
  end;
end;

end.
