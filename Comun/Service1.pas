// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://intdemo.dfacture.com.co/ws/obj/Service.svc?WSDL
//  >Import : http://intdemo.dfacture.com.co/ws/obj/Service.svc?WSDL>0
//  >Import : http://intdemo.dfacture.com.co/ws/obj/Service.svc?xsd=xsd0
//  >Import : http://intdemo.dfacture.com.co/ws/obj/Service.svc?xsd=xsd2
//  >Import : http://intdemo.dfacture.com.co/ws/obj/Service.svc?xsd=xsd3
//  >Import : http://intdemo.dfacture.com.co/ws/obj/Service.svc?xsd=xsd4
//  >Import : http://intdemo.dfacture.com.co/ws/obj/Service.svc?xsd=xsd1
// Encoding : utf-8
// Version  : 1.0
// (07/09/2018 10:32:26 a. m. - - $Rev: 90173 $)
// ************************************************************************ //

unit Service1;

interface

uses Soap.InvokeRegistry, Soap.SOAPHTTPClient, System.Types, Soap.XSBuiltIns;

const
  IS_OPTN = $0001;
  IS_UNBD = $0002;
  IS_NLBL = $0004;
  IS_REF  = $0080;


type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]

  Extras2              = class;                 { "http://schemas.datacontract.org/2004/07/Services.Models.Object"[GblCplx] }
  Extras               = class;                 { "http://schemas.datacontract.org/2004/07/Services.Models.Object"[GblElm] }
  Cliente2             = class;                 { "http://schemas.datacontract.org/2004/07/Services.Models.Object"[GblCplx] }
  Cliente              = class;                 { "http://schemas.datacontract.org/2004/07/Services.Models.Object"[GblElm] }
  FacturaImpuestos2    = class;                 { "http://schemas.datacontract.org/2004/07/Services.Models.Object"[GblCplx] }
  FacturaImpuestos     = class;                 { "http://schemas.datacontract.org/2004/07/Services.Models.Object"[GblElm] }
  FacturaDetalle2      = class;                 { "http://schemas.datacontract.org/2004/07/Services.Models.Object"[GblCplx] }
  FacturaDetalle       = class;                 { "http://schemas.datacontract.org/2004/07/Services.Models.Object"[GblElm] }
  FacturaGeneral2      = class;                 { "http://schemas.datacontract.org/2004/07/Services.Models.Object"[GblCplx] }
  FacturaGeneral       = class;                 { "http://schemas.datacontract.org/2004/07/Services.Models.Object"[GblElm] }
  DocumentResponse2    = class;                 { "http://schemas.datacontract.org/2004/07/Services.Response"[GblCplx] }
  DocumentResponse     = class;                 { "http://schemas.datacontract.org/2004/07/Services.Response"[GblElm] }
  SendEmailResponse2   = class;                 { "http://schemas.datacontract.org/2004/07/Services.Response"[GblCplx] }
  SendEmailResponse    = class;                 { "http://schemas.datacontract.org/2004/07/Services.Response"[GblElm] }
  DocumentStatusResponse2 = class;              { "http://schemas.datacontract.org/2004/07/Services.Response"[GblCplx] }
  DocumentStatusResponse = class;               { "http://schemas.datacontract.org/2004/07/Services.Response"[GblElm] }
  ValidateXML2         = class;                 { "http://schemas.datacontract.org/2004/07/Services"[GblCplx] }
  ValidateXML          = class;                 { "http://schemas.datacontract.org/2004/07/Services"[GblElm] }
  FoliosRemainingResponse2 = class;             { "http://schemas.datacontract.org/2004/07/Services.Response"[GblCplx] }
  FoliosRemainingResponse = class;              { "http://schemas.datacontract.org/2004/07/Services.Response"[GblElm] }
  LoadCertificateResponse2 = class;             { "http://schemas.datacontract.org/2004/07/Services.Response"[GblCplx] }
  LoadCertificateResponse = class;              { "http://schemas.datacontract.org/2004/07/Services.Response"[GblElm] }
  DownloadPDFResponse2 = class;                 { "http://schemas.datacontract.org/2004/07/Services.Response"[GblCplx] }
  DownloadPDFResponse  = class;                 { "http://schemas.datacontract.org/2004/07/Services.Response"[GblElm] }
  DownloadXMLResponse2 = class;                 { "http://schemas.datacontract.org/2004/07/Services.Response"[GblCplx] }
  DownloadXMLResponse  = class;                 { "http://schemas.datacontract.org/2004/07/Services.Response"[GblElm] }



  // ************************************************************************ //
  // XML       : Extras, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/Services.Models.Object
  // ************************************************************************ //
  Extras2 = class(TRemotable)
  private
    FcontrolInterno1: string;
    FcontrolInterno1_Specified: boolean;
    FcontrolInterno2: string;
    FcontrolInterno2_Specified: boolean;
    Fnombre: string;
    Fnombre_Specified: boolean;
    Fpdf: string;
    Fpdf_Specified: boolean;
    Fvalor: string;
    Fvalor_Specified: boolean;
    Fxml: string;
    Fxml_Specified: boolean;
    procedure SetcontrolInterno1(Index: Integer; const Astring: string);
    function  controlInterno1_Specified(Index: Integer): boolean;
    procedure SetcontrolInterno2(Index: Integer; const Astring: string);
    function  controlInterno2_Specified(Index: Integer): boolean;
    procedure Setnombre(Index: Integer; const Astring: string);
    function  nombre_Specified(Index: Integer): boolean;
    procedure Setpdf(Index: Integer; const Astring: string);
    function  pdf_Specified(Index: Integer): boolean;
    procedure Setvalor(Index: Integer; const Astring: string);
    function  valor_Specified(Index: Integer): boolean;
    procedure Setxml(Index: Integer; const Astring: string);
    function  xml_Specified(Index: Integer): boolean;
  published
    property controlInterno1: string  Index (IS_OPTN or IS_NLBL) read FcontrolInterno1 write SetcontrolInterno1 stored controlInterno1_Specified;
    property controlInterno2: string  Index (IS_OPTN or IS_NLBL) read FcontrolInterno2 write SetcontrolInterno2 stored controlInterno2_Specified;
    property nombre:          string  Index (IS_OPTN or IS_NLBL) read Fnombre write Setnombre stored nombre_Specified;
    property pdf:             string  Index (IS_OPTN or IS_NLBL) read Fpdf write Setpdf stored pdf_Specified;
    property valor:           string  Index (IS_OPTN or IS_NLBL) read Fvalor write Setvalor stored valor_Specified;
    property xml:             string  Index (IS_OPTN or IS_NLBL) read Fxml write Setxml stored xml_Specified;
  end;



  // ************************************************************************ //
  // XML       : Extras, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/Services.Models.Object
  // ************************************************************************ //
  Extras = class(Extras2)
  private
  published
  end;

  ArrayOfFacturaDetalle = array of FacturaDetalle2;   { "http://schemas.datacontract.org/2004/07/Services.Models.Object"[GblCplx] }


  // ************************************************************************ //
  // XML       : Cliente, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/Services.Models.Object
  // ************************************************************************ //
  Cliente2 = class(TRemotable)
  private
    Fapellido: string;
    Fapellido_Specified: boolean;
    Fciudad: string;
    Fciudad_Specified: boolean;
    Fdepartamento: string;
    Fdepartamento_Specified: boolean;
    Fdireccion: string;
    Fdireccion_Specified: boolean;
    Femail: string;
    Femail_Specified: boolean;
    FnombreRazonSocial: string;
    FnombreRazonSocial_Specified: boolean;
    Fnotificar: string;
    Fnotificar_Specified: boolean;
    FnumeroDocumento: string;
    FnumeroDocumento_Specified: boolean;
    Fpais: string;
    Fpais_Specified: boolean;
    Freferencia2: string;
    Freferencia2_Specified: boolean;
    Fregimen: string;
    Fregimen_Specified: boolean;
    FsegundoNombre: string;
    FsegundoNombre_Specified: boolean;
    FsubDivision: string;
    FsubDivision_Specified: boolean;
    Ftelefono: string;
    Ftelefono_Specified: boolean;
    FtipoIdentificacion: string;
    FtipoIdentificacion_Specified: boolean;
    FtipoPersona: string;
    FtipoPersona_Specified: boolean;
    Fnit: string;
    Fnit_Specified: Boolean;
    procedure Setapellido(Index: Integer; const Astring: string);
    function  apellido_Specified(Index: Integer): boolean;
    procedure Setciudad(Index: Integer; const Astring: string);
    function  ciudad_Specified(Index: Integer): boolean;
    procedure Setdepartamento(Index: Integer; const Astring: string);
    function  departamento_Specified(Index: Integer): boolean;
    procedure Setdireccion(Index: Integer; const Astring: string);
    function  direccion_Specified(Index: Integer): boolean;
    procedure Setemail(Index: Integer; const Astring: string);
    function  email_Specified(Index: Integer): boolean;
    procedure SetnombreRazonSocial(Index: Integer; const Astring: string);
    function  nombreRazonSocial_Specified(Index: Integer): boolean;
    procedure Setnotificar(Index: Integer; const Astring: string);
    function  notificar_Specified(Index: Integer): boolean;
    procedure SetnumeroDocumento(Index: Integer; const Astring: string);
    function  numeroDocumento_Specified(Index: Integer): boolean;
    procedure Setpais(Index: Integer; const Astring: string);
    function  pais_Specified(Index: Integer): boolean;
    procedure Setreferencia2(Index: Integer; const Astring: string);
    function  referencia2_Specified(Index: Integer): boolean;
    procedure Setregimen(Index: Integer; const Astring: string);
    function  regimen_Specified(Index: Integer): boolean;
    procedure SetsegundoNombre(Index: Integer; const Astring: string);
    function  segundoNombre_Specified(Index: Integer): boolean;
    procedure SetsubDivision(Index: Integer; const Astring: string);
    function  subDivision_Specified(Index: Integer): boolean;
    procedure Settelefono(Index: Integer; const Astring: string);
    function  telefono_Specified(Index: Integer): boolean;
    procedure SettipoIdentificacion(Index: Integer; const Astring: string);
    function  tipoIdentificacion_Specified(Index: Integer): boolean;
    procedure SettipoPersona(Index: Integer; const Astring: string);
    function  tipoPersona_Specified(Index: Integer): boolean;
    function  nit_Specified(Index: Integer): boolean;
    procedure Setnit(Index: Integer; const Astring: string);
  published
    property apellido:           string  Index (IS_OPTN or IS_NLBL) read Fapellido write Setapellido stored apellido_Specified;
    property ciudad:             string  Index (IS_OPTN or IS_NLBL) read Fciudad write Setciudad stored ciudad_Specified;
    property departamento:       string  Index (IS_OPTN or IS_NLBL) read Fdepartamento write Setdepartamento stored departamento_Specified;
    property direccion:          string  Index (IS_OPTN or IS_NLBL) read Fdireccion write Setdireccion stored direccion_Specified;
    property email:              string  Index (IS_OPTN or IS_NLBL) read Femail write Setemail stored email_Specified;
    property nombreRazonSocial:  string  Index (IS_OPTN or IS_NLBL) read FnombreRazonSocial write SetnombreRazonSocial stored nombreRazonSocial_Specified;
    property notificar:          string  Index (IS_OPTN or IS_NLBL) read Fnotificar write Setnotificar stored notificar_Specified;
    property numeroDocumento:    string  Index (IS_OPTN or IS_NLBL) read FnumeroDocumento write SetnumeroDocumento stored numeroDocumento_Specified;
    property pais:               string  Index (IS_OPTN or IS_NLBL) read Fpais write Setpais stored pais_Specified;
    property referencia2:        string  Index (IS_OPTN or IS_NLBL) read Freferencia2 write Setreferencia2 stored referencia2_Specified;
    property regimen:            string  Index (IS_OPTN or IS_NLBL) read Fregimen write Setregimen stored regimen_Specified;
    property segundoNombre:      string  Index (IS_OPTN or IS_NLBL) read FsegundoNombre write SetsegundoNombre stored segundoNombre_Specified;
    property subDivision:        string  Index (IS_OPTN or IS_NLBL) read FsubDivision write SetsubDivision stored subDivision_Specified;
    property telefono:           string  Index (IS_OPTN or IS_NLBL) read Ftelefono write Settelefono stored telefono_Specified;
    property tipoIdentificacion: string  Index (IS_OPTN or IS_NLBL) read FtipoIdentificacion write SettipoIdentificacion stored tipoIdentificacion_Specified;
    property tipoPersona:        string  Index (IS_OPTN or IS_NLBL) read FtipoPersona write SettipoPersona stored tipoPersona_Specified;
    property nit:        string  Index (IS_OPTN or IS_NLBL) read Fnit write Setnit stored nit_Specified;
  end;



  // ************************************************************************ //
  // XML       : Cliente, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/Services.Models.Object
  // ************************************************************************ //
  Cliente = class(Cliente2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : FacturaImpuestos, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/Services.Models.Object
  // ************************************************************************ //
  FacturaImpuestos2 = class(TRemotable)
  private
    FbaseImponibleTOTALImp: string;
    FbaseImponibleTOTALImp_Specified: boolean;
    FcodigoTOTALImp: string;
    FcodigoTOTALImp_Specified: boolean;
    FcontrolInterno: string;
    FcontrolInterno_Specified: boolean;
    FporcentajeTOTALImp: string;
    FporcentajeTOTALImp_Specified: boolean;
    FvalorTOTALImp: string;
    FvalorTOTALImp_Specified: boolean;
    procedure SetbaseImponibleTOTALImp(Index: Integer; const Astring: string);
    function  baseImponibleTOTALImp_Specified(Index: Integer): boolean;
    procedure SetcodigoTOTALImp(Index: Integer; const Astring: string);
    function  codigoTOTALImp_Specified(Index: Integer): boolean;
    procedure SetcontrolInterno(Index: Integer; const Astring: string);
    function  controlInterno_Specified(Index: Integer): boolean;
    procedure SetporcentajeTOTALImp(Index: Integer; const Astring: string);
    function  porcentajeTOTALImp_Specified(Index: Integer): boolean;
    procedure SetvalorTOTALImp(Index: Integer; const Astring: string);
    function  valorTOTALImp_Specified(Index: Integer): boolean;
  published
    property baseImponibleTOTALImp: string  Index (IS_OPTN or IS_NLBL) read FbaseImponibleTOTALImp write SetbaseImponibleTOTALImp stored baseImponibleTOTALImp_Specified;
    property codigoTOTALImp:        string  Index (IS_OPTN or IS_NLBL) read FcodigoTOTALImp write SetcodigoTOTALImp stored codigoTOTALImp_Specified;
    property controlInterno:        string  Index (IS_OPTN or IS_NLBL) read FcontrolInterno write SetcontrolInterno stored controlInterno_Specified;
    property porcentajeTOTALImp:    string  Index (IS_OPTN or IS_NLBL) read FporcentajeTOTALImp write SetporcentajeTOTALImp stored porcentajeTOTALImp_Specified;
    property valorTOTALImp:         string  Index (IS_OPTN or IS_NLBL) read FvalorTOTALImp write SetvalorTOTALImp stored valorTOTALImp_Specified;
  end;



  // ************************************************************************ //
  // XML       : FacturaImpuestos, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/Services.Models.Object
  // ************************************************************************ //
  FacturaImpuestos = class(FacturaImpuestos2)
  private
  published
  end;

  ArrayOfExtras = array of Extras2;             { "http://schemas.datacontract.org/2004/07/Services.Models.Object"[GblCplx] }
  ArrayOfFacturaImpuestos = array of FacturaImpuestos2;   { "http://schemas.datacontract.org/2004/07/Services.Models.Object"[GblCplx] }


  // ************************************************************************ //
  // XML       : FacturaDetalle, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/Services.Models.Object
  // ************************************************************************ //
  FacturaDetalle2 = class(TRemotable)
  private
    FcantidadUnidades: string;
    FcantidadUnidades_Specified: boolean;
    FcodigoProducto: string;
    FcodigoProducto_Specified: boolean;
    Fdescripcion: string;
    Fdescripcion_Specified: boolean;
    Fdescuento: string;
    Fdescuento_Specified: boolean;
    FdetalleAdicionalNombre: string;
    FdetalleAdicionalNombre_Specified: boolean;
    FdetalleAdicionalValor: string;
    FdetalleAdicionalValor_Specified: boolean;
    FimpuestosDetalles: ArrayOfFacturaImpuestos;
    FimpuestosDetalles_Specified: boolean;
    FprecioTotal: string;
    FprecioTotal_Specified: boolean;
    FprecioTotalSinImpuestos: string;
    FprecioTotalSinImpuestos_Specified: boolean;
    FprecioVentaUnitario: string;
    FprecioVentaUnitario_Specified: boolean;
    Fseriales: string;
    Fseriales_Specified: boolean;
    FunidadMedida: string;
    FunidadMedida_Specified: boolean;
    procedure SetcantidadUnidades(Index: Integer; const Astring: string);
    function  cantidadUnidades_Specified(Index: Integer): boolean;
    procedure SetcodigoProducto(Index: Integer; const Astring: string);
    function  codigoProducto_Specified(Index: Integer): boolean;
    procedure Setdescripcion(Index: Integer; const Astring: string);
    function  descripcion_Specified(Index: Integer): boolean;
    procedure Setdescuento(Index: Integer; const Astring: string);
    function  descuento_Specified(Index: Integer): boolean;
    procedure SetdetalleAdicionalNombre(Index: Integer; const Astring: string);
    function  detalleAdicionalNombre_Specified(Index: Integer): boolean;
    procedure SetdetalleAdicionalValor(Index: Integer; const Astring: string);
    function  detalleAdicionalValor_Specified(Index: Integer): boolean;
    procedure SetimpuestosDetalles(Index: Integer; const AArrayOfFacturaImpuestos: ArrayOfFacturaImpuestos);
    function  impuestosDetalles_Specified(Index: Integer): boolean;
    procedure SetprecioTotal(Index: Integer; const Astring: string);
    function  precioTotal_Specified(Index: Integer): boolean;
    procedure SetprecioTotalSinImpuestos(Index: Integer; const Astring: string);
    function  precioTotalSinImpuestos_Specified(Index: Integer): boolean;
    procedure SetprecioVentaUnitario(Index: Integer; const Astring: string);
    function  precioVentaUnitario_Specified(Index: Integer): boolean;
    procedure Setseriales(Index: Integer; const Astring: string);
    function  seriales_Specified(Index: Integer): boolean;
    procedure SetunidadMedida(Index: Integer; const Astring: string);
    function  unidadMedida_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property cantidadUnidades:        string                   Index (IS_OPTN or IS_NLBL) read FcantidadUnidades write SetcantidadUnidades stored cantidadUnidades_Specified;
    property codigoProducto:          string                   Index (IS_OPTN or IS_NLBL) read FcodigoProducto write SetcodigoProducto stored codigoProducto_Specified;
    property descripcion:             string                   Index (IS_OPTN or IS_NLBL) read Fdescripcion write Setdescripcion stored descripcion_Specified;
    property descuento:               string                   Index (IS_OPTN or IS_NLBL) read Fdescuento write Setdescuento stored descuento_Specified;
    property detalleAdicionalNombre:  string                   Index (IS_OPTN or IS_NLBL) read FdetalleAdicionalNombre write SetdetalleAdicionalNombre stored detalleAdicionalNombre_Specified;
    property detalleAdicionalValor:   string                   Index (IS_OPTN or IS_NLBL) read FdetalleAdicionalValor write SetdetalleAdicionalValor stored detalleAdicionalValor_Specified;
    property impuestosDetalles:       ArrayOfFacturaImpuestos  Index (IS_OPTN or IS_NLBL) read FimpuestosDetalles write SetimpuestosDetalles stored impuestosDetalles_Specified;
    property precioTotal:             string                   Index (IS_OPTN or IS_NLBL) read FprecioTotal write SetprecioTotal stored precioTotal_Specified;
    property precioTotalSinImpuestos: string                   Index (IS_OPTN or IS_NLBL) read FprecioTotalSinImpuestos write SetprecioTotalSinImpuestos stored precioTotalSinImpuestos_Specified;
    property precioVentaUnitario:     string                   Index (IS_OPTN or IS_NLBL) read FprecioVentaUnitario write SetprecioVentaUnitario stored precioVentaUnitario_Specified;
    property seriales:                string                   Index (IS_OPTN or IS_NLBL) read Fseriales write Setseriales stored seriales_Specified;
    property unidadMedida:            string                   Index (IS_OPTN or IS_NLBL) read FunidadMedida write SetunidadMedida stored unidadMedida_Specified;
  end;



  // ************************************************************************ //
  // XML       : FacturaDetalle, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/Services.Models.Object
  // ************************************************************************ //
  FacturaDetalle = class(FacturaDetalle2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : FacturaGeneral, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/Services.Models.Object
  // ************************************************************************ //
  FacturaGeneral2 = class(TRemotable)
  private
    Fcliente: Cliente2;
    Fcliente_Specified: boolean;
    FconsecutivoDocumento: string;
    FconsecutivoDocumento_Specified: boolean;
    FconsecutivoDocumentoModificado: string;
    FconsecutivoDocumentoModificado_Specified: boolean;
    FdetalleDeFactura: ArrayOfFacturaDetalle;
    FdetalleDeFactura_Specified: boolean;
    FestadoPago: string;
    FestadoPago_Specified: boolean;
    Fextras: ArrayOfExtras;
    Fextras_Specified: boolean;
    FfechaEmision: string;
    FfechaEmision_Specified: boolean;
    FfechaEmisionDocumentoModificado: string;
    FfechaEmisionDocumentoModificado_Specified: boolean;
    FfechaVencimiento: string;
    FfechaVencimiento_Specified: boolean;
    Ficoterms: string;
    Ficoterms_Specified: boolean;
    FimporteTotal: string;
    FimporteTotal_Specified: boolean;
    FimpuestosGenerales: ArrayOfFacturaImpuestos;
    FimpuestosGenerales_Specified: boolean;
    FinformacionAdicional: string;
    FinformacionAdicional_Specified: boolean;
    FmedioPago: string;
    FmedioPago_Specified: boolean;
    Fmoneda: string;
    Fmoneda_Specified: boolean;
    FmotivoNota: string;
    FmotivoNota_Specified: boolean;
    Fpropina: string;
    Fpropina_Specified: boolean;
    FrangoNumeracion: string;
    FrangoNumeracion_Specified: boolean;
    FtipoDocumento: string;
    FtipoDocumento_Specified: boolean;
    FtotalDescuentos: string;
    FtotalDescuentos_Specified: boolean;
    FtotalSinImpuestos: string;
    FtotalSinImpuestos_Specified: boolean;
    FuuidDocumentoModificado: string;
    FuuidDocumentoModificado_Specified: boolean;
    procedure Setcliente(Index: Integer; const ACliente2: Cliente2);
    function  cliente_Specified(Index: Integer): boolean;
    procedure SetconsecutivoDocumento(Index: Integer; const Astring: string);
    function  consecutivoDocumento_Specified(Index: Integer): boolean;
    procedure SetconsecutivoDocumentoModificado(Index: Integer; const Astring: string);
    function  consecutivoDocumentoModificado_Specified(Index: Integer): boolean;
    procedure SetdetalleDeFactura(Index: Integer; const AArrayOfFacturaDetalle: ArrayOfFacturaDetalle);
    function  detalleDeFactura_Specified(Index: Integer): boolean;
    procedure SetestadoPago(Index: Integer; const Astring: string);
    function  estadoPago_Specified(Index: Integer): boolean;
    procedure Setextras(Index: Integer; const AArrayOfExtras: ArrayOfExtras);
    function  extras_Specified(Index: Integer): boolean;
    procedure SetfechaEmision(Index: Integer; const Astring: string);
    function  fechaEmision_Specified(Index: Integer): boolean;
    procedure SetfechaEmisionDocumentoModificado(Index: Integer; const Astring: string);
    function  fechaEmisionDocumentoModificado_Specified(Index: Integer): boolean;
    procedure SetfechaVencimiento(Index: Integer; const Astring: string);
    function  fechaVencimiento_Specified(Index: Integer): boolean;
    procedure Seticoterms(Index: Integer; const Astring: string);
    function  icoterms_Specified(Index: Integer): boolean;
    procedure SetimporteTotal(Index: Integer; const Astring: string);
    function  importeTotal_Specified(Index: Integer): boolean;
    procedure SetimpuestosGenerales(Index: Integer; const AArrayOfFacturaImpuestos: ArrayOfFacturaImpuestos);
    function  impuestosGenerales_Specified(Index: Integer): boolean;
    procedure SetinformacionAdicional(Index: Integer; const Astring: string);
    function  informacionAdicional_Specified(Index: Integer): boolean;
    procedure SetmedioPago(Index: Integer; const Astring: string);
    function  medioPago_Specified(Index: Integer): boolean;
    procedure Setmoneda(Index: Integer; const Astring: string);
    function  moneda_Specified(Index: Integer): boolean;
    procedure SetmotivoNota(Index: Integer; const Astring: string);
    function  motivoNota_Specified(Index: Integer): boolean;
    procedure Setpropina(Index: Integer; const Astring: string);
    function  propina_Specified(Index: Integer): boolean;
    procedure SetrangoNumeracion(Index: Integer; const Astring: string);
    function  rangoNumeracion_Specified(Index: Integer): boolean;
    procedure SettipoDocumento(Index: Integer; const Astring: string);
    function  tipoDocumento_Specified(Index: Integer): boolean;
    procedure SettotalDescuentos(Index: Integer; const Astring: string);
    function  totalDescuentos_Specified(Index: Integer): boolean;
    procedure SettotalSinImpuestos(Index: Integer; const Astring: string);
    function  totalSinImpuestos_Specified(Index: Integer): boolean;
    procedure SetuuidDocumentoModificado(Index: Integer; const Astring: string);
    function  uuidDocumentoModificado_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property cliente:                         Cliente2                 Index (IS_OPTN or IS_NLBL) read Fcliente write Setcliente stored cliente_Specified;
    property consecutivoDocumento:            string                   Index (IS_OPTN or IS_NLBL) read FconsecutivoDocumento write SetconsecutivoDocumento stored consecutivoDocumento_Specified;
    property consecutivoDocumentoModificado:  string                   Index (IS_OPTN or IS_NLBL) read FconsecutivoDocumentoModificado write SetconsecutivoDocumentoModificado stored consecutivoDocumentoModificado_Specified;
    property detalleDeFactura:                ArrayOfFacturaDetalle    Index (IS_OPTN or IS_NLBL) read FdetalleDeFactura write SetdetalleDeFactura stored detalleDeFactura_Specified;
    property estadoPago:                      string                   Index (IS_OPTN or IS_NLBL) read FestadoPago write SetestadoPago stored estadoPago_Specified;
    property extras:                          ArrayOfExtras            Index (IS_OPTN or IS_NLBL) read Fextras write Setextras stored extras_Specified;
    property fechaEmision:                    string                   Index (IS_OPTN or IS_NLBL) read FfechaEmision write SetfechaEmision stored fechaEmision_Specified;
    property fechaEmisionDocumentoModificado: string                   Index (IS_OPTN or IS_NLBL) read FfechaEmisionDocumentoModificado write SetfechaEmisionDocumentoModificado stored fechaEmisionDocumentoModificado_Specified;
    property fechaVencimiento:                string                   Index (IS_OPTN or IS_NLBL) read FfechaVencimiento write SetfechaVencimiento stored fechaVencimiento_Specified;
    property icoterms:                        string                   Index (IS_OPTN or IS_NLBL) read Ficoterms write Seticoterms stored icoterms_Specified;
    property importeTotal:                    string                   Index (IS_OPTN or IS_NLBL) read FimporteTotal write SetimporteTotal stored importeTotal_Specified;
    property impuestosGenerales:              ArrayOfFacturaImpuestos  Index (IS_OPTN or IS_NLBL) read FimpuestosGenerales write SetimpuestosGenerales stored impuestosGenerales_Specified;
    property informacionAdicional:            string                   Index (IS_OPTN or IS_NLBL) read FinformacionAdicional write SetinformacionAdicional stored informacionAdicional_Specified;
    property medioPago:                       string                   Index (IS_OPTN or IS_NLBL) read FmedioPago write SetmedioPago stored medioPago_Specified;
    property moneda:                          string                   Index (IS_OPTN or IS_NLBL) read Fmoneda write Setmoneda stored moneda_Specified;
    property motivoNota:                      string                   Index (IS_OPTN or IS_NLBL) read FmotivoNota write SetmotivoNota stored motivoNota_Specified;
    property propina:                         string                   Index (IS_OPTN or IS_NLBL) read Fpropina write Setpropina stored propina_Specified;
    property rangoNumeracion:                 string                   Index (IS_OPTN or IS_NLBL) read FrangoNumeracion write SetrangoNumeracion stored rangoNumeracion_Specified;
    property tipoDocumento:                   string                   Index (IS_OPTN or IS_NLBL) read FtipoDocumento write SettipoDocumento stored tipoDocumento_Specified;
    property totalDescuentos:                 string                   Index (IS_OPTN or IS_NLBL) read FtotalDescuentos write SettotalDescuentos stored totalDescuentos_Specified;
    property totalSinImpuestos:               string                   Index (IS_OPTN or IS_NLBL) read FtotalSinImpuestos write SettotalSinImpuestos stored totalSinImpuestos_Specified;
    property uuidDocumentoModificado:         string                   Index (IS_OPTN or IS_NLBL) read FuuidDocumentoModificado write SetuuidDocumentoModificado stored uuidDocumentoModificado_Specified;
  end;



  // ************************************************************************ //
  // XML       : FacturaGeneral, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/Services.Models.Object
  // ************************************************************************ //
  FacturaGeneral = class(FacturaGeneral2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : DocumentResponse, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/Services.Response
  // ************************************************************************ //
  DocumentResponse2 = class(TRemotable)
  private
    Fcodigo: Integer;
    Fcodigo_Specified: boolean;
    FconsecutivoDocumento: string;
    FconsecutivoDocumento_Specified: boolean;
    Fcufe: string;
    Fcufe_Specified: boolean;
    FfechaRespuesta: string;
    FfechaRespuesta_Specified: boolean;
    Fmensaje: string;
    Fmensaje_Specified: boolean;
    Fresultado: string;
    Fresultado_Specified: boolean;
    Fxml: string;
    Fxml_Specified: boolean;
    procedure Setcodigo(Index: Integer; const AInteger: Integer);
    function  codigo_Specified(Index: Integer): boolean;
    procedure SetconsecutivoDocumento(Index: Integer; const Astring: string);
    function  consecutivoDocumento_Specified(Index: Integer): boolean;
    procedure Setcufe(Index: Integer; const Astring: string);
    function  cufe_Specified(Index: Integer): boolean;
    procedure SetfechaRespuesta(Index: Integer; const Astring: string);
    function  fechaRespuesta_Specified(Index: Integer): boolean;
    procedure Setmensaje(Index: Integer; const Astring: string);
    function  mensaje_Specified(Index: Integer): boolean;
    procedure Setresultado(Index: Integer; const Astring: string);
    function  resultado_Specified(Index: Integer): boolean;
    procedure Setxml(Index: Integer; const Astring: string);
    function  xml_Specified(Index: Integer): boolean;
  published
    property codigo:               Integer  Index (IS_OPTN) read Fcodigo write Setcodigo stored codigo_Specified;
    property consecutivoDocumento: string   Index (IS_OPTN or IS_NLBL) read FconsecutivoDocumento write SetconsecutivoDocumento stored consecutivoDocumento_Specified;
    property cufe:                 string   Index (IS_OPTN or IS_NLBL) read Fcufe write Setcufe stored cufe_Specified;
    property fechaRespuesta:       string   Index (IS_OPTN or IS_NLBL) read FfechaRespuesta write SetfechaRespuesta stored fechaRespuesta_Specified;
    property mensaje:              string   Index (IS_OPTN or IS_NLBL) read Fmensaje write Setmensaje stored mensaje_Specified;
    property resultado:            string   Index (IS_OPTN or IS_NLBL) read Fresultado write Setresultado stored resultado_Specified;
    property xml:                  string   Index (IS_OPTN or IS_NLBL) read Fxml write Setxml stored xml_Specified;
  end;



  // ************************************************************************ //
  // XML       : DocumentResponse, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/Services.Response
  // ************************************************************************ //
  DocumentResponse = class(DocumentResponse2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : SendEmailResponse, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/Services.Response
  // ************************************************************************ //
  SendEmailResponse2 = class(TRemotable)
  private
    Fcodigo: Integer;
    Fcodigo_Specified: boolean;
    Fmensaje: string;
    Fmensaje_Specified: boolean;
    Fresultado: string;
    Fresultado_Specified: boolean;
    procedure Setcodigo(Index: Integer; const AInteger: Integer);
    function  codigo_Specified(Index: Integer): boolean;
    procedure Setmensaje(Index: Integer; const Astring: string);
    function  mensaje_Specified(Index: Integer): boolean;
    procedure Setresultado(Index: Integer; const Astring: string);
    function  resultado_Specified(Index: Integer): boolean;
  published
    property codigo:    Integer  Index (IS_OPTN) read Fcodigo write Setcodigo stored codigo_Specified;
    property mensaje:   string   Index (IS_OPTN or IS_NLBL) read Fmensaje write Setmensaje stored mensaje_Specified;
    property resultado: string   Index (IS_OPTN or IS_NLBL) read Fresultado write Setresultado stored resultado_Specified;
  end;



  // ************************************************************************ //
  // XML       : SendEmailResponse, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/Services.Response
  // ************************************************************************ //
  SendEmailResponse = class(SendEmailResponse2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : DocumentStatusResponse, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/Services.Response
  // ************************************************************************ //
  DocumentStatusResponse2 = class(TRemotable)
  private
    FacuseComentario: string;
    FacuseComentario_Specified: boolean;
    FacuseEstatus: string;
    FacuseEstatus_Specified: boolean;
    FacuseResponsable: string;
    FacuseResponsable_Specified: boolean;
    FacuseRespuesta: string;
    FacuseRespuesta_Specified: boolean;
    Fcodigo: Integer;
    Fcodigo_Specified: boolean;
    Fcufe: string;
    Fcufe_Specified: boolean;
    FestatusDocumento: Integer;
    FestatusDocumento_Specified: boolean;
    FfechaDocumento: string;
    FfechaDocumento_Specified: boolean;
    Fmensaje: string;
    Fmensaje_Specified: boolean;
    FmensajeDocumento: string;
    FmensajeDocumento_Specified: boolean;
    Fresultado: string;
    Fresultado_Specified: boolean;
    procedure SetacuseComentario(Index: Integer; const Astring: string);
    function  acuseComentario_Specified(Index: Integer): boolean;
    procedure SetacuseEstatus(Index: Integer; const Astring: string);
    function  acuseEstatus_Specified(Index: Integer): boolean;
    procedure SetacuseResponsable(Index: Integer; const Astring: string);
    function  acuseResponsable_Specified(Index: Integer): boolean;
    procedure SetacuseRespuesta(Index: Integer; const Astring: string);
    function  acuseRespuesta_Specified(Index: Integer): boolean;
    procedure Setcodigo(Index: Integer; const AInteger: Integer);
    function  codigo_Specified(Index: Integer): boolean;
    procedure Setcufe(Index: Integer; const Astring: string);
    function  cufe_Specified(Index: Integer): boolean;
    procedure SetestatusDocumento(Index: Integer; const AInteger: Integer);
    function  estatusDocumento_Specified(Index: Integer): boolean;
    procedure SetfechaDocumento(Index: Integer; const Astring: string);
    function  fechaDocumento_Specified(Index: Integer): boolean;
    procedure Setmensaje(Index: Integer; const Astring: string);
    function  mensaje_Specified(Index: Integer): boolean;
    procedure SetmensajeDocumento(Index: Integer; const Astring: string);
    function  mensajeDocumento_Specified(Index: Integer): boolean;
    procedure Setresultado(Index: Integer; const Astring: string);
    function  resultado_Specified(Index: Integer): boolean;
  published
    property acuseComentario:  string   Index (IS_OPTN or IS_NLBL) read FacuseComentario write SetacuseComentario stored acuseComentario_Specified;
    property acuseEstatus:     string   Index (IS_OPTN or IS_NLBL) read FacuseEstatus write SetacuseEstatus stored acuseEstatus_Specified;
    property acuseResponsable: string   Index (IS_OPTN or IS_NLBL) read FacuseResponsable write SetacuseResponsable stored acuseResponsable_Specified;
    property acuseRespuesta:   string   Index (IS_OPTN or IS_NLBL) read FacuseRespuesta write SetacuseRespuesta stored acuseRespuesta_Specified;
    property codigo:           Integer  Index (IS_OPTN) read Fcodigo write Setcodigo stored codigo_Specified;
    property cufe:             string   Index (IS_OPTN or IS_NLBL) read Fcufe write Setcufe stored cufe_Specified;
    property estatusDocumento: Integer  Index (IS_OPTN) read FestatusDocumento write SetestatusDocumento stored estatusDocumento_Specified;
    property fechaDocumento:   string   Index (IS_OPTN or IS_NLBL) read FfechaDocumento write SetfechaDocumento stored fechaDocumento_Specified;
    property mensaje:          string   Index (IS_OPTN or IS_NLBL) read Fmensaje write Setmensaje stored mensaje_Specified;
    property mensajeDocumento: string   Index (IS_OPTN or IS_NLBL) read FmensajeDocumento write SetmensajeDocumento stored mensajeDocumento_Specified;
    property resultado:        string   Index (IS_OPTN or IS_NLBL) read Fresultado write Setresultado stored resultado_Specified;
  end;



  // ************************************************************************ //
  // XML       : DocumentStatusResponse, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/Services.Response
  // ************************************************************************ //
  DocumentStatusResponse = class(DocumentStatusResponse2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : ValidateXML, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/Services
  // ************************************************************************ //
  ValidateXML2 = class(TRemotable)
  private
    Fcodigo: Integer;
    Fcodigo_Specified: boolean;
    Fmensaje: string;
    Fmensaje_Specified: boolean;
    Fresultado: string;
    Fresultado_Specified: boolean;
    procedure Setcodigo(Index: Integer; const AInteger: Integer);
    function  codigo_Specified(Index: Integer): boolean;
    procedure Setmensaje(Index: Integer; const Astring: string);
    function  mensaje_Specified(Index: Integer): boolean;
    procedure Setresultado(Index: Integer; const Astring: string);
    function  resultado_Specified(Index: Integer): boolean;
  published
    property codigo:    Integer  Index (IS_OPTN) read Fcodigo write Setcodigo stored codigo_Specified;
    property mensaje:   string   Index (IS_OPTN or IS_NLBL) read Fmensaje write Setmensaje stored mensaje_Specified;
    property resultado: string   Index (IS_OPTN or IS_NLBL) read Fresultado write Setresultado stored resultado_Specified;
  end;



  // ************************************************************************ //
  // XML       : ValidateXML, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/Services
  // ************************************************************************ //
  ValidateXML = class(ValidateXML2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : FoliosRemainingResponse, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/Services.Response
  // ************************************************************************ //
  FoliosRemainingResponse2 = class(TRemotable)
  private
    Fcodigo: Integer;
    Fcodigo_Specified: boolean;
    FfoliosRestantes: Integer;
    FfoliosRestantes_Specified: boolean;
    Fmensaje: string;
    Fmensaje_Specified: boolean;
    Fresultado: string;
    Fresultado_Specified: boolean;
    procedure Setcodigo(Index: Integer; const AInteger: Integer);
    function  codigo_Specified(Index: Integer): boolean;
    procedure SetfoliosRestantes(Index: Integer; const AInteger: Integer);
    function  foliosRestantes_Specified(Index: Integer): boolean;
    procedure Setmensaje(Index: Integer; const Astring: string);
    function  mensaje_Specified(Index: Integer): boolean;
    procedure Setresultado(Index: Integer; const Astring: string);
    function  resultado_Specified(Index: Integer): boolean;
  published
    property codigo:          Integer  Index (IS_OPTN) read Fcodigo write Setcodigo stored codigo_Specified;
    property foliosRestantes: Integer  Index (IS_OPTN) read FfoliosRestantes write SetfoliosRestantes stored foliosRestantes_Specified;
    property mensaje:         string   Index (IS_OPTN or IS_NLBL) read Fmensaje write Setmensaje stored mensaje_Specified;
    property resultado:       string   Index (IS_OPTN or IS_NLBL) read Fresultado write Setresultado stored resultado_Specified;
  end;



  // ************************************************************************ //
  // XML       : FoliosRemainingResponse, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/Services.Response
  // ************************************************************************ //
  FoliosRemainingResponse = class(FoliosRemainingResponse2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : LoadCertificateResponse, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/Services.Response
  // ************************************************************************ //
  LoadCertificateResponse2 = class(TRemotable)
  private
    Fcodigo: Integer;
    Fcodigo_Specified: boolean;
    Fmensaje: string;
    Fmensaje_Specified: boolean;
    Fresultado: string;
    Fresultado_Specified: boolean;
    procedure Setcodigo(Index: Integer; const AInteger: Integer);
    function  codigo_Specified(Index: Integer): boolean;
    procedure Setmensaje(Index: Integer; const Astring: string);
    function  mensaje_Specified(Index: Integer): boolean;
    procedure Setresultado(Index: Integer; const Astring: string);
    function  resultado_Specified(Index: Integer): boolean;
  published
    property codigo:    Integer  Index (IS_OPTN) read Fcodigo write Setcodigo stored codigo_Specified;
    property mensaje:   string   Index (IS_OPTN or IS_NLBL) read Fmensaje write Setmensaje stored mensaje_Specified;
    property resultado: string   Index (IS_OPTN or IS_NLBL) read Fresultado write Setresultado stored resultado_Specified;
  end;



  // ************************************************************************ //
  // XML       : LoadCertificateResponse, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/Services.Response
  // ************************************************************************ //
  LoadCertificateResponse = class(LoadCertificateResponse2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : DownloadPDFResponse, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/Services.Response
  // ************************************************************************ //
  DownloadPDFResponse2 = class(TRemotable)
  private
    Fcodigo: Integer;
    Fcodigo_Specified: boolean;
    Fcufe: string;
    Fcufe_Specified: boolean;
    Fdocumento: string;
    Fdocumento_Specified: boolean;
    Fmensaje: string;
    Fmensaje_Specified: boolean;
    Fresultado: string;
    Fresultado_Specified: boolean;
    procedure Setcodigo(Index: Integer; const AInteger: Integer);
    function  codigo_Specified(Index: Integer): boolean;
    procedure Setcufe(Index: Integer; const Astring: string);
    function  cufe_Specified(Index: Integer): boolean;
    procedure Setdocumento(Index: Integer; const Astring: string);
    function  documento_Specified(Index: Integer): boolean;
    procedure Setmensaje(Index: Integer; const Astring: string);
    function  mensaje_Specified(Index: Integer): boolean;
    procedure Setresultado(Index: Integer; const Astring: string);
    function  resultado_Specified(Index: Integer): boolean;
  published
    property codigo:    Integer  Index (IS_OPTN) read Fcodigo write Setcodigo stored codigo_Specified;
    property cufe:      string   Index (IS_OPTN or IS_NLBL) read Fcufe write Setcufe stored cufe_Specified;
    property documento: string   Index (IS_OPTN or IS_NLBL) read Fdocumento write Setdocumento stored documento_Specified;
    property mensaje:   string   Index (IS_OPTN or IS_NLBL) read Fmensaje write Setmensaje stored mensaje_Specified;
    property resultado: string   Index (IS_OPTN or IS_NLBL) read Fresultado write Setresultado stored resultado_Specified;
  end;



  // ************************************************************************ //
  // XML       : DownloadPDFResponse, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/Services.Response
  // ************************************************************************ //
  DownloadPDFResponse = class(DownloadPDFResponse2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : DownloadXMLResponse, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/Services.Response
  // ************************************************************************ //
  DownloadXMLResponse2 = class(TRemotable)
  private
    Fcodigo: Integer;
    Fcodigo_Specified: boolean;
    Fcufe: string;
    Fcufe_Specified: boolean;
    Fdocumento: string;
    Fdocumento_Specified: boolean;
    Fmensaje: string;
    Fmensaje_Specified: boolean;
    Fresultado: string;
    Fresultado_Specified: boolean;
    procedure Setcodigo(Index: Integer; const AInteger: Integer);
    function  codigo_Specified(Index: Integer): boolean;
    procedure Setcufe(Index: Integer; const Astring: string);
    function  cufe_Specified(Index: Integer): boolean;
    procedure Setdocumento(Index: Integer; const Astring: string);
    function  documento_Specified(Index: Integer): boolean;
    procedure Setmensaje(Index: Integer; const Astring: string);
    function  mensaje_Specified(Index: Integer): boolean;
    procedure Setresultado(Index: Integer; const Astring: string);
    function  resultado_Specified(Index: Integer): boolean;
  published
    property codigo:    Integer  Index (IS_OPTN) read Fcodigo write Setcodigo stored codigo_Specified;
    property cufe:      string   Index (IS_OPTN or IS_NLBL) read Fcufe write Setcufe stored cufe_Specified;
    property documento: string   Index (IS_OPTN or IS_NLBL) read Fdocumento write Setdocumento stored documento_Specified;
    property mensaje:   string   Index (IS_OPTN or IS_NLBL) read Fmensaje write Setmensaje stored mensaje_Specified;
    property resultado: string   Index (IS_OPTN or IS_NLBL) read Fresultado write Setresultado stored resultado_Specified;
  end;



  // ************************************************************************ //
  // XML       : DownloadXMLResponse, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/Services.Response
  // ************************************************************************ //
  DownloadXMLResponse = class(DownloadXMLResponse2)
  private
  published
  end;


  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // soapAction: http://tempuri.org/IService/%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : BasicHttpBinding_IService
  // service   : Service
  // port      : BasicHttpBinding_IService
  // URL       : http://intdemo.dfacture.com.co/ws/obj/Service.svc
  // ************************************************************************ //
  IService = interface(IInvokable)
  ['{98ED6C0B-93D7-7F02-40EA-9A0E061E5A66}']
    function  Enviar(const tokenEmpresa: string; const tokenPassword: string; const factura: FacturaGeneral2): DocumentResponse2; stdcall;
    function  EstadoDocumento(const tokenEmpresa: string; const tokenPassword: string; const documento: string): DocumentStatusResponse2; stdcall;
    function  EnvioCorreo(const tokenEmpresa: string; const tokenPassword: string; const documento: string; const correo: string): SendEmailResponse2; stdcall;
    function  DescargaPDF(const tokenEmpresa: string; const tokenPassword: string; const documento: string): DownloadPDFResponse2; stdcall;
    function  DescargaXML(const tokenEmpresa: string; const tokenPassword: string; const documento: string): DownloadXMLResponse2; stdcall;
    function  FoliosRestantes(const tokenEmpresa: string; const tokenPassword: string): FoliosRemainingResponse2; stdcall;
    function  CargarCertificado(const tokenEmpresa: string; const tokenPassword: string; const certificado: string; const password: string): LoadCertificateResponse2; stdcall;
    function  ValidarXml(const tokenEmpresa: string; const tokenPassword: string; const documento: string): ValidateXML2; stdcall;
  end;

function GetIService(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): IService;


implementation
  uses System.SysUtils, Principal;

function GetIService(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): IService;
//const
//  defWSDL = 'http://intdemo.dfacture.com.co/ws/obj/Service.svc?WSDL';
//  defURL  = 'http://intdemo.dfacture.com.co/ws/obj/Service.svc';
//  defSvc  = 'Service';
//  defPrt  = 'BasicHttpBinding_IService';
var
  RIO: THTTPRIO;
  defWSDL :string;
  defURL  :string;
  defSvc  :string;
  defPrt :string;
begin
  defWSDL := Main.vUrl+'?wsdl';
  defURL  := Main.vUrl;
  defSvc  := 'Service';
  defPrt  := 'BasicHttpBinding_IService';
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as IService);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


procedure Extras2.SetcontrolInterno1(Index: Integer; const Astring: string);
begin
  FcontrolInterno1 := Astring;
  FcontrolInterno1_Specified := True;
end;

function Extras2.controlInterno1_Specified(Index: Integer): boolean;
begin
  Result := FcontrolInterno1_Specified;
end;

procedure Extras2.SetcontrolInterno2(Index: Integer; const Astring: string);
begin
  FcontrolInterno2 := Astring;
  FcontrolInterno2_Specified := True;
end;

function Extras2.controlInterno2_Specified(Index: Integer): boolean;
begin
  Result := FcontrolInterno2_Specified;
end;

procedure Extras2.Setnombre(Index: Integer; const Astring: string);
begin
  Fnombre := Astring;
  Fnombre_Specified := True;
end;

function Extras2.nombre_Specified(Index: Integer): boolean;
begin
  Result := Fnombre_Specified;
end;

procedure Extras2.Setpdf(Index: Integer; const Astring: string);
begin
  Fpdf := Astring;
  Fpdf_Specified := True;
end;

function Extras2.pdf_Specified(Index: Integer): boolean;
begin
  Result := Fpdf_Specified;
end;

procedure Extras2.Setvalor(Index: Integer; const Astring: string);
begin
  Fvalor := Astring;
  Fvalor_Specified := True;
end;

function Extras2.valor_Specified(Index: Integer): boolean;
begin
  Result := Fvalor_Specified;
end;

procedure Extras2.Setxml(Index: Integer; const Astring: string);
begin
  Fxml := Astring;
  Fxml_Specified := True;
end;

function Extras2.xml_Specified(Index: Integer): boolean;
begin
  Result := Fxml_Specified;
end;

procedure Cliente2.Setapellido(Index: Integer; const Astring: string);
begin
  Fapellido := Astring;
  Fapellido_Specified := True;
end;

function Cliente2.apellido_Specified(Index: Integer): boolean;
begin
  Result := Fapellido_Specified;
end;

procedure Cliente2.Setciudad(Index: Integer; const Astring: string);
begin
  Fciudad := Astring;
  Fciudad_Specified := True;
end;

function Cliente2.ciudad_Specified(Index: Integer): boolean;
begin
  Result := Fciudad_Specified;
end;

procedure Cliente2.Setdepartamento(Index: Integer; const Astring: string);
begin
  Fdepartamento := Astring;
  Fdepartamento_Specified := True;
end;

function Cliente2.departamento_Specified(Index: Integer): boolean;
begin
  Result := Fdepartamento_Specified;
end;

procedure Cliente2.Setdireccion(Index: Integer; const Astring: string);
begin
  Fdireccion := Astring;
  Fdireccion_Specified := True;
end;

function Cliente2.direccion_Specified(Index: Integer): boolean;
begin
  Result := Fdireccion_Specified;
end;

procedure Cliente2.Setemail(Index: Integer; const Astring: string);
begin
  Femail := Astring;
  Femail_Specified := True;
end;

function Cliente2.email_Specified(Index: Integer): boolean;
begin
  Result := Femail_Specified;
end;

procedure Cliente2.SetnombreRazonSocial(Index: Integer; const Astring: string);
begin
  FnombreRazonSocial := Astring;
  FnombreRazonSocial_Specified := True;
end;

function Cliente2.nombreRazonSocial_Specified(Index: Integer): boolean;
begin
  Result := FnombreRazonSocial_Specified;
end;

procedure Cliente2.Setnotificar(Index: Integer; const Astring: string);
begin
  Fnotificar := Astring;
  Fnotificar_Specified := True;
end;

function Cliente2.notificar_Specified(Index: Integer): boolean;
begin
  Result := Fnotificar_Specified;
end;

procedure Cliente2.SetnumeroDocumento(Index: Integer; const Astring: string);
begin
  FnumeroDocumento := Astring;
  FnumeroDocumento_Specified := True;
end;

function Cliente2.numeroDocumento_Specified(Index: Integer): boolean;
begin
  Result := FnumeroDocumento_Specified;
end;

procedure Cliente2.Setpais(Index: Integer; const Astring: string);
begin
  Fpais := Astring;
  Fpais_Specified := True;
end;

function Cliente2.pais_Specified(Index: Integer): boolean;
begin
  Result := Fpais_Specified;
end;

procedure Cliente2.Setreferencia2(Index: Integer; const Astring: string);
begin
  Freferencia2 := Astring;
  Freferencia2_Specified := True;
end;

function Cliente2.referencia2_Specified(Index: Integer): boolean;
begin
  Result := Freferencia2_Specified;
end;

procedure Cliente2.Setregimen(Index: Integer; const Astring: string);
begin
  Fregimen := Astring;
  Fregimen_Specified := True;
end;

function Cliente2.regimen_Specified(Index: Integer): boolean;
begin
  Result := Fregimen_Specified;
end;

procedure Cliente2.SetsegundoNombre(Index: Integer; const Astring: string);
begin
  FsegundoNombre := Astring;
  FsegundoNombre_Specified := True;
end;

function Cliente2.segundoNombre_Specified(Index: Integer): boolean;
begin
  Result := FsegundoNombre_Specified;
end;

procedure Cliente2.SetsubDivision(Index: Integer; const Astring: string);
begin
  FsubDivision := Astring;
  FsubDivision_Specified := True;
end;

function Cliente2.subDivision_Specified(Index: Integer): boolean;
begin
  Result := FsubDivision_Specified;
end;

procedure Cliente2.Settelefono(Index: Integer; const Astring: string);
begin
  Ftelefono := Astring;
  Ftelefono_Specified := True;
end;

function Cliente2.telefono_Specified(Index: Integer): boolean;
begin
  Result := Ftelefono_Specified;
end;

procedure Cliente2.SettipoIdentificacion(Index: Integer; const Astring: string);
begin
  FtipoIdentificacion := Astring;
  FtipoIdentificacion_Specified := True;
end;

function Cliente2.tipoIdentificacion_Specified(Index: Integer): boolean;
begin
  Result := FtipoIdentificacion_Specified;
end;

procedure Cliente2.SettipoPersona(Index: Integer; const Astring: string);
begin
  FtipoPersona := Astring;
  FtipoPersona_Specified := True;
end;

function Cliente2.tipoPersona_Specified(Index: Integer): boolean;
begin
  Result := FtipoPersona_Specified;
end;
procedure Cliente2.Setnit(Index: Integer; const Astring: string);
begin
  Fnit := Astring;
  Fnit_Specified := True;
end;
function Cliente2.nit_Specified(Index: Integer): boolean;
begin
  Result := Fnit_Specified;
end;

procedure FacturaImpuestos2.SetbaseImponibleTOTALImp(Index: Integer; const Astring: string);
begin
  FbaseImponibleTOTALImp := Astring;
  FbaseImponibleTOTALImp_Specified := True;
end;

function FacturaImpuestos2.baseImponibleTOTALImp_Specified(Index: Integer): boolean;
begin
  Result := FbaseImponibleTOTALImp_Specified;
end;

procedure FacturaImpuestos2.SetcodigoTOTALImp(Index: Integer; const Astring: string);
begin
  FcodigoTOTALImp := Astring;
  FcodigoTOTALImp_Specified := True;
end;

function FacturaImpuestos2.codigoTOTALImp_Specified(Index: Integer): boolean;
begin
  Result := FcodigoTOTALImp_Specified;
end;

procedure FacturaImpuestos2.SetcontrolInterno(Index: Integer; const Astring: string);
begin
  FcontrolInterno := Astring;
  FcontrolInterno_Specified := True;
end;

function FacturaImpuestos2.controlInterno_Specified(Index: Integer): boolean;
begin
  Result := FcontrolInterno_Specified;
end;

procedure FacturaImpuestos2.SetporcentajeTOTALImp(Index: Integer; const Astring: string);
begin
  FporcentajeTOTALImp := Astring;
  FporcentajeTOTALImp_Specified := True;
end;

function FacturaImpuestos2.porcentajeTOTALImp_Specified(Index: Integer): boolean;
begin
  Result := FporcentajeTOTALImp_Specified;
end;

procedure FacturaImpuestos2.SetvalorTOTALImp(Index: Integer; const Astring: string);
begin
  FvalorTOTALImp := Astring;
  FvalorTOTALImp_Specified := True;
end;

function FacturaImpuestos2.valorTOTALImp_Specified(Index: Integer): boolean;
begin
  Result := FvalorTOTALImp_Specified;
end;

destructor FacturaDetalle2.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FimpuestosDetalles)-1 do
    System.SysUtils.FreeAndNil(FimpuestosDetalles[I]);
  System.SetLength(FimpuestosDetalles, 0);
  inherited Destroy;
end;

procedure FacturaDetalle2.SetcantidadUnidades(Index: Integer; const Astring: string);
begin
  FcantidadUnidades := Astring;
  FcantidadUnidades_Specified := True;
end;

function FacturaDetalle2.cantidadUnidades_Specified(Index: Integer): boolean;
begin
  Result := FcantidadUnidades_Specified;
end;

procedure FacturaDetalle2.SetcodigoProducto(Index: Integer; const Astring: string);
begin
  FcodigoProducto := Astring;
  FcodigoProducto_Specified := True;
end;

function FacturaDetalle2.codigoProducto_Specified(Index: Integer): boolean;
begin
  Result := FcodigoProducto_Specified;
end;

procedure FacturaDetalle2.Setdescripcion(Index: Integer; const Astring: string);
begin
  Fdescripcion := Astring;
  Fdescripcion_Specified := True;
end;

function FacturaDetalle2.descripcion_Specified(Index: Integer): boolean;
begin
  Result := Fdescripcion_Specified;
end;

procedure FacturaDetalle2.Setdescuento(Index: Integer; const Astring: string);
begin
  Fdescuento := Astring;
  Fdescuento_Specified := True;
end;

function FacturaDetalle2.descuento_Specified(Index: Integer): boolean;
begin
  Result := Fdescuento_Specified;
end;

procedure FacturaDetalle2.SetdetalleAdicionalNombre(Index: Integer; const Astring: string);
begin
  FdetalleAdicionalNombre := Astring;
  FdetalleAdicionalNombre_Specified := True;
end;

function FacturaDetalle2.detalleAdicionalNombre_Specified(Index: Integer): boolean;
begin
  Result := FdetalleAdicionalNombre_Specified;
end;

procedure FacturaDetalle2.SetdetalleAdicionalValor(Index: Integer; const Astring: string);
begin
  FdetalleAdicionalValor := Astring;
  FdetalleAdicionalValor_Specified := True;
end;

function FacturaDetalle2.detalleAdicionalValor_Specified(Index: Integer): boolean;
begin
  Result := FdetalleAdicionalValor_Specified;
end;

procedure FacturaDetalle2.SetimpuestosDetalles(Index: Integer; const AArrayOfFacturaImpuestos: ArrayOfFacturaImpuestos);
begin
  FimpuestosDetalles := AArrayOfFacturaImpuestos;
  FimpuestosDetalles_Specified := True;
end;

function FacturaDetalle2.impuestosDetalles_Specified(Index: Integer): boolean;
begin
  Result := FimpuestosDetalles_Specified;
end;

procedure FacturaDetalle2.SetprecioTotal(Index: Integer; const Astring: string);
begin
  FprecioTotal := Astring;
  FprecioTotal_Specified := True;
end;

function FacturaDetalle2.precioTotal_Specified(Index: Integer): boolean;
begin
  Result := FprecioTotal_Specified;
end;

procedure FacturaDetalle2.SetprecioTotalSinImpuestos(Index: Integer; const Astring: string);
begin
  FprecioTotalSinImpuestos := Astring;
  FprecioTotalSinImpuestos_Specified := True;
end;

function FacturaDetalle2.precioTotalSinImpuestos_Specified(Index: Integer): boolean;
begin
  Result := FprecioTotalSinImpuestos_Specified;
end;

procedure FacturaDetalle2.SetprecioVentaUnitario(Index: Integer; const Astring: string);
begin
  FprecioVentaUnitario := Astring;
  FprecioVentaUnitario_Specified := True;
end;

function FacturaDetalle2.precioVentaUnitario_Specified(Index: Integer): boolean;
begin
  Result := FprecioVentaUnitario_Specified;
end;

procedure FacturaDetalle2.Setseriales(Index: Integer; const Astring: string);
begin
  Fseriales := Astring;
  Fseriales_Specified := True;
end;

function FacturaDetalle2.seriales_Specified(Index: Integer): boolean;
begin
  Result := Fseriales_Specified;
end;

procedure FacturaDetalle2.SetunidadMedida(Index: Integer; const Astring: string);
begin
  FunidadMedida := Astring;
  FunidadMedida_Specified := True;
end;

function FacturaDetalle2.unidadMedida_Specified(Index: Integer): boolean;
begin
  Result := FunidadMedida_Specified;
end;

destructor FacturaGeneral2.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FdetalleDeFactura)-1 do
    System.SysUtils.FreeAndNil(FdetalleDeFactura[I]);
  System.SetLength(FdetalleDeFactura, 0);
  for I := 0 to System.Length(Fextras)-1 do
    System.SysUtils.FreeAndNil(Fextras[I]);
  System.SetLength(Fextras, 0);
  for I := 0 to System.Length(FimpuestosGenerales)-1 do
    System.SysUtils.FreeAndNil(FimpuestosGenerales[I]);
  System.SetLength(FimpuestosGenerales, 0);
  System.SysUtils.FreeAndNil(Fcliente);
  inherited Destroy;
end;

procedure FacturaGeneral2.Setcliente(Index: Integer; const ACliente2: Cliente2);
begin
  Fcliente := ACliente2;
  Fcliente_Specified := True;
end;

function FacturaGeneral2.cliente_Specified(Index: Integer): boolean;
begin
  Result := Fcliente_Specified;
end;

procedure FacturaGeneral2.SetconsecutivoDocumento(Index: Integer; const Astring: string);
begin
  FconsecutivoDocumento := Astring;
  FconsecutivoDocumento_Specified := True;
end;

function FacturaGeneral2.consecutivoDocumento_Specified(Index: Integer): boolean;
begin
  Result := FconsecutivoDocumento_Specified;
end;

procedure FacturaGeneral2.SetconsecutivoDocumentoModificado(Index: Integer; const Astring: string);
begin
  FconsecutivoDocumentoModificado := Astring;
  FconsecutivoDocumentoModificado_Specified := True;
end;

function FacturaGeneral2.consecutivoDocumentoModificado_Specified(Index: Integer): boolean;
begin
  Result := FconsecutivoDocumentoModificado_Specified;
end;

procedure FacturaGeneral2.SetdetalleDeFactura(Index: Integer; const AArrayOfFacturaDetalle: ArrayOfFacturaDetalle);
begin
  FdetalleDeFactura := AArrayOfFacturaDetalle;
  FdetalleDeFactura_Specified := True;
end;

function FacturaGeneral2.detalleDeFactura_Specified(Index: Integer): boolean;
begin
  Result := FdetalleDeFactura_Specified;
end;

procedure FacturaGeneral2.SetestadoPago(Index: Integer; const Astring: string);
begin
  FestadoPago := Astring;
  FestadoPago_Specified := True;
end;

function FacturaGeneral2.estadoPago_Specified(Index: Integer): boolean;
begin
  Result := FestadoPago_Specified;
end;

procedure FacturaGeneral2.Setextras(Index: Integer; const AArrayOfExtras: ArrayOfExtras);
begin
  Fextras := AArrayOfExtras;
  Fextras_Specified := True;
end;

function FacturaGeneral2.extras_Specified(Index: Integer): boolean;
begin
  Result := Fextras_Specified;
end;

procedure FacturaGeneral2.SetfechaEmision(Index: Integer; const Astring: string);
begin
  FfechaEmision := Astring;
  FfechaEmision_Specified := True;
end;

function FacturaGeneral2.fechaEmision_Specified(Index: Integer): boolean;
begin
  Result := FfechaEmision_Specified;
end;

procedure FacturaGeneral2.SetfechaEmisionDocumentoModificado(Index: Integer; const Astring: string);
begin
  FfechaEmisionDocumentoModificado := Astring;
  FfechaEmisionDocumentoModificado_Specified := True;
end;

function FacturaGeneral2.fechaEmisionDocumentoModificado_Specified(Index: Integer): boolean;
begin
  Result := FfechaEmisionDocumentoModificado_Specified;
end;

procedure FacturaGeneral2.SetfechaVencimiento(Index: Integer; const Astring: string);
begin
  FfechaVencimiento := Astring;
  FfechaVencimiento_Specified := True;
end;

function FacturaGeneral2.fechaVencimiento_Specified(Index: Integer): boolean;
begin
  Result := FfechaVencimiento_Specified;
end;

procedure FacturaGeneral2.Seticoterms(Index: Integer; const Astring: string);
begin
  Ficoterms := Astring;
  Ficoterms_Specified := True;
end;

function FacturaGeneral2.icoterms_Specified(Index: Integer): boolean;
begin
  Result := Ficoterms_Specified;
end;

procedure FacturaGeneral2.SetimporteTotal(Index: Integer; const Astring: string);
begin
  FimporteTotal := Astring;
  FimporteTotal_Specified := True;
end;

function FacturaGeneral2.importeTotal_Specified(Index: Integer): boolean;
begin
  Result := FimporteTotal_Specified;
end;

procedure FacturaGeneral2.SetimpuestosGenerales(Index: Integer; const AArrayOfFacturaImpuestos: ArrayOfFacturaImpuestos);
begin
  FimpuestosGenerales := AArrayOfFacturaImpuestos;
  FimpuestosGenerales_Specified := True;
end;

function FacturaGeneral2.impuestosGenerales_Specified(Index: Integer): boolean;
begin
  Result := FimpuestosGenerales_Specified;
end;

procedure FacturaGeneral2.SetinformacionAdicional(Index: Integer; const Astring: string);
begin
  FinformacionAdicional := Astring;
  FinformacionAdicional_Specified := True;
end;

function FacturaGeneral2.informacionAdicional_Specified(Index: Integer): boolean;
begin
  Result := FinformacionAdicional_Specified;
end;

procedure FacturaGeneral2.SetmedioPago(Index: Integer; const Astring: string);
begin
  FmedioPago := Astring;
  FmedioPago_Specified := True;
end;

function FacturaGeneral2.medioPago_Specified(Index: Integer): boolean;
begin
  Result := FmedioPago_Specified;
end;

procedure FacturaGeneral2.Setmoneda(Index: Integer; const Astring: string);
begin
  Fmoneda := Astring;
  Fmoneda_Specified := True;
end;

function FacturaGeneral2.moneda_Specified(Index: Integer): boolean;
begin
  Result := Fmoneda_Specified;
end;

procedure FacturaGeneral2.SetmotivoNota(Index: Integer; const Astring: string);
begin
  FmotivoNota := Astring;
  FmotivoNota_Specified := True;
end;

function FacturaGeneral2.motivoNota_Specified(Index: Integer): boolean;
begin
  Result := FmotivoNota_Specified;
end;

procedure FacturaGeneral2.Setpropina(Index: Integer; const Astring: string);
begin
  Fpropina := Astring;
  Fpropina_Specified := True;
end;

function FacturaGeneral2.propina_Specified(Index: Integer): boolean;
begin
  Result := Fpropina_Specified;
end;

procedure FacturaGeneral2.SetrangoNumeracion(Index: Integer; const Astring: string);
begin
  FrangoNumeracion := Astring;
  FrangoNumeracion_Specified := True;
end;

function FacturaGeneral2.rangoNumeracion_Specified(Index: Integer): boolean;
begin
  Result := FrangoNumeracion_Specified;
end;

procedure FacturaGeneral2.SettipoDocumento(Index: Integer; const Astring: string);
begin
  FtipoDocumento := Astring;
  FtipoDocumento_Specified := True;
end;

function FacturaGeneral2.tipoDocumento_Specified(Index: Integer): boolean;
begin
  Result := FtipoDocumento_Specified;
end;

procedure FacturaGeneral2.SettotalDescuentos(Index: Integer; const Astring: string);
begin
  FtotalDescuentos := Astring;
  FtotalDescuentos_Specified := True;
end;

function FacturaGeneral2.totalDescuentos_Specified(Index: Integer): boolean;
begin
  Result := FtotalDescuentos_Specified;
end;

procedure FacturaGeneral2.SettotalSinImpuestos(Index: Integer; const Astring: string);
begin
  FtotalSinImpuestos := Astring;
  FtotalSinImpuestos_Specified := True;
end;

function FacturaGeneral2.totalSinImpuestos_Specified(Index: Integer): boolean;
begin
  Result := FtotalSinImpuestos_Specified;
end;

procedure FacturaGeneral2.SetuuidDocumentoModificado(Index: Integer; const Astring: string);
begin
  FuuidDocumentoModificado := Astring;
  FuuidDocumentoModificado_Specified := True;
end;

function FacturaGeneral2.uuidDocumentoModificado_Specified(Index: Integer): boolean;
begin
  Result := FuuidDocumentoModificado_Specified;
end;

procedure DocumentResponse2.Setcodigo(Index: Integer; const AInteger: Integer);
begin
  Fcodigo := AInteger;
  Fcodigo_Specified := True;
end;

function DocumentResponse2.codigo_Specified(Index: Integer): boolean;
begin
  Result := Fcodigo_Specified;
end;

procedure DocumentResponse2.SetconsecutivoDocumento(Index: Integer; const Astring: string);
begin
  FconsecutivoDocumento := Astring;
  FconsecutivoDocumento_Specified := True;
end;

function DocumentResponse2.consecutivoDocumento_Specified(Index: Integer): boolean;
begin
  Result := FconsecutivoDocumento_Specified;
end;

procedure DocumentResponse2.Setcufe(Index: Integer; const Astring: string);
begin
  Fcufe := Astring;
  Fcufe_Specified := True;
end;

function DocumentResponse2.cufe_Specified(Index: Integer): boolean;
begin
  Result := Fcufe_Specified;
end;

procedure DocumentResponse2.SetfechaRespuesta(Index: Integer; const Astring: string);
begin
  FfechaRespuesta := Astring;
  FfechaRespuesta_Specified := True;
end;

function DocumentResponse2.fechaRespuesta_Specified(Index: Integer): boolean;
begin
  Result := FfechaRespuesta_Specified;
end;

procedure DocumentResponse2.Setmensaje(Index: Integer; const Astring: string);
begin
  Fmensaje := Astring;
  Fmensaje_Specified := True;
end;

function DocumentResponse2.mensaje_Specified(Index: Integer): boolean;
begin
  Result := Fmensaje_Specified;
end;

procedure DocumentResponse2.Setresultado(Index: Integer; const Astring: string);
begin
  Fresultado := Astring;
  Fresultado_Specified := True;
end;

function DocumentResponse2.resultado_Specified(Index: Integer): boolean;
begin
  Result := Fresultado_Specified;
end;

procedure DocumentResponse2.Setxml(Index: Integer; const Astring: string);
begin
  Fxml := Astring;
  Fxml_Specified := True;
end;

function DocumentResponse2.xml_Specified(Index: Integer): boolean;
begin
  Result := Fxml_Specified;
end;

procedure SendEmailResponse2.Setcodigo(Index: Integer; const AInteger: Integer);
begin
  Fcodigo := AInteger;
  Fcodigo_Specified := True;
end;

function SendEmailResponse2.codigo_Specified(Index: Integer): boolean;
begin
  Result := Fcodigo_Specified;
end;

procedure SendEmailResponse2.Setmensaje(Index: Integer; const Astring: string);
begin
  Fmensaje := Astring;
  Fmensaje_Specified := True;
end;

function SendEmailResponse2.mensaje_Specified(Index: Integer): boolean;
begin
  Result := Fmensaje_Specified;
end;

procedure SendEmailResponse2.Setresultado(Index: Integer; const Astring: string);
begin
  Fresultado := Astring;
  Fresultado_Specified := True;
end;

function SendEmailResponse2.resultado_Specified(Index: Integer): boolean;
begin
  Result := Fresultado_Specified;
end;

procedure DocumentStatusResponse2.SetacuseComentario(Index: Integer; const Astring: string);
begin
  FacuseComentario := Astring;
  FacuseComentario_Specified := True;
end;

function DocumentStatusResponse2.acuseComentario_Specified(Index: Integer): boolean;
begin
  Result := FacuseComentario_Specified;
end;

procedure DocumentStatusResponse2.SetacuseEstatus(Index: Integer; const Astring: string);
begin
  FacuseEstatus := Astring;
  FacuseEstatus_Specified := True;
end;

function DocumentStatusResponse2.acuseEstatus_Specified(Index: Integer): boolean;
begin
  Result := FacuseEstatus_Specified;
end;

procedure DocumentStatusResponse2.SetacuseResponsable(Index: Integer; const Astring: string);
begin
  FacuseResponsable := Astring;
  FacuseResponsable_Specified := True;
end;

function DocumentStatusResponse2.acuseResponsable_Specified(Index: Integer): boolean;
begin
  Result := FacuseResponsable_Specified;
end;

procedure DocumentStatusResponse2.SetacuseRespuesta(Index: Integer; const Astring: string);
begin
  FacuseRespuesta := Astring;
  FacuseRespuesta_Specified := True;
end;

function DocumentStatusResponse2.acuseRespuesta_Specified(Index: Integer): boolean;
begin
  Result := FacuseRespuesta_Specified;
end;

procedure DocumentStatusResponse2.Setcodigo(Index: Integer; const AInteger: Integer);
begin
  Fcodigo := AInteger;
  Fcodigo_Specified := True;
end;

function DocumentStatusResponse2.codigo_Specified(Index: Integer): boolean;
begin
  Result := Fcodigo_Specified;
end;

procedure DocumentStatusResponse2.Setcufe(Index: Integer; const Astring: string);
begin
  Fcufe := Astring;
  Fcufe_Specified := True;
end;

function DocumentStatusResponse2.cufe_Specified(Index: Integer): boolean;
begin
  Result := Fcufe_Specified;
end;

procedure DocumentStatusResponse2.SetestatusDocumento(Index: Integer; const AInteger: Integer);
begin
  FestatusDocumento := AInteger;
  FestatusDocumento_Specified := True;
end;

function DocumentStatusResponse2.estatusDocumento_Specified(Index: Integer): boolean;
begin
  Result := FestatusDocumento_Specified;
end;

procedure DocumentStatusResponse2.SetfechaDocumento(Index: Integer; const Astring: string);
begin
  FfechaDocumento := Astring;
  FfechaDocumento_Specified := True;
end;

function DocumentStatusResponse2.fechaDocumento_Specified(Index: Integer): boolean;
begin
  Result := FfechaDocumento_Specified;
end;

procedure DocumentStatusResponse2.Setmensaje(Index: Integer; const Astring: string);
begin
  Fmensaje := Astring;
  Fmensaje_Specified := True;
end;

function DocumentStatusResponse2.mensaje_Specified(Index: Integer): boolean;
begin
  Result := Fmensaje_Specified;
end;

procedure DocumentStatusResponse2.SetmensajeDocumento(Index: Integer; const Astring: string);
begin
  FmensajeDocumento := Astring;
  FmensajeDocumento_Specified := True;
end;

function DocumentStatusResponse2.mensajeDocumento_Specified(Index: Integer): boolean;
begin
  Result := FmensajeDocumento_Specified;
end;

procedure DocumentStatusResponse2.Setresultado(Index: Integer; const Astring: string);
begin
  Fresultado := Astring;
  Fresultado_Specified := True;
end;

function DocumentStatusResponse2.resultado_Specified(Index: Integer): boolean;
begin
  Result := Fresultado_Specified;
end;

procedure ValidateXML2.Setcodigo(Index: Integer; const AInteger: Integer);
begin
  Fcodigo := AInteger;
  Fcodigo_Specified := True;
end;

function ValidateXML2.codigo_Specified(Index: Integer): boolean;
begin
  Result := Fcodigo_Specified;
end;

procedure ValidateXML2.Setmensaje(Index: Integer; const Astring: string);
begin
  Fmensaje := Astring;
  Fmensaje_Specified := True;
end;

function ValidateXML2.mensaje_Specified(Index: Integer): boolean;
begin
  Result := Fmensaje_Specified;
end;

procedure ValidateXML2.Setresultado(Index: Integer; const Astring: string);
begin
  Fresultado := Astring;
  Fresultado_Specified := True;
end;

function ValidateXML2.resultado_Specified(Index: Integer): boolean;
begin
  Result := Fresultado_Specified;
end;

procedure FoliosRemainingResponse2.Setcodigo(Index: Integer; const AInteger: Integer);
begin
  Fcodigo := AInteger;
  Fcodigo_Specified := True;
end;

function FoliosRemainingResponse2.codigo_Specified(Index: Integer): boolean;
begin
  Result := Fcodigo_Specified;
end;

procedure FoliosRemainingResponse2.SetfoliosRestantes(Index: Integer; const AInteger: Integer);
begin
  FfoliosRestantes := AInteger;
  FfoliosRestantes_Specified := True;
end;

function FoliosRemainingResponse2.foliosRestantes_Specified(Index: Integer): boolean;
begin
  Result := FfoliosRestantes_Specified;
end;

procedure FoliosRemainingResponse2.Setmensaje(Index: Integer; const Astring: string);
begin
  Fmensaje := Astring;
  Fmensaje_Specified := True;
end;

function FoliosRemainingResponse2.mensaje_Specified(Index: Integer): boolean;
begin
  Result := Fmensaje_Specified;
end;

procedure FoliosRemainingResponse2.Setresultado(Index: Integer; const Astring: string);
begin
  Fresultado := Astring;
  Fresultado_Specified := True;
end;

function FoliosRemainingResponse2.resultado_Specified(Index: Integer): boolean;
begin
  Result := Fresultado_Specified;
end;

procedure LoadCertificateResponse2.Setcodigo(Index: Integer; const AInteger: Integer);
begin
  Fcodigo := AInteger;
  Fcodigo_Specified := True;
end;

function LoadCertificateResponse2.codigo_Specified(Index: Integer): boolean;
begin
  Result := Fcodigo_Specified;
end;

procedure LoadCertificateResponse2.Setmensaje(Index: Integer; const Astring: string);
begin
  Fmensaje := Astring;
  Fmensaje_Specified := True;
end;

function LoadCertificateResponse2.mensaje_Specified(Index: Integer): boolean;
begin
  Result := Fmensaje_Specified;
end;

procedure LoadCertificateResponse2.Setresultado(Index: Integer; const Astring: string);
begin
  Fresultado := Astring;
  Fresultado_Specified := True;
end;

function LoadCertificateResponse2.resultado_Specified(Index: Integer): boolean;
begin
  Result := Fresultado_Specified;
end;

procedure DownloadPDFResponse2.Setcodigo(Index: Integer; const AInteger: Integer);
begin
  Fcodigo := AInteger;
  Fcodigo_Specified := True;
end;

function DownloadPDFResponse2.codigo_Specified(Index: Integer): boolean;
begin
  Result := Fcodigo_Specified;
end;

procedure DownloadPDFResponse2.Setcufe(Index: Integer; const Astring: string);
begin
  Fcufe := Astring;
  Fcufe_Specified := True;
end;

function DownloadPDFResponse2.cufe_Specified(Index: Integer): boolean;
begin
  Result := Fcufe_Specified;
end;

procedure DownloadPDFResponse2.Setdocumento(Index: Integer; const Astring: string);
begin
  Fdocumento := Astring;
  Fdocumento_Specified := True;
end;

function DownloadPDFResponse2.documento_Specified(Index: Integer): boolean;
begin
  Result := Fdocumento_Specified;
end;

procedure DownloadPDFResponse2.Setmensaje(Index: Integer; const Astring: string);
begin
  Fmensaje := Astring;
  Fmensaje_Specified := True;
end;

function DownloadPDFResponse2.mensaje_Specified(Index: Integer): boolean;
begin
  Result := Fmensaje_Specified;
end;

procedure DownloadPDFResponse2.Setresultado(Index: Integer; const Astring: string);
begin
  Fresultado := Astring;
  Fresultado_Specified := True;
end;

function DownloadPDFResponse2.resultado_Specified(Index: Integer): boolean;
begin
  Result := Fresultado_Specified;
end;

procedure DownloadXMLResponse2.Setcodigo(Index: Integer; const AInteger: Integer);
begin
  Fcodigo := AInteger;
  Fcodigo_Specified := True;
end;

function DownloadXMLResponse2.codigo_Specified(Index: Integer): boolean;
begin
  Result := Fcodigo_Specified;
end;

procedure DownloadXMLResponse2.Setcufe(Index: Integer; const Astring: string);
begin
  Fcufe := Astring;
  Fcufe_Specified := True;
end;

function DownloadXMLResponse2.cufe_Specified(Index: Integer): boolean;
begin
  Result := Fcufe_Specified;
end;

procedure DownloadXMLResponse2.Setdocumento(Index: Integer; const Astring: string);
begin
  Fdocumento := Astring;
  Fdocumento_Specified := True;
end;

function DownloadXMLResponse2.documento_Specified(Index: Integer): boolean;
begin
  Result := Fdocumento_Specified;
end;

procedure DownloadXMLResponse2.Setmensaje(Index: Integer; const Astring: string);
begin
  Fmensaje := Astring;
  Fmensaje_Specified := True;
end;

function DownloadXMLResponse2.mensaje_Specified(Index: Integer): boolean;
begin
  Result := Fmensaje_Specified;
end;

procedure DownloadXMLResponse2.Setresultado(Index: Integer; const Astring: string);
begin
  Fresultado := Astring;
  Fresultado_Specified := True;
end;

function DownloadXMLResponse2.resultado_Specified(Index: Integer): boolean;
begin
  Result := Fresultado_Specified;
end;

initialization
  { IService }
  InvRegistry.RegisterInterface(TypeInfo(IService), 'http://tempuri.org/', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(IService), 'http://tempuri.org/IService/%operationName%');
  InvRegistry.RegisterInvokeOptions(TypeInfo(IService), ioDocument);
  { IService.Enviar }
  InvRegistry.RegisterMethodInfo(TypeInfo(IService), 'Enviar', '',
                                 '[ReturnName="EnviarResult"]', IS_OPTN or IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'Enviar', 'tokenEmpresa', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'Enviar', 'tokenPassword', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'Enviar', 'factura', '',
                                '[Namespace="http://schemas.datacontract.org/2004/07/Services.Models.Object"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'Enviar', 'EnviarResult', '',
                                '[Namespace="http://schemas.datacontract.org/2004/07/Services.Response"]', IS_NLBL);
  { IService.EstadoDocumento }
  InvRegistry.RegisterMethodInfo(TypeInfo(IService), 'EstadoDocumento', '',
                                 '[ReturnName="EstadoDocumentoResult"]', IS_OPTN or IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'EstadoDocumento', 'tokenEmpresa', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'EstadoDocumento', 'tokenPassword', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'EstadoDocumento', 'documento', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'EstadoDocumento', 'EstadoDocumentoResult', '',
                                '[Namespace="http://schemas.datacontract.org/2004/07/Services.Response"]', IS_NLBL);
  { IService.EnvioCorreo }
  InvRegistry.RegisterMethodInfo(TypeInfo(IService), 'EnvioCorreo', '',
                                 '[ReturnName="EnvioCorreoResult"]', IS_OPTN or IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'EnvioCorreo', 'tokenEmpresa', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'EnvioCorreo', 'tokenPassword', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'EnvioCorreo', 'documento', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'EnvioCorreo', 'correo', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'EnvioCorreo', 'EnvioCorreoResult', '',
                                '[Namespace="http://schemas.datacontract.org/2004/07/Services.Response"]', IS_NLBL);
  { IService.DescargaPDF }
  InvRegistry.RegisterMethodInfo(TypeInfo(IService), 'DescargaPDF', '',
                                 '[ReturnName="DescargaPDFResult"]', IS_OPTN or IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'DescargaPDF', 'tokenEmpresa', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'DescargaPDF', 'tokenPassword', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'DescargaPDF', 'documento', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'DescargaPDF', 'DescargaPDFResult', '',
                                '[Namespace="http://schemas.datacontract.org/2004/07/Services.Response"]', IS_NLBL);
  { IService.DescargaXML }
  InvRegistry.RegisterMethodInfo(TypeInfo(IService), 'DescargaXML', '',
                                 '[ReturnName="DescargaXMLResult"]', IS_OPTN or IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'DescargaXML', 'tokenEmpresa', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'DescargaXML', 'tokenPassword', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'DescargaXML', 'documento', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'DescargaXML', 'DescargaXMLResult', '',
                                '[Namespace="http://schemas.datacontract.org/2004/07/Services.Response"]', IS_NLBL);
  { IService.FoliosRestantes }
  InvRegistry.RegisterMethodInfo(TypeInfo(IService), 'FoliosRestantes', '',
                                 '[ReturnName="FoliosRestantesResult"]', IS_OPTN or IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'FoliosRestantes', 'tokenEmpresa', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'FoliosRestantes', 'tokenPassword', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'FoliosRestantes', 'FoliosRestantesResult', '',
                                '[Namespace="http://schemas.datacontract.org/2004/07/Services.Response"]', IS_NLBL);
  { IService.CargarCertificado }
  InvRegistry.RegisterMethodInfo(TypeInfo(IService), 'CargarCertificado', '',
                                 '[ReturnName="CargarCertificadoResult"]', IS_OPTN or IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'CargarCertificado', 'tokenEmpresa', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'CargarCertificado', 'tokenPassword', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'CargarCertificado', 'certificado', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'CargarCertificado', 'password', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'CargarCertificado', 'CargarCertificadoResult', '',
                                '[Namespace="http://schemas.datacontract.org/2004/07/Services.Response"]', IS_NLBL);
  { IService.ValidarXml }
  InvRegistry.RegisterMethodInfo(TypeInfo(IService), 'ValidarXml', '',
                                 '[ReturnName="ValidarXmlResult"]', IS_OPTN or IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'ValidarXml', 'tokenEmpresa', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'ValidarXml', 'tokenPassword', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'ValidarXml', 'documento', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IService), 'ValidarXml', 'ValidarXmlResult', '',
                                '[Namespace="http://schemas.datacontract.org/2004/07/Services"]', IS_NLBL);
  RemClassRegistry.RegisterXSClass(Extras2, 'http://schemas.datacontract.org/2004/07/Services.Models.Object', 'Extras2', 'Extras');
  RemClassRegistry.RegisterXSClass(Extras, 'http://schemas.datacontract.org/2004/07/Services.Models.Object', 'Extras');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfFacturaDetalle), 'http://schemas.datacontract.org/2004/07/Services.Models.Object', 'ArrayOfFacturaDetalle');
  RemClassRegistry.RegisterXSClass(Cliente2, 'http://schemas.datacontract.org/2004/07/Services.Models.Object', 'Cliente2', 'Cliente');
  RemClassRegistry.RegisterXSClass(Cliente, 'http://schemas.datacontract.org/2004/07/Services.Models.Object', 'Cliente');
  RemClassRegistry.RegisterXSClass(FacturaImpuestos2, 'http://schemas.datacontract.org/2004/07/Services.Models.Object', 'FacturaImpuestos2', 'FacturaImpuestos');
  RemClassRegistry.RegisterXSClass(FacturaImpuestos, 'http://schemas.datacontract.org/2004/07/Services.Models.Object', 'FacturaImpuestos');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfExtras), 'http://schemas.datacontract.org/2004/07/Services.Models.Object', 'ArrayOfExtras');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfFacturaImpuestos), 'http://schemas.datacontract.org/2004/07/Services.Models.Object', 'ArrayOfFacturaImpuestos');
  RemClassRegistry.RegisterXSClass(FacturaDetalle2, 'http://schemas.datacontract.org/2004/07/Services.Models.Object', 'FacturaDetalle2', 'FacturaDetalle');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(FacturaDetalle2), 'impuestosDetalles', '[ArrayItemName="FacturaImpuestos"]');
  RemClassRegistry.RegisterXSClass(FacturaDetalle, 'http://schemas.datacontract.org/2004/07/Services.Models.Object', 'FacturaDetalle');
  RemClassRegistry.RegisterXSClass(FacturaGeneral2, 'http://schemas.datacontract.org/2004/07/Services.Models.Object', 'FacturaGeneral2', 'FacturaGeneral');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(FacturaGeneral2), 'detalleDeFactura', '[ArrayItemName="FacturaDetalle"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(FacturaGeneral2), 'extras', '[ArrayItemName="Extras"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(FacturaGeneral2), 'impuestosGenerales', '[ArrayItemName="FacturaImpuestos"]');
  RemClassRegistry.RegisterXSClass(FacturaGeneral, 'http://schemas.datacontract.org/2004/07/Services.Models.Object', 'FacturaGeneral');
  RemClassRegistry.RegisterXSClass(DocumentResponse2, 'http://schemas.datacontract.org/2004/07/Services.Response', 'DocumentResponse2', 'DocumentResponse');
  RemClassRegistry.RegisterXSClass(DocumentResponse, 'http://schemas.datacontract.org/2004/07/Services.Response', 'DocumentResponse');
  RemClassRegistry.RegisterXSClass(SendEmailResponse2, 'http://schemas.datacontract.org/2004/07/Services.Response', 'SendEmailResponse2', 'SendEmailResponse');
  RemClassRegistry.RegisterXSClass(SendEmailResponse, 'http://schemas.datacontract.org/2004/07/Services.Response', 'SendEmailResponse');
  RemClassRegistry.RegisterXSClass(DocumentStatusResponse2, 'http://schemas.datacontract.org/2004/07/Services.Response', 'DocumentStatusResponse2', 'DocumentStatusResponse');
  RemClassRegistry.RegisterXSClass(DocumentStatusResponse, 'http://schemas.datacontract.org/2004/07/Services.Response', 'DocumentStatusResponse');
  RemClassRegistry.RegisterXSClass(ValidateXML2, 'http://schemas.datacontract.org/2004/07/Services', 'ValidateXML2', 'ValidateXML');
  RemClassRegistry.RegisterXSClass(ValidateXML, 'http://schemas.datacontract.org/2004/07/Services', 'ValidateXML');
  RemClassRegistry.RegisterXSClass(FoliosRemainingResponse2, 'http://schemas.datacontract.org/2004/07/Services.Response', 'FoliosRemainingResponse2', 'FoliosRemainingResponse');
  RemClassRegistry.RegisterXSClass(FoliosRemainingResponse, 'http://schemas.datacontract.org/2004/07/Services.Response', 'FoliosRemainingResponse');
  RemClassRegistry.RegisterXSClass(LoadCertificateResponse2, 'http://schemas.datacontract.org/2004/07/Services.Response', 'LoadCertificateResponse2', 'LoadCertificateResponse');
  RemClassRegistry.RegisterXSClass(LoadCertificateResponse, 'http://schemas.datacontract.org/2004/07/Services.Response', 'LoadCertificateResponse');
  RemClassRegistry.RegisterXSClass(DownloadPDFResponse2, 'http://schemas.datacontract.org/2004/07/Services.Response', 'DownloadPDFResponse2', 'DownloadPDFResponse');
  RemClassRegistry.RegisterXSClass(DownloadPDFResponse, 'http://schemas.datacontract.org/2004/07/Services.Response', 'DownloadPDFResponse');
  RemClassRegistry.RegisterXSClass(DownloadXMLResponse2, 'http://schemas.datacontract.org/2004/07/Services.Response', 'DownloadXMLResponse2', 'DownloadXMLResponse');
  RemClassRegistry.RegisterXSClass(DownloadXMLResponse, 'http://schemas.datacontract.org/2004/07/Services.Response', 'DownloadXMLResponse');

end.