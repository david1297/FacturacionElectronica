{ ****************************************************** }
{ }
{ XML Data Binding }
{ }
{ Generated on: 28/07/2018 10:42:56 a. m. }
{ Generated from: C:\FacturaNutri\Nutritec.xsd }
{ Settings stored in: C:\FacturaNutri\Nutritec.xdb }
{ }
{ ****************************************************** }

unit uFacNutritec;

interface

uses Xml.xmldom, Xml.XMLDoc, Xml.XMLIntf;

type

  { Forward Decls }

  IXMLFACTURA = interface;
  IXMLFACTURA_ENC = interface;
  IXMLFACTURA_TET = interface;
  IXMLFACTURA_EMI = interface;
  IXMLFACTURA_EMI_CDE = interface;
  IXMLFACTURA_ADQ = interface;
  IXMLFACTURA_ADQ_CDA = interface;
  IXMLFACTURA_TOT = interface;
  IXMLFACTURA_TIM = interface;
  IXMLFACTURA_TIMList = interface;
  IXMLFACTURA_TIM_IMP = interface;
  IXMLFACTURA_OVT = interface;
  IXMLFACTURA_OVTList = interface;
  IXMLFACTURA_TDC = interface;
  IXMLFACTURA_DRF = interface;
  IXMLFACTURA_NOT = interface;
  IXMLFACTURA_NOTList = interface;
  IXMLFACTURA_DSC = interface;
  IXMLFACTURA_DSCList = interface;
  IXMLFACTURA_ORC = interface;
  IXMLFACTURA_CDN = interface;
  IXMLFACTURA_REF = interface;
  IXMLFACTURA_REFList = interface;
  IXMLFACTURA_IEN = interface;
  IXMLFACTURA_MEP = interface;
  IXMLFACTURA_CTS = interface;
  IXMLFACTURA_ITE = interface;
  IXMLFACTURA_ITEList = interface;
  IXMLFACTURA_ITE_IDE = interface;
  IXMLFACTURA_ITE_IDEList = interface;
  IXMLFACTURA_ITE_IRF = interface;
  IXMLFACTURA_ITE_IRFList = interface;
  IXMLFACTURA_ITE_TII = interface;
  IXMLFACTURA_ITE_TIIList = interface;
  IXMLFACTURA_ITE_TII_IIM = interface;
  IXMLFACTURA_ITE_TII_IIMList = interface;
  { IXMLFACTURA }

  IXMLFACTURA = interface(IXMLNode)
    ['{FEA01178-F3E1-4957-A87D-AF1A475EB010}']
    { Property Accessors }
    function Get_ENC: IXMLFACTURA_ENC;
    function Get_TET: IXMLFACTURA_TET;
    function Get_EMI: IXMLFACTURA_EMI;
    function Get_ADQ: IXMLFACTURA_ADQ;
    function Get_TOT: IXMLFACTURA_TOT;
    function Get_TIM: IXMLFACTURA_TIMList;
    function Get_OVT: IXMLFACTURA_OVTList;
    function Get_TDC: IXMLFACTURA_TDC;
    function Get_DRF: IXMLFACTURA_DRF;
    function Get_NOT_: IXMLFACTURA_NOTList;
    function Get_DSC: IXMLFACTURA_DSCList;
    function Get_ORC: IXMLFACTURA_ORC;
    function Get_CDN: IXMLFACTURA_CDN;
    function Get_REF: IXMLFACTURA_REFList;
    function Get_IEN: IXMLFACTURA_IEN;
    function Get_MEP: IXMLFACTURA_MEP;
    function Get_CTS: IXMLFACTURA_CTS;
    function Get_ITE: IXMLFACTURA_ITEList;
    { Methods & Properties }
    property ENC: IXMLFACTURA_ENC read Get_ENC;
    property TET: IXMLFACTURA_TET read Get_TET;
    property EMI: IXMLFACTURA_EMI read Get_EMI;
    property ADQ: IXMLFACTURA_ADQ read Get_ADQ;
    property TOT: IXMLFACTURA_TOT read Get_TOT;
    property TIM: IXMLFACTURA_TIMList read Get_TIM;
    property OVT: IXMLFACTURA_OVTList read Get_OVT;
    property TDC: IXMLFACTURA_TDC read Get_TDC;
    property DRF: IXMLFACTURA_DRF read Get_DRF;
    property NOT_: IXMLFACTURA_NOTList read Get_NOT_;
    property DSC: IXMLFACTURA_DSCList read Get_DSC;
    property ORC: IXMLFACTURA_ORC read Get_ORC;
    property CDN: IXMLFACTURA_CDN read Get_CDN;
    property REF: IXMLFACTURA_REFList read Get_REF;
    property IEN: IXMLFACTURA_IEN read Get_IEN;
    property MEP: IXMLFACTURA_MEP read Get_MEP;
    property CTS: IXMLFACTURA_CTS read Get_CTS;
    property ITE: IXMLFACTURA_ITEList read Get_ITE;
  end;

  { IXMLFACTURA_ENC }

  IXMLFACTURA_ENC = interface(IXMLNode)
    ['{E94DEBE3-4924-46A2-A799-91D3DD453393}']
    { Property Accessors }
    function Get_ENC_1: UnicodeString;
    function Get_ENC_2: Integer;
    function Get_ENC_3: Integer;
    function Get_ENC_4: UnicodeString;
    function Get_ENC_5: UnicodeString;
    function Get_ENC_6: UnicodeString;
    function Get_ENC_7: UnicodeString;
    function Get_ENC_8: UnicodeString;
    function Get_ENC_9: Double;
    function Get_ENC_10: UnicodeString;
    function Get_ENC_11: UnicodeString;
    function Get_ENC_12: UnicodeString;
    function Get_ENC_13: UnicodeString;
    function Get_ENC_14: UnicodeString;
    function Get_ENC_15: Double;
    function Get_ENC_16: UnicodeString;
    procedure Set_ENC_1(Value: UnicodeString);
    procedure Set_ENC_2(Value: Integer);
    procedure Set_ENC_3(Value: Integer);
    procedure Set_ENC_4(Value: UnicodeString);
    procedure Set_ENC_5(Value: UnicodeString);
    procedure Set_ENC_6(Value: UnicodeString);
    procedure Set_ENC_7(Value: UnicodeString);
    procedure Set_ENC_8(Value: UnicodeString);
    procedure Set_ENC_9(Value: Double);
    procedure Set_ENC_10(Value: UnicodeString);
    procedure Set_ENC_11(Value: UnicodeString);
    procedure Set_ENC_12(Value: UnicodeString);
    procedure Set_ENC_13(Value: UnicodeString);
    procedure Set_ENC_14(Value: UnicodeString);
    procedure Set_ENC_15(Value: Double);
    procedure Set_ENC_16(Value: UnicodeString);
    { Methods & Properties }
    property ENC_1: UnicodeString read Get_ENC_1 write Set_ENC_1;
    property ENC_2: Integer read Get_ENC_2 write Set_ENC_2;
    property ENC_3: Integer read Get_ENC_3 write Set_ENC_3;
    property ENC_4: UnicodeString read Get_ENC_4 write Set_ENC_4;
    property ENC_5: UnicodeString read Get_ENC_5 write Set_ENC_5;
    property ENC_6: UnicodeString read Get_ENC_6 write Set_ENC_6;
    property ENC_7: UnicodeString read Get_ENC_7 write Set_ENC_7;
    property ENC_8: UnicodeString read Get_ENC_8 write Set_ENC_8;
    property ENC_9: Double read Get_ENC_9 write Set_ENC_9;
    property ENC_10: UnicodeString read Get_ENC_10 write Set_ENC_10;
    property ENC_11: UnicodeString read Get_ENC_11 write Set_ENC_11;
    property ENC_12: UnicodeString read Get_ENC_12 write Set_ENC_12;
    property ENC_13: UnicodeString read Get_ENC_13 write Set_ENC_13;
    property ENC_14: UnicodeString read Get_ENC_14 write Set_ENC_14;
    property ENC_15: Double read Get_ENC_15 write Set_ENC_15;
    property ENC_16: UnicodeString read Get_ENC_16 write Set_ENC_16;
  end;

  { IXMLFACTURA_TET }

  IXMLFACTURA_TET = interface(IXMLNode)
    ['{E94DEBE3-4924-46A2-A799-91D3DD453393}']
    { Property Accessors }
    function Get_TET_1: UnicodeString;
    function Get_TET_2: UnicodeString;
    function Get_TET_3: UnicodeString;
    function Get_TET_4: UnicodeString;
    procedure Set_TET_1(Value: UnicodeString);
    procedure Set_TET_2(Value: UnicodeString);
    procedure Set_TET_3(Value: UnicodeString);
    procedure Set_TET_4(Value: UnicodeString);
    { Methods & Properties }
    property TET_1: UnicodeString read Get_TET_1 write Set_TET_1;
    property TET_2: UnicodeString read Get_TET_2 write Set_TET_2;
    property TET_3: UnicodeString read Get_TET_3 write Set_TET_3;
    property TET_4: UnicodeString read Get_TET_4 write Set_TET_4;
  end;

  { IXMLFACTURA_EMI }

  IXMLFACTURA_EMI = interface(IXMLNode)
    ['{7435C12B-59ED-4601-9A0C-BC7706E48919}']
    { Property Accessors }
    function Get_EMI_1: Double;
    function Get_EMI_2: Integer;
    function Get_EMI_3: Double;
    function Get_EMI_4: Double;
    function Get_EMI_5: UnicodeString;
    function Get_EMI_6: UnicodeString;
    function Get_EMI_7: UnicodeString;
    function Get_EMI_8: UnicodeString;
    function Get_EMI_9: UnicodeString;
    function Get_EMI_10: UnicodeString;
    function Get_EMI_11: UnicodeString;
    function Get_EMI_12: UnicodeString;
    function Get_EMI_13: UnicodeString;
    function Get_EMI_14: UnicodeString;
    function Get_EMI_15: UnicodeString;
    function Get_EMI_16: Int64;
    function Get_CDE: IXMLFACTURA_EMI_CDE;
    procedure Set_EMI_1(Value: Double);
    procedure Set_EMI_2(Value: Integer);
    procedure Set_EMI_3(Value: Double);
    procedure Set_EMI_4(Value: Double);
    procedure Set_EMI_5(Value: UnicodeString);
    procedure Set_EMI_6(Value: UnicodeString);
    procedure Set_EMI_7(Value: UnicodeString);
    procedure Set_EMI_8(Value: UnicodeString);
    procedure Set_EMI_9(Value: UnicodeString);
    procedure Set_EMI_10(Value: UnicodeString);
    procedure Set_EMI_11(Value: UnicodeString);
    procedure Set_EMI_12(Value: UnicodeString);
    procedure Set_EMI_13(Value: UnicodeString);
    procedure Set_EMI_14(Value: UnicodeString);
    procedure Set_EMI_15(Value: UnicodeString);
    procedure Set_EMI_16(Value: Int64);
    { Methods & Properties }
    property EMI_1: Double read Get_EMI_1 write Set_EMI_1;
    property EMI_2: Integer read Get_EMI_2 write Set_EMI_2;
    property EMI_3: Double read Get_EMI_3 write Set_EMI_3;
    property EMI_4: Double read Get_EMI_4 write Set_EMI_4;
    property EMI_5: UnicodeString read Get_EMI_5 write Set_EMI_5;
    property EMI_6: UnicodeString read Get_EMI_6 write Set_EMI_6;
    property EMI_7: UnicodeString read Get_EMI_7 write Set_EMI_7;
    property EMI_8: UnicodeString read Get_EMI_8 write Set_EMI_8;
    property EMI_9: UnicodeString read Get_EMI_9 write Set_EMI_9;
    property EMI_10: UnicodeString read Get_EMI_10 write Set_EMI_10;
    property EMI_11: UnicodeString read Get_EMI_11 write Set_EMI_11;
    property EMI_12: UnicodeString read Get_EMI_12 write Set_EMI_12;
    property EMI_13: UnicodeString read Get_EMI_13 write Set_EMI_13;
    property EMI_14: UnicodeString read Get_EMI_14 write Set_EMI_14;
    property EMI_15: UnicodeString read Get_EMI_15 write Set_EMI_15;
    property EMI_16: Int64 read Get_EMI_16 write Set_EMI_16;
    property CDE: IXMLFACTURA_EMI_CDE read Get_CDE;
  end;

  { IXMLFACTURA_EMI_CDE }

  IXMLFACTURA_EMI_CDE = interface(IXMLNode)
    ['{200CC61C-B6B8-4AB2-9C41-1A01659EB9D7}']
    { Property Accessors }
    function Get_CDE_1: Double;
    function Get_CDE_2: UnicodeString;
    function Get_CDE_3: String;
    function Get_CDE_4: UnicodeString;
    procedure Set_CDE_1(Value: Double);
    procedure Set_CDE_2(Value: UnicodeString);
    procedure Set_CDE_3(Value: String);
    procedure Set_CDE_4(Value: UnicodeString);
    { Methods & Properties }
    property CDE_1: Double read Get_CDE_1 write Set_CDE_1;
    property CDE_2: UnicodeString read Get_CDE_2 write Set_CDE_2;
    property CDE_3: String read Get_CDE_3 write Set_CDE_3;
    property CDE_4: UnicodeString read Get_CDE_4 write Set_CDE_4;
  end;

  { IXMLFACTURA_ADQ }

  IXMLFACTURA_ADQ = interface(IXMLNode)
    ['{E9EB970C-76A5-49EE-B551-90A45ECADA9A}']
    { Property Accessors }
    function Get_ADQ_1: Double;
    function Get_ADQ_2: Integer;
    function Get_ADQ_3: Double;
    function Get_ADQ_4: Double;
    function Get_ADQ_5: Integer;
    function Get_ADQ_6: UnicodeString;
    function Get_ADQ_7: UnicodeString;
    function Get_ADQ_8: UnicodeString;
    function Get_ADQ_9: UnicodeString;
    function Get_ADQ_10: UnicodeString;
    function Get_ADQ_11: UnicodeString;
    function Get_ADQ_12: UnicodeString;
    function Get_ADQ_13: UnicodeString;
    function Get_ADQ_15: UnicodeString;
    function Get_ADQ_16: UnicodeString;
    function Get_CDA: IXMLFACTURA_ADQ_CDA;
    procedure Set_ADQ_1(Value: Double);
    procedure Set_ADQ_2(Value: Integer);
    procedure Set_ADQ_3(Value: Double);
    procedure Set_ADQ_4(Value: Double);
    procedure Set_ADQ_5(Value: Integer);
    procedure Set_ADQ_6(Value: UnicodeString);
    procedure Set_ADQ_7(Value: UnicodeString);
    procedure Set_ADQ_8(Value: UnicodeString);
    procedure Set_ADQ_9(Value: UnicodeString);
    procedure Set_ADQ_10(Value: UnicodeString);
    procedure Set_ADQ_11(Value: UnicodeString);
    procedure Set_ADQ_12(Value: UnicodeString);
    procedure Set_ADQ_13(Value: UnicodeString);
    procedure Set_ADQ_15(Value: UnicodeString);
    procedure Set_ADQ_16(Value: UnicodeString);
    { Methods & Properties }
    property ADQ_1: Double read Get_ADQ_1 write Set_ADQ_1;
    property ADQ_2: Integer read Get_ADQ_2 write Set_ADQ_2;
    property ADQ_3: Double read Get_ADQ_3 write Set_ADQ_3;
    property ADQ_4: Double read Get_ADQ_4 write Set_ADQ_4;
    property ADQ_5: Integer read Get_ADQ_5 write Set_ADQ_5;
    property ADQ_6: UnicodeString read Get_ADQ_6 write Set_ADQ_6;
    property ADQ_7: UnicodeString read Get_ADQ_7 write Set_ADQ_7;
    property ADQ_8: UnicodeString read Get_ADQ_8 write Set_ADQ_8;
    property ADQ_9: UnicodeString read Get_ADQ_9 write Set_ADQ_9;
    property ADQ_10: UnicodeString read Get_ADQ_10 write Set_ADQ_10;
    property ADQ_11: UnicodeString read Get_ADQ_11 write Set_ADQ_11;
    property ADQ_12: UnicodeString read Get_ADQ_12 write Set_ADQ_12;
    property ADQ_13: UnicodeString read Get_ADQ_13 write Set_ADQ_13;
    property ADQ_15: UnicodeString read Get_ADQ_15 write Set_ADQ_15;
    property ADQ_16: UnicodeString read Get_ADQ_16 write Set_ADQ_16;
    property CDA: IXMLFACTURA_ADQ_CDA read Get_CDA;
  end;

  { IXMLFACTURA_ADQ_CDA }

  IXMLFACTURA_ADQ_CDA = interface(IXMLNode)
    ['{01326875-B476-43AD-876A-956C3EE34A27}']
    { Property Accessors }
    function Get_CDA_1: Double;
    function Get_CDA_2: UnicodeString;
    function Get_CDA_3: string;
    function Get_CDA_4: UnicodeString;
    procedure Set_CDA_1(Value: Double);
    procedure Set_CDA_2(Value: UnicodeString);
    procedure Set_CDA_3(Value: string);
    procedure Set_CDA_4(Value: UnicodeString);
    { Methods & Properties }
    property CDA_1: Double read Get_CDA_1 write Set_CDA_1;
    property CDA_2: UnicodeString read Get_CDA_2 write Set_CDA_2;
    property CDA_3: string read Get_CDA_3 write Set_CDA_3;
    property CDA_4: UnicodeString read Get_CDA_4 write Set_CDA_4;
  end;

  { IXMLFACTURA_TOT }

  IXMLFACTURA_TOT = interface(IXMLNode)
    ['{9C6E53F7-1E92-46EE-ACC2-5FF499B8132B}']
    { Property Accessors }
    function Get_TOT_1: Double;
    function Get_TOT_2: UnicodeString;
    function Get_TOT_3: Double;
    function Get_TOT_4: UnicodeString;
    function Get_TOT_5: Double;
    function Get_TOT_6: UnicodeString;
    function Get_TOT_7: Double;
    function Get_TOT_8: UnicodeString;
    function Get_TOT_9: Double;
    function Get_TOT_10: UnicodeString;
    function Get_TOT_11: Double;
    function Get_TOT_12: UnicodeString;
    function Get_TOT_13: Double;
    function Get_TOT_14: UnicodeString;
    procedure Set_TOT_1(Value: Double);
    procedure Set_TOT_2(Value: UnicodeString);
    procedure Set_TOT_3(Value: Double);
    procedure Set_TOT_4(Value: UnicodeString);
    procedure Set_TOT_5(Value: Double);
    procedure Set_TOT_6(Value: UnicodeString);
    procedure Set_TOT_7(Value: Double);
    procedure Set_TOT_8(Value: UnicodeString);
    procedure Set_TOT_9(Value: Double);
    procedure Set_TOT_10(Value: UnicodeString);
    procedure Set_TOT_11(Value: Double);
    procedure Set_TOT_12(Value: UnicodeString);
    procedure Set_TOT_13(Value: Double);
    procedure Set_TOT_14(Value: UnicodeString);
    { Methods & Properties }
    property TOT_1: Double read Get_TOT_1 write Set_TOT_1;
    property TOT_2: UnicodeString read Get_TOT_2 write Set_TOT_2;
    property TOT_3: Double read Get_TOT_3 write Set_TOT_3;
    property TOT_4: UnicodeString read Get_TOT_4 write Set_TOT_4;
    property TOT_5: Double read Get_TOT_5 write Set_TOT_5;
    property TOT_6: UnicodeString read Get_TOT_6 write Set_TOT_6;
    property TOT_7: Double read Get_TOT_7 write Set_TOT_7;
    property TOT_8: UnicodeString read Get_TOT_8 write Set_TOT_8;
    property TOT_9: Double read Get_TOT_9 write Set_TOT_9;
    property TOT_10: UnicodeString read Get_TOT_10 write Set_TOT_10;
    property TOT_11: Double read Get_TOT_11 write Set_TOT_11;
    property TOT_12: UnicodeString read Get_TOT_12 write Set_TOT_12;
    property TOT_13: Double read Get_TOT_13 write Set_TOT_13;
    property TOT_14: UnicodeString read Get_TOT_14 write Set_TOT_14;
  end;

  { IXMLFACTURA_TIM }

  IXMLFACTURA_TIM = interface(IXMLNode)
    ['{24B49282-C8AD-47E0-9E0F-1B5B10D77CDA}']
    { Property Accessors }
    function Get_TIM_1: UnicodeString;
    function Get_TIM_2: Double;
    function Get_TIM_3: UnicodeString;
    function Get_IMP: IXMLFACTURA_TIM_IMP;
    procedure Set_TIM_1(Value: UnicodeString);
    procedure Set_TIM_2(Value: Double);
    procedure Set_TIM_3(Value: UnicodeString);
    { Methods & Properties }
    property TIM_1: UnicodeString read Get_TIM_1 write Set_TIM_1;
    property TIM_2: Double read Get_TIM_2 write Set_TIM_2;
    property TIM_3: UnicodeString read Get_TIM_3 write Set_TIM_3;
    property IMP: IXMLFACTURA_TIM_IMP read Get_IMP;
  end;
  { IXMLFACTURA_TIMList }

  IXMLFACTURA_TIMList = interface(IXMLNodeCollection)
    ['{85B357CC-FA0F-4A56-8FDA-BCB77E60B44B}']
    { Methods & Properties }
    function Add: IXMLFACTURA_TIM;
    function Insert(const Index: Integer): IXMLFACTURA_TIM;

    function Get_Item(Index: Integer): IXMLFACTURA_TIM;
    property Items[Index: Integer]: IXMLFACTURA_TIM read Get_Item; default;
  end;

  { IXMLFACTURA_TIM_IMP }

  IXMLFACTURA_TIM_IMP = interface(IXMLNode)
    ['{2E2A461A-9E14-4641-BD8F-BCE1916AEA44}']
    { Property Accessors }
    function Get_IMP_1: string;
    function Get_IMP_2: Integer;
    function Get_IMP_3: UnicodeString;
    function Get_IMP_4: Double;
    function Get_IMP_5: UnicodeString;
    function Get_IMP_6: Double;
    procedure Set_IMP_1(Value: string);
    procedure Set_IMP_2(Value: Integer);
    procedure Set_IMP_3(Value: UnicodeString);
    procedure Set_IMP_4(Value: Double);
    procedure Set_IMP_5(Value: UnicodeString);
    procedure Set_IMP_6(Value: Double);
    { Methods & Properties }
    property IMP_1: string read Get_IMP_1 write Set_IMP_1;
    property IMP_2: Integer read Get_IMP_2 write Set_IMP_2;
    property IMP_3: UnicodeString read Get_IMP_3 write Set_IMP_3;
    property IMP_4: Double read Get_IMP_4 write Set_IMP_4;
    property IMP_5: UnicodeString read Get_IMP_5 write Set_IMP_5;
    property IMP_6: Double read Get_IMP_6 write Set_IMP_6;
  end;

  { IXMLFACTURA_OVT }

  IXMLFACTURA_OVT = interface(IXMLNode)
    ['{24B49282-C8AD-47E0-9E0F-1B5B10D77CDA}']
    { Property Accessors }
    function Get_OVT_1: UnicodeString;
    function Get_OVT_2: Double;
    function Get_OVT_3: UnicodeString;
    function Get_OVT_4: UnicodeString;
    function Get_OVT_5: UnicodeString;
    function Get_OVT_6: UnicodeString;
    procedure Set_OVT_1(Value: UnicodeString);
    procedure Set_OVT_2(Value: Double);
    procedure Set_OVT_3(Value: UnicodeString);
    procedure Set_OVT_4(Value: UnicodeString);
    procedure Set_OVT_5(Value: UnicodeString);
    procedure Set_OVT_6(Value: UnicodeString);
    { Methods & Properties }
    property OVT_1: UnicodeString read Get_OVT_1 write Set_OVT_1;
    property OVT_2: Double read Get_OVT_2 write Set_OVT_2;
    property OVT_3: UnicodeString read Get_OVT_3 write Set_OVT_3;
    property OVT_4: UnicodeString read Get_OVT_4 write Set_OVT_4;
    property OVT_5: UnicodeString read Get_OVT_5 write Set_OVT_5;
    property OVT_6: UnicodeString read Get_OVT_6 write Set_OVT_6;

  end;
  { IXMLFACTURA_OVTList }

  IXMLFACTURA_OVTList = interface(IXMLNodeCollection)
    ['{85B357CC-FA0F-4A56-8FDA-BCB77E60B44B}']
    { Methods & Properties }
    function Add: IXMLFACTURA_OVT;
    function Insert(const Index: Integer): IXMLFACTURA_OVT;

    function Get_Item(Index: Integer): IXMLFACTURA_OVT;
    property Items[Index: Integer]: IXMLFACTURA_OVT read Get_Item; default;
  end;

  { IXMLFACTURA_TDC }

  IXMLFACTURA_TDC = interface(IXMLNode)
    ['{67D563CC-7D8E-42E4-9D7A-A8DD321F9D51}']
    { Property Accessors }
    function Get_TDC_1: UnicodeString;
    function Get_TDC_2: UnicodeString;
    function Get_TDC_3: Double;
    function Get_TDC_4: UnicodeString;
    procedure Set_TDC_1(Value: UnicodeString);
    procedure Set_TDC_2(Value: UnicodeString);
    procedure Set_TDC_3(Value: Double);
    procedure Set_TDC_4(Value: UnicodeString);
    { Methods & Properties }
    property TDC_1: UnicodeString read Get_TDC_1 write Set_TDC_1;
    property TDC_2: UnicodeString read Get_TDC_2 write Set_TDC_2;
    property TDC_3: Double read Get_TDC_3 write Set_TDC_3;
    property TDC_4: UnicodeString read Get_TDC_4 write Set_TDC_4;
  end;

  { IXMLFACTURA_DRF }

  IXMLFACTURA_DRF = interface(IXMLNode)
    ['{0EB0839C-6A63-4F10-8553-7DFC0EC15561}']
    { Property Accessors }
    function Get_DRF_1: UnicodeString;
    function Get_DRF_2: UnicodeString;
    function Get_DRF_3: UnicodeString;
    function Get_DRF_4: UnicodeString;
    function Get_DRF_5: Integer;
    function Get_DRF_6: Integer;
    procedure Set_DRF_1(Value: UnicodeString);
    procedure Set_DRF_2(Value: UnicodeString);
    procedure Set_DRF_3(Value: UnicodeString);
    procedure Set_DRF_4(Value: UnicodeString);
    procedure Set_DRF_5(Value: Integer);
    procedure Set_DRF_6(Value: Integer);
    { Methods & Properties }
    property DRF_1: UnicodeString read Get_DRF_1 write Set_DRF_1;
    property DRF_2: UnicodeString read Get_DRF_2 write Set_DRF_2;
    property DRF_3: UnicodeString read Get_DRF_3 write Set_DRF_3;
    property DRF_4: UnicodeString read Get_DRF_4 write Set_DRF_4;
    property DRF_5: Integer read Get_DRF_5 write Set_DRF_5;
    property DRF_6: Integer read Get_DRF_6 write Set_DRF_6;
  end;

  { IXMLFACTURA_NOT }

  IXMLFACTURA_NOT = interface(IXMLNode)
    ['{97C17588-7448-415B-A571-699FF7D98459}']
    { Property Accessors }
    function Get_NOT_1: UnicodeString;
    procedure Set_NOT_1(Value: UnicodeString);
    { Methods & Properties }
    property NOT_1: UnicodeString read Get_NOT_1 write Set_NOT_1;
  end;

  { IXMLFACTURA_NOTList }

  IXMLFACTURA_NOTList = interface(IXMLNodeCollection)
    ['{85B357CC-FA0F-4A56-8FDA-BCB77E60B44B}']
    { Methods & Properties }
    function Add: IXMLFACTURA_NOT;
    function Insert(const Index: Integer): IXMLFACTURA_NOT;

    function Get_Item(Index: Integer): IXMLFACTURA_NOT;
    property Items[Index: Integer]: IXMLFACTURA_NOT read Get_Item; default;
  end;

  { IXMLFACTURA_DSC }

  IXMLFACTURA_DSC = interface(IXMLNode)
    ['{97C17588-7448-415B-A571-699FF7D98459}']
    { Property Accessors }
    function Get_DSC_1: UnicodeString;
    function Get_DSC_2: Double;
    function Get_DSC_3: Double;
    function Get_DSC_4: UnicodeString;
    function Get_DSC_5: UnicodeString;
    function Get_DSC_6: UnicodeString;
    function Get_DSC_7: Double;
    function Get_DSC_8: UnicodeString;
    function Get_DSC_9: Integer;

    procedure Set_DSC_1(Value: UnicodeString);
    procedure Set_DSC_2(Value: Double);
    procedure Set_DSC_3(Value: Double);
    procedure Set_DSC_4(Value: UnicodeString);
    procedure Set_DSC_5(Value: UnicodeString);
    procedure Set_DSC_6(Value: UnicodeString);
    procedure Set_DSC_7(Value: Double);
    procedure Set_DSC_8(Value: UnicodeString);
    procedure Set_DSC_9(Value: Integer);
    { Methods & Properties }
    property DSC_1: UnicodeString read Get_DSC_1 write Set_DSC_1;
    property DSC_2: Double read Get_DSC_2 write Set_DSC_2;
    property DSC_3: Double read Get_DSC_3 write Set_DSC_3;
    property DSC_4: UnicodeString read Get_DSC_4 write Set_DSC_4;
    property DSC_5: UnicodeString read Get_DSC_5 write Set_DSC_5;
    property DSC_6: UnicodeString read Get_DSC_6 write Set_DSC_6;
    property DSC_7: Double read Get_DSC_7 write Set_DSC_7;
    property DSC_8: UnicodeString read Get_DSC_8 write Set_DSC_8;
    property DSC_9: Integer read Get_DSC_9 write Set_DSC_9;
  end;

  { IXMLFACTURA_DSCList }

  IXMLFACTURA_DSCList = interface(IXMLNodeCollection)
    ['{85B357CC-FA0F-4A56-8FDA-BCB77E60B44B}']
    { Methods & Properties }
    function Add: IXMLFACTURA_DSC;
    function Insert(const Index: Integer): IXMLFACTURA_DSC;

    function Get_Item(Index: Integer): IXMLFACTURA_DSC;
    property Items[Index: Integer]: IXMLFACTURA_DSC read Get_Item; default;
  end;

  { IXMLFACTURA_ORC }

  IXMLFACTURA_ORC = interface(IXMLNode)
    ['{BA92E9D7-C219-4FB9-A02B-AC2CEBB81642}']
    { Property Accessors }
    function Get_ORC_1: UnicodeString;
    function Get_ORC_2: UnicodeString;
    function Get_ORC_3: UnicodeString;
    function Get_ORC_4: Integer;
    procedure Set_ORC_1(Value: UnicodeString);
    procedure Set_ORC_2(Value: UnicodeString);
    procedure Set_ORC_3(Value: UnicodeString);
    procedure Set_ORC_4(Value: Integer);
    { Methods & Properties }
    property ORC_1: UnicodeString read Get_ORC_1 write Set_ORC_1;
    property ORC_2: UnicodeString read Get_ORC_2 write Set_ORC_2;
    property ORC_3: UnicodeString read Get_ORC_3 write Set_ORC_3;
    property ORC_4: Integer read Get_ORC_4 write Set_ORC_4;
  end;

  { IXMLFACTURA_CDN }

  IXMLFACTURA_CDN = interface(IXMLNode)
    ['{BA92E9D7-C219-4FB9-A02B-AC2CEBB81642}']
    { Property Accessors }
    function Get_CDN_1: Double;
    function Get_CDN_2: UnicodeString;
    procedure Set_CDN_1(Value: Double);
    procedure Set_CDN_2(Value: UnicodeString);

    { Methods & Properties }
    property CDN_1: Double read Get_CDN_1 write Set_CDN_1;
    property CDN_2: UnicodeString read Get_CDN_2 write Set_CDN_2;

  end;

  { IXMLFACTURA_REF }

  IXMLFACTURA_REF = interface(IXMLNode)
    ['{403C298C-38DF-4901-86AD-0CDE087838CC}']
    { Property Accessors }
    function Get_REF_1: UnicodeString;
    function Get_REF_2: UnicodeString;
    function Get_REF_3: UnicodeString;
    procedure Set_REF_1(Value: UnicodeString);
    procedure Set_REF_2(Value: UnicodeString);
    procedure Set_REF_3(Value: UnicodeString);
    { Methods & Properties }
    property REF_1: UnicodeString read Get_REF_1 write Set_REF_1;
    property REF_2: UnicodeString read Get_REF_2 write Set_REF_2;
    property REF_3: UnicodeString read Get_REF_3 write Set_REF_3;
  end;

  { IXMLFACTURA_REFList }

  IXMLFACTURA_REFList = interface(IXMLNodeCollection)
    ['{B2C00447-0F2D-46C3-A62F-D2A39FC69806}']
    { Methods & Properties }
    function Add: IXMLFACTURA_REF;
    function Insert(const Index: Integer): IXMLFACTURA_REF;

    function Get_Item(Index: Integer): IXMLFACTURA_REF;
    property Items[Index: Integer]: IXMLFACTURA_REF read Get_Item; default;
  end;

  { IXMLFACTURA_IEN }

  IXMLFACTURA_IEN = interface(IXMLNode)
    ['{864A7596-E7FD-4426-A75D-3C8C88434CC6}']
    { Property Accessors }
    function Get_IEN_1: UnicodeString;
    function Get_IEN_2: UnicodeString;
    function Get_IEN_3: UnicodeString;
    function Get_IEN_4: UnicodeString;
    function Get_IEN_5: UnicodeString;
    function Get_IEN_6: UnicodeString;
    function Get_IEN_7: UnicodeString;
    function Get_IEN_8: UnicodeString;
    function Get_IEN_9: UnicodeString;
    function Get_IEN_10: UnicodeString;
    function Get_IEN_11: UnicodeString;
    function Get_IEN_12: Int64;
    procedure Set_IEN_1(Value: UnicodeString);
    procedure Set_IEN_2(Value: UnicodeString);
    procedure Set_IEN_3(Value: UnicodeString);
    procedure Set_IEN_4(Value: UnicodeString);
    procedure Set_IEN_5(Value: UnicodeString);
    procedure Set_IEN_6(Value: UnicodeString);
    procedure Set_IEN_7(Value: UnicodeString);
    procedure Set_IEN_8(Value: UnicodeString);
    procedure Set_IEN_9(Value: UnicodeString);
    procedure Set_IEN_10(Value: UnicodeString);
    procedure Set_IEN_11(Value: UnicodeString);
    procedure Set_IEN_12(Value: Int64);
    { Methods & Properties }
    property IEN_1: UnicodeString read Get_IEN_1 write Set_IEN_1;
    property IEN_2: UnicodeString read Get_IEN_2 write Set_IEN_2;
    property IEN_3: UnicodeString read Get_IEN_3 write Set_IEN_3;
    property IEN_4: UnicodeString read Get_IEN_4 write Set_IEN_4;
    property IEN_5: UnicodeString read Get_IEN_5 write Set_IEN_5;
    property IEN_6: UnicodeString read Get_IEN_6 write Set_IEN_6;
    property IEN_7: UnicodeString read Get_IEN_7 write Set_IEN_7;
    property IEN_8: UnicodeString read Get_IEN_8 write Set_IEN_8;
    property IEN_9: UnicodeString read Get_IEN_9 write Set_IEN_9;
    property IEN_10: UnicodeString read Get_IEN_10 write Set_IEN_10;
    property IEN_11: UnicodeString read Get_IEN_11 write Set_IEN_11;
    property IEN_12: Int64 read Get_IEN_12 write Set_IEN_12;
  end;

  { IXMLFACTURA_MEP }

  IXMLFACTURA_MEP = interface(IXMLNode)
    ['{B6F15C21-9FC4-4BDD-8692-E4E11DD5C091}']
    { Property Accessors }
    function Get_MEP_1: String;
    function Get_MEP_2: UnicodeString;
    function Get_MEP_3: UnicodeString;
    function Get_MEP_4: UnicodeString;
    function Get_MEP_5: UnicodeString;
    function Get_MEP_6: UnicodeString;
    procedure Set_MEP_1(Value: String);
    procedure Set_MEP_2(Value: UnicodeString);
    procedure Set_MEP_3(Value: UnicodeString);
    procedure Set_MEP_4(Value: UnicodeString);
    procedure Set_MEP_5(Value: UnicodeString);
    procedure Set_MEP_6(Value: UnicodeString);
    { Methods & Properties }
    property MEP_1: String read Get_MEP_1 write Set_MEP_1;
    property MEP_2: UnicodeString read Get_MEP_2 write Set_MEP_2;
    property MEP_3: UnicodeString read Get_MEP_3 write Set_MEP_3;
    property MEP_4: UnicodeString read Get_MEP_4 write Set_MEP_4;
    property MEP_5: UnicodeString read Get_MEP_5 write Set_MEP_5;
    property MEP_6: UnicodeString read Get_MEP_6 write Set_MEP_6;
  end;

  { IXMLFACTURA_CTS }

  IXMLFACTURA_CTS = interface(IXMLNode)
    ['{3572AB04-9E61-43E8-BC07-37DAD23FF769}']
    { Property Accessors }
    function Get_CTS_1: UnicodeString;
    function Get_CTS_2: UnicodeString;
    function Get_CTS_3: UnicodeString;
    procedure Set_CTS_1(Value: UnicodeString);
    procedure Set_CTS_2(Value: UnicodeString);
    procedure Set_CTS_3(Value: UnicodeString);
    { Methods & Properties }
    property CTS_1: UnicodeString read Get_CTS_1 write Set_CTS_1;
    property CTS_2: UnicodeString read Get_CTS_2 write Set_CTS_2;
    property CTS_3: UnicodeString read Get_CTS_3 write Set_CTS_3;
  end;

  { IXMLFACTURA_ITE }

  IXMLFACTURA_ITE = interface(IXMLNode)
    ['{C8A3584B-D3C6-42BF-BCEB-862972746DC0}']
    { Property Accessors }
    function Get_ITE_1: Double;
    function Get_ITE_2: UnicodeString;
    function Get_ITE_3: Double;
    function Get_ITE_4: UnicodeString;
    function Get_ITE_5: Double;
    function Get_ITE_6: UnicodeString;
    function Get_ITE_7: Double;
    function Get_ITE_8: UnicodeString;
    function Get_ITE_9: string;
    function Get_ITE_10: UnicodeString;
    function Get_ITE_11: UnicodeString;
    function Get_ITE_12: UnicodeString;
    function Get_ITE_13: UnicodeString;
    function Get_ITE_14: UnicodeString;
    function Get_ITE_15: UnicodeString;
    function Get_ITE_16: UnicodeString;
    function Get_ITE_17: UnicodeString;
    function Get_ITE_18: UnicodeString;
    function Get_ITE_19: Double;
    function Get_ITE_20: UnicodeString;
    function Get_ITE_21: Double;
    function Get_ITE_22: UnicodeString;
    function Get_ITE_23: UnicodeString;
    function Get_ITE_24: UnicodeString;
    function Get_IDE: IXMLFACTURA_ITE_IDEList;
    function Get_IRF: IXMLFACTURA_ITE_IRFList;
    function Get_TII: IXMLFACTURA_ITE_TIIList;
    procedure Set_ITE_1(Value: Double);
    procedure Set_ITE_2(Value: UnicodeString);
    procedure Set_ITE_3(Value: Double);
    procedure Set_ITE_4(Value: UnicodeString);
    procedure Set_ITE_5(Value: Double);
    procedure Set_ITE_6(Value: UnicodeString);
    procedure Set_ITE_7(Value: Double);
    procedure Set_ITE_8(Value: UnicodeString);
    procedure Set_ITE_9(Value: string);
    procedure Set_ITE_10(Value: UnicodeString);
    procedure Set_ITE_11(Value: UnicodeString);
    procedure Set_ITE_12(Value: UnicodeString);
    procedure Set_ITE_13(Value: UnicodeString);
    procedure Set_ITE_14(Value: UnicodeString);
    procedure Set_ITE_15(Value: UnicodeString);
    procedure Set_ITE_16(Value: UnicodeString);
    procedure Set_ITE_17(Value: UnicodeString);
    procedure Set_ITE_18(Value: UnicodeString);
    procedure Set_ITE_19(Value: Double);
    procedure Set_ITE_20(Value: UnicodeString);
    procedure Set_ITE_21(Value: Double);
    procedure Set_ITE_22(Value: UnicodeString);
    procedure Set_ITE_23(Value: UnicodeString);
    procedure Set_ITE_24(Value: UnicodeString);
    { Methods & Properties }
    property ITE_1: Double read Get_ITE_1 write Set_ITE_1;
    property ITE_2: UnicodeString read Get_ITE_2 write Set_ITE_2;
    property ITE_3: Double read Get_ITE_3 write Set_ITE_3;
    property ITE_4: UnicodeString read Get_ITE_4 write Set_ITE_4;
    property ITE_5: Double read Get_ITE_5 write Set_ITE_5;
    property ITE_6: UnicodeString read Get_ITE_6 write Set_ITE_6;
    property ITE_7: Double read Get_ITE_7 write Set_ITE_7;
    property ITE_8: UnicodeString read Get_ITE_8 write Set_ITE_8;
    property ITE_9: string read Get_ITE_9 write Set_ITE_9;
    property ITE_10: UnicodeString read Get_ITE_10 write Set_ITE_10;
    property ITE_11: UnicodeString read Get_ITE_11 write Set_ITE_11;
    property ITE_12: UnicodeString read Get_ITE_12 write Set_ITE_12;
    property ITE_13: UnicodeString read Get_ITE_13 write Set_ITE_13;
    property ITE_14: UnicodeString read Get_ITE_14 write Set_ITE_14;
    property ITE_15: UnicodeString read Get_ITE_15 write Set_ITE_15;
    property ITE_16: UnicodeString read Get_ITE_16 write Set_ITE_16;
    property ITE_17: UnicodeString read Get_ITE_17 write Set_ITE_17;
    property ITE_18: UnicodeString read Get_ITE_18 write Set_ITE_18;
    property ITE_19: Double read Get_ITE_19 write Set_ITE_19;
    property ITE_20: UnicodeString read Get_ITE_20 write Set_ITE_20;
    property ITE_21: Double read Get_ITE_21 write Set_ITE_21;
    property ITE_22: UnicodeString read Get_ITE_22 write Set_ITE_22;
    property ITE_23: UnicodeString read Get_ITE_23 write Set_ITE_23;
    property ITE_24: UnicodeString read Get_ITE_24 write Set_ITE_24;
    property IDE: IXMLFACTURA_ITE_IDEList read Get_IDE;
    property IRF: IXMLFACTURA_ITE_IRFList read Get_IRF;
    property TII: IXMLFACTURA_ITE_TIIList read Get_TII;
  end;

  IXMLFACTURA_ITEList = interface(IXMLNodeCollection)
    ['{85B357CC-FA0F-4A56-8FDA-BCB77E60B44B}']
    { Methods & Properties }
    function Add: IXMLFACTURA_ITE;
    function Insert(const Index: Integer): IXMLFACTURA_ITE;

    function Get_Item(Index: Integer): IXMLFACTURA_ITE;
    property Items[Index: Integer]: IXMLFACTURA_ITE read Get_Item; default;
  end;

  { IXMLFACTURA_ITE_IDE }

  IXMLFACTURA_ITE_IDE = interface(IXMLNode)
    ['{64FCE8AB-BC43-4635-BE61-B86FCBBD3E59}']
    { Property Accessors }
    function Get_IDE_1: UnicodeString;
    function Get_IDE_2: Double;
    function Get_IDE_3: UnicodeString;
    function Get_IDE_4: Double;
    function Get_IDE_5: UnicodeString;
    function Get_IDE_6: Double;
    function Get_IDE_7: Double;
    function Get_IDE_8: UnicodeString;
    function Get_IDE_9: UnicodeString;
    procedure Set_IDE_1(Value: UnicodeString);
    procedure Set_IDE_2(Value: Double);
    procedure Set_IDE_3(Value: UnicodeString);
    procedure Set_IDE_4(Value: Double);
    procedure Set_IDE_5(Value: UnicodeString);
    procedure Set_IDE_6(Value: Double);
    procedure Set_IDE_7(Value: Double);
    procedure Set_IDE_8(Value: UnicodeString);
    procedure Set_IDE_9(Value: UnicodeString);
    { Methods & Properties }
    property IDE_1: UnicodeString read Get_IDE_1 write Set_IDE_1;
    property IDE_2: Double read Get_IDE_2 write Set_IDE_2;
    property IDE_3: UnicodeString read Get_IDE_3 write Set_IDE_3;
    property IDE_4: Double read Get_IDE_4 write Set_IDE_4;
    property IDE_5: UnicodeString read Get_IDE_5 write Set_IDE_5;
    property IDE_6: Double read Get_IDE_6 write Set_IDE_6;
    property IDE_7: Double read Get_IDE_7 write Set_IDE_7;
    property IDE_8: UnicodeString read Get_IDE_8 write Set_IDE_8;
    property IDE_9: UnicodeString read Get_IDE_9 write Set_IDE_9;
  end;

  { IXMLFACTURA_ITE_IDEList }

  IXMLFACTURA_ITE_IDEList = interface(IXMLNodeCollection)
    ['{746AC2BC-1339-4F95-AF8D-018F79F4871E}']
    { Methods & Properties }
    function Add: IXMLFACTURA_ITE_IDE;
    function Insert(const Index: Integer): IXMLFACTURA_ITE_IDE;

    function Get_Item(Index: Integer): IXMLFACTURA_ITE_IDE;
    property Items[Index: Integer]: IXMLFACTURA_ITE_IDE read Get_Item; default;
  end;

  { IXMLFACTURA_ITE_IRF }

  IXMLFACTURA_ITE_IRF = interface(IXMLNode)
    ['{64FCE8AB-BC43-4635-BE61-B86FCBBD3E59}']
    { Property Accessors }
    function Get_IRF_1: UnicodeString;
    function Get_IRF_2: UnicodeString;
    function Get_IRF_3: UnicodeString;
    function Get_IRF_4: UnicodeString;

    procedure Set_IRF_1(Value: UnicodeString);
    procedure Set_IRF_2(Value: UnicodeString);
    procedure Set_IRF_3(Value: UnicodeString);
    procedure Set_IRF_4(Value: UnicodeString);

    { Methods & Properties }
    property IRF_1: UnicodeString read Get_IRF_1 write Set_IRF_1;
    property IRF_2: UnicodeString read Get_IRF_2 write Set_IRF_2;
    property IRF_3: UnicodeString read Get_IRF_3 write Set_IRF_3;
    property IRF_4: UnicodeString read Get_IRF_4 write Set_IRF_4;

  end;

  { IXMLFACTURA_ITE_IRFList }

  IXMLFACTURA_ITE_IRFList = interface(IXMLNodeCollection)
    ['{746AC2BC-1339-4F95-AF8D-018F79F4871E}']
    { Methods & Properties }
    function Add: IXMLFACTURA_ITE_IRF;
    function Insert(const Index: Integer): IXMLFACTURA_ITE_IRF;

    function Get_Item(Index: Integer): IXMLFACTURA_ITE_IRF;
    property Items[Index: Integer]: IXMLFACTURA_ITE_IRF read Get_Item; default;
  end;

  { IXMLFACTURA_ITE_TII }

  IXMLFACTURA_ITE_TII = interface(IXMLNode)
    ['{64FCE8AB-BC43-4635-BE61-B86FCBBD3E59}']
    { Property Accessors }
    function Get_TII_1: Double;
    function Get_TII_2: UnicodeString;
    function Get_TII_3: UnicodeString;
    function Get_IIM: IXMLFACTURA_ITE_TII_IIMList;
    procedure Set_TII_1(Value: Double);
    procedure Set_TII_2(Value: UnicodeString);
    procedure Set_TII_3(Value: UnicodeString);

    { Methods & Properties }
    property TII_1: Double read Get_TII_1 write Set_TII_1;
    property TII_2: UnicodeString read Get_TII_2 write Set_TII_2;
    property TII_3: UnicodeString read Get_TII_3 write Set_TII_3;
    property IIM: IXMLFACTURA_ITE_TII_IIMList read Get_IIM;
  end;

  IXMLFACTURA_ITE_TIIList = interface(IXMLNodeCollection)
    ['{746AC2BC-1339-4F95-AF8D-018F79F4871E}']
    { Methods & Properties }
    function Add: IXMLFACTURA_ITE_TII;
    function Insert(const Index: Integer): IXMLFACTURA_ITE_TII;

    function Get_Item(Index: Integer): IXMLFACTURA_ITE_TII;
    property Items[Index: Integer]: IXMLFACTURA_ITE_TII read Get_Item; default;
  end;

  IXMLFACTURA_ITE_TII_IIM = interface(IXMLNode)
    ['{64FCE8AB-BC43-4635-BE61-B86FCBBD3E59}']
    { Property Accessors }
    function Get_IIM_1: UnicodeString;
    function Get_IIM_2: Double;
    function Get_IIM_3: UnicodeString;
    function Get_IIM_4: Double;
    function Get_IIM_5: UnicodeString;
    function Get_IIM_6: Double;
    procedure Set_IIM_1(Value: UnicodeString);
    procedure Set_IIM_2(Value: Double);
    procedure Set_IIM_3(Value: UnicodeString);
    procedure Set_IIM_4(Value: Double);
    procedure Set_IIM_5(Value: UnicodeString);
    procedure Set_IIM_6(Value: Double);

    { Methods & Properties }
    property IIM_1: UnicodeString read Get_IIM_1 write Set_IIM_1;
    property IIM_2: Double read Get_IIM_2 write Set_IIM_2;
    property IIM_3: UnicodeString read Get_IIM_3 write Set_IIM_3;
    property IIM_4: Double read Get_IIM_4 write Set_IIM_4;
    property IIM_5: UnicodeString read Get_IIM_5 write Set_IIM_5;
    property IIM_6: Double read Get_IIM_6 write Set_IIM_6;
  end;

  IXMLFACTURA_ITE_TII_IIMList = interface(IXMLNodeCollection)
    ['{746AC2BC-1339-4F95-AF8D-018F79F4871E}']
    { Methods & Properties }
    function Add: IXMLFACTURA_ITE_TII_IIM;
    function Insert(const Index: Integer): IXMLFACTURA_ITE_TII_IIM;

    function Get_Item(Index: Integer): IXMLFACTURA_ITE_TII_IIM;
    property Items[Index: Integer]: IXMLFACTURA_ITE_TII_IIM
      read Get_Item; default;
  end;

  { Forward Decls }

  TXMLFACTURA = class;
  TXMLFACTURA_ENC = class;
  TXMLFACTURA_TET = class;
  TXMLFACTURA_EMI = class;
  TXMLFACTURA_EMI_CDE = class;
  TXMLFACTURA_ADQ = class;
  TXMLFACTURA_ADQ_CDA = class;
  TXMLFACTURA_TOT = class;
  TXMLFACTURA_TIM = class;
  TXMLFACTURA_TIMList = class;
  TXMLFACTURA_TIM_IMP = class;
  TXMLFACTURA_OVT = class;
  TXMLFACTURA_OVTList = class;
  TXMLFACTURA_TDC = class;
  TXMLFACTURA_DRF = class;
  TXMLFACTURA_NOT = class;
  TXMLFACTURA_NOTList = class;
  TXMLFACTURA_DSC = class;
  TXMLFACTURA_DSCList = class;
  TXMLFACTURA_ORC = class;
  TXMLFACTURA_CDN = class;
  TXMLFACTURA_REF = class;
  TXMLFACTURA_REFList = class;
  TXMLFACTURA_IEN = class;
  TXMLFACTURA_MEP = class;
  TXMLFACTURA_CTS = class;
  TXMLFACTURA_ITE = class;
  TXMLFACTURA_ITEList = class;
  TXMLFACTURA_ITE_IDE = class;
  TXMLFACTURA_ITE_IDEList = class;
  TXMLFACTURA_ITE_IRF = class;
  TXMLFACTURA_ITE_IRFList = class;
  TXMLFACTURA_ITE_TII = class;
  TXMLFACTURA_ITE_TIIList = class;
  TXMLFACTURA_ITE_TII_IIM = class;
  TXMLFACTURA_ITE_TII_IIMList = class;

  { TXMLFACTURA }

  TXMLFACTURA = class(TXMLNode, IXMLFACTURA)
  private
    FNOT_: IXMLFACTURA_NOTList;
    FDSC: IXMLFACTURA_DSCList;
    FREF: IXMLFACTURA_REFList;
    FTIM: IXMLFACTURA_TIMList;
    FOVT: IXMLFACTURA_OVTList;
    FITE: IXMLFACTURA_ITEList;
  protected
    { IXMLFACTURA }
    function Get_ENC: IXMLFACTURA_ENC;
    function Get_TET: IXMLFACTURA_TET;
    function Get_EMI: IXMLFACTURA_EMI;
    function Get_ADQ: IXMLFACTURA_ADQ;
    function Get_TOT: IXMLFACTURA_TOT;
    function Get_TIM: IXMLFACTURA_TIMList;
    function Get_OVT: IXMLFACTURA_OVTList;
    function Get_TDC: IXMLFACTURA_TDC;
    function Get_DRF: IXMLFACTURA_DRF;
    function Get_NOT_: IXMLFACTURA_NOTList;
    function Get_DSC: IXMLFACTURA_DSCList;
    function Get_ORC: IXMLFACTURA_ORC;
    function Get_CDN: IXMLFACTURA_CDN;
    function Get_REF: IXMLFACTURA_REFList;
    function Get_IEN: IXMLFACTURA_IEN;
    function Get_MEP: IXMLFACTURA_MEP;
    function Get_CTS: IXMLFACTURA_CTS;
    function Get_ITE: IXMLFACTURA_ITEList;
  public
    procedure AfterConstruction; override;
  end;

  { TXMLFACTURA_ENC }

  TXMLFACTURA_ENC = class(TXMLNode, IXMLFACTURA_ENC)
  protected
    { IXMLFACTURA_ENC }
    function Get_ENC_1: UnicodeString;
    function Get_ENC_2: Integer;
    function Get_ENC_3: Integer;
    function Get_ENC_4: UnicodeString;
    function Get_ENC_5: UnicodeString;
    function Get_ENC_6: UnicodeString;
    function Get_ENC_7: UnicodeString;
    function Get_ENC_8: UnicodeString;
    function Get_ENC_9: Double;
    function Get_ENC_10: UnicodeString;
    function Get_ENC_11: UnicodeString;
    function Get_ENC_12: UnicodeString;
    function Get_ENC_13: UnicodeString;
    function Get_ENC_14: UnicodeString;
    function Get_ENC_15: Double;
    function Get_ENC_16: UnicodeString;
    procedure Set_ENC_1(Value: UnicodeString);
    procedure Set_ENC_2(Value: Integer);
    procedure Set_ENC_3(Value: Integer);
    procedure Set_ENC_4(Value: UnicodeString);
    procedure Set_ENC_5(Value: UnicodeString);
    procedure Set_ENC_6(Value: UnicodeString);
    procedure Set_ENC_7(Value: UnicodeString);
    procedure Set_ENC_8(Value: UnicodeString);
    procedure Set_ENC_9(Value: Double);
    procedure Set_ENC_10(Value: UnicodeString);
    procedure Set_ENC_11(Value: UnicodeString);
    procedure Set_ENC_12(Value: UnicodeString);
    procedure Set_ENC_13(Value: UnicodeString);
    procedure Set_ENC_14(Value: UnicodeString);
    procedure Set_ENC_15(Value: Double);
    procedure Set_ENC_16(Value: UnicodeString);
  end;

  { TXMLFACTURA_TET }

  TXMLFACTURA_TET = class(TXMLNode, IXMLFACTURA_TET)
  protected
    { IXMLFACTURA_ENC }
    function Get_TET_1: UnicodeString;
    function Get_TET_2: UnicodeString;
    function Get_TET_3: UnicodeString;
    function Get_TET_4: UnicodeString;
    procedure Set_TET_1(Value: UnicodeString);
    procedure Set_TET_2(Value: UnicodeString);
    procedure Set_TET_3(Value: UnicodeString);
    procedure Set_TET_4(Value: UnicodeString);

  end;

  { TXMLFACTURA_EMI }

  TXMLFACTURA_EMI = class(TXMLNode, IXMLFACTURA_EMI)
  protected
    { IXMLFACTURA_EMI }
    function Get_EMI_1: Double;
    function Get_EMI_2: Integer;
    function Get_EMI_3: Double;
    function Get_EMI_4: Double;
    function Get_EMI_5: UnicodeString;
    function Get_EMI_6: UnicodeString;
    function Get_EMI_7: UnicodeString;
    function Get_EMI_8: UnicodeString;
    function Get_EMI_9: UnicodeString;
    function Get_EMI_10: UnicodeString;
    function Get_EMI_11: UnicodeString;
    function Get_EMI_12: UnicodeString;
    function Get_EMI_13: UnicodeString;
    function Get_EMI_14: UnicodeString;
    function Get_EMI_15: UnicodeString;
    function Get_EMI_16: Int64;
    function Get_CDE: IXMLFACTURA_EMI_CDE;
    procedure Set_EMI_1(Value: Double);
    procedure Set_EMI_2(Value: Integer);
    procedure Set_EMI_3(Value: Double);
    procedure Set_EMI_4(Value: Double);
    procedure Set_EMI_5(Value: UnicodeString);
    procedure Set_EMI_6(Value: UnicodeString);
    procedure Set_EMI_7(Value: UnicodeString);
    procedure Set_EMI_8(Value: UnicodeString);
    procedure Set_EMI_9(Value: UnicodeString);
    procedure Set_EMI_10(Value: UnicodeString);
    procedure Set_EMI_11(Value: UnicodeString);
    procedure Set_EMI_12(Value: UnicodeString);
    procedure Set_EMI_13(Value: UnicodeString);
    procedure Set_EMI_14(Value: UnicodeString);
    procedure Set_EMI_15(Value: UnicodeString);
    procedure Set_EMI_16(Value: Int64);
  public
    procedure AfterConstruction; override;
  end;

  { TXMLFACTURA_EMI_CDE }

  TXMLFACTURA_EMI_CDE = class(TXMLNode, IXMLFACTURA_EMI_CDE)
  protected
    { IXMLFACTURA_EMI_CDE }
    function Get_CDE_1: Double;
    function Get_CDE_2: UnicodeString;
    function Get_CDE_3: string;
    function Get_CDE_4: UnicodeString;
    procedure Set_CDE_1(Value: Double);
    procedure Set_CDE_2(Value: UnicodeString);
    procedure Set_CDE_3(Value: string);
    procedure Set_CDE_4(Value: UnicodeString);
  end;

  { TXMLFACTURA_ADQ }

  TXMLFACTURA_ADQ = class(TXMLNode, IXMLFACTURA_ADQ)
  protected
    { IXMLFACTURA_ADQ }
    function Get_ADQ_1: Double;
    function Get_ADQ_2: Integer;
    function Get_ADQ_3: Double;
    function Get_ADQ_4: Double;
    function Get_ADQ_5: Integer;
    function Get_ADQ_6: UnicodeString;
    function Get_ADQ_7: UnicodeString;
    function Get_ADQ_8: UnicodeString;
    function Get_ADQ_9: UnicodeString;
    function Get_ADQ_10: UnicodeString;
    function Get_ADQ_11: UnicodeString;
    function Get_ADQ_12: UnicodeString;
    function Get_ADQ_13: UnicodeString;
    function Get_ADQ_15: UnicodeString;
    function Get_ADQ_16: UnicodeString;
    function Get_CDA: IXMLFACTURA_ADQ_CDA;
    procedure Set_ADQ_1(Value: Double);
    procedure Set_ADQ_2(Value: Integer);
    procedure Set_ADQ_3(Value: Double);
    procedure Set_ADQ_4(Value: Double);
    procedure Set_ADQ_5(Value: Integer);
    procedure Set_ADQ_6(Value: UnicodeString);
    procedure Set_ADQ_7(Value: UnicodeString);
    procedure Set_ADQ_8(Value: UnicodeString);
    procedure Set_ADQ_9(Value: UnicodeString);
    procedure Set_ADQ_10(Value: UnicodeString);
    procedure Set_ADQ_11(Value: UnicodeString);
    procedure Set_ADQ_12(Value: UnicodeString);
    procedure Set_ADQ_13(Value: UnicodeString);
    procedure Set_ADQ_15(Value: UnicodeString);
    procedure Set_ADQ_16(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

  { TXMLFACTURA_ADQ_CDA }

  TXMLFACTURA_ADQ_CDA = class(TXMLNode, IXMLFACTURA_ADQ_CDA)
  protected
    { IXMLFACTURA_ADQ_CDA }
    function Get_CDA_1: Double;
    function Get_CDA_2: UnicodeString;
    function Get_CDA_3: string;
    function Get_CDA_4: UnicodeString;
    procedure Set_CDA_1(Value: Double);
    procedure Set_CDA_2(Value: UnicodeString);
    procedure Set_CDA_3(Value: string);
    procedure Set_CDA_4(Value: UnicodeString);
  end;

  { TXMLFACTURA_TOT }

  TXMLFACTURA_TOT = class(TXMLNode, IXMLFACTURA_TOT)
  protected
    { IXMLFACTURA_TOT }
    function Get_TOT_1: Double;
    function Get_TOT_2: UnicodeString;
    function Get_TOT_3: Double;
    function Get_TOT_4: UnicodeString;
    function Get_TOT_5: Double;
    function Get_TOT_6: UnicodeString;
    function Get_TOT_7: Double;
    function Get_TOT_8: UnicodeString;
    function Get_TOT_9: Double;
    function Get_TOT_10: UnicodeString;
    function Get_TOT_11: Double;
    function Get_TOT_12: UnicodeString;
    function Get_TOT_13: Double;
    function Get_TOT_14: UnicodeString;
    procedure Set_TOT_1(Value: Double);
    procedure Set_TOT_2(Value: UnicodeString);
    procedure Set_TOT_3(Value: Double);
    procedure Set_TOT_4(Value: UnicodeString);
    procedure Set_TOT_5(Value: Double);
    procedure Set_TOT_6(Value: UnicodeString);
    procedure Set_TOT_7(Value: Double);
    procedure Set_TOT_8(Value: UnicodeString);
    procedure Set_TOT_9(Value: Double);
    procedure Set_TOT_10(Value: UnicodeString);
    procedure Set_TOT_11(Value: Double);
    procedure Set_TOT_12(Value: UnicodeString);
    procedure Set_TOT_13(Value: Double);
    procedure Set_TOT_14(Value: UnicodeString);
  end;

  { TXMLFACTURA_TIM }

  TXMLFACTURA_TIM = class(TXMLNode, IXMLFACTURA_TIM)
  protected
    { IXMLFACTURA_TIM }
    function Get_TIM_1: UnicodeString;
    function Get_TIM_2: Double;
    function Get_TIM_3: UnicodeString;
    function Get_IMP: IXMLFACTURA_TIM_IMP;
    procedure Set_TIM_1(Value: UnicodeString);
    procedure Set_TIM_2(Value: Double);
    procedure Set_TIM_3(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

  TXMLFACTURA_TIMList = class(TXMLNodeCollection, IXMLFACTURA_TIMList)
  protected
    { IXMLFACTURA_TIMList }
    function Add: IXMLFACTURA_TIM;
    function Insert(const Index: Integer): IXMLFACTURA_TIM;

    function Get_Item(Index: Integer): IXMLFACTURA_TIM;
  end;

  { TXMLFACTURA_TIM_IMP }

  TXMLFACTURA_TIM_IMP = class(TXMLNode, IXMLFACTURA_TIM_IMP)
  protected
    { IXMLFACTURA_TIM_IMP }
    function Get_IMP_1: string;
    function Get_IMP_2: Integer;
    function Get_IMP_3: UnicodeString;
    function Get_IMP_4: Double;
    function Get_IMP_5: UnicodeString;
    function Get_IMP_6: Double;
    procedure Set_IMP_1(Value: string);
    procedure Set_IMP_2(Value: Integer);
    procedure Set_IMP_3(Value: UnicodeString);
    procedure Set_IMP_4(Value: Double);
    procedure Set_IMP_5(Value: UnicodeString);
    procedure Set_IMP_6(Value: Double);
  end;

  { TXMLFACTURA_OVT }

  TXMLFACTURA_OVT = class(TXMLNode, IXMLFACTURA_OVT)
  protected
    { IXMLFACTURA_OVT }
    function Get_OVT_1: UnicodeString;
    function Get_OVT_2: Double;
    function Get_OVT_3: UnicodeString;
    function Get_OVT_4: UnicodeString;
    function Get_OVT_5: UnicodeString;
    function Get_OVT_6: UnicodeString;

    procedure Set_OVT_1(Value: UnicodeString);
    procedure Set_OVT_2(Value: Double);
    procedure Set_OVT_3(Value: UnicodeString);
    procedure Set_OVT_4(Value: UnicodeString);
    procedure Set_OVT_5(Value: UnicodeString);
    procedure Set_OVT_6(Value: UnicodeString);

  end;

  TXMLFACTURA_OVTList = class(TXMLNodeCollection, IXMLFACTURA_OVTList)
  protected
    { IXMLFACTURA_OVTList }
    function Add: IXMLFACTURA_OVT;
    function Insert(const Index: Integer): IXMLFACTURA_OVT;

    function Get_Item(Index: Integer): IXMLFACTURA_OVT;
  end;

  { TXMLFACTURA_TDC }

  TXMLFACTURA_TDC = class(TXMLNode, IXMLFACTURA_TDC)
  protected
    { IXMLFACTURA_TDC }
    function Get_TDC_1: UnicodeString;
    function Get_TDC_2: UnicodeString;
    function Get_TDC_3: Double;
    function Get_TDC_4: UnicodeString;
    procedure Set_TDC_1(Value: UnicodeString);
    procedure Set_TDC_2(Value: UnicodeString);
    procedure Set_TDC_3(Value: Double);
    procedure Set_TDC_4(Value: UnicodeString);
  end;

  { TXMLFACTURA_DRF }

  TXMLFACTURA_DRF = class(TXMLNode, IXMLFACTURA_DRF)
  protected
    { IXMLFACTURA_DRF }
    function Get_DRF_1: UnicodeString;
    function Get_DRF_2: UnicodeString;
    function Get_DRF_3: UnicodeString;
    function Get_DRF_4: UnicodeString;
    function Get_DRF_5: Integer;
    function Get_DRF_6: Integer;
    procedure Set_DRF_1(Value: UnicodeString);
    procedure Set_DRF_2(Value: UnicodeString);
    procedure Set_DRF_3(Value: UnicodeString);
    procedure Set_DRF_4(Value: UnicodeString);
    procedure Set_DRF_5(Value: Integer);
    procedure Set_DRF_6(Value: Integer);
  end;

  { TXMLFACTURA_NOT }

  TXMLFACTURA_NOT = class(TXMLNode, IXMLFACTURA_NOT)
  protected
    { IXMLFACTURA_NOT }
    function Get_NOT_1: UnicodeString;
    procedure Set_NOT_1(Value: UnicodeString);
  end;

  { TXMLFACTURA_NOTList }

  TXMLFACTURA_NOTList = class(TXMLNodeCollection, IXMLFACTURA_NOTList)
  protected
    { IXMLFACTURA_NOTList }
    function Add: IXMLFACTURA_NOT;
    function Insert(const Index: Integer): IXMLFACTURA_NOT;

    function Get_Item(Index: Integer): IXMLFACTURA_NOT;
  end;
  { TXMLFACTURA_DSC }

  TXMLFACTURA_DSC = class(TXMLNode, IXMLFACTURA_DSC)
  protected
    { IXMLFACTURA_DSC }
    function Get_DSC_1: UnicodeString;
    function Get_DSC_2: Double;
    function Get_DSC_3: Double;
    function Get_DSC_4: UnicodeString;
    function Get_DSC_5: UnicodeString;
    function Get_DSC_6: UnicodeString;
    function Get_DSC_7: Double;
    function Get_DSC_8: UnicodeString;
    function Get_DSC_9: Integer;
    procedure Set_DSC_1(Value: UnicodeString);
    procedure Set_DSC_2(Value: Double);
    procedure Set_DSC_3(Value: Double);
    procedure Set_DSC_4(Value: UnicodeString);
    procedure Set_DSC_5(Value: UnicodeString);
    procedure Set_DSC_6(Value: UnicodeString);
    procedure Set_DSC_7(Value: Double);
    procedure Set_DSC_8(Value: UnicodeString);
    procedure Set_DSC_9(Value: Integer);
  end;

  { TXMLFACTURA_DSCList }

  TXMLFACTURA_DSCList = class(TXMLNodeCollection, IXMLFACTURA_DSCList)
  protected
    { IXMLFACTURA_DSCList }
    function Add: IXMLFACTURA_DSC;
    function Insert(const Index: Integer): IXMLFACTURA_DSC;

    function Get_Item(Index: Integer): IXMLFACTURA_DSC;
  end;

  { TXMLFACTURA_ORC }

  TXMLFACTURA_ORC = class(TXMLNode, IXMLFACTURA_ORC)
  protected
    { IXMLFACTURA_ORC }
    function Get_ORC_1: UnicodeString;
    function Get_ORC_2: UnicodeString;
    function Get_ORC_3: UnicodeString;
    function Get_ORC_4: Integer;
    procedure Set_ORC_1(Value: UnicodeString);
    procedure Set_ORC_2(Value: UnicodeString);
    procedure Set_ORC_3(Value: UnicodeString);
    procedure Set_ORC_4(Value: Integer);
  end;
  { TXMLFACTURA_ORC }

  TXMLFACTURA_CDN = class(TXMLNode, IXMLFACTURA_CDN)
  protected
    { IXMLFACTURA_ORC }
    function Get_CDN_1: Double;
    function Get_CDN_2: UnicodeString;
    procedure Set_CDN_1(Value: Double);
    procedure Set_CDN_2(Value: UnicodeString);

  end;

  { TXMLFACTURA_REF }

  TXMLFACTURA_REF = class(TXMLNode, IXMLFACTURA_REF)
  protected
    { IXMLFACTURA_REF }
    function Get_REF_1: UnicodeString;
    function Get_REF_2: UnicodeString;
    function Get_REF_3: UnicodeString;
    procedure Set_REF_1(Value: UnicodeString);
    procedure Set_REF_2(Value: UnicodeString);
    procedure Set_REF_3(Value: UnicodeString);
  end;

  { TXMLFACTURA_REFList }

  TXMLFACTURA_REFList = class(TXMLNodeCollection, IXMLFACTURA_REFList)
  protected
    { IXMLFACTURA_REFList }
    function Add: IXMLFACTURA_REF;
    function Insert(const Index: Integer): IXMLFACTURA_REF;

    function Get_Item(Index: Integer): IXMLFACTURA_REF;
  end;

  { TXMLFACTURA_IEN }

  TXMLFACTURA_IEN = class(TXMLNode, IXMLFACTURA_IEN)
  protected
    { IXMLFACTURA_IEN }
    function Get_IEN_1: UnicodeString;
    function Get_IEN_2: UnicodeString;
    function Get_IEN_3: UnicodeString;
    function Get_IEN_4: UnicodeString;
    function Get_IEN_5: UnicodeString;
    function Get_IEN_6: UnicodeString;
    function Get_IEN_7: UnicodeString;
    function Get_IEN_8: UnicodeString;
    function Get_IEN_9: UnicodeString;
    function Get_IEN_10: UnicodeString;
    function Get_IEN_11: UnicodeString;
    function Get_IEN_12: Int64;
    procedure Set_IEN_1(Value: UnicodeString);
    procedure Set_IEN_2(Value: UnicodeString);
    procedure Set_IEN_3(Value: UnicodeString);
    procedure Set_IEN_4(Value: UnicodeString);
    procedure Set_IEN_5(Value: UnicodeString);
    procedure Set_IEN_6(Value: UnicodeString);
    procedure Set_IEN_7(Value: UnicodeString);
    procedure Set_IEN_8(Value: UnicodeString);
    procedure Set_IEN_9(Value: UnicodeString);
    procedure Set_IEN_10(Value: UnicodeString);
    procedure Set_IEN_11(Value: UnicodeString);
    procedure Set_IEN_12(Value: Int64);
  end;

  { TXMLFACTURA_MEP }

  TXMLFACTURA_MEP = class(TXMLNode, IXMLFACTURA_MEP)
  protected
    { IXMLFACTURA_MEP }
    function Get_MEP_1: String;
    function Get_MEP_2: UnicodeString;
    function Get_MEP_3: UnicodeString;
    function Get_MEP_4: UnicodeString;
    function Get_MEP_5: UnicodeString;
    function Get_MEP_6: UnicodeString;
    procedure Set_MEP_1(Value: String);
    procedure Set_MEP_2(Value: UnicodeString);
    procedure Set_MEP_3(Value: UnicodeString);
    procedure Set_MEP_4(Value: UnicodeString);
    procedure Set_MEP_5(Value: UnicodeString);
    procedure Set_MEP_6(Value: UnicodeString);
  end;

  { TXMLFACTURA_CTS }

  TXMLFACTURA_CTS = class(TXMLNode, IXMLFACTURA_CTS)
  protected
    { IXMLFACTURA_CTS }
    function Get_CTS_1: UnicodeString;
    function Get_CTS_2: UnicodeString;
    function Get_CTS_3: UnicodeString;
    procedure Set_CTS_1(Value: UnicodeString);
    procedure Set_CTS_2(Value: UnicodeString);
    procedure Set_CTS_3(Value: UnicodeString);
  end;

  { TXMLFACTURA_ITE }

  TXMLFACTURA_ITE = class(TXMLNode, IXMLFACTURA_ITE)
  private
    FIRF: IXMLFACTURA_ITE_IRFList;
    FIDE: IXMLFACTURA_ITE_IDEList;
    FTII: IXMLFACTURA_ITE_TIIList;
  protected
    { IXMLFACTURA_ITE }
    function Get_ITE_1: Double;
    function Get_ITE_2: UnicodeString;
    function Get_ITE_3: Double;
    function Get_ITE_4: UnicodeString;
    function Get_ITE_5: Double;
    function Get_ITE_6: UnicodeString;
    function Get_ITE_7: Double;
    function Get_ITE_8: UnicodeString;
    function Get_ITE_9: string;
    function Get_ITE_10: UnicodeString;
    function Get_ITE_11: UnicodeString;
    function Get_ITE_12: UnicodeString;
    function Get_ITE_13: UnicodeString;
    function Get_ITE_14: UnicodeString;
    function Get_ITE_15: UnicodeString;
    function Get_ITE_16: UnicodeString;
    function Get_ITE_17: UnicodeString;
    function Get_ITE_18: UnicodeString;
    function Get_ITE_19: Double;
    function Get_ITE_20: UnicodeString;
    function Get_ITE_21: Double;
    function Get_ITE_22: UnicodeString;
    function Get_ITE_23: UnicodeString;
    function Get_ITE_24: UnicodeString;
    function Get_IDE: IXMLFACTURA_ITE_IDEList;
    function Get_IRF: IXMLFACTURA_ITE_IRFList;
    function Get_TII: IXMLFACTURA_ITE_TIIList;
    procedure Set_ITE_1(Value: Double);
    procedure Set_ITE_2(Value: UnicodeString);
    procedure Set_ITE_3(Value: Double);
    procedure Set_ITE_4(Value: UnicodeString);
    procedure Set_ITE_5(Value: Double);
    procedure Set_ITE_6(Value: UnicodeString);
    procedure Set_ITE_7(Value: Double);
    procedure Set_ITE_8(Value: UnicodeString);
    procedure Set_ITE_9(Value: string);
    procedure Set_ITE_10(Value: UnicodeString);
    procedure Set_ITE_11(Value: UnicodeString);
    procedure Set_ITE_12(Value: UnicodeString);
    procedure Set_ITE_13(Value: UnicodeString);
    procedure Set_ITE_14(Value: UnicodeString);
    procedure Set_ITE_15(Value: UnicodeString);
    procedure Set_ITE_16(Value: UnicodeString);
    procedure Set_ITE_17(Value: UnicodeString);
    procedure Set_ITE_18(Value: UnicodeString);
    procedure Set_ITE_19(Value: Double);
    procedure Set_ITE_20(Value: UnicodeString);
    procedure Set_ITE_21(Value: Double);
    procedure Set_ITE_22(Value: UnicodeString);
    procedure Set_ITE_23(Value: UnicodeString);
    procedure Set_ITE_24(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;
  { TXMLFACTURA_ITEList }

  TXMLFACTURA_ITEList = class(TXMLNodeCollection, IXMLFACTURA_ITEList)
  protected
    { IXMLFACTURA_ITEList }
    function Add: IXMLFACTURA_ITE;
    function Insert(const Index: Integer): IXMLFACTURA_ITE;

    function Get_Item(Index: Integer): IXMLFACTURA_ITE;
  end;

  { TXMLFACTURA_ITE_IDE }

  TXMLFACTURA_ITE_IDE = class(TXMLNode, IXMLFACTURA_ITE_IDE)
  protected
    { IXMLFACTURA_ITE_IDE }
    function Get_IDE_1: UnicodeString;
    function Get_IDE_2: Double;
    function Get_IDE_3: UnicodeString;
    function Get_IDE_4: Double;
    function Get_IDE_5: UnicodeString;
    function Get_IDE_6: Double;
    function Get_IDE_7: Double;
    function Get_IDE_8: UnicodeString;
    function Get_IDE_9: UnicodeString;
    procedure Set_IDE_1(Value: UnicodeString);
    procedure Set_IDE_2(Value: Double);
    procedure Set_IDE_3(Value: UnicodeString);
    procedure Set_IDE_4(Value: Double);
    procedure Set_IDE_5(Value: UnicodeString);
    procedure Set_IDE_6(Value: Double);
    procedure Set_IDE_7(Value: Double);
    procedure Set_IDE_8(Value: UnicodeString);
    procedure Set_IDE_9(Value: UnicodeString);
  end;

  { TXMLFACTURA_ITE_IDEList }

  TXMLFACTURA_ITE_IDEList = class(TXMLNodeCollection, IXMLFACTURA_ITE_IDEList)
  protected
    { IXMLFACTURA_ITE_IDEList }
    function Add: IXMLFACTURA_ITE_IDE;
    function Insert(const Index: Integer): IXMLFACTURA_ITE_IDE;

    function Get_Item(Index: Integer): IXMLFACTURA_ITE_IDE;
  end;

  { TXMLFACTURA_ITE_IRF }

  TXMLFACTURA_ITE_IRF = class(TXMLNode, IXMLFACTURA_ITE_IRF)
  protected
    { IXMLFACTURA_ITE_IRF }
    function Get_IRF_1: UnicodeString;
    function Get_IRF_2: UnicodeString;
    function Get_IRF_3: UnicodeString;
    function Get_IRF_4: UnicodeString;

    procedure Set_IRF_1(Value: UnicodeString);
    procedure Set_IRF_2(Value: UnicodeString);
    procedure Set_IRF_3(Value: UnicodeString);
    procedure Set_IRF_4(Value: UnicodeString);

  end;

  { TXMLFACTURA_ITE_IRFList }

  TXMLFACTURA_ITE_IRFList = class(TXMLNodeCollection, IXMLFACTURA_ITE_IRFList)
  protected
    { IXMLFACTURA_ITE_IRFList }
    function Add: IXMLFACTURA_ITE_IRF;
    function Insert(const Index: Integer): IXMLFACTURA_ITE_IRF;

    function Get_Item(Index: Integer): IXMLFACTURA_ITE_IRF;
  end;

  { TXMLFACTURA_ITE_TIIList }
  TXMLFACTURA_ITE_TII = class(TXMLNode, IXMLFACTURA_ITE_TII)
  PRIVATE
    FIIM: IXMLFACTURA_ITE_TII_IIMList;
  protected
    { IXMLFACTURA_ITE_TII }
    function Get_TII_1: Double;
    function Get_TII_2: UnicodeString;
    function Get_TII_3: UnicodeString;
    function Get_IIM: IXMLFACTURA_ITE_TII_IIMList;
    procedure Set_TII_1(Value: Double);
    procedure Set_TII_2(Value: UnicodeString);
    procedure Set_TII_3(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

  TXMLFACTURA_ITE_TIIList = class(TXMLNodeCollection, IXMLFACTURA_ITE_TIIList)
  protected
    { IXMLFACTURA_ITE_TIIList }
    function Add: IXMLFACTURA_ITE_TII;
    function Insert(const Index: Integer): IXMLFACTURA_ITE_TII;

    function Get_Item(Index: Integer): IXMLFACTURA_ITE_TII;
  end;

  TXMLFACTURA_ITE_TII_IIM = class(TXMLNode, IXMLFACTURA_ITE_TII_IIM)
  protected
    { IXMLFACTURA_ITE_IIM }
    function Get_IIM_1: UnicodeString;
    function Get_IIM_2: Double;
    function Get_IIM_3: UnicodeString;
    function Get_IIM_4: Double;
    function Get_IIM_5: UnicodeString;
    function Get_IIM_6: Double;
    procedure Set_IIM_1(Value: UnicodeString);
    procedure Set_IIM_2(Value: Double);
    procedure Set_IIM_3(Value: UnicodeString);
    procedure Set_IIM_4(Value: Double);
    procedure Set_IIM_5(Value: UnicodeString);
    procedure Set_IIM_6(Value: Double);
  end;

  TXMLFACTURA_ITE_TII_IIMList = class(TXMLNodeCollection,
    IXMLFACTURA_ITE_TII_IIMList)
  protected
    { IXMLFACTURA_ITE_TIIList }
    function Add: IXMLFACTURA_ITE_TII_IIM;
    function Insert(const Index: Integer): IXMLFACTURA_ITE_TII_IIM;

    function Get_Item(Index: Integer): IXMLFACTURA_ITE_TII_IIM;
  end;

  { Global Functions }

function GetFACTURA(Doc: IXMLDocument): IXMLFACTURA;
function LoadFACTURA(const FileName: string): IXMLFACTURA;
function NewFACTURA: IXMLFACTURA;
function NewNOTA: IXMLFACTURA;

const
  TargetNamespace = '';

implementation

uses Xml.xmlutil;

{ Global Functions }

function GetFACTURA(Doc: IXMLDocument): IXMLFACTURA;
begin
  Result := Doc.GetDocBinding('FACTURA', TXMLFACTURA, TargetNamespace)
    as IXMLFACTURA;
end;

function LoadFACTURA(const FileName: string): IXMLFACTURA;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('FACTURA', TXMLFACTURA,
    TargetNamespace) as IXMLFACTURA;
end;

function NewFACTURA: IXMLFACTURA;
begin
  Result := NewXMLDocument.GetDocBinding('FACTURA', TXMLFACTURA,
    TargetNamespace) as IXMLFACTURA;
end;

function NewNOTA: IXMLFACTURA;
begin
  Result := NewXMLDocument.GetDocBinding('NOTA', TXMLFACTURA, TargetNamespace)
    as IXMLFACTURA;
end;

{ TXMLFACTURA }

procedure TXMLFACTURA.AfterConstruction;
begin
  RegisterChildNode('ENC', TXMLFACTURA_ENC);
  RegisterChildNode('TET', TXMLFACTURA_TET);
  RegisterChildNode('EMI', TXMLFACTURA_EMI);
  RegisterChildNode('ADQ', TXMLFACTURA_ADQ);
  RegisterChildNode('TOT', TXMLFACTURA_TOT);
  RegisterChildNode('TIM', TXMLFACTURA_TIM);
  RegisterChildNode('OVT', TXMLFACTURA_OVT);
  RegisterChildNode('TDC', TXMLFACTURA_TDC);
  RegisterChildNode('DRF', TXMLFACTURA_DRF);
  RegisterChildNode('NOT', TXMLFACTURA_NOT);
  RegisterChildNode('DSC', TXMLFACTURA_DSC);
  RegisterChildNode('ORC', TXMLFACTURA_ORC);
  RegisterChildNode('CDN', TXMLFACTURA_CDN);
  RegisterChildNode('REF', TXMLFACTURA_REF);
  RegisterChildNode('IEN', TXMLFACTURA_IEN);
  RegisterChildNode('MEP', TXMLFACTURA_MEP);
  RegisterChildNode('CTS', TXMLFACTURA_CTS);
  RegisterChildNode('ITE', TXMLFACTURA_ITE);
  FNOT_ := CreateCollection(TXMLFACTURA_NOTList, IXMLFACTURA_NOT, 'NOT')
    as IXMLFACTURA_NOTList;
  FDSC := CreateCollection(TXMLFACTURA_DSCList, IXMLFACTURA_DSC, 'DSC')
    as IXMLFACTURA_DSCList;
  FREF := CreateCollection(TXMLFACTURA_REFList, IXMLFACTURA_REF, 'REF')
    as IXMLFACTURA_REFList;
  FTIM := CreateCollection(TXMLFACTURA_TIMList, IXMLFACTURA_TIM, 'TIM')
    as IXMLFACTURA_TIMList;
  FOVT := CreateCollection(TXMLFACTURA_OVTList, IXMLFACTURA_OVT, 'OVT')
    as IXMLFACTURA_OVTList;
  FITE := CreateCollection(TXMLFACTURA_ITEList, IXMLFACTURA_ITE, 'ITE')
    as IXMLFACTURA_ITEList;
  inherited;
end;

function TXMLFACTURA.Get_ENC: IXMLFACTURA_ENC;
begin
  Result := ChildNodes['ENC'] as IXMLFACTURA_ENC;
end;

function TXMLFACTURA.Get_TET: IXMLFACTURA_TET;
begin
  Result := ChildNodes['TET'] as IXMLFACTURA_TET;
end;

function TXMLFACTURA.Get_EMI: IXMLFACTURA_EMI;
begin
  Result := ChildNodes['EMI'] as IXMLFACTURA_EMI;
end;

function TXMLFACTURA.Get_ADQ: IXMLFACTURA_ADQ;
begin
  Result := ChildNodes['ADQ'] as IXMLFACTURA_ADQ;
end;

function TXMLFACTURA.Get_TOT: IXMLFACTURA_TOT;
begin
  Result := ChildNodes['TOT'] as IXMLFACTURA_TOT;
end;

function TXMLFACTURA.Get_TIM: IXMLFACTURA_TIMList;
begin
  Result := FTIM;
end;

function TXMLFACTURA.Get_OVT: IXMLFACTURA_OVTList;
begin
  Result := FOVT;
end;

function TXMLFACTURA.Get_TDC: IXMLFACTURA_TDC;
begin
  Result := ChildNodes['TDC'] as IXMLFACTURA_TDC;
end;

function TXMLFACTURA.Get_DRF: IXMLFACTURA_DRF;
begin
  Result := ChildNodes['DRF'] as IXMLFACTURA_DRF;
end;

function TXMLFACTURA.Get_NOT_: IXMLFACTURA_NOTList;
begin
  Result := FNOT_;
end;
function TXMLFACTURA.Get_DSC: IXMLFACTURA_DSCList;
begin
  Result := FDSC;
end;

function TXMLFACTURA.Get_ORC: IXMLFACTURA_ORC;
begin
  Result := ChildNodes['ORC'] as IXMLFACTURA_ORC;
end;

function TXMLFACTURA.Get_CDN: IXMLFACTURA_CDN;
begin
  Result := ChildNodes['CDN'] as IXMLFACTURA_CDN;
end;

function TXMLFACTURA.Get_REF: IXMLFACTURA_REFList;
begin
  Result := FREF;
end;

function TXMLFACTURA.Get_IEN: IXMLFACTURA_IEN;
begin
  Result := ChildNodes['IEN'] as IXMLFACTURA_IEN;
end;

function TXMLFACTURA.Get_MEP: IXMLFACTURA_MEP;
begin
  Result := ChildNodes['MEP'] as IXMLFACTURA_MEP;
end;

function TXMLFACTURA.Get_CTS: IXMLFACTURA_CTS;
begin
  Result := ChildNodes['CTS'] as IXMLFACTURA_CTS;
end;

function TXMLFACTURA.Get_ITE: IXMLFACTURA_ITEList;
begin
  Result := FITE;
end;

{ TXMLFACTURA_ENC }

function TXMLFACTURA_ENC.Get_ENC_1: UnicodeString;
begin
  Result := ChildNodes['ENC_1'].Text;
end;

procedure TXMLFACTURA_ENC.Set_ENC_1(Value: UnicodeString);
begin
  ChildNodes['ENC_1'].NodeValue := Value;
end;

function TXMLFACTURA_ENC.Get_ENC_2: Integer;
begin
  Result := ChildNodes['ENC_2'].NodeValue;
end;

procedure TXMLFACTURA_ENC.Set_ENC_2(Value: Integer);
begin
  ChildNodes['ENC_2'].NodeValue := Value;
end;

function TXMLFACTURA_ENC.Get_ENC_3: Integer;
begin
  Result := ChildNodes['ENC_3'].NodeValue;
end;

procedure TXMLFACTURA_ENC.Set_ENC_3(Value: Integer);
begin
  ChildNodes['ENC_3'].NodeValue := Value;
end;

function TXMLFACTURA_ENC.Get_ENC_4: UnicodeString;
begin
  Result := ChildNodes['ENC_4'].Text;
end;

procedure TXMLFACTURA_ENC.Set_ENC_4(Value: UnicodeString);
begin
  ChildNodes['ENC_4'].NodeValue := Value;
end;

function TXMLFACTURA_ENC.Get_ENC_5: UnicodeString;
begin
  Result := ChildNodes['ENC_5'].Text;
end;

procedure TXMLFACTURA_ENC.Set_ENC_5(Value: UnicodeString);
begin
  ChildNodes['ENC_5'].NodeValue := Value;
end;

function TXMLFACTURA_ENC.Get_ENC_6: UnicodeString;
begin
  Result := ChildNodes['ENC_6'].Text;
end;

procedure TXMLFACTURA_ENC.Set_ENC_6(Value: UnicodeString);
begin
  ChildNodes['ENC_6'].NodeValue := Value;
end;

function TXMLFACTURA_ENC.Get_ENC_7: UnicodeString;
begin
  Result := ChildNodes['ENC_7'].Text;
end;

procedure TXMLFACTURA_ENC.Set_ENC_7(Value: UnicodeString);
begin
  ChildNodes['ENC_7'].NodeValue := Value;
end;

function TXMLFACTURA_ENC.Get_ENC_8: UnicodeString;
begin
  Result := ChildNodes['ENC_8'].Text;
end;

procedure TXMLFACTURA_ENC.Set_ENC_8(Value: UnicodeString);
begin
  ChildNodes['ENC_8'].NodeValue := Value;
end;

function TXMLFACTURA_ENC.Get_ENC_9: Double;
begin
  Result := ChildNodes['ENC_9'].NodeValue;
end;

procedure TXMLFACTURA_ENC.Set_ENC_9(Value: Double);
begin
  ChildNodes['ENC_9'].NodeValue := Value;
end;

function TXMLFACTURA_ENC.Get_ENC_10: UnicodeString;
begin
  Result := ChildNodes['ENC_10'].Text;
end;

procedure TXMLFACTURA_ENC.Set_ENC_10(Value: UnicodeString);
begin
  ChildNodes['ENC_10'].NodeValue := Value;
end;

function TXMLFACTURA_ENC.Get_ENC_11: UnicodeString;
begin
  Result := ChildNodes['ENC_11'].Text;
end;

procedure TXMLFACTURA_ENC.Set_ENC_11(Value: UnicodeString);
begin
  ChildNodes['ENC_11'].NodeValue := Value;
end;

function TXMLFACTURA_ENC.Get_ENC_12: UnicodeString;
begin
  Result := ChildNodes['ENC_12'].Text;
end;

procedure TXMLFACTURA_ENC.Set_ENC_12(Value: UnicodeString);
begin
  ChildNodes['ENC_12'].NodeValue := Value;
end;

function TXMLFACTURA_ENC.Get_ENC_13: UnicodeString;
begin
  Result := ChildNodes['ENC_13'].Text;
end;

procedure TXMLFACTURA_ENC.Set_ENC_13(Value: UnicodeString);
begin
  ChildNodes['ENC_13'].NodeValue := Value;
end;

function TXMLFACTURA_ENC.Get_ENC_14: UnicodeString;
begin
  Result := ChildNodes['ENC_14'].Text;
end;

procedure TXMLFACTURA_ENC.Set_ENC_14(Value: UnicodeString);
begin
  ChildNodes['ENC_14'].NodeValue := Value;
end;

function TXMLFACTURA_ENC.Get_ENC_15: Double;
begin
  Result := ChildNodes['ENC_15'].NodeValue;
end;

procedure TXMLFACTURA_ENC.Set_ENC_15(Value: Double);
begin
  ChildNodes['ENC_15'].NodeValue := Value;
end;

function TXMLFACTURA_ENC.Get_ENC_16: UnicodeString;
begin
  Result := ChildNodes['ENC_16'].Text;
end;

procedure TXMLFACTURA_ENC.Set_ENC_16(Value: UnicodeString);
begin
  ChildNodes['ENC_16'].NodeValue := Value;
end;

{ TXMLFACTURA_TET }

function TXMLFACTURA_TET.Get_TET_1: UnicodeString;
begin
  Result := ChildNodes['TET_1'].Text;
end;

procedure TXMLFACTURA_TET.Set_TET_1(Value: UnicodeString);
begin
  ChildNodes['TET_1'].NodeValue := Value;
end;

function TXMLFACTURA_TET.Get_TET_2: UnicodeString;
begin
  Result := ChildNodes['TET_2'].Text;
end;

procedure TXMLFACTURA_TET.Set_TET_2(Value: UnicodeString);
begin
  ChildNodes['TET_2'].NodeValue := Value;
end;

function TXMLFACTURA_TET.Get_TET_3: UnicodeString;
begin
  Result := ChildNodes['TET_3'].Text;
end;

procedure TXMLFACTURA_TET.Set_TET_3(Value: UnicodeString);
begin
  ChildNodes['TET_3'].NodeValue := Value;
end;

function TXMLFACTURA_TET.Get_TET_4: UnicodeString;
begin
  Result := ChildNodes['TET_4'].Text;
end;

procedure TXMLFACTURA_TET.Set_TET_4(Value: UnicodeString);
begin
  ChildNodes['TET_4'].NodeValue := Value;
end;

{ TXMLFACTURA_EMI }

procedure TXMLFACTURA_EMI.AfterConstruction;
begin
  RegisterChildNode('CDE', TXMLFACTURA_EMI_CDE);
  inherited;
end;

function TXMLFACTURA_EMI.Get_EMI_1: Double;
begin
  Result := ChildNodes['EMI_1'].NodeValue;
end;

procedure TXMLFACTURA_EMI.Set_EMI_1(Value: Double);
begin
  ChildNodes['EMI_1'].NodeValue := Value;
end;

function TXMLFACTURA_EMI.Get_EMI_2: Integer;
begin
  Result := ChildNodes['EMI_2'].NodeValue;
end;

procedure TXMLFACTURA_EMI.Set_EMI_2(Value: Integer);
begin
  ChildNodes['EMI_2'].NodeValue := Value;
end;

function TXMLFACTURA_EMI.Get_EMI_3: Double;
begin
  Result := ChildNodes['EMI_3'].NodeValue;
end;

procedure TXMLFACTURA_EMI.Set_EMI_3(Value: Double);
begin
  ChildNodes['EMI_3'].NodeValue := Value;
end;

function TXMLFACTURA_EMI.Get_EMI_4: Double;
begin
  Result := ChildNodes['EMI_4'].NodeValue;
end;

procedure TXMLFACTURA_EMI.Set_EMI_4(Value: Double);
begin
  ChildNodes['EMI_4'].NodeValue := Value;
end;

function TXMLFACTURA_EMI.Get_EMI_5: UnicodeString;
begin
  Result := ChildNodes['EMI_5'].Text;
end;

procedure TXMLFACTURA_EMI.Set_EMI_5(Value: UnicodeString);
begin
  ChildNodes['EMI_5'].NodeValue := Value;
end;

function TXMLFACTURA_EMI.Get_EMI_6: UnicodeString;
begin
  Result := ChildNodes['EMI_6'].Text;
end;

procedure TXMLFACTURA_EMI.Set_EMI_6(Value: UnicodeString);
begin
  ChildNodes['EMI_6'].NodeValue := Value;
end;

function TXMLFACTURA_EMI.Get_EMI_7: UnicodeString;
begin
  Result := ChildNodes['EMI_7'].Text;
end;

procedure TXMLFACTURA_EMI.Set_EMI_7(Value: UnicodeString);
begin
  ChildNodes['EMI_7'].NodeValue := Value;
end;

function TXMLFACTURA_EMI.Get_EMI_8: UnicodeString;
begin
  Result := ChildNodes['EMI_8'].Text;
end;

procedure TXMLFACTURA_EMI.Set_EMI_8(Value: UnicodeString);
begin
  ChildNodes['EMI_8'].NodeValue := Value;
end;

function TXMLFACTURA_EMI.Get_EMI_9: UnicodeString;
begin
  Result := ChildNodes['EMI_9'].Text;
end;

procedure TXMLFACTURA_EMI.Set_EMI_9(Value: UnicodeString);
begin
  ChildNodes['EMI_9'].NodeValue := Value;
end;

function TXMLFACTURA_EMI.Get_EMI_10: UnicodeString;
begin
  Result := ChildNodes['EMI_10'].Text;
end;

procedure TXMLFACTURA_EMI.Set_EMI_10(Value: UnicodeString);
begin
  ChildNodes['EMI_10'].NodeValue := Value;
end;

function TXMLFACTURA_EMI.Get_EMI_11: UnicodeString;
begin
  Result := ChildNodes['EMI_11'].Text;
end;

procedure TXMLFACTURA_EMI.Set_EMI_11(Value: UnicodeString);
begin
  ChildNodes['EMI_11'].NodeValue := Value;
end;

function TXMLFACTURA_EMI.Get_EMI_12: UnicodeString;
begin
  Result := ChildNodes['EMI_12'].Text;
end;

procedure TXMLFACTURA_EMI.Set_EMI_12(Value: UnicodeString);
begin
  ChildNodes['EMI_12'].NodeValue := Value;
end;

function TXMLFACTURA_EMI.Get_EMI_13: UnicodeString;
begin
  Result := ChildNodes['EMI_13'].Text;
end;

procedure TXMLFACTURA_EMI.Set_EMI_13(Value: UnicodeString);
begin
  ChildNodes['EMI_13'].NodeValue := Value;
end;

function TXMLFACTURA_EMI.Get_EMI_14: UnicodeString;
begin
  Result := ChildNodes['EMI_14'].Text;
end;

procedure TXMLFACTURA_EMI.Set_EMI_14(Value: UnicodeString);
begin
  ChildNodes['EMI_14'].NodeValue := Value;
end;

function TXMLFACTURA_EMI.Get_EMI_15: UnicodeString;
begin
  Result := ChildNodes['EMI_15'].Text;
end;

procedure TXMLFACTURA_EMI.Set_EMI_15(Value: UnicodeString);
begin
  ChildNodes['EMI_15'].NodeValue := Value;
end;

function TXMLFACTURA_EMI.Get_EMI_16: Int64;
begin
  Result := ChildNodes['EMI_16'].NodeValue;
end;

procedure TXMLFACTURA_EMI.Set_EMI_16(Value: Int64);
begin
  ChildNodes['EMI_16'].NodeValue := Value;
end;

function TXMLFACTURA_EMI.Get_CDE: IXMLFACTURA_EMI_CDE;
begin
  Result := ChildNodes['CDE'] as IXMLFACTURA_EMI_CDE;
end;

{ TXMLFACTURA_EMI_CDE }

function TXMLFACTURA_EMI_CDE.Get_CDE_1: Double;
begin
  Result := ChildNodes['CDE_1'].NodeValue;
end;

procedure TXMLFACTURA_EMI_CDE.Set_CDE_1(Value: Double);
begin
  ChildNodes['CDE_1'].NodeValue := Value;
end;

function TXMLFACTURA_EMI_CDE.Get_CDE_2: UnicodeString;
begin
  Result := ChildNodes['CDE_2'].Text;
end;

procedure TXMLFACTURA_EMI_CDE.Set_CDE_2(Value: UnicodeString);
begin
  ChildNodes['CDE_2'].NodeValue := Value;
end;

function TXMLFACTURA_EMI_CDE.Get_CDE_3: string;
begin
  Result := ChildNodes['CDE_3'].NodeValue;
end;

procedure TXMLFACTURA_EMI_CDE.Set_CDE_3(Value: string);
begin
  ChildNodes['CDE_3'].NodeValue := Value;
end;

function TXMLFACTURA_EMI_CDE.Get_CDE_4: UnicodeString;
begin
  Result := ChildNodes['CDE_4'].Text;
end;

procedure TXMLFACTURA_EMI_CDE.Set_CDE_4(Value: UnicodeString);
begin
  ChildNodes['CDE_4'].NodeValue := Value;
end;

{ TXMLFACTURA_ADQ }

procedure TXMLFACTURA_ADQ.AfterConstruction;
begin
  RegisterChildNode('CDA', TXMLFACTURA_ADQ_CDA);
  inherited;
end;

function TXMLFACTURA_ADQ.Get_ADQ_1: Double;
begin
  Result := ChildNodes['ADQ_1'].NodeValue;
end;

procedure TXMLFACTURA_ADQ.Set_ADQ_1(Value: Double);
begin
  ChildNodes['ADQ_1'].NodeValue := Value;
end;

function TXMLFACTURA_ADQ.Get_ADQ_2: Integer;
begin
  Result := ChildNodes['ADQ_2'].NodeValue;
end;

procedure TXMLFACTURA_ADQ.Set_ADQ_2(Value: Integer);
begin
  ChildNodes['ADQ_2'].NodeValue := Value;
end;

function TXMLFACTURA_ADQ.Get_ADQ_3: Double;
begin
  Result := ChildNodes['ADQ_3'].NodeValue;
end;

procedure TXMLFACTURA_ADQ.Set_ADQ_3(Value: Double);
begin
  ChildNodes['ADQ_3'].NodeValue := Value;
end;

function TXMLFACTURA_ADQ.Get_ADQ_4: Double;
begin
  Result := ChildNodes['ADQ_4'].NodeValue;
end;

procedure TXMLFACTURA_ADQ.Set_ADQ_4(Value: Double);
begin
  ChildNodes['ADQ_4'].NodeValue := Value;
end;

function TXMLFACTURA_ADQ.Get_ADQ_5: Integer;
begin
  Result := ChildNodes['ADQ_5'].NodeValue;
end;

procedure TXMLFACTURA_ADQ.Set_ADQ_5(Value: Integer);
begin
  ChildNodes['ADQ_5'].NodeValue := Value;
end;

function TXMLFACTURA_ADQ.Get_ADQ_6: UnicodeString;
begin
  Result := ChildNodes['ADQ_6'].Text;
end;

procedure TXMLFACTURA_ADQ.Set_ADQ_6(Value: UnicodeString);
begin
  ChildNodes['ADQ_6'].NodeValue := Value;
end;

function TXMLFACTURA_ADQ.Get_ADQ_7: UnicodeString;
begin
  Result := ChildNodes['ADQ_7'].Text;
end;

procedure TXMLFACTURA_ADQ.Set_ADQ_7(Value: UnicodeString);
begin
  ChildNodes['ADQ_7'].NodeValue := Value;
end;

function TXMLFACTURA_ADQ.Get_ADQ_8: UnicodeString;
begin
  Result := ChildNodes['ADQ_8'].Text;
end;

procedure TXMLFACTURA_ADQ.Set_ADQ_8(Value: UnicodeString);
begin
  ChildNodes['ADQ_8'].NodeValue := Value;
end;

function TXMLFACTURA_ADQ.Get_ADQ_9: UnicodeString;
begin
  Result := ChildNodes['ADQ_9'].Text;
end;

procedure TXMLFACTURA_ADQ.Set_ADQ_9(Value: UnicodeString);
begin
  ChildNodes['ADQ_9'].NodeValue := Value;
end;

function TXMLFACTURA_ADQ.Get_ADQ_10: UnicodeString;
begin
  Result := ChildNodes['ADQ_10'].Text;
end;

procedure TXMLFACTURA_ADQ.Set_ADQ_10(Value: UnicodeString);
begin
  ChildNodes['ADQ_10'].NodeValue := Value;
end;

function TXMLFACTURA_ADQ.Get_ADQ_11: UnicodeString;
begin
  Result := ChildNodes['ADQ_11'].Text;
end;

procedure TXMLFACTURA_ADQ.Set_ADQ_11(Value: UnicodeString);
begin
  ChildNodes['ADQ_11'].NodeValue := Value;
end;

function TXMLFACTURA_ADQ.Get_ADQ_12: UnicodeString;
begin
  Result := ChildNodes['ADQ_12'].Text;
end;

procedure TXMLFACTURA_ADQ.Set_ADQ_12(Value: UnicodeString);
begin
  ChildNodes['ADQ_12'].NodeValue := Value;
end;

function TXMLFACTURA_ADQ.Get_ADQ_13: UnicodeString;
begin
  Result := ChildNodes['ADQ_13'].Text;
end;

procedure TXMLFACTURA_ADQ.Set_ADQ_13(Value: UnicodeString);
begin
  ChildNodes['ADQ_13'].NodeValue := Value;
end;

function TXMLFACTURA_ADQ.Get_ADQ_15: UnicodeString;
begin
  Result := ChildNodes['ADQ_15'].Text;
end;

procedure TXMLFACTURA_ADQ.Set_ADQ_15(Value: UnicodeString);
begin
  ChildNodes['ADQ_15'].NodeValue := Value;
end;

function TXMLFACTURA_ADQ.Get_ADQ_16: UnicodeString;
begin
  Result := ChildNodes['ADQ_16'].Text;
end;

procedure TXMLFACTURA_ADQ.Set_ADQ_16(Value: UnicodeString);
begin
  ChildNodes['ADQ_16'].NodeValue := Value;
end;

function TXMLFACTURA_ADQ.Get_CDA: IXMLFACTURA_ADQ_CDA;
begin
  Result := ChildNodes['CDA'] as IXMLFACTURA_ADQ_CDA;
end;

{ TXMLFACTURA_ADQ_CDA }

function TXMLFACTURA_ADQ_CDA.Get_CDA_1: Double;
begin
  Result := ChildNodes['CDA_1'].NodeValue;
end;

procedure TXMLFACTURA_ADQ_CDA.Set_CDA_1(Value: Double);
begin
  ChildNodes['CDA_1'].NodeValue := Value;
end;

function TXMLFACTURA_ADQ_CDA.Get_CDA_2: UnicodeString;
begin
  Result := ChildNodes['CDA_2'].Text;
end;

procedure TXMLFACTURA_ADQ_CDA.Set_CDA_2(Value: UnicodeString);
begin
  ChildNodes['CDA_2'].NodeValue := Value;
end;

function TXMLFACTURA_ADQ_CDA.Get_CDA_3: string;
begin
  Result := ChildNodes['CDA_3'].NodeValue;
end;

procedure TXMLFACTURA_ADQ_CDA.Set_CDA_3(Value: string);
begin
  ChildNodes['CDA_3'].NodeValue := Value;
end;

function TXMLFACTURA_ADQ_CDA.Get_CDA_4: UnicodeString;
begin
  Result := ChildNodes['CDA_4'].Text;
end;

procedure TXMLFACTURA_ADQ_CDA.Set_CDA_4(Value: UnicodeString);
begin
  ChildNodes['CDA_4'].NodeValue := Value;
end;

{ TXMLFACTURA_TOT }

function TXMLFACTURA_TOT.Get_TOT_1: Double;
begin
  Result := ChildNodes['TOT_1'].NodeValue;
end;

procedure TXMLFACTURA_TOT.Set_TOT_1(Value: Double);
begin
  ChildNodes['TOT_1'].NodeValue := Value;
end;

function TXMLFACTURA_TOT.Get_TOT_2: UnicodeString;
begin
  Result := ChildNodes['TOT_2'].Text;
end;

procedure TXMLFACTURA_TOT.Set_TOT_2(Value: UnicodeString);
begin
  ChildNodes['TOT_2'].NodeValue := Value;
end;

function TXMLFACTURA_TOT.Get_TOT_3: Double;
begin
  Result := ChildNodes['TOT_3'].NodeValue;
end;

procedure TXMLFACTURA_TOT.Set_TOT_3(Value: Double);
begin
  ChildNodes['TOT_3'].NodeValue := Value;
end;

function TXMLFACTURA_TOT.Get_TOT_4: UnicodeString;
begin
  Result := ChildNodes['TOT_4'].Text;
end;

procedure TXMLFACTURA_TOT.Set_TOT_4(Value: UnicodeString);
begin
  ChildNodes['TOT_4'].NodeValue := Value;
end;

function TXMLFACTURA_TOT.Get_TOT_5: Double;
begin
  Result := ChildNodes['TOT_5'].NodeValue;
end;

procedure TXMLFACTURA_TOT.Set_TOT_5(Value: Double);
begin
  ChildNodes['TOT_5'].NodeValue := Value;
end;

function TXMLFACTURA_TOT.Get_TOT_6: UnicodeString;
begin
  Result := ChildNodes['TOT_6'].Text;
end;

procedure TXMLFACTURA_TOT.Set_TOT_6(Value: UnicodeString);
begin
  ChildNodes['TOT_6'].NodeValue := Value;
end;

function TXMLFACTURA_TOT.Get_TOT_7: Double;
begin
  Result := ChildNodes['TOT_7'].NodeValue;
end;

procedure TXMLFACTURA_TOT.Set_TOT_7(Value: Double);
begin
  ChildNodes['TOT_7'].NodeValue := Value;
end;

function TXMLFACTURA_TOT.Get_TOT_8: UnicodeString;
begin
  Result := ChildNodes['TOT_8'].Text;
end;

procedure TXMLFACTURA_TOT.Set_TOT_8(Value: UnicodeString);
begin
  ChildNodes['TOT_8'].NodeValue := Value;
end;

function TXMLFACTURA_TOT.Get_TOT_9: Double;
begin
  Result := ChildNodes['TOT_9'].NodeValue;
end;

procedure TXMLFACTURA_TOT.Set_TOT_9(Value: Double);
begin
  ChildNodes['TOT_9'].NodeValue := Value;
end;

function TXMLFACTURA_TOT.Get_TOT_10: UnicodeString;
begin
  Result := ChildNodes['TOT_10'].Text;
end;

procedure TXMLFACTURA_TOT.Set_TOT_10(Value: UnicodeString);
begin
  ChildNodes['TOT_10'].NodeValue := Value;
end;

function TXMLFACTURA_TOT.Get_TOT_11: Double;
begin
  Result := ChildNodes['TOT_11'].NodeValue;
end;

procedure TXMLFACTURA_TOT.Set_TOT_11(Value: Double);
begin
  ChildNodes['TOT_11'].NodeValue := Value;
end;

function TXMLFACTURA_TOT.Get_TOT_12: UnicodeString;
begin
  Result := ChildNodes['TOT_12'].Text;
end;

procedure TXMLFACTURA_TOT.Set_TOT_12(Value: UnicodeString);
begin
  ChildNodes['TOT_12'].NodeValue := Value;
end;

function TXMLFACTURA_TOT.Get_TOT_13: Double;
begin
  Result := ChildNodes['TOT_13'].NodeValue;
end;

procedure TXMLFACTURA_TOT.Set_TOT_13(Value: Double);
begin
  ChildNodes['TOT_13'].NodeValue := Value;
end;

function TXMLFACTURA_TOT.Get_TOT_14: UnicodeString;
begin
  Result := ChildNodes['TOT_14'].Text;
end;

procedure TXMLFACTURA_TOT.Set_TOT_14(Value: UnicodeString);
begin
  ChildNodes['TOT_14'].NodeValue := Value;
end;

{ TXMLFACTURA_TIM }

procedure TXMLFACTURA_TIM.AfterConstruction;
begin
  RegisterChildNode('IMP', TXMLFACTURA_TIM_IMP);
  inherited;
end;

function TXMLFACTURA_TIM.Get_TIM_1: UnicodeString;
begin
  Result := ChildNodes['TIM_1'].Text;
end;

procedure TXMLFACTURA_TIM.Set_TIM_1(Value: UnicodeString);
begin
  ChildNodes['TIM_1'].NodeValue := Value;
end;

function TXMLFACTURA_TIM.Get_TIM_2: Double;
begin
  Result := ChildNodes['TIM_2'].NodeValue;
end;

procedure TXMLFACTURA_TIM.Set_TIM_2(Value: Double);
begin
  ChildNodes['TIM_2'].NodeValue := Value;
end;

function TXMLFACTURA_TIM.Get_TIM_3: UnicodeString;
begin
  Result := ChildNodes['TIM_3'].Text;
end;

procedure TXMLFACTURA_TIM.Set_TIM_3(Value: UnicodeString);
begin
  ChildNodes['TIM_3'].NodeValue := Value;
end;

function TXMLFACTURA_TIM.Get_IMP: IXMLFACTURA_TIM_IMP;
begin
  Result := ChildNodes['IMP'] as IXMLFACTURA_TIM_IMP;
end;

{ TXMLFACTURA_TIM_IMP }

function TXMLFACTURA_TIM_IMP.Get_IMP_1: string;
begin
  Result := ChildNodes['IMP_1'].NodeValue;
end;

procedure TXMLFACTURA_TIM_IMP.Set_IMP_1(Value: string);
begin
  ChildNodes['IMP_1'].NodeValue := Value;
end;

function TXMLFACTURA_TIM_IMP.Get_IMP_2: Integer;
begin
  Result := ChildNodes['IMP_2'].NodeValue;
end;

procedure TXMLFACTURA_TIM_IMP.Set_IMP_2(Value: Integer);
begin
  ChildNodes['IMP_2'].NodeValue := Value;
end;

function TXMLFACTURA_TIM_IMP.Get_IMP_3: UnicodeString;
begin
  Result := ChildNodes['IMP_3'].Text;
end;

procedure TXMLFACTURA_TIM_IMP.Set_IMP_3(Value: UnicodeString);
begin
  ChildNodes['IMP_3'].NodeValue := Value;
end;

function TXMLFACTURA_TIM_IMP.Get_IMP_4: Double;
begin
  Result := ChildNodes['IMP_4'].NodeValue;
end;

procedure TXMLFACTURA_TIM_IMP.Set_IMP_4(Value: Double);
begin
  ChildNodes['IMP_4'].NodeValue := Value;
end;

function TXMLFACTURA_TIM_IMP.Get_IMP_5: UnicodeString;
begin
  Result := ChildNodes['IMP_5'].Text;
end;

procedure TXMLFACTURA_TIM_IMP.Set_IMP_5(Value: UnicodeString);
begin
  ChildNodes['IMP_5'].NodeValue := Value;
end;

function TXMLFACTURA_TIM_IMP.Get_IMP_6: Double;
begin
  Result := ChildNodes['IMP_6'].NodeValue;
end;

procedure TXMLFACTURA_TIM_IMP.Set_IMP_6(Value: Double);
begin
  ChildNodes['IMP_6'].NodeValue := Value;
end;

{ TXMLFACTURA_OVT }

function TXMLFACTURA_OVT.Get_OVT_1: UnicodeString;
begin
  Result := ChildNodes['OVT_1'].Text;
end;

procedure TXMLFACTURA_OVT.Set_OVT_1(Value: UnicodeString);
begin
  ChildNodes['OVT_1'].NodeValue := Value;
end;

function TXMLFACTURA_OVT.Get_OVT_2: Double;
begin
  Result := ChildNodes['OVT_2'].NodeValue;
end;

procedure TXMLFACTURA_OVT.Set_OVT_2(Value: Double);
begin
  ChildNodes['OVT_2'].NodeValue := Value;
end;

function TXMLFACTURA_OVT.Get_OVT_3: UnicodeString;
begin
  Result := ChildNodes['OVT_3'].Text;
end;

procedure TXMLFACTURA_OVT.Set_OVT_3(Value: UnicodeString);
begin
  ChildNodes['OVT_3'].NodeValue := Value;
end;

function TXMLFACTURA_OVT.Get_OVT_4: UnicodeString;
begin
  Result := ChildNodes['OVT_4'].Text;
end;

procedure TXMLFACTURA_OVT.Set_OVT_4(Value: UnicodeString);
begin
  ChildNodes['OVT_4'].NodeValue := Value;
end;

function TXMLFACTURA_OVT.Get_OVT_5: UnicodeString;
begin
  Result := ChildNodes['OVT_5'].Text;
end;

procedure TXMLFACTURA_OVT.Set_OVT_5(Value: UnicodeString);
begin
  ChildNodes['OVT_5'].NodeValue := Value;
end;

function TXMLFACTURA_OVT.Get_OVT_6: UnicodeString;
begin
  Result := ChildNodes['OVT_6'].Text;
end;

procedure TXMLFACTURA_OVT.Set_OVT_6(Value: UnicodeString);
begin
  ChildNodes['OVT_6'].NodeValue := Value;
end;

{ TXMLFACTURA_TDC }

function TXMLFACTURA_TDC.Get_TDC_1: UnicodeString;
begin
  Result := ChildNodes['TDC_1'].Text;
end;

procedure TXMLFACTURA_TDC.Set_TDC_1(Value: UnicodeString);
begin
  ChildNodes['TDC_1'].NodeValue := Value;
end;

function TXMLFACTURA_TDC.Get_TDC_2: UnicodeString;
begin
  Result := ChildNodes['TDC_2'].Text;
end;

procedure TXMLFACTURA_TDC.Set_TDC_2(Value: UnicodeString);
begin
  ChildNodes['TDC_2'].NodeValue := Value;
end;

function TXMLFACTURA_TDC.Get_TDC_3: Double;
begin
  Result := ChildNodes['TDC_3'].NodeValue;
end;

procedure TXMLFACTURA_TDC.Set_TDC_3(Value: Double);
begin
  ChildNodes['TDC_3'].NodeValue := Value;
end;

function TXMLFACTURA_TDC.Get_TDC_4: UnicodeString;
begin
  Result := ChildNodes['TDC_4'].Text;
end;

procedure TXMLFACTURA_TDC.Set_TDC_4(Value: UnicodeString);
begin
  ChildNodes['TDC_4'].NodeValue := Value;
end;

{ TXMLFACTURA_DRF }

function TXMLFACTURA_DRF.Get_DRF_1: UnicodeString;
begin
  Result := ChildNodes['DRF_1'].Text;
end;

procedure TXMLFACTURA_DRF.Set_DRF_1(Value: UnicodeString);
begin
  ChildNodes['DRF_1'].NodeValue := Value;
end;

function TXMLFACTURA_DRF.Get_DRF_2: UnicodeString;
begin
  Result := ChildNodes['DRF_2'].Text;
end;

procedure TXMLFACTURA_DRF.Set_DRF_2(Value: UnicodeString);
begin
  ChildNodes['DRF_2'].NodeValue := Value;
end;

function TXMLFACTURA_DRF.Get_DRF_3: UnicodeString;
begin
  Result := ChildNodes['DRF_3'].Text;
end;

procedure TXMLFACTURA_DRF.Set_DRF_3(Value: UnicodeString);
begin
  ChildNodes['DRF_3'].NodeValue := Value;
end;

function TXMLFACTURA_DRF.Get_DRF_4: UnicodeString;
begin
  Result := ChildNodes['DRF_4'].Text;
end;

procedure TXMLFACTURA_DRF.Set_DRF_4(Value: UnicodeString);
begin
  ChildNodes['DRF_4'].NodeValue := Value;
end;

function TXMLFACTURA_DRF.Get_DRF_5: Integer;
begin
  Result := ChildNodes['DRF_5'].NodeValue;
end;

procedure TXMLFACTURA_DRF.Set_DRF_5(Value: Integer);
begin
  ChildNodes['DRF_5'].NodeValue := Value;
end;

function TXMLFACTURA_DRF.Get_DRF_6: Integer;
begin
  Result := ChildNodes['DRF_6'].NodeValue;
end;

procedure TXMLFACTURA_DRF.Set_DRF_6(Value: Integer);
begin
  ChildNodes['DRF_6'].NodeValue := Value;
end;

{ TXMLFACTURA_NOT }

function TXMLFACTURA_NOT.Get_NOT_1: UnicodeString;
begin
  Result := ChildNodes['NOT_1'].Text;
end;

procedure TXMLFACTURA_NOT.Set_NOT_1(Value: UnicodeString);
begin
  ChildNodes['NOT_1'].NodeValue := Value;
end;

{ TXMLFACTURA_NOTList }

function TXMLFACTURA_NOTList.Add: IXMLFACTURA_NOT;
begin
  Result := AddItem(-1) as IXMLFACTURA_NOT;
end;

{ TXMLFACTURA_DSC }

function TXMLFACTURA_DSC.Get_DSC_1: UnicodeString;
begin
  Result := ChildNodes['DSC_1'].Text;
end;

procedure TXMLFACTURA_DSC.Set_DSC_1(Value: UnicodeString);
begin
  ChildNodes['DSC_1'].NodeValue := Value;
end;

function TXMLFACTURA_DSC.Get_DSC_2: Double;
begin
  Result := ChildNodes['DSC_2'].NodeValue;
end;

procedure TXMLFACTURA_DSC.Set_DSC_2(Value: Double);
begin
  ChildNodes['DSC_2'].NodeValue := Value;
end;
function TXMLFACTURA_DSC.Get_DSC_3: Double;
begin
  Result := ChildNodes['DSC_3'].NodeValue;
end;

procedure TXMLFACTURA_DSC.Set_DSC_3(Value: Double);
begin
  ChildNodes['DSC_3'].NodeValue := Value;
end;
function TXMLFACTURA_DSC.Get_DSC_4: UnicodeString;
begin
  Result := ChildNodes['DSC_4'].Text;
end;

procedure TXMLFACTURA_DSC.Set_DSC_4(Value: UnicodeString);
begin
  ChildNodes['DSC_4'].NodeValue := Value;
end;

function TXMLFACTURA_DSC.Get_DSC_5: UnicodeString;
begin
  Result := ChildNodes['DSC_5'].Text;
end;

procedure TXMLFACTURA_DSC.Set_DSC_5(Value: UnicodeString);
begin
  ChildNodes['DSC_5'].NodeValue := Value;
end;
function TXMLFACTURA_DSC.Get_DSC_6: UnicodeString;
begin
  Result := ChildNodes['DSC_6'].Text;
end;

procedure TXMLFACTURA_DSC.Set_DSC_6(Value: UnicodeString);
begin
  ChildNodes['DSC_6'].NodeValue := Value;
end;

procedure TXMLFACTURA_DSC.Set_DSC_7(Value: Double);
begin
  ChildNodes['DSC_7'].NodeValue := Value;
end;
function TXMLFACTURA_DSC.Get_DSC_7: Double;
begin
  Result := ChildNodes['DSC_7'].NodeValue;
end;
function TXMLFACTURA_DSC.Get_DSC_8: UnicodeString;
begin
  Result := ChildNodes['DSC_8'].Text;
end;

procedure TXMLFACTURA_DSC.Set_DSC_8(Value: UnicodeString);
begin
  ChildNodes['DSC_8'].NodeValue := Value;
end;
procedure TXMLFACTURA_DSC.Set_DSC_9(Value: Integer);
begin
  ChildNodes['DSC_9'].NodeValue := Value;
end;
function TXMLFACTURA_DSC.Get_DSC_9: Integer;
begin
  Result := ChildNodes['DSC_9'].NodeValue;
end;

{ TXMLFACTURA_DSCList }

function TXMLFACTURA_DSCList.Add: IXMLFACTURA_DSC;
begin
  Result := AddItem(-1) as IXMLFACTURA_DSC;
end;

{ TXMLFACTURA_TIMList }

function TXMLFACTURA_TIMList.Add: IXMLFACTURA_TIM;
begin
  Result := AddItem(-1) as IXMLFACTURA_TIM;
end;
{ TXMLFACTURA_OVTList }

function TXMLFACTURA_OVTList.Add: IXMLFACTURA_OVT;
begin
  Result := AddItem(-1) as IXMLFACTURA_OVT;
end;
{ TXMLFACTURA_ITEList }

function TXMLFACTURA_ITEList.Add: IXMLFACTURA_ITE;
begin
  Result := AddItem(-1) as IXMLFACTURA_ITE;
end;

function TXMLFACTURA_NOTList.Insert(const Index: Integer): IXMLFACTURA_NOT;
begin
  Result := AddItem(Index) as IXMLFACTURA_NOT;
end;

function TXMLFACTURA_DSCList.Insert(const Index: Integer): IXMLFACTURA_DSC;
begin
  Result := AddItem(Index) as IXMLFACTURA_DSC;
end;

function TXMLFACTURA_TIMList.Insert(const Index: Integer): IXMLFACTURA_TIM;
begin
  Result := AddItem(Index) as IXMLFACTURA_TIM;
end;

function TXMLFACTURA_OVTList.Insert(const Index: Integer): IXMLFACTURA_OVT;
begin
  Result := AddItem(Index) as IXMLFACTURA_OVT;
end;

function TXMLFACTURA_ITEList.Insert(const Index: Integer): IXMLFACTURA_ITE;
begin
  Result := AddItem(Index) as IXMLFACTURA_ITE;
end;

function TXMLFACTURA_NOTList.Get_Item(Index: Integer): IXMLFACTURA_NOT;
begin
  Result := List[Index] as IXMLFACTURA_NOT;
end;
function TXMLFACTURA_DSCList.Get_Item(Index: Integer): IXMLFACTURA_DSC;
begin
  Result := List[Index] as IXMLFACTURA_DSC;
end;

function TXMLFACTURA_TIMList.Get_Item(Index: Integer): IXMLFACTURA_TIM;
begin
  Result := List[Index] as IXMLFACTURA_TIM;
end;

function TXMLFACTURA_OVTList.Get_Item(Index: Integer): IXMLFACTURA_OVT;
begin
  Result := List[Index] as IXMLFACTURA_OVT;
end;

function TXMLFACTURA_ITEList.Get_Item(Index: Integer): IXMLFACTURA_ITE;
begin
  Result := List[Index] as IXMLFACTURA_ITE;
end;

{ TXMLFACTURA_ORC }

function TXMLFACTURA_ORC.Get_ORC_1: UnicodeString;
begin
  Result := ChildNodes['ORC_1'].Text;
end;

procedure TXMLFACTURA_ORC.Set_ORC_1(Value: UnicodeString);
begin
  ChildNodes['ORC_1'].NodeValue := Value;
end;

function TXMLFACTURA_ORC.Get_ORC_2: UnicodeString;
begin
  Result := ChildNodes['ORC_2'].Text;
end;

procedure TXMLFACTURA_ORC.Set_ORC_2(Value: UnicodeString);
begin
  ChildNodes['ORC_2'].NodeValue := Value;
end;

function TXMLFACTURA_ORC.Get_ORC_3: UnicodeString;
begin
  Result := ChildNodes['ORC_3'].Text;
end;

procedure TXMLFACTURA_ORC.Set_ORC_3(Value: UnicodeString);
begin
  ChildNodes['ORC_3'].NodeValue := Value;
end;

function TXMLFACTURA_ORC.Get_ORC_4: Integer;
begin
  Result := ChildNodes['ORC_4'].NodeValue;
end;

procedure TXMLFACTURA_ORC.Set_ORC_4(Value: Integer);
begin
  ChildNodes['ORC_4'].NodeValue := Value;
end;

{ TXMLFACTURA_CDN }

function TXMLFACTURA_CDN.Get_CDN_1: Double;
begin
  Result := ChildNodes['CDN_1'].NodeValue;
end;

procedure TXMLFACTURA_CDN.Set_CDN_1(Value: Double);
begin
  ChildNodes['CDN_1'].NodeValue := Value;
end;

function TXMLFACTURA_CDN.Get_CDN_2: UnicodeString;
begin
  Result := ChildNodes['CDN_2'].Text;
end;

procedure TXMLFACTURA_CDN.Set_CDN_2(Value: UnicodeString);
begin
  ChildNodes['CDN_2'].NodeValue := Value;
end;

{ TXMLFACTURA_REF }

function TXMLFACTURA_REF.Get_REF_1: UnicodeString;
begin
  Result := ChildNodes['REF_1'].Text;
end;

procedure TXMLFACTURA_REF.Set_REF_1(Value: UnicodeString);
begin
  ChildNodes['REF_1'].NodeValue := Value;
end;

function TXMLFACTURA_REF.Get_REF_2: UnicodeString;
begin
  Result := ChildNodes['REF_2'].Text;
end;

procedure TXMLFACTURA_REF.Set_REF_2(Value: UnicodeString);
begin
  ChildNodes['REF_2'].NodeValue := Value;
end;

function TXMLFACTURA_REF.Get_REF_3: UnicodeString;
begin
  Result := ChildNodes['REF_3'].Text;
end;

procedure TXMLFACTURA_REF.Set_REF_3(Value: UnicodeString);
begin
  ChildNodes['REF_3'].NodeValue := Value;
end;

{ TXMLFACTURA_REFList }

function TXMLFACTURA_REFList.Add: IXMLFACTURA_REF;
begin
  Result := AddItem(-1) as IXMLFACTURA_REF;
end;

function TXMLFACTURA_REFList.Insert(const Index: Integer): IXMLFACTURA_REF;
begin
  Result := AddItem(Index) as IXMLFACTURA_REF;
end;

function TXMLFACTURA_REFList.Get_Item(Index: Integer): IXMLFACTURA_REF;
begin
  Result := List[Index] as IXMLFACTURA_REF;
end;

{ TXMLFACTURA_IEN }

function TXMLFACTURA_IEN.Get_IEN_1: UnicodeString;
begin
  Result := ChildNodes['IEN_1'].Text;
end;

procedure TXMLFACTURA_IEN.Set_IEN_1(Value: UnicodeString);
begin
  ChildNodes['IEN_1'].NodeValue := Value;
end;

function TXMLFACTURA_IEN.Get_IEN_2: UnicodeString;
begin
  Result := ChildNodes['IEN_2'].Text;
end;

procedure TXMLFACTURA_IEN.Set_IEN_2(Value: UnicodeString);
begin
  ChildNodes['IEN_2'].NodeValue := Value;
end;

function TXMLFACTURA_IEN.Get_IEN_3: UnicodeString;
begin
  Result := ChildNodes['IEN_3'].Text;
end;

procedure TXMLFACTURA_IEN.Set_IEN_3(Value: UnicodeString);
begin
  ChildNodes['IEN_3'].NodeValue := Value;
end;

function TXMLFACTURA_IEN.Get_IEN_4: UnicodeString;
begin
  Result := ChildNodes['IEN_4'].Text;
end;

procedure TXMLFACTURA_IEN.Set_IEN_4(Value: UnicodeString);
begin
  ChildNodes['IEN_4'].NodeValue := Value;
end;

function TXMLFACTURA_IEN.Get_IEN_5: UnicodeString;
begin
  Result := ChildNodes['IEN_5'].Text;
end;

procedure TXMLFACTURA_IEN.Set_IEN_5(Value: UnicodeString);
begin
  ChildNodes['IEN_5'].NodeValue := Value;
end;

function TXMLFACTURA_IEN.Get_IEN_6: UnicodeString;
begin
  Result := ChildNodes['IEN_6'].Text;
end;

procedure TXMLFACTURA_IEN.Set_IEN_6(Value: UnicodeString);
begin
  ChildNodes['IEN_6'].NodeValue := Value;
end;

function TXMLFACTURA_IEN.Get_IEN_7: UnicodeString;
begin
  Result := ChildNodes['IEN_7'].Text;
end;

procedure TXMLFACTURA_IEN.Set_IEN_7(Value: UnicodeString);
begin
  ChildNodes['IEN_7'].NodeValue := Value;
end;

function TXMLFACTURA_IEN.Get_IEN_8: UnicodeString;
begin
  Result := ChildNodes['IEN_8'].Text;
end;

procedure TXMLFACTURA_IEN.Set_IEN_8(Value: UnicodeString);
begin
  ChildNodes['IEN_8'].NodeValue := Value;
end;

function TXMLFACTURA_IEN.Get_IEN_9: UnicodeString;
begin
  Result := ChildNodes['IEN_9'].Text;
end;

procedure TXMLFACTURA_IEN.Set_IEN_9(Value: UnicodeString);
begin
  ChildNodes['IEN_9'].NodeValue := Value;
end;

function TXMLFACTURA_IEN.Get_IEN_10: UnicodeString;
begin
  Result := ChildNodes['IEN_10'].Text;
end;

procedure TXMLFACTURA_IEN.Set_IEN_10(Value: UnicodeString);
begin
  ChildNodes['IEN_10'].NodeValue := Value;
end;

function TXMLFACTURA_IEN.Get_IEN_11: UnicodeString;
begin
  Result := ChildNodes['IEN_11'].Text;
end;

procedure TXMLFACTURA_IEN.Set_IEN_11(Value: UnicodeString);
begin
  ChildNodes['IEN_11'].NodeValue := Value;
end;

function TXMLFACTURA_IEN.Get_IEN_12: Int64;
begin
  Result := ChildNodes['IEN_12'].NodeValue;
end;

procedure TXMLFACTURA_IEN.Set_IEN_12(Value: Int64);
begin
  ChildNodes['IEN_12'].NodeValue := Value;
end;

{ TXMLFACTURA_MEP }

function TXMLFACTURA_MEP.Get_MEP_1: String;
begin
  Result := ChildNodes['MEP_1'].NodeValue;
end;

procedure TXMLFACTURA_MEP.Set_MEP_1(Value: String);
begin
  ChildNodes['MEP_1'].NodeValue := Value;
end;

function TXMLFACTURA_MEP.Get_MEP_2: UnicodeString;
begin
  Result := ChildNodes['MEP_2'].Text;
end;

procedure TXMLFACTURA_MEP.Set_MEP_2(Value: UnicodeString);
begin
  ChildNodes['MEP_2'].NodeValue := Value;
end;

function TXMLFACTURA_MEP.Get_MEP_3: UnicodeString;
begin
  Result := ChildNodes['MEP_3'].Text;
end;

procedure TXMLFACTURA_MEP.Set_MEP_3(Value: UnicodeString);
begin
  ChildNodes['MEP_3'].NodeValue := Value;
end;

function TXMLFACTURA_MEP.Get_MEP_4: UnicodeString;
begin
  Result := ChildNodes['MEP_4'].Text;
end;

procedure TXMLFACTURA_MEP.Set_MEP_4(Value: UnicodeString);
begin
  ChildNodes['MEP_4'].NodeValue := Value;
end;

function TXMLFACTURA_MEP.Get_MEP_5: UnicodeString;
begin
  Result := ChildNodes['MEP_5'].Text;
end;

procedure TXMLFACTURA_MEP.Set_MEP_5(Value: UnicodeString);
begin
  ChildNodes['MEP_5'].NodeValue := Value;
end;

function TXMLFACTURA_MEP.Get_MEP_6: UnicodeString;
begin
  Result := ChildNodes['MEP_6'].Text;
end;

procedure TXMLFACTURA_MEP.Set_MEP_6(Value: UnicodeString);
begin
  ChildNodes['MEP_6'].NodeValue := Value;
end;

{ TXMLFACTURA_CTS }

function TXMLFACTURA_CTS.Get_CTS_1: UnicodeString;
begin
  Result := ChildNodes['CTS_1'].Text;
end;

procedure TXMLFACTURA_CTS.Set_CTS_1(Value: UnicodeString);
begin
  ChildNodes['CTS_1'].NodeValue := Value;
end;

function TXMLFACTURA_CTS.Get_CTS_2: UnicodeString;
begin
  Result := ChildNodes['CTS_2'].Text;
end;

procedure TXMLFACTURA_CTS.Set_CTS_2(Value: UnicodeString);
begin
  ChildNodes['CTS_2'].NodeValue := Value;
end;

function TXMLFACTURA_CTS.Get_CTS_3: UnicodeString;
begin
  Result := ChildNodes['CTS_3'].Text;
end;

procedure TXMLFACTURA_CTS.Set_CTS_3(Value: UnicodeString);
begin
  ChildNodes['CTS_3'].NodeValue := Value;
end;

{ TXMLFACTURA_ITE }

procedure TXMLFACTURA_ITE.AfterConstruction;
begin
  RegisterChildNode('IDE', TXMLFACTURA_ITE_IDE);
  FIDE := CreateCollection(TXMLFACTURA_ITE_IDEList, IXMLFACTURA_ITE_IDE, 'IDE')
    as IXMLFACTURA_ITE_IDEList;

  RegisterChildNode('IRF', TXMLFACTURA_ITE_IRF);
  FIRF := CreateCollection(TXMLFACTURA_ITE_IRFList, IXMLFACTURA_ITE_IRF, 'IRF')
    as IXMLFACTURA_ITE_IRFList;

  RegisterChildNode('TII', TXMLFACTURA_ITE_TII);
  FTII := CreateCollection(TXMLFACTURA_ITE_TIIList, IXMLFACTURA_ITE_TII, 'TII')
    as IXMLFACTURA_ITE_TIIList;
  inherited;
end;

procedure TXMLFACTURA_ITE_TII.AfterConstruction;
begin
  RegisterChildNode('IIM', TXMLFACTURA_ITE_TII_IIM);
  FIIM := CreateCollection(TXMLFACTURA_ITE_TII_IIMList, IXMLFACTURA_ITE_TII_IIM,
    'IIM') as IXMLFACTURA_ITE_TII_IIMList;
  inherited;
end;

function TXMLFACTURA_ITE.Get_ITE_1: Double;
begin
  Result := ChildNodes['ITE_1'].NodeValue;
end;

procedure TXMLFACTURA_ITE.Set_ITE_1(Value: Double);
begin
  ChildNodes['ITE_1'].NodeValue := Value;
end;

function TXMLFACTURA_ITE.Get_ITE_2: UnicodeString;
begin
  Result := ChildNodes['ITE_2'].Text;
end;

procedure TXMLFACTURA_ITE.Set_ITE_2(Value: UnicodeString);
begin
  ChildNodes['ITE_2'].NodeValue := Value;
end;

function TXMLFACTURA_ITE.Get_ITE_3: Double;
begin
  Result := ChildNodes['ITE_3'].NodeValue;
end;

procedure TXMLFACTURA_ITE.Set_ITE_3(Value: Double);
begin
  ChildNodes['ITE_3'].NodeValue := Value;
end;

function TXMLFACTURA_ITE.Get_ITE_4: UnicodeString;
begin
  Result := ChildNodes['ITE_4'].Text;
end;

procedure TXMLFACTURA_ITE.Set_ITE_4(Value: UnicodeString);
begin
  ChildNodes['ITE_4'].NodeValue := Value;
end;

function TXMLFACTURA_ITE.Get_ITE_5: Double;
begin
  Result := ChildNodes['ITE_5'].NodeValue;
end;

procedure TXMLFACTURA_ITE.Set_ITE_5(Value: Double);
begin
  ChildNodes['ITE_5'].NodeValue := Value;
end;

function TXMLFACTURA_ITE.Get_ITE_6: UnicodeString;
begin
  Result := ChildNodes['ITE_6'].Text;
end;

procedure TXMLFACTURA_ITE.Set_ITE_6(Value: UnicodeString);
begin
  ChildNodes['ITE_6'].NodeValue := Value;
end;

function TXMLFACTURA_ITE.Get_ITE_7: Double;
begin
  Result := ChildNodes['ITE_7'].NodeValue;
end;

procedure TXMLFACTURA_ITE.Set_ITE_7(Value: Double);
begin
  ChildNodes['ITE_7'].NodeValue := Value;
end;

function TXMLFACTURA_ITE.Get_ITE_8: UnicodeString;
begin
  Result := ChildNodes['ITE_8'].Text;
end;

procedure TXMLFACTURA_ITE.Set_ITE_8(Value: UnicodeString);
begin
  ChildNodes['ITE_8'].NodeValue := Value;
end;

function TXMLFACTURA_ITE.Get_ITE_9: string;
begin
  Result := ChildNodes['ITE_9'].NodeValue;
end;

procedure TXMLFACTURA_ITE.Set_ITE_9(Value: string);
begin
  ChildNodes['ITE_9'].NodeValue := Value;
end;

function TXMLFACTURA_ITE.Get_ITE_10: UnicodeString;
begin
  Result := ChildNodes['ITE_10'].Text;
end;

procedure TXMLFACTURA_ITE.Set_ITE_10(Value: UnicodeString);
begin
  ChildNodes['ITE_10'].NodeValue := Value;
end;

function TXMLFACTURA_ITE.Get_ITE_11: UnicodeString;
begin
  Result := ChildNodes['ITE_11'].Text;
end;

procedure TXMLFACTURA_ITE.Set_ITE_11(Value: UnicodeString);
begin
  ChildNodes['ITE_11'].NodeValue := Value;
end;

function TXMLFACTURA_ITE.Get_ITE_12: UnicodeString;
begin
  Result := ChildNodes['ITE_12'].Text;
end;

procedure TXMLFACTURA_ITE.Set_ITE_12(Value: UnicodeString);
begin
  ChildNodes['ITE_12'].NodeValue := Value;
end;

function TXMLFACTURA_ITE.Get_ITE_13: UnicodeString;
begin
  Result := ChildNodes['ITE_13'].Text;
end;

procedure TXMLFACTURA_ITE.Set_ITE_13(Value: UnicodeString);
begin
  ChildNodes['ITE_13'].NodeValue := Value;
end;

function TXMLFACTURA_ITE.Get_ITE_14: UnicodeString;
begin
  Result := ChildNodes['ITE_14'].Text;
end;

procedure TXMLFACTURA_ITE.Set_ITE_14(Value: UnicodeString);
begin
  ChildNodes['ITE_14'].NodeValue := Value;
end;

function TXMLFACTURA_ITE.Get_ITE_15: UnicodeString;
begin
  Result := ChildNodes['ITE_15'].Text;
end;

procedure TXMLFACTURA_ITE.Set_ITE_15(Value: UnicodeString);
begin
  ChildNodes['ITE_15'].NodeValue := Value;
end;

function TXMLFACTURA_ITE.Get_ITE_16: UnicodeString;
begin
  Result := ChildNodes['ITE_16'].Text;
end;

procedure TXMLFACTURA_ITE.Set_ITE_16(Value: UnicodeString);
begin
  ChildNodes['ITE_16'].NodeValue := Value;
end;

function TXMLFACTURA_ITE.Get_ITE_17: UnicodeString;
begin
  Result := ChildNodes['ITE_17'].Text;
end;

procedure TXMLFACTURA_ITE.Set_ITE_17(Value: UnicodeString);
begin
  ChildNodes['ITE_17'].NodeValue := Value;
end;

function TXMLFACTURA_ITE.Get_ITE_18: UnicodeString;
begin
  Result := ChildNodes['ITE_18'].Text;
end;

procedure TXMLFACTURA_ITE.Set_ITE_18(Value: UnicodeString);
begin
  ChildNodes['ITE_18'].NodeValue := Value;
end;

function TXMLFACTURA_ITE.Get_ITE_19: Double;
begin
  Result := ChildNodes['ITE_19'].NodeValue;
end;

procedure TXMLFACTURA_ITE.Set_ITE_19(Value: Double);
begin
  ChildNodes['ITE_19'].NodeValue := Value;
end;

function TXMLFACTURA_ITE.Get_ITE_20: UnicodeString;
begin
  Result := ChildNodes['ITE_20'].Text;
end;

procedure TXMLFACTURA_ITE.Set_ITE_20(Value: UnicodeString);
begin
  ChildNodes['ITE_20'].NodeValue := Value;
end;

function TXMLFACTURA_ITE.Get_ITE_21: Double;
begin
  Result := ChildNodes['ITE_21'].NodeValue;
end;

procedure TXMLFACTURA_ITE.Set_ITE_21(Value: Double);
begin
  ChildNodes['ITE_21'].NodeValue := Value;
end;

function TXMLFACTURA_ITE.Get_ITE_22: UnicodeString;
begin
  Result := ChildNodes['ITE_22'].Text;
end;

procedure TXMLFACTURA_ITE.Set_ITE_22(Value: UnicodeString);
begin
  ChildNodes['ITE_22'].NodeValue := Value;
end;

function TXMLFACTURA_ITE.Get_ITE_23: UnicodeString;
begin
  Result := ChildNodes['ITE_23'].Text;
end;

procedure TXMLFACTURA_ITE.Set_ITE_23(Value: UnicodeString);
begin
  ChildNodes['ITE_23'].NodeValue := Value;
end;

function TXMLFACTURA_ITE.Get_ITE_24: UnicodeString;
begin
  Result := ChildNodes['ITE_24'].Text;
end;

procedure TXMLFACTURA_ITE.Set_ITE_24(Value: UnicodeString);
begin
  ChildNodes['ITE_24'].NodeValue := Value;
end;

function TXMLFACTURA_ITE.Get_IDE: IXMLFACTURA_ITE_IDEList;
begin
  Result := FIDE;
end;

function TXMLFACTURA_ITE.Get_IRF: IXMLFACTURA_ITE_IRFList;
begin
  Result := FIRF;
end;

function TXMLFACTURA_ITE.Get_TII: IXMLFACTURA_ITE_TIIList;
begin
  Result := FTII;
end;

{ TXMLFACTURA_ITE_IDE }

function TXMLFACTURA_ITE_IDE.Get_IDE_1: UnicodeString;
begin
  Result := ChildNodes['IDE_1'].Text;
end;

procedure TXMLFACTURA_ITE_IDE.Set_IDE_1(Value: UnicodeString);
begin
  ChildNodes['IDE_1'].NodeValue := Value;
end;

function TXMLFACTURA_ITE_IDE.Get_IDE_2: Double;
begin
  Result := ChildNodes['IDE_2'].NodeValue;
end;

procedure TXMLFACTURA_ITE_IDE.Set_IDE_2(Value: Double);
begin
  ChildNodes['IDE_2'].NodeValue := Value;
end;

function TXMLFACTURA_ITE_IDE.Get_IDE_3: UnicodeString;
begin
  Result := ChildNodes['IDE_3'].Text;
end;

procedure TXMLFACTURA_ITE_IDE.Set_IDE_3(Value: UnicodeString);
begin
  ChildNodes['IDE_3'].NodeValue := Value;
end;

function TXMLFACTURA_ITE_IDE.Get_IDE_4: Double;
begin
  Result := ChildNodes['IDE_4'].NodeValue;
end;

procedure TXMLFACTURA_ITE_IDE.Set_IDE_4(Value: Double);
begin
  ChildNodes['IDE_4'].NodeValue := Value;
end;

function TXMLFACTURA_ITE_IDE.Get_IDE_5: UnicodeString;
begin
  Result := ChildNodes['IDE_5'].Text;
end;

procedure TXMLFACTURA_ITE_IDE.Set_IDE_5(Value: UnicodeString);
begin
  ChildNodes['IDE_5'].NodeValue := Value;
end;

function TXMLFACTURA_ITE_IDE.Get_IDE_6: Double;
begin
  Result := ChildNodes['IDE_6'].NodeValue;
end;

procedure TXMLFACTURA_ITE_IDE.Set_IDE_6(Value: Double);
begin
  ChildNodes['IDE_6'].NodeValue := Value;
end;

function TXMLFACTURA_ITE_IDE.Get_IDE_7: Double;
begin
  Result := ChildNodes['IDE_7'].NodeValue;
end;

procedure TXMLFACTURA_ITE_IDE.Set_IDE_7(Value: Double);
begin
  ChildNodes['IDE_7'].NodeValue := Value;
end;

function TXMLFACTURA_ITE_IDE.Get_IDE_8: UnicodeString;
begin
  Result := ChildNodes['IDE_8'].Text;
end;

procedure TXMLFACTURA_ITE_IDE.Set_IDE_8(Value: UnicodeString);
begin
  ChildNodes['IDE_8'].NodeValue := Value;
end;

function TXMLFACTURA_ITE_IDE.Get_IDE_9: UnicodeString;
begin
  Result := ChildNodes['IDE_9'].Text;
end;

procedure TXMLFACTURA_ITE_IDE.Set_IDE_9(Value: UnicodeString);
begin
  ChildNodes['IDE_9'].NodeValue := Value;
end;

{ TXMLFACTURA_ITE_IDEList }

function TXMLFACTURA_ITE_IDEList.Add: IXMLFACTURA_ITE_IDE;
begin
  Result := AddItem(-1) as IXMLFACTURA_ITE_IDE;
end;

function TXMLFACTURA_ITE_IDEList.Insert(const Index: Integer)
  : IXMLFACTURA_ITE_IDE;
begin
  Result := AddItem(Index) as IXMLFACTURA_ITE_IDE;
end;

function TXMLFACTURA_ITE_IDEList.Get_Item(Index: Integer): IXMLFACTURA_ITE_IDE;
begin
  Result := List[Index] as IXMLFACTURA_ITE_IDE;
end;

{ TXMLFACTURA_ITE_IRFList }

function TXMLFACTURA_ITE_IRFList.Add: IXMLFACTURA_ITE_IRF;
begin
  Result := AddItem(-1) as IXMLFACTURA_ITE_IRF;
end;

function TXMLFACTURA_ITE_IRFList.Insert(const Index: Integer)
  : IXMLFACTURA_ITE_IRF;
begin
  Result := AddItem(Index) as IXMLFACTURA_ITE_IRF;
end;

function TXMLFACTURA_ITE_IRFList.Get_Item(Index: Integer): IXMLFACTURA_ITE_IRF;
begin
  Result := List[Index] as IXMLFACTURA_ITE_IRF;
end;

{ TXMLFACTURA_ITE_TIIList }
function TXMLFACTURA_ITE_TII.Get_TII_1: Double;
begin
  Result := ChildNodes['TII_1'].NodeValue;
end;

procedure TXMLFACTURA_ITE_TII.Set_TII_1(Value: Double);
begin
  ChildNodes['TII_1'].NodeValue := Value;
end;

function TXMLFACTURA_ITE_TII.Get_TII_2: UnicodeString;
begin
  Result := ChildNodes['TII_2'].Text;
end;

procedure TXMLFACTURA_ITE_TII.Set_TII_2(Value: UnicodeString);
begin
  ChildNodes['TII_2'].NodeValue := Value;
end;

function TXMLFACTURA_ITE_TII.Get_TII_3: UnicodeString;
begin
  Result := ChildNodes['TII_3'].Text;
end;

procedure TXMLFACTURA_ITE_TII.Set_TII_3(Value: UnicodeString);
begin
  ChildNodes['TII_3'].NodeValue := Value;
end;

{ TXMLFACTURA_ITE_TIIList }

function TXMLFACTURA_ITE_TIIList.Add: IXMLFACTURA_ITE_TII;
begin
  Result := AddItem(-1) as IXMLFACTURA_ITE_TII;
end;

function TXMLFACTURA_ITE_TIIList.Insert(const Index: Integer)
  : IXMLFACTURA_ITE_TII;
begin
  Result := AddItem(Index) as IXMLFACTURA_ITE_TII;
end;

function TXMLFACTURA_ITE_TIIList.Get_Item(Index: Integer): IXMLFACTURA_ITE_TII;
begin
  Result := List[Index] as IXMLFACTURA_ITE_TII;
end;

// IIM
function TXMLFACTURA_ITE_TII_IIM.Get_IIM_1: UnicodeString;
begin
  Result := ChildNodes['IIM_1'].Text;
end;

procedure TXMLFACTURA_ITE_TII_IIM.Set_IIM_1(Value: UnicodeString);
begin
  ChildNodes['IIM_1'].NodeValue := Value;
end;

function TXMLFACTURA_ITE_TII_IIM.Get_IIM_2: Double;
begin
  Result := ChildNodes['IIM_2'].NodeValue;
end;

procedure TXMLFACTURA_ITE_TII_IIM.Set_IIM_2(Value: Double);
begin
  ChildNodes['IIM_2'].NodeValue := Value;
end;

function TXMLFACTURA_ITE_TII_IIM.Get_IIM_3: UnicodeString;
begin
  Result := ChildNodes['IIM_3'].Text;
end;

procedure TXMLFACTURA_ITE_TII_IIM.Set_IIM_3(Value: UnicodeString);
begin
  ChildNodes['IIM_3'].NodeValue := Value;
end;

function TXMLFACTURA_ITE_TII_IIM.Get_IIM_4: Double;
begin
  Result := ChildNodes['IIM_4'].NodeValue;
end;

procedure TXMLFACTURA_ITE_TII_IIM.Set_IIM_4(Value: Double);
begin
  ChildNodes['IIM_4'].NodeValue := Value;
end;

function TXMLFACTURA_ITE_TII_IIM.Get_IIM_5: UnicodeString;
begin
  Result := ChildNodes['IIM_5'].Text;
end;

procedure TXMLFACTURA_ITE_TII_IIM.Set_IIM_5(Value: UnicodeString);
begin
  ChildNodes['IIM_5'].NodeValue := Value;
end;

function TXMLFACTURA_ITE_TII_IIM.Get_IIM_6: Double;
begin
  Result := ChildNodes['IIM_6'].NodeValue;
end;

procedure TXMLFACTURA_ITE_TII_IIM.Set_IIM_6(Value: Double);
begin
  ChildNodes['IIM_6'].NodeValue := Value;
end;

function TXMLFACTURA_ITE_TII.Get_IIM: IXMLFACTURA_ITE_TII_IIMList;
begin
  Result := FIIM;
end;
{ TXMLFACTURA_ITE_TIIList }

function TXMLFACTURA_ITE_TII_IIMList.Add: IXMLFACTURA_ITE_TII_IIM;
begin
  Result := AddItem(-1) as IXMLFACTURA_ITE_TII_IIM;
end;

function TXMLFACTURA_ITE_TII_IIMList.Insert(const Index: Integer)
  : IXMLFACTURA_ITE_TII_IIM;
begin
  Result := AddItem(Index) as IXMLFACTURA_ITE_TII_IIM;
end;

function TXMLFACTURA_ITE_TII_IIMList.Get_Item(Index: Integer)
  : IXMLFACTURA_ITE_TII_IIM;
begin
  Result := List[Index] as IXMLFACTURA_ITE_TII_IIM;
end;
{ TXMLFACTURA_ITE_IRF }

function TXMLFACTURA_ITE_IRF.Get_IRF_1: UnicodeString;
begin
  Result := ChildNodes['IRF_1'].Text;
end;

procedure TXMLFACTURA_ITE_IRF.Set_IRF_1(Value: UnicodeString);
begin
  ChildNodes['IRF_1'].NodeValue := Value;
end;

function TXMLFACTURA_ITE_IRF.Get_IRF_2: UnicodeString;
begin
  Result := ChildNodes['IRF_2'].Text;
end;

procedure TXMLFACTURA_ITE_IRF.Set_IRF_2(Value: UnicodeString);
begin
  ChildNodes['IRF_2'].NodeValue := Value;
end;

function TXMLFACTURA_ITE_IRF.Get_IRF_3: UnicodeString;
begin
  Result := ChildNodes['IRF_3'].Text;
end;

procedure TXMLFACTURA_ITE_IRF.Set_IRF_3(Value: UnicodeString);
begin
  ChildNodes['IRF_3'].NodeValue := Value;
end;

function TXMLFACTURA_ITE_IRF.Get_IRF_4: UnicodeString;
begin
  Result := ChildNodes['IRF_4'].Text;
end;

procedure TXMLFACTURA_ITE_IRF.Set_IRF_4(Value: UnicodeString);
begin
  ChildNodes['IRF_4'].NodeValue := Value;
end;

end.
