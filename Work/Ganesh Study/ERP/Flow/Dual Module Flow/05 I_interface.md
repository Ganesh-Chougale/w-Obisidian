```csharp
using System;
using System.Collections.Generic;
using ZanvarGroup.Erp.DTO.Transactions.Objects;

namespace ZanvarGroup.Erp.DTO.Transactions.Interfaces
{
    public interface ITrnToolStockConversionI
    {
        // List<DtoTrnToolStockConversionI> GetAll();                       // .Query => returns list (Optional)
        List<DtoTrnToolStockConversionI> GetExisting(long intTrnNo);        // .Query => returns list (For Edit, Delete, Details Page)
        long Create(DtoTrnToolStockConversionI dtoObj);                     // .Query => returns TrnNo (Saves entry & returns TrnNo)

        // in I we don't need Edit Variable
        int Delete(Int64 TrnNo);                // .Execute => returns affected row count (Status_Code = 1 & returns affected row count)
        int DelPermenantTrnData(Int64 TrnNo);   // .Execute => returns affected row count (Deletes entry & returns affected row count)
    }
}
```  