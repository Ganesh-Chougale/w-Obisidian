## Stored procedure  
- stored procedure list return
- stored procedure return list
### DAL:
```csharp
public List<DTOMaterialMdnStatus> GetTypeWiseMatMdnData(int companyId, int dbType, int materialCode)
{
    try
    {
        string query = "SP_GET_DB_WISE_MATERIAL_MDN_DASHBOARD_DATA";

        using (ConManager con = new ConManager())
        {
            return con.transactionDb.Query<DTOMaterialMdnStatus>(
                query,
                new {
                        P_COMPANY_ID = companyId,
                        P_DB_TYPE = dbType,
                        P_MATERIAL_CODE = materialCode
                },
                commandTimeout: 900,
                commandType: System.Data.CommandType.StoredProcedure
            ).ToList();
        }
    }
    catch (Exception ex)
    {
        throw ex;
    }
}
```  

## Business  
```csharp
public static async Task<List<MaterialMdnStatus>> GetMaterialMdnData(int companyId, int dbType, int materialCode)
{
    try
    {
        interfaceObj = new DALMaterialMdnStatus();
        List<MaterialMdnStatus> lst = new List<MaterialMdnStatus>();

        List<DTOMaterialMdnStatus> dtoList = await Task.Run(() => { return interfaceObj.GetTypeWiseMatMdnData(companyId, dbType, materialCode); });

        if(dtoList != null)
        {
            lst = (
                        from obj in dtoList
                        select new MaterialMdnStatus
                        {
                            TrnNo = obj.TRN_NO,
                            // .....

                        }).ToList();
        }
        return lst;
    }
    catch (Exception ex)
    {
        throw ex;
    }
}
```  
## Controller
```csharp
```  