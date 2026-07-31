```csharp
using System.Collections.Generic;
using ZanvarGroup.Erp.DTO.Transactions.Objects;

namespace ZanvarGroup.Erp.DTO.Transactions.Interfaces
{
    public interface ITrnToolStockConversionH
    {
        // List<DtoTrnToolStockConversionH> GetAll();          // .Query => returns list (Optional)
        DtoTrnToolStockConversionH GetExisting(long TrnNo); // .Query => returns obj (For Edit, Delete, Details Page)
        long Create(DtoTrnToolStockConversionH dtoObj);     // .Query => returns TrnNo (Saves entry & returns TrnNo)
        int Edit(DtoTrnToolStockConversionH dtoObj);        // .Execute => returns affected row count (Edits entry & returns affected row count)
        int Delete(DtoTrnToolStockConversionH dtoObj);      // .Execute => returns affected row count (Deletes entry & returns affected row count)

        // Helps to generate new TrnNos in different cases
        long GetMonthlyTranNo(int intTrnType, int intTrnSeries, string strYearMonth);   // .Query => returns (TrnNo + 1 Or 1 if null
        long GetTranNo(int intTrnType, int intTrnSeries, string strYear);               // .Query => returns (TrnNo + 1 Or 1 if null
        
        List<DtoTrnToolStockConversionH> GetCreateList(int intMatCode);                 // .Query => returns list (middle page)
        List<DtoTrnToolStockConversionH> GetDateWiseAll(string strStartDate, string strEndDate, int intTrnType, int intTrnSubType); // .Query => returns list (index page)

    }
}
```  