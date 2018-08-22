// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : https://cenfinancierolab.cen.biz/isows/InvoiceService?wsdl
// >Import : https://cenfinancierolab.cen.biz/isows/InvoiceService?wsdl=invoiceService.wsdl
// >Import : https://cenfinancierolab.cen.biz/isows/InvoiceService?wsdl=invoiceService.wsdl>0
// Version  : 1.0
// (15/08/2018 9:22:02 a. m. - - $Rev: 90173 $)
// ************************************************************************ //

unit InvoiceService1;

interface

uses Soap.InvokeRegistry, Soap.SOAPHTTPClient, System.Types, Soap.XSBuiltIns;

const
  IS_OPTN = $0001;
  IS_UNBD = $0002;
  IS_NLBL = $0004;
  IS_UNQL = $0008;
  IS_REF = $0080;

type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:base64Binary    - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:dateTime        - "http://www.w3.org/2001/XMLSchema"[Gbl]

  configuration = class;
  { "http://invoice.carvajal.com/invoiceService/"[GblCplx] }
  UploadResolutionRequest = class;
  { "http://invoice.carvajal.com/invoiceService/"[Lit][GblElm] }
  InvoiceServiceFault2 = class;
  { "http://invoice.carvajal.com/invoiceService/"[GblCplx] }
  PaymentStatusResponse = class;
  { "http://invoice.carvajal.com/invoiceService/"[Lit][GblElm] }
  UploadCompanyResponse = class;
  { "http://invoice.carvajal.com/invoiceService/"[Lit][GblElm] }
  UpdateAppMobileRequest = class;
  { "http://invoice.carvajal.com/invoiceService/"[Lit][GblElm] }
  UpdateAppMobileResponse = class;
  { "http://invoice.carvajal.com/invoiceService/"[Lit][GblElm] }
  UploadRequest = class;
  { "http://invoice.carvajal.com/invoiceService/"[Lit][GblElm] }
  UploadRequestDocument = class;
  { "http://invoice.carvajal.com/invoiceService/"[Lit][GblElm] }
  UploadLogFilesRequest = class;
  { "http://invoice.carvajal.com/invoiceService/"[Lit][GblElm] }
  uploadLogFiles = class;
  { "http://invoice.carvajal.com/invoiceService/"[Cplx] }
  UploadSyncRequest = class;
  { "http://invoice.carvajal.com/invoiceService/"[Lit][GblElm] }
  UploadResponse = class;
  { "http://invoice.carvajal.com/invoiceService/"[Lit][GblElm] }
  UploadResolutionResponse = class;
  { "http://invoice.carvajal.com/invoiceService/"[Lit][GblElm] }
  resolution = class; { "http://invoice.carvajal.com/invoiceService/"[GblCplx] }
  prefix = class; { "http://invoice.carvajal.com/invoiceService/"[GblCplx] }
  UploadSyncResponse = class;
  { "http://invoice.carvajal.com/invoiceService/"[Lit][GblElm] }
  DocumentStatusRequest = class;
  { "http://invoice.carvajal.com/invoiceService/"[Lit][GblElm] }
  DownloadReceiverResponse = class;
  { "http://invoice.carvajal.com/invoiceService/"[Lit][GblElm] }
  DownloadReceiverRequest = class;
  { "http://invoice.carvajal.com/invoiceService/"[Lit][GblElm] }
  DocumentStatusByNumberRequest = class;
  { "http://invoice.carvajal.com/invoiceService/"[Lit][GblElm] }
  billingPlanConfiguration = class;
  { "http://invoice.carvajal.com/invoiceService/"[GblCplx] }
  property_ = class; { "http://invoice.carvajal.com/invoiceService/"[GblCplx] }
  availableDocument = class;
  { "http://invoice.carvajal.com/invoiceService/"[GblCplx] }
  DownloadAvailableDocumentsResponse = class;
  { "http://invoice.carvajal.com/invoiceService/"[Lit][GblElm] }
  DownloadAvailableDocumentsRequest = class;
  { "http://invoice.carvajal.com/invoiceService/"[Lit][GblElm] }
  governmentConfiguration = class;
  { "http://invoice.carvajal.com/invoiceService/"[GblCplx] }
  DownloadRequest = class;
  { "http://invoice.carvajal.com/invoiceService/"[Lit][GblElm] }
  ReceivedDocumentsRequest = class;
  { "http://invoice.carvajal.com/invoiceService/"[Lit][GblElm] }
  uploadLogFileResponses = class;
  { "http://invoice.carvajal.com/invoiceService/"[Cplx] }
  receivedDocuments = class;
  { "http://invoice.carvajal.com/invoiceService/"[Cplx] }
  receivedDocuments2 = class;
  { "http://invoice.carvajal.com/invoiceService/"[Cplx] }
  CheckAvailableDocumentsRequest = class;
  { "http://invoice.carvajal.com/invoiceService/"[Lit][GblElm] }
  DocumentStatusResponse = class;
  { "http://invoice.carvajal.com/invoiceService/"[Lit][GblElm] }
  DocumentStatusByNumberResponse = class;
  { "http://invoice.carvajal.com/invoiceService/"[Lit][GblElm] }
  company = class; { "http://invoice.carvajal.com/invoiceService/"[GblCplx] }
  PaymentStatesByDocumentsRequest = class;
  { "http://invoice.carvajal.com/invoiceService/"[Lit][GblElm] }
  InvoiceServiceFault = class;
  { "http://invoice.carvajal.com/invoiceService/"[Flt][GblElm] }
  DownloadResponse = class;
  { "http://invoice.carvajal.com/invoiceService/"[Lit][GblElm] }
  senderConfiguration = class;
  { "http://invoice.carvajal.com/invoiceService/"[GblCplx] }
  PaymentStatesRequest = class;
  { "http://invoice.carvajal.com/invoiceService/"[Lit][GblElm] }
  PaymentStatesByDocumentsResponse = class;
  { "http://invoice.carvajal.com/invoiceService/"[Lit][GblElm] }

  UploadLogFilesResponse = array of uploadLogFileResponses;
  { "http://invoice.carvajal.com/invoiceService/"[Lit][GblElm] }
  UploadCompanyRequest = array of company;
  { "http://invoice.carvajal.com/invoiceService/"[Lit][GblElm] }

  // ************************************************************************ //
  // XML       : configuration, global, <complexType>
  // Namespace : http://invoice.carvajal.com/invoiceService/
  // ************************************************************************ //
  configuration = class(TRemotable)
  private
    FsenderConfiguration: senderConfiguration;
    FgovernmentConfiguration: governmentConfiguration;
    FbillingPlanConfiguration: billingPlanConfiguration;
  public
    destructor Destroy; override;
  published
    property senderConfiguration: senderConfiguration Index(IS_UNQL)
      read FsenderConfiguration write FsenderConfiguration;
    property governmentConfiguration: governmentConfiguration Index(IS_UNQL)
      read FgovernmentConfiguration write FgovernmentConfiguration;
    property billingPlanConfiguration: billingPlanConfiguration Index(IS_UNQL)
      read FbillingPlanConfiguration write FbillingPlanConfiguration;
  end;

  // ************************************************************************ //
  // XML       : UploadResolutionRequest, global, <element>
  // Namespace : http://invoice.carvajal.com/invoiceService/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  UploadResolutionRequest = class(TRemotable)
  private
    Fresolution: resolution;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property resolution: resolution Index(IS_UNQL)read Fresolution
      write Fresolution;
  end;

  Array_Of_prefix = array of prefix;
  { "http://invoice.carvajal.com/invoiceService/"[GblUbnd] }
  Array_Of_uploadLogFiles = array of uploadLogFiles;
  { "http://invoice.carvajal.com/invoiceService/"[Ubnd] }
  Array_Of_receivedDocuments = array of receivedDocuments2;
  { "http://invoice.carvajal.com/invoiceService/"[Ubnd] }

  // ************************************************************************ //
  // XML       : InvoiceServiceFault, global, <complexType>
  // Namespace : http://invoice.carvajal.com/invoiceService/
  // ************************************************************************ //
  InvoiceServiceFault2 = class(TRemotable)
  private
    FstatusCode: string;
    FreasonPhrase: string;
    FerrorMessage: string;
  published
    property statusCode: string Index(IS_UNQL)read FstatusCode
      write FstatusCode;
    property reasonPhrase: string Index(IS_UNQL)read FreasonPhrase
      write FreasonPhrase;
    property errorMessage: string Index(IS_UNQL)read FerrorMessage
      write FerrorMessage;
  end;

  // ************************************************************************ //
  // XML       : PaymentStatusResponse, global, <element>
  // Namespace : http://invoice.carvajal.com/invoiceService/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  PaymentStatusResponse = class(TRemotable)
  private
    Fstatus: string;
    Fdescription: string;
    FpaymentData: string;
  public
    constructor Create; override;
  published
    property status: string Index(IS_UNQL)read Fstatus write Fstatus;
    property description: string Index(IS_UNQL)read Fdescription
      write Fdescription;
    property paymentData: string Index(IS_UNQL)read FpaymentData
      write FpaymentData;
  end;

  // ************************************************************************ //
  // XML       : UploadCompanyResponse, global, <element>
  // Namespace : http://invoice.carvajal.com/invoiceService/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  UploadCompanyResponse = class(TRemotable)
  private
    Fstatus: string;
  public
    constructor Create; override;
  published
    property status: string Index(IS_UNQL)read Fstatus write Fstatus;
  end;

  // ************************************************************************ //
  // XML       : UpdateAppMobileRequest, global, <element>
  // Namespace : http://invoice.carvajal.com/invoiceService/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  UpdateAppMobileRequest = class(TRemotable)
  private
    FcompanyId: string;
    FoperativeSystemName: string;
    FoperativeSystemVersion: string;
    FappVersion: string;
  public
    constructor Create; override;
  published
    property companyId: string Index(IS_UNQL)read FcompanyId write FcompanyId;
    property operativeSystemName: string Index(IS_UNQL)read FoperativeSystemName
      write FoperativeSystemName;
    property operativeSystemVersion: string Index(IS_UNQL)
      read FoperativeSystemVersion write FoperativeSystemVersion;
    property appVersion: string Index(IS_UNQL)read FappVersion
      write FappVersion;
  end;

  // ************************************************************************ //
  // XML       : UpdateAppMobileResponse, global, <element>
  // Namespace : http://invoice.carvajal.com/invoiceService/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  UpdateAppMobileResponse = class(TRemotable)
  private
    Fstatus: string;
    FupdateData: string;
    FappVersion: string;
  public
    constructor Create; override;
  published
    property status: string Index(IS_UNQL)read Fstatus write Fstatus;
    property updateData: string Index(IS_UNQL)read FupdateData
      write FupdateData;
    property appVersion: string Index(IS_UNQL)read FappVersion
      write FappVersion;
  end;

  // ************************************************************************ //
  // XML       : UploadRequest, global, <element>
  // Namespace : http://invoice.carvajal.com/invoiceService/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  UploadRequest = class(TRemotable)
  private
    FfileName: string;
    FfileData: string;
    FcompanyId: string;
    FaccountId: string;
  public
    constructor Create; override;
  published
    property fileName: string Index(IS_UNQL)read FfileName write FfileName;
    property fileData: string Index(IS_UNQL)read FfileData write FfileData;
    property companyId: string Index(IS_UNQL)read FcompanyId write FcompanyId;
    property accountId: string Index(IS_UNQL)read FaccountId write FaccountId;
  end;

  // ************************************************************************ //
  // XML       : UploadRequestDocument, global, <element>
  // Namespace : http://invoice.carvajal.com/invoiceService/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  UploadRequestDocument = class(TRemotable)
  private
    FfileName: string;
    FfileData: string;
    FcompanyId: string;
    FaccountId: string;
    FdocumentType: string;
  public
    constructor Create; override;
  published
    property fileName: string Index(IS_UNQL)read FfileName write FfileName;
    property fileData: string Index(IS_UNQL)read FfileData write FfileData;
    property companyId: string Index(IS_UNQL)read FcompanyId write FcompanyId;
    property accountId: string Index(IS_UNQL)read FaccountId write FaccountId;
    property documentType: string Index(IS_UNQL)read FdocumentType
      write FdocumentType;
  end;

  // ************************************************************************ //
  // XML       : UploadLogFilesRequest, global, <element>
  // Namespace : http://invoice.carvajal.com/invoiceService/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  UploadLogFilesRequest = class(TRemotable)
  private
    FcompanyId: string;
    FuploadLogFiles: Array_Of_uploadLogFiles;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property companyId: string Index(IS_UNQL)read FcompanyId write FcompanyId;
    property uploadLogFiles: Array_Of_uploadLogFiles Index(IS_UNBD or IS_UNQL)
      read FuploadLogFiles write FuploadLogFiles;
  end;

  // ************************************************************************ //
  // XML       : uploadLogFiles, <complexType>
  // Namespace : http://invoice.carvajal.com/invoiceService/
  // ************************************************************************ //
  uploadLogFiles = class(TRemotable)
  private
    FlogFileName: string;
    FlogContent: TByteDynArray;
  published
    property logFileName: string Index(IS_UNQL)read FlogFileName
      write FlogFileName;
    property logContent: TByteDynArray Index(IS_UNQL)read FlogContent
      write FlogContent;
  end;

  // ************************************************************************ //
  // XML       : UploadSyncRequest, global, <element>
  // Namespace : http://invoice.carvajal.com/invoiceService/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  UploadSyncRequest = class(TRemotable)
  private
    FfileName: string;
    FfileData: TByteDynArray;
    FcompanyId: string;
    FaccountId: string;
  public
    constructor Create; override;
  published
    property fileName: string Index(IS_UNQL)read FfileName write FfileName;
    property fileData: TByteDynArray Index(IS_UNQL)read FfileData
      write FfileData;
    property companyId: string Index(IS_UNQL)read FcompanyId write FcompanyId;
    property accountId: string Index(IS_UNQL)read FaccountId write FaccountId;
  end;

  // ************************************************************************ //
  // XML       : UploadResponse, global, <element>
  // Namespace : http://invoice.carvajal.com/invoiceService/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  UploadResponse = class(TRemotable)
  private
    Fstatus: string;
    FtransactionId: string;
  public
    constructor Create; override;
  published
    property status: string Index(IS_UNQL)read Fstatus write Fstatus;
    property transactionId: string Index(IS_UNQL)read FtransactionId
      write FtransactionId;
  end;

  // ************************************************************************ //
  // XML       : UploadResolutionResponse, global, <element>
  // Namespace : http://invoice.carvajal.com/invoiceService/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  UploadResolutionResponse = class(TRemotable)
  private
    Fstatus: string;
  public
    constructor Create; override;
  published
    property status: string Index(IS_UNQL)read Fstatus write Fstatus;
  end;

  // ************************************************************************ //
  // XML       : resolution, global, <complexType>
  // Namespace : http://invoice.carvajal.com/invoiceService/
  // ************************************************************************ //
  resolution = class(TRemotable)
  private
    FdocumentType: string;
    FresolutionNumber: string;
    FcompanyId: string;
    Fdescription: string;
    FisEnable: string;
    FinitialDateValidity: string;
    FfinalDateValidity: string;
    FinitialNumber: string;
    FfinalNumber: string;
    FinvoicingTechnicalKey: string;
    Fprefix: Array_Of_prefix;
  public
    destructor Destroy; override;
  published
    property documentType: string Index(IS_UNQL)read FdocumentType
      write FdocumentType;
    property resolutionNumber: string Index(IS_UNQL)read FresolutionNumber
      write FresolutionNumber;
    property companyId: string Index(IS_UNQL)read FcompanyId write FcompanyId;
    property description: string Index(IS_UNQL)read Fdescription
      write Fdescription;
    property isEnable: string Index(IS_UNQL)read FisEnable write FisEnable;
    property initialDateValidity: string Index(IS_UNQL)read FinitialDateValidity
      write FinitialDateValidity;
    property finalDateValidity: string Index(IS_UNQL)read FfinalDateValidity
      write FfinalDateValidity;
    property initialNumber: string Index(IS_UNQL)read FinitialNumber
      write FinitialNumber;
    property finalNumber: string Index(IS_UNQL)read FfinalNumber
      write FfinalNumber;
    property invoicingTechnicalKey: string Index(IS_UNQL)
      read FinvoicingTechnicalKey write FinvoicingTechnicalKey;
    property prefix: Array_Of_prefix Index(IS_UNBD or IS_UNQL)read Fprefix
      write Fprefix;
  end;

  // ************************************************************************ //
  // XML       : prefix, global, <complexType>
  // Namespace : http://invoice.carvajal.com/invoiceService/
  // ************************************************************************ //
  prefix = class(TRemotable)
  private
    Fprefix: string;
    FoldPrefix: string;
    Fdescription: string;
    FinitialNumber: string;
    FfinalNumber: string;
    FisEnable: string;
    FrowStatus: string;
  published
    property prefix: string Index(IS_UNQL)read Fprefix write Fprefix;
    property oldPrefix: string Index(IS_UNQL)read FoldPrefix write FoldPrefix;
    property description: string Index(IS_UNQL)read Fdescription
      write Fdescription;
    property initialNumber: string Index(IS_UNQL)read FinitialNumber
      write FinitialNumber;
    property finalNumber: string Index(IS_UNQL)read FfinalNumber
      write FfinalNumber;
    property isEnable: string Index(IS_UNQL)read FisEnable write FisEnable;
    property rowStatus: string Index(IS_UNQL)read FrowStatus write FrowStatus;
  end;

  // ************************************************************************ //
  // XML       : UploadSyncResponse, global, <element>
  // Namespace : http://invoice.carvajal.com/invoiceService/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  UploadSyncResponse = class(TRemotable)
  private
    Fstatus: string;
    FtransactionId: string;
    FdownloadData: string;
  public
    constructor Create; override;
  published
    property status: string Index(IS_UNQL)read Fstatus write Fstatus;
    property transactionId: string Index(IS_UNQL)read FtransactionId
      write FtransactionId;
    property downloadData: string Index(IS_UNQL)read FdownloadData
      write FdownloadData;
  end;

  // ************************************************************************ //
  // XML       : DocumentStatusRequest, global, <element>
  // Namespace : http://invoice.carvajal.com/invoiceService/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  DocumentStatusRequest = class(TRemotable)
  private
    FcompanyId: string;
    FaccountId: string;
    FtransactionId: string;
  public
    constructor Create; override;
  published
    property companyId: string Index(IS_UNQL)read FcompanyId write FcompanyId;
    property accountId: string Index(IS_UNQL)read FaccountId write FaccountId;
    property transactionId: string Index(IS_UNQL)read FtransactionId
      write FtransactionId;
  end;

  // ************************************************************************ //
  // XML       : DownloadReceiverResponse, global, <element>
  // Namespace : http://invoice.carvajal.com/invoiceService/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  DownloadReceiverResponse = class(TRemotable)
  private
    Fstatus: string;
    FdownloadData: string;
  public
    constructor Create; override;
  published
    property status: string Index(IS_UNQL)read Fstatus write Fstatus;
    property downloadData: string Index(IS_UNQL)read FdownloadData
      write FdownloadData;
  end;

  // ************************************************************************ //
  // XML       : DownloadReceiverRequest, global, <element>
  // Namespace : http://invoice.carvajal.com/invoiceService/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  DownloadReceiverRequest = class(TRemotable)
  private
    FcompanyId: string;
    FdocumentType: string;
    FdocumentNumber: string;
    FdocumentPrefix: string;
    FdocumentPrefix_Specified: boolean;
    FresourceType: string;
    FcompanyReceiverId: string;
    procedure SetdocumentPrefix(Index: Integer; const Astring: string);
    function documentPrefix_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property companyId: string Index(IS_UNQL)read FcompanyId write FcompanyId;
    property documentType: string Index(IS_UNQL)read FdocumentType
      write FdocumentType;
    property documentNumber: string Index(IS_UNQL)read FdocumentNumber
      write FdocumentNumber;
    property documentPrefix: string Index(IS_OPTN or IS_UNQL)
      read FdocumentPrefix write SetdocumentPrefix
      stored documentPrefix_Specified;
    property resourceType: string Index(IS_UNQL)read FresourceType
      write FresourceType;
    property companyReceiverId: string Index(IS_UNQL)read FcompanyReceiverId
      write FcompanyReceiverId;
  end;

  // ************************************************************************ //
  // XML       : DocumentStatusByNumberRequest, global, <element>
  // Namespace : http://invoice.carvajal.com/invoiceService/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  DocumentStatusByNumberRequest = class(TRemotable)
  private
    FcompanyId: string;
    FaccountId: string;
    FdocumentType: string;
    FdocumentPrefix: string;
    FdocumentPrefix_Specified: boolean;
    FdocumentNumber: string;
    procedure SetdocumentPrefix(Index: Integer; const Astring: string);
    function documentPrefix_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property companyId: string Index(IS_UNQL)read FcompanyId write FcompanyId;
    property accountId: string Index(IS_UNQL)read FaccountId write FaccountId;
    property documentType: string Index(IS_UNQL)read FdocumentType
      write FdocumentType;
    property documentPrefix: string Index(IS_OPTN or IS_UNQL)
      read FdocumentPrefix write SetdocumentPrefix
      stored documentPrefix_Specified;
    property documentNumber: string Index(IS_UNQL)read FdocumentNumber
      write FdocumentNumber;
  end;

  // ************************************************************************ //
  // XML       : billingPlanConfiguration, global, <complexType>
  // Namespace : http://invoice.carvajal.com/invoiceService/
  // ************************************************************************ //
  billingPlanConfiguration = class(TRemotable)
  private
    Ftype_: string;
  published
    property type_: string Index(IS_UNQL)read Ftype_ write Ftype_;
  end;

  // ************************************************************************ //
  // XML       : property, global, <complexType>
  // Namespace : http://invoice.carvajal.com/invoiceService/
  // ************************************************************************ //
  property_ = class(TRemotable)
  private
    Fname_: string;
    Fname__Specified: boolean;
    Fvalue: string;
    Fvalue_Specified: boolean;
    procedure Setname_(Index: Integer; const Astring: string);
    function name__Specified(Index: Integer): boolean;
    procedure Setvalue(Index: Integer; const Astring: string);
    function value_Specified(Index: Integer): boolean;
  published
    property name_: string Index(IS_OPTN or IS_UNQL)read Fname_ write Setname_
      stored name__Specified;
    property value: string Index(IS_OPTN or IS_UNQL)read Fvalue write Setvalue
      stored value_Specified;
  end;

  // ************************************************************************ //
  // XML       : availableDocument, global, <complexType>
  // Namespace : http://invoice.carvajal.com/invoiceService/
  // ************************************************************************ //
  availableDocument = class(TRemotable)
  private
    FdocumentNumber: string;
    FdocumentNumber_Specified: boolean;
    FdocumentPrefix: string;
    FdocumentPrefix_Specified: boolean;
    FdocumentType: string;
    FdocumentType_Specified: boolean;
    FdownloadData: string;
    FdownloadData_Specified: boolean;
    FsenderIdentification: string;
    FsenderIdentification_Specified: boolean;
    procedure SetdocumentNumber(Index: Integer; const Astring: string);
    function documentNumber_Specified(Index: Integer): boolean;
    procedure SetdocumentPrefix(Index: Integer; const Astring: string);
    function documentPrefix_Specified(Index: Integer): boolean;
    procedure SetdocumentType(Index: Integer; const Astring: string);
    function documentType_Specified(Index: Integer): boolean;
    procedure SetdownloadData(Index: Integer; const Astring: string);
    function downloadData_Specified(Index: Integer): boolean;
    procedure SetsenderIdentification(Index: Integer; const Astring: string);
    function senderIdentification_Specified(Index: Integer): boolean;
  published
    property documentNumber: string Index(IS_OPTN or IS_UNQL)
      read FdocumentNumber write SetdocumentNumber
      stored documentNumber_Specified;
    property documentPrefix: string Index(IS_OPTN or IS_UNQL)
      read FdocumentPrefix write SetdocumentPrefix
      stored documentPrefix_Specified;
    property documentType: string Index(IS_OPTN or IS_UNQL)read FdocumentType
      write SetdocumentType stored documentType_Specified;
    property downloadData: string Index(IS_OPTN or IS_UNQL)read FdownloadData
      write SetdownloadData stored downloadData_Specified;
    property senderIdentification: string Index(IS_OPTN or IS_UNQL)
      read FsenderIdentification write SetsenderIdentification
      stored senderIdentification_Specified;
  end;

  CheckAvailableDocumentsResponse = array of availableDocument;
  { "http://invoice.carvajal.com/invoiceService/"[Lit][GblElm] }

  // ************************************************************************ //
  // XML       : DownloadAvailableDocumentsResponse, global, <element>
  // Namespace : http://invoice.carvajal.com/invoiceService/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  DownloadAvailableDocumentsResponse = class(TRemotable)
  private
    Fstatus: string;
    FavailableDocument: CheckAvailableDocumentsResponse;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property status: string Index(IS_UNQL)read Fstatus write Fstatus;
    property availableDocument: CheckAvailableDocumentsResponse
      Index(IS_UNBD or IS_UNQL)read FavailableDocument write FavailableDocument;
  end;

  // ************************************************************************ //
  // XML       : DownloadAvailableDocumentsRequest, global, <element>
  // Namespace : http://invoice.carvajal.com/invoiceService/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  DownloadAvailableDocumentsRequest = class(TRemotable)
  private
    FcompanyId: string;
    FresourceType: string;
    FavailableDocument: CheckAvailableDocumentsResponse;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property companyId: string Index(IS_UNQL)read FcompanyId write FcompanyId;
    property resourceType: string Index(IS_UNQL)read FresourceType
      write FresourceType;
    property availableDocument: CheckAvailableDocumentsResponse
      Index(IS_UNBD or IS_UNQL)read FavailableDocument write FavailableDocument;
  end;

  // ************************************************************************ //
  // XML       : governmentConfiguration, global, <complexType>
  // Namespace : http://invoice.carvajal.com/invoiceService/
  // ************************************************************************ //
  governmentConfiguration = class(TRemotable)
  private
    Fobliged: string;
  published
    property obliged: string Index(IS_UNQL)read Fobliged write Fobliged;
  end;

  // ************************************************************************ //
  // XML       : DownloadRequest, global, <element>
  // Namespace : http://invoice.carvajal.com/invoiceService/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  DownloadRequest = class(TRemotable)
  private
    FcompanyId: string;
    FaccountId: string;
    FdocumentType: string;
    FdocumentNumber: string;
    FdocumentPrefix: string;
    FdocumentPrefix_Specified: boolean;
    FresourceType: string;
    procedure SetdocumentPrefix(Index: Integer; const Astring: string);
    function documentPrefix_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property companyId: string Index(IS_UNQL)read FcompanyId write FcompanyId;
    property accountId: string Index(IS_UNQL)read FaccountId write FaccountId;
    property documentType: string Index(IS_UNQL)read FdocumentType
      write FdocumentType;
    property documentNumber: string Index(IS_UNQL)read FdocumentNumber
      write FdocumentNumber;
    property documentPrefix: string Index(IS_OPTN or IS_UNQL)
      read FdocumentPrefix write SetdocumentPrefix
      stored documentPrefix_Specified;
    property resourceType: string Index(IS_UNQL)read FresourceType
      write FresourceType;
  end;

  // ************************************************************************ //
  // XML       : ReceivedDocumentsRequest, global, <element>
  // Namespace : http://invoice.carvajal.com/invoiceService/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  ReceivedDocumentsRequest = class(TRemotable)
  private
    FcompanyId: string;
    FreceivedDocuments: Array_Of_receivedDocuments;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property companyId: string Index(IS_UNQL)read FcompanyId write FcompanyId;
    property receivedDocuments: Array_Of_receivedDocuments
      Index(IS_UNBD or IS_UNQL)read FreceivedDocuments write FreceivedDocuments;
  end;

  // ************************************************************************ //
  // XML       : uploadLogFileResponses, <complexType>
  // Namespace : http://invoice.carvajal.com/invoiceService/
  // ************************************************************************ //
  uploadLogFileResponses = class(TRemotable)
  private
    FlogFileName: string;
    FlogFileName_Specified: boolean;
    Fstatus: boolean;
    Fmessage_: string;
    Fmessage__Specified: boolean;
    procedure SetlogFileName(Index: Integer; const Astring: string);
    function logFileName_Specified(Index: Integer): boolean;
    procedure Setmessage_(Index: Integer; const Astring: string);
    function message__Specified(Index: Integer): boolean;
  published
    property logFileName: string Index(IS_OPTN or IS_UNQL)read FlogFileName
      write SetlogFileName stored logFileName_Specified;
    property status: boolean Index(IS_UNQL)read Fstatus write Fstatus;
    property message_: string Index(IS_OPTN or IS_UNQL)read Fmessage_
      write Setmessage_ stored message__Specified;
  end;

  properties = array of property_;
  { "http://invoice.carvajal.com/invoiceService/"[GblCplx] }

  // ************************************************************************ //
  // XML       : receivedDocuments, <complexType>
  // Namespace : http://invoice.carvajal.com/invoiceService/
  // ************************************************************************ //
  receivedDocuments = class(TRemotable)
  private
    FcompanyId: string;
    FcompanyId_Specified: boolean;
    FdocumentNumber: string;
    FdocumentNumber_Specified: boolean;
    FfileName: string;
    FfileName_Specified: boolean;
    FdocumentType: string;
    FdocumentType_Specified: boolean;
    Fstatus: boolean;
    Fmessage_: string;
    Fmessage__Specified: boolean;
    procedure SetcompanyId(Index: Integer; const Astring: string);
    function companyId_Specified(Index: Integer): boolean;
    procedure SetdocumentNumber(Index: Integer; const Astring: string);
    function documentNumber_Specified(Index: Integer): boolean;
    procedure SetfileName(Index: Integer; const Astring: string);
    function fileName_Specified(Index: Integer): boolean;
    procedure SetdocumentType(Index: Integer; const Astring: string);
    function documentType_Specified(Index: Integer): boolean;
    procedure Setmessage_(Index: Integer; const Astring: string);
    function message__Specified(Index: Integer): boolean;
  published
    property companyId: string Index(IS_OPTN or IS_UNQL)read FcompanyId
      write SetcompanyId stored companyId_Specified;
    property documentNumber: string Index(IS_OPTN or IS_UNQL)
      read FdocumentNumber write SetdocumentNumber
      stored documentNumber_Specified;
    property fileName: string Index(IS_OPTN or IS_UNQL)read FfileName
      write SetfileName stored fileName_Specified;
    property documentType: string Index(IS_OPTN or IS_UNQL)read FdocumentType
      write SetdocumentType stored documentType_Specified;
    property status: boolean Index(IS_UNQL)read Fstatus write Fstatus;
    property message_: string Index(IS_OPTN or IS_UNQL)read Fmessage_
      write Setmessage_ stored message__Specified;
  end;

  ReceivedDocumentsResponse = array of receivedDocuments;
  { "http://invoice.carvajal.com/invoiceService/"[Lit][GblElm] }

  // ************************************************************************ //
  // XML       : receivedDocuments, <complexType>
  // Namespace : http://invoice.carvajal.com/invoiceService/
  // ************************************************************************ //
  receivedDocuments2 = class(TRemotable)
  private
    FdocumentNumber: string;
    FdocumentType: string;
    Fhash: string;
  published
    property documentNumber: string Index(IS_UNQL)read FdocumentNumber
      write FdocumentNumber;
    property documentType: string Index(IS_UNQL)read FdocumentType
      write FdocumentType;
    property hash: string Index(IS_UNQL)read Fhash write Fhash;
  end;

  // ************************************************************************ //
  // XML       : CheckAvailableDocumentsRequest, global, <element>
  // Namespace : http://invoice.carvajal.com/invoiceService/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  CheckAvailableDocumentsRequest = class(TRemotable)
  private
    FcompanyId: string;
    FinitialDate: TXSDateTime;
    FfinalDate: TXSDateTime;
    FresourceType: string;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property companyId: string Index(IS_UNQL)read FcompanyId write FcompanyId;
    property initialDate: TXSDateTime Index(IS_UNQL)read FinitialDate
      write FinitialDate;
    property finalDate: TXSDateTime Index(IS_UNQL)read FfinalDate
      write FfinalDate;
    property resourceType: string Index(IS_UNQL)read FresourceType
      write FresourceType;
  end;

  // ************************************************************************ //
  // XML       : DocumentStatusResponse, global, <element>
  // Namespace : http://invoice.carvajal.com/invoiceService/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  DocumentStatusResponse = class(TRemotable)
  private
    FprocessName: string;
    FprocessStatus: string;
    FprocessDate: TXSDateTime;
    FprocessDate_Specified: boolean;
    FmessageType: string;
    FmessageType_Specified: boolean;
    FerrorMessage: string;
    FerrorMessage_Specified: boolean;
    FlegalStatus: string;
    FlegalStatus_Specified: boolean;
    FbusinessStatus: string;
    FbusinessStatus_Specified: boolean;
    FgovernmentResponseCode: string;
    FgovernmentResponseCode_Specified: boolean;
    FgovernmentResponseDescription: string;
    FgovernmentResponseDescription_Specified: boolean;
    FgovernmentObservations: string;
    FgovernmentObservations_Specified: boolean;
    procedure SetprocessDate(Index: Integer; const ATXSDateTime: TXSDateTime);
    function processDate_Specified(Index: Integer): boolean;
    procedure SetmessageType(Index: Integer; const Astring: string);
    function messageType_Specified(Index: Integer): boolean;
    procedure SeterrorMessage(Index: Integer; const Astring: string);
    function errorMessage_Specified(Index: Integer): boolean;
    procedure SetlegalStatus(Index: Integer; const Astring: string);
    function legalStatus_Specified(Index: Integer): boolean;
    procedure SetbusinessStatus(Index: Integer; const Astring: string);
    function businessStatus_Specified(Index: Integer): boolean;
    procedure SetgovernmentResponseCode(Index: Integer; const Astring: string);
    function governmentResponseCode_Specified(Index: Integer): boolean;
    procedure SetgovernmentResponseDescription(Index: Integer;
      const Astring: string);
    function governmentResponseDescription_Specified(Index: Integer): boolean;
    procedure SetgovernmentObservations(Index: Integer; const Astring: string);
    function governmentObservations_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property processName: string Index(IS_UNQL)read FprocessName
      write FprocessName;
    property processStatus: string Index(IS_UNQL)read FprocessStatus
      write FprocessStatus;
    property processDate: TXSDateTime Index(IS_OPTN or IS_UNQL)read FprocessDate
      write SetprocessDate stored processDate_Specified;
    property messageType: string Index(IS_OPTN or IS_UNQL)read FmessageType
      write SetmessageType stored messageType_Specified;
    property errorMessage: string Index(IS_OPTN or IS_UNQL)read FerrorMessage
      write SeterrorMessage stored errorMessage_Specified;
    property legalStatus: string Index(IS_OPTN or IS_UNQL)read FlegalStatus
      write SetlegalStatus stored legalStatus_Specified;
    property businessStatus: string Index(IS_OPTN or IS_UNQL)
      read FbusinessStatus write SetbusinessStatus
      stored businessStatus_Specified;
    property governmentResponseCode: string Index(IS_OPTN or IS_UNQL)
      read FgovernmentResponseCode write SetgovernmentResponseCode
      stored governmentResponseCode_Specified;
    property governmentResponseDescription: string Index(IS_OPTN or IS_UNQL)
      read FgovernmentResponseDescription write SetgovernmentResponseDescription
      stored governmentResponseDescription_Specified;
    property governmentObservations: string Index(IS_OPTN or IS_UNQL)
      read FgovernmentObservations write SetgovernmentObservations
      stored governmentObservations_Specified;
  end;

  // ************************************************************************ //
  // XML       : DocumentStatusByNumberResponse, global, <element>
  // Namespace : http://invoice.carvajal.com/invoiceService/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  DocumentStatusByNumberResponse = class(TRemotable)
  private
    FprocessName: string;
    FprocessStatus: string;
    FprocessDate: TXSDateTime;
    FprocessDate_Specified: boolean;
    FmessageType: string;
    FmessageType_Specified: boolean;
    FerrorMessage: string;
    FerrorMessage_Specified: boolean;
    FlegalStatus: string;
    FlegalStatus_Specified: boolean;
    FbusinessStatus: string;
    FbusinessStatus_Specified: boolean;
    FgovernmentResponseCode: string;
    FgovernmentResponseCode_Specified: boolean;
    FgovernmentResponseDescription: string;
    FgovernmentResponseDescription_Specified: boolean;
    FgovernmentObservations: string;
    FgovernmentObservations_Specified: boolean;
    procedure SetprocessDate(Index: Integer; const ATXSDateTime: TXSDateTime);
    function processDate_Specified(Index: Integer): boolean;
    procedure SetmessageType(Index: Integer; const Astring: string);
    function messageType_Specified(Index: Integer): boolean;
    procedure SeterrorMessage(Index: Integer; const Astring: string);
    function errorMessage_Specified(Index: Integer): boolean;
    procedure SetlegalStatus(Index: Integer; const Astring: string);
    function legalStatus_Specified(Index: Integer): boolean;
    procedure SetbusinessStatus(Index: Integer; const Astring: string);
    function businessStatus_Specified(Index: Integer): boolean;
    procedure SetgovernmentResponseCode(Index: Integer; const Astring: string);
    function governmentResponseCode_Specified(Index: Integer): boolean;
    procedure SetgovernmentResponseDescription(Index: Integer;
      const Astring: string);
    function governmentResponseDescription_Specified(Index: Integer): boolean;
    procedure SetgovernmentObservations(Index: Integer; const Astring: string);
    function governmentObservations_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property processName: string Index(IS_UNQL)read FprocessName
      write FprocessName;
    property processStatus: string Index(IS_UNQL)read FprocessStatus
      write FprocessStatus;
    property processDate: TXSDateTime Index(IS_OPTN or IS_UNQL)read FprocessDate
      write SetprocessDate stored processDate_Specified;
    property messageType: string Index(IS_OPTN or IS_UNQL)read FmessageType
      write SetmessageType stored messageType_Specified;
    property errorMessage: string Index(IS_OPTN or IS_UNQL)read FerrorMessage
      write SeterrorMessage stored errorMessage_Specified;
    property legalStatus: string Index(IS_OPTN or IS_UNQL)read FlegalStatus
      write SetlegalStatus stored legalStatus_Specified;
    property businessStatus: string Index(IS_OPTN or IS_UNQL)
      read FbusinessStatus write SetbusinessStatus
      stored businessStatus_Specified;
    property governmentResponseCode: string Index(IS_OPTN or IS_UNQL)
      read FgovernmentResponseCode write SetgovernmentResponseCode
      stored governmentResponseCode_Specified;
    property governmentResponseDescription: string Index(IS_OPTN or IS_UNQL)
      read FgovernmentResponseDescription write SetgovernmentResponseDescription
      stored governmentResponseDescription_Specified;
    property governmentObservations: string Index(IS_OPTN or IS_UNQL)
      read FgovernmentObservations write SetgovernmentObservations
      stored governmentObservations_Specified;
  end;

  // ************************************************************************ //
  // XML       : company, global, <complexType>
  // Namespace : http://invoice.carvajal.com/invoiceService/
  // ************************************************************************ //
  company = class(TRemotable)
  private
    Fname_: string;
    Fnumber: string;
    Fstatus: string;
    Femail: string;
    Fconfiguration: configuration;
    Fproperties: properties;
    FcreationDateOriginal: TXSDateTime;
    FcreationDateOriginal_Specified: boolean;
    procedure SetcreationDateOriginal(Index: Integer;
      const ATXSDateTime: TXSDateTime);
    function creationDateOriginal_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property name_: string Index(IS_UNQL)read Fname_ write Fname_;
    property number: string Index(IS_UNQL)read Fnumber write Fnumber;
    property status: string Index(IS_UNQL)read Fstatus write Fstatus;
    property email: string Index(IS_UNQL)read Femail write Femail;
    property configuration: configuration Index(IS_UNQL)read Fconfiguration
      write Fconfiguration;
    property properties: properties Index(IS_UNQL)read Fproperties
      write Fproperties;
    property creationDateOriginal: TXSDateTime Index(IS_OPTN or IS_UNQL)
      read FcreationDateOriginal write SetcreationDateOriginal
      stored creationDateOriginal_Specified;
  end;

  // ************************************************************************ //
  // XML       : PaymentStatesByDocumentsRequest, global, <element>
  // Namespace : http://invoice.carvajal.com/invoiceService/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  PaymentStatesByDocumentsRequest = class(TRemotable)
  private
    FcompanyId: string;
    FinitialDate: TXSDateTime;
    FfinalDate: TXSDateTime;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property companyId: string Index(IS_UNQL)read FcompanyId write FcompanyId;
    property initialDate: TXSDateTime Index(IS_UNQL)read FinitialDate
      write FinitialDate;
    property finalDate: TXSDateTime Index(IS_UNQL)read FfinalDate
      write FfinalDate;
  end;

  // ************************************************************************ //
  // XML       : InvoiceServiceFault, global, <element>
  // Namespace : http://invoice.carvajal.com/invoiceService/
  // Info      : Fault
  // Base Types: InvoiceServiceFault
  // ************************************************************************ //
  InvoiceServiceFault = class(ERemotableException)
  private
    FstatusCode: string;
    FreasonPhrase: string;
    FerrorMessage: string;
  published
    property statusCode: string Index(IS_UNQL)read FstatusCode
      write FstatusCode;
    property reasonPhrase: string Index(IS_UNQL)read FreasonPhrase
      write FreasonPhrase;
    property errorMessage: string Index(IS_UNQL)read FerrorMessage
      write FerrorMessage;
  end;

  // ************************************************************************ //
  // XML       : DownloadResponse, global, <element>
  // Namespace : http://invoice.carvajal.com/invoiceService/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  DownloadResponse = class(TRemotable)
  private
    Fstatus: string;
    FdownloadData: string;
  public
    constructor Create; override;
  published
    property status: string Index(IS_UNQL)read Fstatus write Fstatus;
    property downloadData: string Index(IS_UNQL)read FdownloadData
      write FdownloadData;
  end;

  // ************************************************************************ //
  // XML       : senderConfiguration, global, <complexType>
  // Namespace : http://invoice.carvajal.com/invoiceService/
  // ************************************************************************ //
  senderConfiguration = class(TRemotable)
  private
    FpublishTimeLimit: string;
    FcancellationsStatementTime: string;
  published
    property publishTimeLimit: string Index(IS_UNQL)read FpublishTimeLimit
      write FpublishTimeLimit;
    property cancellationsStatementTime: string Index(IS_UNQL)
      read FcancellationsStatementTime write FcancellationsStatementTime;
  end;

  // ************************************************************************ //
  // XML       : PaymentStatesRequest, global, <element>
  // Namespace : http://invoice.carvajal.com/invoiceService/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  PaymentStatesRequest = class(TRemotable)
  private
    FcompanyId: string;
    FdocumentType: string;
    FdocumentNumber: string;
    FdocumentPrefix: string;
    FdocumentPrefix_Specified: boolean;
    procedure SetdocumentPrefix(Index: Integer; const Astring: string);
    function documentPrefix_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property companyId: string Index(IS_UNQL)read FcompanyId write FcompanyId;
    property documentType: string Index(IS_UNQL)read FdocumentType
      write FdocumentType;
    property documentNumber: string Index(IS_UNQL)read FdocumentNumber
      write FdocumentNumber;
    property documentPrefix: string Index(IS_OPTN or IS_UNQL)
      read FdocumentPrefix write SetdocumentPrefix
      stored documentPrefix_Specified;
  end;

  // ************************************************************************ //
  // XML       : PaymentStatesByDocumentsResponse, global, <element>
  // Namespace : http://invoice.carvajal.com/invoiceService/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  PaymentStatesByDocumentsResponse = class(TRemotable)
  private
    Fstatus: string;
    Fdescription: string;
    FpaymentData: string;
  public
    constructor Create; override;
  published
    property status: string Index(IS_UNQL)read Fstatus write Fstatus;
    property description: string Index(IS_UNQL)read Fdescription
      write Fdescription;
    property paymentData: string Index(IS_UNQL)read FpaymentData
      write FpaymentData;
  end;

  // ************************************************************************ //
  // Namespace : http://invoice.carvajal.com/invoiceService/
  // soapAction: http://invoice.carvajal.com/invoiceService/%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : InvoiceServiceImplServiceSoapBinding
  // service   : InvoiceServiceImplService
  // port      : InvoiceServiceImplPort
  // URL       : https://cenfinancierolab.cen.biz/isows/InvoiceService
  // ************************************************************************ //
  invoiceService = interface(IInvokable)
    ['{86951515-E67C-4D69-A86E-7DF959B1CA0A}']

    // Cannot unwrap:
    // - Input element wrapper name does not match operation's name
    function ValidateSentFiles(const body: ReceivedDocumentsRequest)
      : ReceivedDocumentsResponse; stdcall;

    // Cannot unwrap:
    // - More than one strictly out element was found
    function PaymentStatesByDocumentsRequest(const body
      : PaymentStatesByDocumentsRequest)
      : PaymentStatesByDocumentsResponse; stdcall;

    // Cannot unwrap:
    // - Input element wrapper name does not match operation's name
    // - More than one strictly out element was found
    function UploadDocument(const body: UploadRequestDocument)
      : UploadResponse; stdcall;

    // Cannot unwrap:
    // - Input element wrapper name does not match operation's name
    // - More than one strictly out element was found
    function DocumentStatusByNumber(const body: DocumentStatusByNumberRequest)
      : DocumentStatusByNumberResponse; stdcall;

    // Cannot unwrap:
    // - Input element wrapper name does not match operation's name
    // - More than one strictly out element was found
    function UploadSync(const body: UploadSyncRequest)
      : UploadSyncResponse; stdcall;

    // Cannot unwrap:
    // - Input element wrapper name does not match operation's name
    // - More than one strictly out element was found
    function Upload(const body: UploadRequest): UploadResponse; stdcall;

    // Cannot unwrap:
    // - Input element wrapper name does not match operation's name
    function uploadLogFiles(const body: UploadLogFilesRequest)
      : UploadLogFilesResponse; stdcall;

    // Cannot unwrap:
    // - Input element wrapper name does not match operation's name
    function UploadResolution(const body: UploadResolutionRequest)
      : UploadResolutionResponse; stdcall;

    // Cannot unwrap:
    // - Input element wrapper name does not match operation's name
    function UploadCompany(const body: UploadCompanyRequest)
      : UploadCompanyResponse; stdcall;

    // Cannot unwrap:
    // - Input element wrapper name does not match operation's name
    // - More than one strictly out element was found
    function PaymentStates(const body: PaymentStatesRequest)
      : PaymentStatusResponse; stdcall;

    // Cannot unwrap:
    // - Input element wrapper name does not match operation's name
    // - More than one strictly out element was found
    function DownloadReceiver(const body: DownloadReceiverRequest)
      : DownloadReceiverResponse; stdcall;

    // Cannot unwrap:
    // - Input element wrapper name does not match operation's name
    // - More than one strictly out element was found
    function DocumentStatus(const body: DocumentStatusRequest)
      : DocumentStatusResponse; stdcall;

    // Cannot unwrap:
    // - Input element wrapper name does not match operation's name
    // - More than one strictly out element was found
    function UpdateAppMobile(const body: UpdateAppMobileRequest)
      : UpdateAppMobileResponse; stdcall;

    // Cannot unwrap:
    // - Input element wrapper name does not match operation's name
    function CheckAvailableDocuments(const body: CheckAvailableDocumentsRequest)
      : CheckAvailableDocumentsResponse; stdcall;

    // Cannot unwrap:
    // - Input element wrapper name does not match operation's name
    // - More than one strictly out element was found
    function Download(const body: DownloadRequest): DownloadResponse; stdcall;

    // Cannot unwrap:
    // - Input element wrapper name does not match operation's name
    function DownloadAvailableDocuments(const body
      : DownloadAvailableDocumentsRequest)
      : DownloadAvailableDocumentsResponse; stdcall;
  end;

