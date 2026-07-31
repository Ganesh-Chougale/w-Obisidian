## Stored procedure  
- stored procedure object return
- stored procedure solo object return
- stored procedure single object return

### DAL:
```csharp
public DTOMaintenanceStatus GetMaintainanceStatusCount(int CompanyId)
{
    try
    {
        string query = "SP_MAINTENANCE_STATUS";
        DTOMaintenanceStatus obj = new DTOMaintenanceStatus();
        using (ConManager con = new ConManager())
        {
            string strmasterdb = con.masterDb.Database;
            obj = (DTOMaintenanceStatus)con.transactionDb.Query<DTOMaintenanceStatus>
                        (
                            query, 
                            new { 
                                    @COMPANY_ID = CompanyId,
                                    @SYSTEM_DB_NAME = strmasterdb
                                }, 
                            commandTimeout: 900,
                            commandType: System.Data.CommandType.StoredProcedure
                        ).SingleOrDefault();
        }
        return obj;
    }
    catch (Exception ex)
    {
        throw ex;
    }
}
```  

## Business  
```csharp
public static async Task<MaintenanceStatus> GetMaintainanceStatusCount(int CompanyId)
{
    try
    {
        dtoObj = new DalMaintenanceStatus();
        DTOMaintenanceStatus obj = await Task.Run(() => { return dtoObj.GetMaintainanceStatusCount(CompanyId); });
        return new MaintenanceStatus
        {
            BreakDownTC = obj.BREAK_DOWN_TC 
            // ....
        };
    }
    catch (Exception ex)
    {
        throw ex;
    }
}
```  
## Controller
```csharp
int CompanyId = Convert.ToInt16(ConfigurationManager.AppSettings["CompanyId"].ToString());
MaintenanceStatus lst = await MaintenanceStatus.GetMaintainanceStatusCount(CompanyId);
```  