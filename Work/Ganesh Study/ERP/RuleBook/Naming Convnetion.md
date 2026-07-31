
## General Guidelines
1. **Always use async/await** for I/O operations in controllers and business logic
2. **Follow naming conventions**: I[ObjectName] for interfaces, Dto[ObjectName] for DTOs, DAL[ObjectName] for DAL classes
3. **Use parameterized queries** with Dapper - never use string concatenation in SQL
4. **Implement IDisposable** for classes managing database connections or other resources
5. **Use TransactionScope** for operations involving multiple database changes
6. **Add [Authorize]** attribute to all secured controller actions
7. **Add [ValidateAntiForgeryToken]** to all POST actions
8. **Return JsonResult** for API endpoints and set MaxJsonLength for large responses
9. **Use TempData.Keep()** when persisting data across redirects
10. **Organize code by domain** in appropriate folders (Masters, Configs, Transactions, etc.)

## Catch block
we use ex strictly into catch block
```csharp
catch (Exception ex)
{
    throw ex;
}
```  

## Ideal Naming Convenstions
- keep in mind that this is only demonstrate the naming convention. and these files are not actually connected to each others like method from dal of this file will match or work perfectly to business method.
### DTO
```csharp
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ZanvarGroup.Erp.DTO.Configs.Objects
{
    public class Dto[ObjectName]
    {
        public int COLUMN_NAME_A { get; set; }
        public string COLUMN_NAME_B { get; set; }
        public decimal COLUMN_NAME_C { get; set; }
        public DateTime COLUMN_NAME_D { get; set; }
    }
}
```  
### Interface
```csharp
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ZanvarGroup.Erp.DTO.Configs.Objects;

namespace ZanvarGroup.Erp.DTO.Configs.Interfaces
{
    public interface I[ObjectName]
    {
        int MethodName(int int[variableName1], int int[variableName2]);
        List<DtoMstBranchDeptMinMax> MethodName(int int[variableName1], string str[variableName2]);
        int MethodName(DtoMstBranchDeptMinMax dtoObj);
    }
}
```  
### DAL
```csharp
using Dapper;
using System;
using System.Linq;
using System.Collections.Generic;
using ZanvarGroup.Erp.DTO.Configs.Interfaces;
using ZanvarGroup.Erp.DTO.Configs.Objects;

namespace ZanvarGroup.Erp.DALDapper.Implementation.Configs
{
    public class Dal[ObjectName] : I[ObjectName]
    {

        public int MethodName(int int[variableName1], int int[variableName2])
        {
            try
            {
                int intAmedNo = 0;
                string query = @"
                                SELECT
	                                *
                                FROM
	                                TABLE_NAME 
                                WHERE 
	                                MATERIAL_CODE = @MATERIAL_CODE
	                                AND BRANCH_CODE = @BRANCH_CODE
                                ";
                using (ConManager con = new ConManager())
                {
                    intAmedNo = (int)con.transactionDb.ExecuteScalar(
                                    query,
                                    new
                                    {
                                        MATERIAL_CODE = int[variableName1],
                                        BRANCH_CODE = int[variableName2],
                                    });
                }
                return intAmedNo;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<DtoMstBranchDeptMinMax> MethodName(int int[variableName1], string str[variableName2])
        {
            try
            {
                string query = "STORE_PRECEDURE_NAME";

                List<DtoMstBranchDeptMinMax> lst = new List<DtoMstBranchDeptMinMax>();
                using (ConManager con = new ConManager())
                {
                    string masterDbName = con.masterDb.Database;

                    lst = con.transactionDb.Query<DtoMstBranchDeptMinMax>
                                (
                                    query,
                                    new
                                    {
                                        P_BRANCH_CODE = int[variableName1],
                                        P_STOCK_LIST_CODE = str[variableName2],
                                        P_SYSTEM_DB_NAME = masterDbName
                                    },
                                    commandTimeout: 900,
                                    commandType: System.Data.CommandType.StoredProcedure
                                ).ToList();
                    return lst;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }

    }
}
```  
### Business
```csharp
using System;
using System.Linq;
using System.Transactions;
using System.Threading.Tasks;
using System.Collections.Generic;
using ZanvarGroup.Erp.Business.Base;
using ZanvarGroup.Erp.Business.Masters;
using ZanvarGroup.Erp.DTO.Configs.Objects;
using ZanvarGroup.Erp.DTO.Configs.Interfaces;
using ZanvarGroup.Erp.Business.Entities.Masters;
using ZanvarGroup.Erp.Business.Services.Masters;
using ZanvarGroup.Erp.DALDapper.Implementation.Configs;

namespace ZanvarGroup.Erp.Business.Configs
{
    public class [ObjectName]
    {
        public static I[ObjectName] interfaceObj;
        public static ICnfTranTypes _dalCnfTranTypes;

        public static int MenuId = 40200;

        public int ColumnNameA { get; set; }
        public string ColumnNameB { get; set; }
        public decimal ColumnNameC { get; set; }


        public static async Task<List<[ObjectName]>> MethodName(string str[variableName])
        {
            try
            {
                List<MaterialsEntity> matList = await MaterialsService.GetMaterialAutoFillList(str[variableName]);

                List<[ObjectName]> lst = matList.Select(matObj => new [ObjectName]()
                {
                    MaterialCode = matObj.MaterialCode,
                    MaterialName = matObj.MaterialName
                }).ToList();

                return lst;
            }
            catch (Exception)
            {
                throw;
            }
        }

        public static async Task<List<[ObjectName]>> MethodName(int intBranchCode, int intStockListCode)
        {
            try
            {
                interfaceObj = new Dal[ObjectName]();

                List<DtoMstBranchDeptMinMax> dtoList = interfaceObj.StockListGroupWiseData(intBranchCode, intStockListCode);

                List<MaterialsEntity> matList = await MaterialsService.GetMaterialFillList(dtoList.Select(x => x.MATERIAL_CODE).ToList());

                List<[ObjectName]> lst =
                    (
                        from obj in dtoList

                        join matObj in matList
                        on obj.MATERIAL_CODE equals matObj.MaterialCode

                        select new [ObjectName]
                        {
                            MaterialCode = obj.MATERIAL_CODE,
                            MaterialName = matObj.MaterialName,
                            ...
                        }
                    ).ToList();

                return lst;

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


    }
}

```  