function GetinvoiceService(UseWSDL: boolean = System.False; Addr: string = '';
  HTTPRIO: THTTPRIO = nil): invoiceService;

implementation

uses System.SysUtils, Principal;

function GetinvoiceService(UseWSDL: boolean; Addr: string; HTTPRIO: THTTPRIO)
  : invoiceService;

var
  RIO: THTTPRIO;
  defWSDL: string;
  defURL: string;
  defSvc: string;
  defPrt: string;
begin

  defWSDL := Main.vUrl + '?wsdl';
  defURL := Main.vUrl;
  defSvc := 'InvoiceServiceImplService';
  defPrt := 'InvoiceServiceImplPort';

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
    Result := (RIO as invoiceService);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end
    else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;

destructor configuration.Destroy;
begin
  System.SysUtils.FreeAndNil(FsenderConfiguration);
  System.SysUtils.FreeAndNil(FgovernmentConfiguration);
  System.SysUtils.FreeAndNil(FbillingPlanConfiguration);
  inherited Destroy;
end;

constructor UploadResolutionRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor UploadResolutionRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fresolution);
  inherited Destroy;
end;

constructor PaymentStatusResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor UploadCompanyResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor UpdateAppMobileRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor UpdateAppMobileResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor UploadRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor UploadRequestDocument.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor UploadLogFilesRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor UploadLogFilesRequest.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FuploadLogFiles) - 1 do
    System.SysUtils.FreeAndNil(FuploadLogFiles[I]);
  System.SetLength(FuploadLogFiles, 0);
  inherited Destroy;
