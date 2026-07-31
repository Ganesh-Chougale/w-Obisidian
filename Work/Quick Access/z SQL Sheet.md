### From Statements  
```sql
-- Indie EPR
SELECT * FROM ALKA_ERP..
SELECT * FROM SRF_ERP..

-- Master 
SELECT * FROM ERP_MASTERS..
SELECT * FROM master..
```   

### know Table names by column
```sql
SELECT 
    t.name AS TableName,
    c.name AS ColumnName,
    ty.name AS DataType,
    c.max_length,
    c.is_nullable
FROM sys.columns c
JOIN sys.tables t ON c.object_id = t.object_id
JOIN sys.types ty ON c.user_type_id = ty.user_type_id
WHERE c.name = 'MIN_MARGIN';
```   

### Declare Variables  
```sql
DECLARE @TRN_NO BIGINT  = 105252613011000001;
DECLARE @REF_TRN_NO BIGINT = 105242513011000036;
DECLARE @OPERATION_CODE INT = 1010000001;
DECLARE @GAUGE_CODE INT = 1011100005;
DECLARE @REF_SR_NO INT = 1;
-- Use VARCHAR or NVARCHAR, and single quotes for string:
DECLARE @MstDB VARCHAR(100) = 'ERP_MASTERS';

-- 
DECLARE @PirType INT;
SELECT @PirType = ISNULL(MAX(PIR_TYPE),0) FROM TRN_PIR_H WHERE TRN_NO = @TRN_NO
```   

### Change in sql values
```sql
SELECT * FROM <Table_Name>
WHERE <COLUMN_NAME>  =<VALUE>


UPDATE <Table_Name> SET <COLUMN_NAME>  = <Your value>
WHERE <COLUMN_NAME>  = <VALUE>
```   
`example`  
```sql
SELECT * FROM PRODUCT_OPERATION_WISE_GAUGE_I
WHERE GAUGE_CODE=1011100054


UPDATE PRODUCT_OPERATION_WISE_GAUGE_I SET READING_COUNT = <Your value>
WHERE GAUGE_CODE=1011100054
```  

### Parameters & Variable passing in dynamic query  
```csharp
public List<DTOCoreConsumption> GetDateWiseMatList(string strStartDate, string strEndDate)
{
    try
    {
        using (ConManager con = new ConManager())
        {
            string masterDB = con.masterDb.Database;

            string query = $@"
                            SELECT *
                            FROM TRN_PRD_MAT_I_POUR TPMIP
                            LEFT JOIN {masterDB}..MST_MATERIALS MAT
                                ON TPMIP.MATERIAL_CODE = MAT.MATERIAL_CODE
                            WHERE TPMIP.TRN_SUB_TYPE = 11
                                AND SUBSTRING(CAST(TPMIP.TRN_NO AS VARCHAR(20)), 8, 3) = '803'
                                AND TPMIP.TRN_DATE >= @StartDate
                                AND TPMIP.TRN_DATE <= @EndDate
                            ORDER BY TPMIP.TRN_DATE DESC,
                                        TPMIP.TRN_NO DESC";

            return con.transactionDb
                        .Query<DTOCoreConsumption>(query,
                            new { StartDate = strStartDate, EndDate = strEndDate })
                        .ToList();
        }
    }
    catch (Exception)
    {
        throw;
    }
}
```  