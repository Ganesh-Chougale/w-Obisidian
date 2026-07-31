## Temporary Table  
Search string:
- temp table
- temporary table
- create temp table
- create temporary table
```sql
-- 1. Check if the temporary table exists and drop it if it does (Requires tempdb..)
IF OBJECT_ID('#TEMP_MDN_RATE') IS NOT NULL
BEGIN
    DROP TABLE #TEMP_MDN_RATE;
END;

-- 2. Create the temporary table using SELECT INTO
SELECT
    H_TMPQ.TRN_NO,
    H_TMPQ.TRN_DATE,
    H_TMPQ.CRT_BY,
    H_TMPQ.CRT_DATE,
    H_TMPQ.APPROVED_BY,
    H_TMPQ.APPROVED_DATE_TIME,
    I_TMPQ.CUST_MATERIAL_CODE,
    I_TMPQ.REF_TRN_NO,
    I_TMPQ.DELIVERY_TIME,
    I_TMPQ.QUOTE_RATE 
INTO
    #TEMP_MDN_RATE -- This automatically creates the table structure
FROM
    VW_TRN_MAT_PUR_QUOTATION_H AS H_TMPQ
    LEFT JOIN VW_TRN_MAT_PUR_QUOTATION_I AS I_TMPQ
    ON H_TMPQ.TRN_NO = I_TMPQ.TRN_NO;

-- 3. Show the table contents
SELECT * FROM #TEMP_MDN_RATE;

-- 4. Drop the temporary table
DROP TABLE #TEMP_MDN_RATE;
```   