## Controller
```csharp
using System;
using PagedList;
using System.Web;
using System.Linq;
using System.Web.Mvc;
using System.Configuration;
using System.Threading.Tasks;
using System.Collections.Generic;
using ZanvarGroup.Controllers.Filters;
using ZanvarGroup.Erp.Business.Masters;
using ZanvarGroup.Erp.Business.Configs;
using ZanvarGroup.Erp.Business.Entities.Masters;
using ZanvarGroup.Erp.Business.Services.Masters;

namespace ZanvarGroup.Areas.Material.Controllers
{
    [Authorize]
    public class [ObjectName]Controller : Controller
    {
        [AuthorizationFilter(MenuId = 12345, AccessType = "Console")]
        public async Task<ActionResult> Index()
        {
            int intCompanyCode = Convert.ToInt16(ConfigurationManager.AppSettings["CompanyId"].ToString());
            List<Branch> lstBranch = Branch.GetCompanyWiseLiveData(intCompanyCode);

            ViewData["branchList"] = lstBranch;
            return PartialView();
        }


        [HttpPost]
        public async Task<JsonResult> MethodName(int int[variableName1], string str[variableName2])
        {
            List<[ObjectName]> lst = await [ObjectName].MethodName(int[variableName1], str[variableName2]);
            return Json(lst, JsonRequestBehavior.AllowGet);
        }


    }
}
```  