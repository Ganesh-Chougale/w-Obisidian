# `Single Record Fetch`  

File search string  

```
- single record fetch list
- solo record fetch list
- single record dal
- solo record dal
```   
## 1. `using single line query`
```csharp
public DtoName DalMethodName(Int64 TrnNoVal, int StatusCodeVal)
{
    try
    {
        string query = "SELECT * FROM TABLE_NAME"; 
                query += "WHERE TRN_NO = " + TrnNo ;
                query += "WHERE STATUS_CODE = " + StatusCode ;

        DtoName dtoObj;

        using (ConManager con = new ConManager())
        {
            dtoObj = con.transactionDb.Query<DtoName>(query, new 
                    { 
                        TrnNo = TrnNoVal, 
                        StatusCode = StatusCodeVal 
                    }
                    ).FirstOrDefault();
        }
        return dtoObj;
    }
    catch(Exception ex)
    {
        throw ex;
    }
}
```  
## 2. `using multi line query`

```csharp
public DtoName DalMethodName(Int64 TrnNoVal, int StatusCodeVal)
{
    try
    {
        string query = @"
                        SELECT 
                                *
                        FROM 
                            TABLE_NAME
                        WHERE 
                            TRN_NO = @TrnNo
                            AND STATUS_CODE = @StatusCode
                        ";

        DtoName dtoObj;

        using (ConManager con = new ConManager())
        {
            dtoObj = con.transactionDb.Query<DtoName>(
                query,
                new
                {
                    TrnNo = TrnNoVal,
                    StatusCode = StatusCodeVal
                }
            ).FirstOrDefault();
        }

        return dtoObj;
    }
    catch(Exception ex)
    {
        throw ex;
    }
}
```
## 3. `using template literal string interpolation`
```csharp
public DtoName DalMethodName(Int64 TrnNoVal, int StatusCodeVal)
{
    try
    {
        string query = $@"
                            SELECT 
                                *
                            FROM 
                                TABLE_NAME
                            WHERE 
                                TRN_NO = {TrnNoVal}
                                AND STATUS_CODE = {StatusCodeVal}
                        ";

        DtoName dtoObj;

        using (ConManager con = new ConManager())
        {
            dtoObj = con.transactionDb.Query<DtoName>(query).FirstOrDefault();
        }

        return dtoObj;
    }
    catch(Exception ex)
    {
        throw ex;
    }
}
```