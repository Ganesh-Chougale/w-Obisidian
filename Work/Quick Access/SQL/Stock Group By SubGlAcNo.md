### SupplierName SQL query  
- stock list group name
- stock group list name
- stock group name
refence: `DALMstStockGroup`   
```sql
DECLARE @SubGlAcNo int = '1011100132';

SELECT
	LONG_NAME AS SUPPLIER_NAME,
	SHORT_NAME,
	ADDRESS1,
	ADDRESS2,
	ADDRESS3
FROM
	ERP_MASTERS..MST_ACCT_SUB_GL
WHERE
	SUB_GL_ACNO = @SubGlAcNo;
```   