end;

constructor UploadSyncRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor UploadResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor UploadResolutionResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor resolution.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fprefix) - 1 do
    System.SysUtils.FreeAndNil(Fprefix[I]);
  System.SetLength(Fprefix, 0);
  inherited Destroy;
end;

constructor UploadSyncResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor DocumentStatusRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor DownloadReceiverResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor DownloadReceiverRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure DownloadReceiverRequest.SetdocumentPrefix(Index: Integer;
  const Astring: string);
begin
  FdocumentPrefix := Astring;
  FdocumentPrefix_Specified := True;
end;

function DownloadReceiverRequest.documentPrefix_Specified
  (Index: Integer): boolean;
begin
  Result := FdocumentPrefix_Specified;
end;

constructor DocumentStatusByNumberRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure DocumentStatusByNumberRequest.SetdocumentPrefix(Index: Integer;
  const Astring: string);
begin
  FdocumentPrefix := Astring;
  FdocumentPrefix_Specified := True;
end;

function DocumentStatusByNumberRequest.documentPrefix_Specified
  (Index: Integer): boolean;
begin
  Result := FdocumentPrefix_Specified;
end;

procedure property_.Setname_(Index: Integer; const Astring: string);
begin
  Fname_ := Astring;
  Fname__Specified := True;
