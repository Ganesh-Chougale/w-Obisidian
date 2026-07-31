- Table Possible Linkings
- Table Possible Joins
## `From one table`
```sql
DECLARE @TargetTable VARCHAR(128) = 'Yor_Table_Name';
DECLARE @TargetColumn VARCHAR(128) = '*';

SELECT 
	t2.name AS [Matching Table],
	'POSSIBLE LINK TO' AS [Relationship],
    c2.name AS [Matching Column],
    --t1.name AS [Target Table],
    c1.name AS [Target Column],
	ty.name AS [DataType]
    
FROM sys.tables t1
INNER JOIN sys.columns c1 ON t1.object_id = c1.object_id
INNER JOIN sys.types ty ON c1.user_type_id = ty.user_type_id
-- Join with all other tables in the database
INNER JOIN sys.tables t2 ON t1.object_id <> t2.object_id 
INNER JOIN sys.columns c2 ON t2.object_id = c2.object_id 
                         AND c1.name = c2.name              -- can comment this
                         AND c1.user_type_id = c2.user_type_id 
WHERE t1.name = @TargetTable
-- Handle specific column filtering or wildcard wildcard '*'
AND (c1.name = @TargetColumn OR @TargetColumn = '*')
-- Exclude generic system columns that would create false matches
AND c1.name NOT IN ('STATUS_CODE', 'SR_NO', 'SYS_DATE_TIME', 'SYS_LOGIN', 'TRN_DATE', 'TRN_NO')
AND c2.name NOT IN ('STATUS_CODE', 'SR_NO', 'SYS_DATE_TIME', 'SYS_LOGIN', 'TRN_DATE', 'TRN_NO')
GROUP BY t2.name, c2.name, t1.name, c1.name, ty.name -- Added to maintain the unique rows rule
ORDER BY [Matching Table], [Target Column];
```   

## `From Multiple Tables`
```sql
-- Define the specific tables you want to cross-examine
DECLARE @TargetTables TABLE (TableName VARCHAR(128));
INSERT INTO @TargetTables (TableName)
VALUES 
    ('Table_1'), 
    ('Table_2'); -- Add a third or fourth table here if needed

SELECT 
    t1.name AS [Table 1],
    c1.name AS [Column 1],
    '<--->' AS [Link],
    c2.name AS [Column 2],
	t2.name AS [Table 2],
    ty.name AS [DataType]
    
FROM sys.tables t1
INNER JOIN sys.columns c1 ON t1.object_id = c1.object_id
INNER JOIN sys.types ty ON c1.user_type_id = ty.user_type_id
-- Self-join tables but enforce that Table 1 name is alphabetically less than Table 2 name
-- This prevents duplicate bidirectional rows (e.g., A matches B AND B matches A)
INNER JOIN sys.tables t2 ON t1.name < t2.name 
INNER JOIN sys.columns c2 ON t2.object_id = c2.object_id 
                         --AND c1.name = c2.name              
                         AND c1.user_type_id = c2.user_type_id 
-- Restrict BOTH tables to your specific input list
WHERE t1.name IN (SELECT TableName FROM @TargetTables)
  AND t2.name IN (SELECT TableName FROM @TargetTables)
-- Exclude noise columns
  AND c1.name NOT IN ('STATUS_CODE', 'SR_NO', 'SYS_DATE_TIME', 'SYS_LOGIN', 'TRN_DATE', 'TRN_NO')
  AND c2.name NOT IN ('STATUS_CODE', 'SR_NO', 'SYS_DATE_TIME', 'SYS_LOGIN', 'TRN_DATE', 'TRN_NO')
GROUP BY t1.name, c1.name, t2.name, c2.name, ty.name 
ORDER BY [Table 1], [Table 2], [Column 1];

```   