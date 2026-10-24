```sql
SELECT
    *
FROM
    MST_MATERIALS_HSN
    INNER JOIN MST_HSN_SAC_RATE 
    ON MST_HSN_SAC_RATE.CODE = MST_MATERIALS_HSN.HSN_CODE
WHERE
	--
```   
use selection & where cluase as you want