```csharp
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ZanvarGroup.Erp.DTO.Masters.Objects;

namespace ZanvarGroup.Erp.DTO.Masters.Interfaces
{
    public interface IMstDepartment
    {
        List<DTOMstDepartment> GetAll();
        List<DTOMstDepartment> GetDepartmentList();
        DTOMstDepartment GetExisting(int code);
        int Create(DTOMstDepartment dtMstDepartment);
        int NextMastCode();
        int Edit(DTOMstDepartment dtMstDepartment);
        int Delete(DTOMstDepartment dtMstDepartment);
        List<DTOMstDepartment> GetApprovalPendingList();
        int Approve(DTOMstDepartment dtMstDepartment);
        int Approve(string strDepartmentList, string ApprovedBy);
        List<DTOMstDepartment> GetLocationWiseDeptWiseEmpCount(int PayrollCompany,int Location);
    }
}
```  