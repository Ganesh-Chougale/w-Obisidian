## `Syntax`
```sql
SELECT 
    c.CustomerID, 
    c.CustomerName
FROM 
    Sales.Customers AS c
WHERE 
    NOT EXISTS (
        SELECT 1 
        FROM Sales.Orders AS o
        WHERE o.CustomerID = c.CustomerID
    );
```   

### Example:
```sql
SELECT
	TPM_I.TRN_NO,
	TPM_I.TRN_DATE,
	BOM.REF_MAT_CODE AS CORE_CODE,
	BOM.QTY AS PER_QTY,
	TPM_I.QUANTITY AS QTY,
	SUM((TPM_I.QUANTITY * (BOM.QTY / ISNULL(NULLIF(BOM.USED_PER, 0), 1)))) AS STANDARD_CONSUMPTION,
	0 AS ACTUAL_CONSUMPTION
FROM
	TRN_PRD_MAT_I AS TPM_I

	INNER JOIN MST_MAT_BOM_FINISH_FOR_CUST_SUPP AS BOM
	ON TPM_I.MATERIAL_CODE = BOM.MAT_CODE

WHERE
	TPM_I.MATERIAL_CODE =  @P_MATERIAL_CODE
	AND TPM_I.TRN_DATE BETWEEN @START_DATE AND @END_DATE
	AND TPM_I.STATUS_CODE = 0
	AND BOM.TYPE_SR_NO = 5
    ------------------------------------**********************************************---------------------------------------------
	AND NOT EXISTS (
	SELECT 
		1
	FROM 
		TRN_CHILD_PART_CONSUMPTION_I AS SAVE_I
	WHERE 
		BOM.REF_MAT_CODE = SAVE_I.MATERIAL_CODE -- becauase BOM.REF_MAT_CODE is being saved in I table as MATERIAL_CODE
		AND TPM_I.TRN_NO = SAVE_I.REF_TRN_NO -- becauase TPM_I.TRN_NO is being saved in I table as REF_TRN_NO
		AND SAVE_I.STATUS_CODE IN (0, 101)
	)
    ------------------------------------**********************************************---------------------------------------------
GROUP BY
	TPM_I.TRN_NO,
	TPM_I.TRN_DATE,
	BOM.REF_MAT_CODE,
	BOM.QTY,
	TPM_I.QUANTITY
```   