end;

function property_.name__Specified(Index: Integer): boolean;
begin
  Result := Fname__Specified;
end;

procedure property_.Setvalue(Index: Integer; const Astring: string);
begin
  Fvalue := Astring;
  Fvalue_Specified := True;
end;

function property_.value_Specified(Index: Integer): boolean;
begin
  Result := Fvalue_Specified;
end;

procedure availableDocument.SetdocumentNumber(Index: Integer;
  const Astring: string);
begin
  FdocumentNumber := Astring;
  FdocumentNumber_Specified := True;
end;

function availableDocument.documentNumber_Specified(Index: Integer): boolean;
begin
  Result := FdocumentNumber_Specified;
end;

procedure availableDocument.SetdocumentPrefix(Index: Integer;
  const Astring: string);
begin
  FdocumentPrefix := Astring;
  FdocumentPrefix_Specified := True;
end;

function availableDocument.documentPrefix_Specified(Index: Integer): boolean;
begin
  Result := FdocumentPrefix_Specified;
end;

procedure availableDocument.SetdocumentType(Index: Integer;
  const Astring: string);
begin
  FdocumentType := Astring;
  FdocumentType_Specified := True;
end;

function availableDocument.documentType_Specified(Index: Integer): boolean;
begin
  Result := FdocumentType_Specified;
