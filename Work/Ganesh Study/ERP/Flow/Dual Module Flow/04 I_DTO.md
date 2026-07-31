```csharp
using System;

namespace ZanvarGroup.Erp.DTO.Transactions.Objects
{
    public class DtoTrnToolStockConversionI
    {
        public Int64 TRN_NO { get; set; }
        public int SR_NO { get; set; }
        public Int64 REF_TRN_NO { get; set; }
        public int MATERIAL_CODE { get; set; }
        public decimal GRN_QTY { get; set; }
        public decimal CONVERSION_QTY { get; set; }
        public int SCRAP_MATERIAL_CODE { get; set; }
        public decimal MATERIAL_WEIGHT { get; set; }
        public decimal CONVERSION_WEIGHT { get; set; }
        public int STATUS_CODE { get; set; }
        public string GRN_DATE { get; set; }
        public int SUB_GL_ACNO { get; set; }
        public string PARTY_BILL_NO { get; set; }
        public string PARTY_BILL_DATE { get; set; }
    }
}
```  