```csharp
using System;

namespace ZanvarGroup.Erp.DTO.Transactions.Objects
{
    public class DtoTrnToolStockConversionH
    {
        public Int64 TRN_NO { get; set; }
        public int TRN_SUB_TYPE { get; set; }
        public string TRN_DATE { get; set; }
        public string DOC_TYPE { get; set; }
        public decimal FINISH_WEIGHT { get; set; }
        public string CRT_BY { get; set; }
        public DateTime CRT_DATE_TIME { get; set; }
        public int UNIT_CODE { get; set; }
        public int STATUS_CODE { get; set; }
        public string DELETE_REASON { get; set; }
        public string CHN_BY { get; set; }
        public DateTime CHG_DATE_TIME { get; set; }
        public Int64 GRN_NO { get; set; }
        public string GRN_DATE { get; set; }
        public string PARTY_BILL_NO { get; set; }
        public string PARTY_BILL_DATE { get; set; }
        public int SUB_GL_ACNO { get; set; }
        public int MATERIAL_CODE { get; set; }
        public decimal ISSUE_QUANTITY { get; set; }
    }
}
```  