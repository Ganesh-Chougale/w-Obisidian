### MaterialName SQL query  
refence: `DALMstMaterials`   
```sql
DECLARE @MatCode int = '1010100001';

SELECT 
	MATERIAL_NAME,
	MATERIAL_SHORT_NAME,
	MATERIAL_UOM
	-- , *
FROM
	ERP_MASTERS..MST_MATERIALS
WHERE
	MATERIAL_CODE = @MatCode;
```   
