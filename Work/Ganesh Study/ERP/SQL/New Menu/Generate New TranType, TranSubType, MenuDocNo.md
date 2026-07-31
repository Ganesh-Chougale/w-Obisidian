File search string
```
- generate new TranType
- generate new TranSubType
- generate new TRAN_TYPE
- generate new TRAN_SUB_TYPE
```   
# A.  Checking process  
## DB: `ALKA_ERP`, `SRF_ERP`  
1. Check Available records  
```sql
SELECT 
        *
FROM 
        SRF_ERP..CNF_TRAN_TYPES
WHERE 
        TRAN_TYPE = @TRAN_TYPE
        AND TRAN_SUB_TYPE >= @TRAN_SUB_TYPE
```     
example:  
```sql
SELECT
        *
FROM 
        SRF_ERP..CNF_TRAN_TYPES
WHERE
        TRAN_TYPE = 130 
        AND TRAN_SUB_TYPE >= 10
```   
2. Copy the last entry from it.  

3. In SQL UI go to:
```
ALKA_ERP, SRF_ERP or Current working DB 
            => Tables  
                    => `dbo.CNF_TRAN_TYPES`  
                                    => Right click  
                                                => Edit top 200 Rows   
```
- at botton null line 
- copy the entire row & paste it between that row & NULL row.
- edit TRAN_SUB_TYPE with +1, give short name & then full name to it.
- to save click on NULL row, it will be saved  
- Check the entry using select & where clause  