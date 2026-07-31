### D:\ZanvarGroup\Source\ERP\ZanwarGroup.Erp.DTO\Masters\Interfaces\ `IMstCity.cs`  
```csharp
using System.Collections.Generic;
using ZanvarGroup.Erp.DTO.Masters.Objects;

namespace ZanvarGroup.Erp.DTO.Masters.Interfaces
{
    public interface IMstCity
    {
        List<DTOMstCity> GetAll();
        List<DTOMstCity> GetCityList();
        DTOMstCity GetExisting(int code);
        int Create(DTOMstCity dtMstCity);
        int NextMastCode();
        int Edit(DTOMstCity dtMstCity);
        int Delete(DTOMstCity dtMstCity);
        List<DTOMstCity> GetApprovalPendingList();
        int Approve(DTOMstCity dtMstCity);
        int Approve(string strCityList, string ApprovedBy);
    }
}
```  