end;

procedure availableDocument.SetdownloadData(Index: Integer;
  const Astring: string);
begin
  FdownloadData := Astring;
  FdownloadData_Specified := True;
end;

function availableDocument.downloadData_Specified(Index: Integer): boolean;
begin
  Result := FdownloadData_Specified;
end;

procedure availableDocument.SetsenderIdentification(Index: Integer;
  const Astring: string);
begin
  FsenderIdentification := Astring;
  FsenderIdentification_Specified := True;
end;

function availableDocument.senderIdentification_Specified
  (Index: Integer): boolean;
begin
  Result := FsenderIdentification_Specified;
end;

constructor DownloadAvailableDocumentsResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor DownloadAvailableDocumentsResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FavailableDocument) - 1 do
    System.SysUtils.FreeAndNil(FavailableDocument[I]);
  System.SetLength(FavailableDocument, 0);
  inherited Destroy;
end;

constructor DownloadAvailableDocumentsRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor DownloadAvailableDocumentsRequest.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FavailableDocument) - 1 do
    System.SysUtils.FreeAndNil(FavailableDocument[I]);
  System.SetLength(FavailableDocument, 0);
  inherited Destroy;
end;

constructor DownloadRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure DownloadRequest.SetdocumentPrefix(Index: Integer;
  const Astring: string);
