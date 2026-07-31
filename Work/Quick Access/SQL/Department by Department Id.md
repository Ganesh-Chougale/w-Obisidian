### Department SQL query  
- Deparantment name
refence: `DALMstDepartment`   
```sql
DECLARE @DepId int = '';

SELECT 
	DEPARTMENT_NAME,
	DEPARTMENT_SHORT_NAME,
	PARENT_DEPARTMENT_ID
	-- , *
FROM
	ERP_MASTERS..MST_DEPARTMENT
WHERE
	DEPARTMENT_ID = @DepId;
```   
- IT department Id = 1010000025