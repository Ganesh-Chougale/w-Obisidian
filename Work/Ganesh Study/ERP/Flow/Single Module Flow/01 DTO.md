```csharp
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ZanvarGroup.Erp.DTO.Masters.Objects
{
    public class DTOMstDepartment
    {
        public int DEPARTMENT_ID { get; set; }
        public string DEPARTMENT_SHORT_NAME { get; set; }
        public string DEPARTMENT_NAME { get; set; }
        public int PARENT_DEPARTMENT_ID { get; set; }
        public string CRT_DATE_TIME { get; set; }
        public string CRT_BY { get; set; }
        public string APPROVED_BY { get; set; }
        public string APPROVED_DATE_TIME { get; set; }
        public int STATUS_CODE { get; set; }
        public string DELETE_REASON { get; set; }
        public string CHG_BY { get; set; }
        public int EMPLOYEE_COUNT { get; set; }
    }
}
```  