begin
  FdocumentPrefix := Astring;
  FdocumentPrefix_Specified := True;
end;

function DownloadRequest.documentPrefix_Specified(Index: Integer): boolean;
begin
  Result := FdocumentPrefix_Specified;
end;

constructor ReceivedDocumentsRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor ReceivedDocumentsRequest.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FreceivedDocuments) - 1 do
    System.SysUtils.FreeAndNil(FreceivedDocuments[I]);
  System.SetLength(FreceivedDocuments, 0);
  inherited Destroy;
end;

procedure uploadLogFileResponses.SetlogFileName(Index: Integer;
  const Astring: string);
begin
  FlogFileName := Astring;
  FlogFileName_Specified := True;
end;

function uploadLogFileResponses.logFileName_Specified(Index: Integer): boolean;
begin
  Result := FlogFileName_Specified;
end;

procedure uploadLogFileResponses.Setmessage_(Index: Integer;
  const Astring: string);
begin
  Fmessage_ := Astring;
  Fmessage__Specified := True;
end;

function uploadLogFileResponses.message__Specified(Index: Integer): boolean;
begin
  Result := Fmessage__Specified;
end;

procedure receivedDocuments.SetcompanyId(Index: Integer; const Astring: string);
begin
  FcompanyId := Astring;
  FcompanyId_Specified := True;
end;

function receivedDocuments.companyId_Specified(Index: Integer): boolean;
begin
  Result := FcompanyId_Specified;
end;

procedure receivedDocuments.SetdocumentNumber(Index: Integer;
  const Astring: string);
begin
  FdocumentNumber := Astring;
  FdocumentNumber_Specified := True;
end;

function receivedDocuments.documentNumber_Specified(Index: Integer): boolean;
begin
  Result := FdocumentNumber_Specified;
end;

procedure receivedDocuments.SetfileName(Index: Integer; const Astring: string);
begin
  FfileName := Astring;
  FfileName_Specified := True;
end;

function receivedDocuments.fileName_Specified(Index: Integer): boolean;
begin
  Result := FfileName_Specified;
end;

procedure receivedDocuments.SetdocumentType(Index: Integer;
  const Astring: string);
begin
  FdocumentType := Astring;
  FdocumentType_Specified := True;
end;

function receivedDocuments.documentType_Specified(Index: Integer): boolean;
begin
  Result := FdocumentType_Specified;
end;

procedure receivedDocuments.Setmessage_(Index: Integer; const Astring: string);
begin
  Fmessage_ := Astring;
  Fmessage__Specified := True;
end;

function receivedDocuments.message__Specified(Index: Integer): boolean;
begin
  Result := Fmessage__Specified;
end;

constructor CheckAvailableDocumentsRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor CheckAvailableDocumentsRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(FinitialDate);
  System.SysUtils.FreeAndNil(FfinalDate);
  inherited Destroy;
end;

constructor DocumentStatusResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor DocumentStatusResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(FprocessDate);
  inherited Destroy;
end;

procedure DocumentStatusResponse.SetprocessDate(Index: Integer;
  const ATXSDateTime: TXSDateTime);
begin
  FprocessDate := ATXSDateTime;
  FprocessDate_Specified := True;
end;

function DocumentStatusResponse.processDate_Specified(Index: Integer): boolean;
begin
  Result := FprocessDate_Specified;
end;

procedure DocumentStatusResponse.SetmessageType(Index: Integer;
  const Astring: string);
begin
  FmessageType := Astring;
  FmessageType_Specified := True;
end;

function DocumentStatusResponse.messageType_Specified(Index: Integer): boolean;
begin
  Result := FmessageType_Specified;
end;

procedure DocumentStatusResponse.SeterrorMessage(Index: Integer;
  const Astring: string);
begin
  FerrorMessage := Astring;
  FerrorMessage_Specified := True;
end;

function DocumentStatusResponse.errorMessage_Specified(Index: Integer): boolean;
begin
  Result := FerrorMessage_Specified;
end;

procedure DocumentStatusResponse.SetlegalStatus(Index: Integer;
  const Astring: string);
begin
  FlegalStatus := Astring;
  FlegalStatus_Specified := True;
end;

function DocumentStatusResponse.legalStatus_Specified(Index: Integer): boolean;
begin
  Result := FlegalStatus_Specified;
end;

procedure DocumentStatusResponse.SetbusinessStatus(Index: Integer;
  const Astring: string);
begin
  FbusinessStatus := Astring;
  FbusinessStatus_Specified := True;
end;

function DocumentStatusResponse.businessStatus_Specified
  (Index: Integer): boolean;
begin
  Result := FbusinessStatus_Specified;
end;

procedure DocumentStatusResponse.SetgovernmentResponseCode(Index: Integer;
  const Astring: string);
begin
  FgovernmentResponseCode := Astring;
  FgovernmentResponseCode_Specified := True;
