# `List Fetch`

File search string

```
- list fetch list
- multiple record fetch list
- list record dal
- multiple record dal
```

## 1. `using single line query`

```csharp
public List<DtoName> DalMethodName(Int64 TrnNoVal, int StatusCodeVal)
{
    try
    {
        string query = "SELECT * FROM TABLE_NAME ";
               query += "WHERE TRN_NO = " + TrnNo ;
               query += "AND STATUS_CODE = " + StatusCode ;

        List<DtoName> dtoList;

        using (ConManager con = new ConManager())
        {
            dtoList = con.transactionDb.Query<DtoName>(
                query,
                new
                {
                    TrnNo = TrnNoVal,
                    StatusCode = StatusCodeVal
                }
            ).ToList();
        }

        return dtoList;
    }
    catch(Exception ex)
    {
        throw ex;
    }
}
```

## 2. `using multi line query`

```csharp
public List<DtoName> DalMethodName(Int64 TrnNoVal, int StatusCodeVal)
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

        List<DtoName> dtoList;

        using (ConManager con = new ConManager())
        {
            dtoList = con.transactionDb.Query<DtoName>(
                query,
                new
                {
                    TrnNo = TrnNoVal,
                    StatusCode = StatusCodeVal
                }
            ).ToList();
        }

        return dtoList;
    }
    catch(Exception ex)
    {
        throw ex;
    }
}
```

## 3. `using template literal string interpolation`

```csharp
public List<DtoName> DalMethodName(Int64 TrnNoVal, int StatusCodeVal)
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

        List<DtoName> dtoList;

        using (ConManager con = new ConManager())
        {
            dtoList = con.transactionDb.Query<DtoName>(query).ToList();
        }

        return dtoList;
    }
    catch(Exception ex)
    {
        throw ex;
    }
}
```