end;

function DocumentStatusResponse.governmentResponseCode_Specified
  (Index: Integer): boolean;
begin
  Result := FgovernmentResponseCode_Specified;
end;

procedure DocumentStatusResponse.SetgovernmentResponseDescription
  (Index: Integer; const Astring: string);
begin
  FgovernmentResponseDescription := Astring;
  FgovernmentResponseDescription_Specified := True;
end;

function DocumentStatusResponse.governmentResponseDescription_Specified
  (Index: Integer): boolean;
begin
  Result := FgovernmentResponseDescription_Specified;
end;

procedure DocumentStatusResponse.SetgovernmentObservations(Index: Integer;
  const Astring: string);
begin
  FgovernmentObservations := Astring;
  FgovernmentObservations_Specified := True;
end;

function DocumentStatusResponse.governmentObservations_Specified
  (Index: Integer): boolean;
begin
  Result := FgovernmentObservations_Specified;
end;

constructor DocumentStatusByNumberResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor DocumentStatusByNumberResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(FprocessDate);
  inherited Destroy;
end;

procedure DocumentStatusByNumberResponse.SetprocessDate(Index: Integer;
  const ATXSDateTime: TXSDateTime);
begin
  FprocessDate := ATXSDateTime;
  FprocessDate_Specified := True;
end;

function DocumentStatusByNumberResponse.processDate_Specified
  (Index: Integer): boolean;
begin
  Result := FprocessDate_Specified;
end;

procedure DocumentStatusByNumberResponse.SetmessageType(Index: Integer;
  const Astring: string);
begin
  FmessageType := Astring;
  FmessageType_Specified := True;
end;

function DocumentStatusByNumberResponse.messageType_Specified
  (Index: Integer): boolean;
begin
  Result := FmessageType_Specified;
end;

procedure DocumentStatusByNumberResponse.SeterrorMessage(Index: Integer;
  const Astring: string);
begin
  FerrorMessage := Astring;
  FerrorMessage_Specified := True;
end;

function DocumentStatusByNumberResponse.errorMessage_Specified
  (Index: Integer): boolean;
begin
  Result := FerrorMessage_Specified;
end;

procedure DocumentStatusByNumberResponse.SetlegalStatus(Index: Integer;
  const Astring: string);
begin
  FlegalStatus := Astring;
  FlegalStatus_Specified := True;
end;

function DocumentStatusByNumberResponse.legalStatus_Specified
  (Index: Integer): boolean;
begin
  Result := FlegalStatus_Specified;
end;

procedure DocumentStatusByNumberResponse.SetbusinessStatus(Index: Integer;
  const Astring: string);
begin
  FbusinessStatus := Astring;
  FbusinessStatus_Specified := True;
end;

function DocumentStatusByNumberResponse.businessStatus_Specified
  (Index: Integer): boolean;
begin
  Result := FbusinessStatus_Specified;
end;

procedure DocumentStatusByNumberResponse.SetgovernmentResponseCode
  (Index: Integer; const Astring: string);
begin
  FgovernmentResponseCode := Astring;
  FgovernmentResponseCode_Specified := True;
end;

function DocumentStatusByNumberResponse.governmentResponseCode_Specified
  (Index: Integer): boolean;
begin
  Result := FgovernmentResponseCode_Specified;
end;

procedure DocumentStatusByNumberResponse.SetgovernmentResponseDescription
  (Index: Integer; const Astring: string);
begin
  FgovernmentResponseDescription := Astring;
  FgovernmentResponseDescription_Specified := True;
end;

function DocumentStatusByNumberResponse.governmentResponseDescription_Specified
  (Index: Integer): boolean;
begin
  Result := FgovernmentResponseDescription_Specified;
end;

procedure DocumentStatusByNumberResponse.SetgovernmentObservations
  (Index: Integer; const Astring: string);
begin
  FgovernmentObservations := Astring;
  FgovernmentObservations_Specified := True;
end;

function DocumentStatusByNumberResponse.governmentObservations_Specified
  (Index: Integer): boolean;
begin
  Result := FgovernmentObservations_Specified;
end;

destructor company.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fproperties) - 1 do
    System.SysUtils.FreeAndNil(Fproperties[I]);
  System.SetLength(Fproperties, 0);
  System.SysUtils.FreeAndNil(Fconfiguration);
  System.SysUtils.FreeAndNil(FcreationDateOriginal);
  inherited Destroy;
end;

procedure company.SetcreationDateOriginal(Index: Integer;
  const ATXSDateTime: TXSDateTime);
begin
  FcreationDateOriginal := ATXSDateTime;
  FcreationDateOriginal_Specified := True;
end;

function company.creationDateOriginal_Specified(Index: Integer): boolean;
begin
  Result := FcreationDateOriginal_Specified;
end;

constructor PaymentStatesByDocumentsRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor PaymentStatesByDocumentsRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(FinitialDate);
  System.SysUtils.FreeAndNil(FfinalDate);
  inherited Destroy;
end;

constructor DownloadResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor PaymentStatesRequest.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure PaymentStatesRequest.SetdocumentPrefix(Index: Integer;
  const Astring: string);
begin
  FdocumentPrefix := Astring;
  FdocumentPrefix_Specified := True;
end;

function PaymentStatesRequest.documentPrefix_Specified(Index: Integer): boolean;
begin
  Result := FdocumentPrefix_Specified;
end;

constructor PaymentStatesByDocumentsResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

initialization

{ invoiceService }
InvRegistry.RegisterInterface(TypeInfo(invoiceService),
  'http://invoice.carvajal.com/invoiceService/', '');
InvRegistry.RegisterDefaultSOAPAction(TypeInfo(invoiceService),
  'http://invoice.carvajal.com/invoiceService/%operationName%');
InvRegistry.RegisterInvokeOptions(TypeInfo(invoiceService), ioDocument);
InvRegistry.RegisterInvokeOptions(TypeInfo(invoiceService), ioLiteral);
{ invoiceService.ValidateSentFiles }
InvRegistry.RegisterParamInfo(TypeInfo(invoiceService), 'ValidateSentFiles',
  'body', '', '[ArrayItemName="receivedDocuments"]');
{ invoiceService.UploadLogFiles }
InvRegistry.RegisterParamInfo(TypeInfo(invoiceService), 'UploadLogFiles',
  'body', '', '[ArrayItemName="uploadLogFileResponses"]');
{ invoiceService.UploadCompany }
InvRegistry.RegisterParamInfo(TypeInfo(invoiceService), 'UploadCompany', 'body',
  '', '[ArrayItemName="company"]');
{ invoiceService.CheckAvailableDocuments }
InvRegistry.RegisterParamInfo(TypeInfo(invoiceService),
  'CheckAvailableDocuments', 'body', '', '[ArrayItemName="availableDocument"]');
RemClassRegistry.RegisterXSInfo(TypeInfo(UploadLogFilesResponse),
  'http://invoice.carvajal.com/invoiceService/', 'UploadLogFilesResponse');
RemClassRegistry.RegisterSerializeOptions(TypeInfo(UploadLogFilesResponse),
  [xoLiteralParam]);
RemClassRegistry.RegisterXSInfo(TypeInfo(UploadCompanyRequest),
  'http://invoice.carvajal.com/invoiceService/', 'UploadCompanyRequest');
RemClassRegistry.RegisterSerializeOptions(TypeInfo(UploadCompanyRequest),
  [xoLiteralParam]);
RemClassRegistry.RegisterXSClass(configuration,
  'http://invoice.carvajal.com/invoiceService/', 'configuration');
RemClassRegistry.RegisterXSClass(UploadResolutionRequest,
  'http://invoice.carvajal.com/invoiceService/', 'UploadResolutionRequest');
RemClassRegistry.RegisterSerializeOptions(UploadResolutionRequest,
  [xoLiteralParam]);
RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_prefix),
  'http://invoice.carvajal.com/invoiceService/', 'Array_Of_prefix');
RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_uploadLogFiles),
  'http://invoice.carvajal.com/invoiceService/', 'Array_Of_uploadLogFiles');
RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_receivedDocuments),
  'http://invoice.carvajal.com/invoiceService/', 'Array_Of_receivedDocuments');
RemClassRegistry.RegisterXSClass(InvoiceServiceFault2,
  'http://invoice.carvajal.com/invoiceService/', 'InvoiceServiceFault2',
  'InvoiceServiceFault');
RemClassRegistry.RegisterXSClass(PaymentStatusResponse,
  'http://invoice.carvajal.com/invoiceService/', 'PaymentStatusResponse');
RemClassRegistry.RegisterSerializeOptions(PaymentStatusResponse,
  [xoLiteralParam]);
RemClassRegistry.RegisterXSClass(UploadCompanyResponse,
  'http://invoice.carvajal.com/invoiceService/', 'UploadCompanyResponse');
RemClassRegistry.RegisterSerializeOptions(UploadCompanyResponse,
  [xoLiteralParam]);
RemClassRegistry.RegisterXSClass(UpdateAppMobileRequest,
  'http://invoice.carvajal.com/invoiceService/', 'UpdateAppMobileRequest');
RemClassRegistry.RegisterSerializeOptions(UpdateAppMobileRequest,
  [xoLiteralParam]);
RemClassRegistry.RegisterXSClass(UpdateAppMobileResponse,
  'http://invoice.carvajal.com/invoiceService/', 'UpdateAppMobileResponse');
RemClassRegistry.RegisterSerializeOptions(UpdateAppMobileResponse,
  [xoLiteralParam]);
RemClassRegistry.RegisterXSClass(UploadRequest,
  'http://invoice.carvajal.com/invoiceService/', 'UploadRequest');
RemClassRegistry.RegisterSerializeOptions(UploadRequest, [xoLiteralParam]);
RemClassRegistry.RegisterXSClass(UploadRequestDocument,
  'http://invoice.carvajal.com/invoiceService/', 'UploadRequestDocument');
RemClassRegistry.RegisterSerializeOptions(UploadRequestDocument,
  [xoLiteralParam]);
RemClassRegistry.RegisterXSClass(UploadLogFilesRequest,
  'http://invoice.carvajal.com/invoiceService/', 'UploadLogFilesRequest');
RemClassRegistry.RegisterSerializeOptions(UploadLogFilesRequest,
  [xoLiteralParam]);
RemClassRegistry.RegisterXSClass(uploadLogFiles,
  'http://invoice.carvajal.com/invoiceService/', 'uploadLogFiles');
RemClassRegistry.RegisterXSClass(UploadSyncRequest,
  'http://invoice.carvajal.com/invoiceService/', 'UploadSyncRequest');
RemClassRegistry.RegisterSerializeOptions(UploadSyncRequest, [xoLiteralParam]);
RemClassRegistry.RegisterXSClass(UploadResponse,
  'http://invoice.carvajal.com/invoiceService/', 'UploadResponse');
RemClassRegistry.RegisterSerializeOptions(UploadResponse, [xoLiteralParam]);
RemClassRegistry.RegisterXSClass(UploadResolutionResponse,
  'http://invoice.carvajal.com/invoiceService/', 'UploadResolutionResponse');
RemClassRegistry.RegisterSerializeOptions(UploadResolutionResponse,
  [xoLiteralParam]);
RemClassRegistry.RegisterXSClass(resolution,
  'http://invoice.carvajal.com/invoiceService/', 'resolution');
RemClassRegistry.RegisterXSClass(prefix,
  'http://invoice.carvajal.com/invoiceService/', 'prefix');
RemClassRegistry.RegisterXSClass(UploadSyncResponse,
  'http://invoice.carvajal.com/invoiceService/', 'UploadSyncResponse');
RemClassRegistry.RegisterSerializeOptions(UploadSyncResponse, [xoLiteralParam]);
RemClassRegistry.RegisterXSClass(DocumentStatusRequest,
  'http://invoice.carvajal.com/invoiceService/', 'DocumentStatusRequest');
RemClassRegistry.RegisterSerializeOptions(DocumentStatusRequest,
  [xoLiteralParam]);
RemClassRegistry.RegisterXSClass(DownloadReceiverResponse,
  'http://invoice.carvajal.com/invoiceService/', 'DownloadReceiverResponse');
RemClassRegistry.RegisterSerializeOptions(DownloadReceiverResponse,
  [xoLiteralParam]);
RemClassRegistry.RegisterXSClass(DownloadReceiverRequest,
  'http://invoice.carvajal.com/invoiceService/', 'DownloadReceiverRequest');
RemClassRegistry.RegisterSerializeOptions(DownloadReceiverRequest,
  [xoLiteralParam]);
RemClassRegistry.RegisterXSClass(DocumentStatusByNumberRequest,
  'http://invoice.carvajal.com/invoiceService/',
  'DocumentStatusByNumberRequest');
RemClassRegistry.RegisterSerializeOptions(DocumentStatusByNumberRequest,
  [xoLiteralParam]);
RemClassRegistry.RegisterXSClass(billingPlanConfiguration,
  'http://invoice.carvajal.com/invoiceService/', 'billingPlanConfiguration');
RemClassRegistry.RegisterExternalPropName(TypeInfo(billingPlanConfiguration),
  'type_', '[ExtName="type"]');
RemClassRegistry.RegisterXSClass(property_,
  'http://invoice.carvajal.com/invoiceService/', 'property_', 'property');
RemClassRegistry.RegisterExternalPropName(TypeInfo(property_), 'name_',
  '[ExtName="name"]');
RemClassRegistry.RegisterXSClass(availableDocument,
  'http://invoice.carvajal.com/invoiceService/', 'availableDocument');
RemClassRegistry.RegisterXSInfo(TypeInfo(CheckAvailableDocumentsResponse),
  'http://invoice.carvajal.com/invoiceService/',
  'CheckAvailableDocumentsResponse');
RemClassRegistry.RegisterSerializeOptions
  (TypeInfo(CheckAvailableDocumentsResponse), [xoLiteralParam]);
RemClassRegistry.RegisterXSClass(DownloadAvailableDocumentsResponse,
  'http://invoice.carvajal.com/invoiceService/',
  'DownloadAvailableDocumentsResponse');
RemClassRegistry.RegisterExternalPropName
  (TypeInfo(DownloadAvailableDocumentsResponse), 'availableDocument',
  '[ArrayItemName="availableDocument"]');
RemClassRegistry.RegisterSerializeOptions(DownloadAvailableDocumentsResponse,
  [xoLiteralParam]);
RemClassRegistry.RegisterXSClass(DownloadAvailableDocumentsRequest,
  'http://invoice.carvajal.com/invoiceService/',
  'DownloadAvailableDocumentsRequest');
RemClassRegistry.RegisterExternalPropName
  (TypeInfo(DownloadAvailableDocumentsRequest), 'availableDocument',
  '[ArrayItemName="availableDocument"]');
RemClassRegistry.RegisterSerializeOptions(DownloadAvailableDocumentsRequest,
  [xoLiteralParam]);
RemClassRegistry.RegisterXSClass(governmentConfiguration,
  'http://invoice.carvajal.com/invoiceService/', 'governmentConfiguration');
RemClassRegistry.RegisterXSClass(DownloadRequest,
  'http://invoice.carvajal.com/invoiceService/', 'DownloadRequest');
RemClassRegistry.RegisterSerializeOptions(DownloadRequest, [xoLiteralParam]);
RemClassRegistry.RegisterXSClass(ReceivedDocumentsRequest,
  'http://invoice.carvajal.com/invoiceService/', 'ReceivedDocumentsRequest');
RemClassRegistry.RegisterSerializeOptions(ReceivedDocumentsRequest,
  [xoLiteralParam]);
RemClassRegistry.RegisterXSClass(uploadLogFileResponses,
  'http://invoice.carvajal.com/invoiceService/', 'uploadLogFileResponses');
RemClassRegistry.RegisterExternalPropName(TypeInfo(uploadLogFileResponses),
  'message_', '[ExtName="message"]');
RemClassRegistry.RegisterXSInfo(TypeInfo(properties),
  'http://invoice.carvajal.com/invoiceService/', 'properties');
RemClassRegistry.RegisterXSClass(receivedDocuments,
  'http://invoice.carvajal.com/invoiceService/', 'receivedDocuments');
RemClassRegistry.RegisterExternalPropName(TypeInfo(receivedDocuments),
  'message_', '[ExtName="message"]');
RemClassRegistry.RegisterXSInfo(TypeInfo(ReceivedDocumentsResponse),
  'http://invoice.carvajal.com/invoiceService/', 'ReceivedDocumentsResponse');
RemClassRegistry.RegisterSerializeOptions(TypeInfo(ReceivedDocumentsResponse),
  [xoLiteralParam]);
RemClassRegistry.RegisterXSClass(receivedDocuments2,
  'http://invoice.carvajal.com/invoiceService/', 'receivedDocuments2',
  'receivedDocuments');
RemClassRegistry.RegisterXSClass(CheckAvailableDocumentsRequest,
  'http://invoice.carvajal.com/invoiceService/',
  'CheckAvailableDocumentsRequest');
RemClassRegistry.RegisterSerializeOptions(CheckAvailableDocumentsRequest,
  [xoLiteralParam]);
RemClassRegistry.RegisterXSClass(DocumentStatusResponse,
  'http://invoice.carvajal.com/invoiceService/', 'DocumentStatusResponse');
RemClassRegistry.RegisterSerializeOptions(DocumentStatusResponse,
  [xoLiteralParam]);
RemClassRegistry.RegisterXSClass(DocumentStatusByNumberResponse,
  'http://invoice.carvajal.com/invoiceService/',
  'DocumentStatusByNumberResponse');
RemClassRegistry.RegisterSerializeOptions(DocumentStatusByNumberResponse,
  [xoLiteralParam]);
RemClassRegistry.RegisterXSClass(company,
  'http://invoice.carvajal.com/invoiceService/', 'company');
RemClassRegistry.RegisterExternalPropName(TypeInfo(company), 'name_',
  '[ExtName="name"]');
RemClassRegistry.RegisterExternalPropName(TypeInfo(company), 'properties',
  '[ArrayItemName="property"]');
RemClassRegistry.RegisterXSClass(PaymentStatesByDocumentsRequest,
  'http://invoice.carvajal.com/invoiceService/',
  'PaymentStatesByDocumentsRequest');
RemClassRegistry.RegisterSerializeOptions(PaymentStatesByDocumentsRequest,
  [xoLiteralParam]);
RemClassRegistry.RegisterXSClass(InvoiceServiceFault,
  'http://invoice.carvajal.com/invoiceService/', 'InvoiceServiceFault');
RemClassRegistry.RegisterXSClass(DownloadResponse,
  'http://invoice.carvajal.com/invoiceService/', 'DownloadResponse');
RemClassRegistry.RegisterSerializeOptions(DownloadResponse, [xoLiteralParam]);
RemClassRegistry.RegisterXSClass(senderConfiguration,
  'http://invoice.carvajal.com/invoiceService/', 'senderConfiguration');
RemClassRegistry.RegisterXSClass(PaymentStatesRequest,
  'http://invoice.carvajal.com/invoiceService/', 'PaymentStatesRequest');
RemClassRegistry.RegisterSerializeOptions(PaymentStatesRequest,
  [xoLiteralParam]);
RemClassRegistry.RegisterXSClass(PaymentStatesByDocumentsResponse,
  'http://invoice.carvajal.com/invoiceService/',
  'PaymentStatesByDocumentsResponse');
RemClassRegistry.RegisterSerializeOptions(PaymentStatesByDocumentsResponse,
  [xoLiteralParam]);

end.
