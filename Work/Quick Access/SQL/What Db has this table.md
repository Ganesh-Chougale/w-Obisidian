- What Db has this table?
- which Db has this table?
```sql
DECLARE @TableName VARCHAR(128) = 'Yor_table_name';
DECLARE @SQL NVARCHAR(MAX);

SET @SQL = N'
    USE [?];
    IF EXISTS (SELECT 1 FROM sys.tables WHERE name = ''' + @TableName + ''')
    BEGIN
        SELECT ''?'' AS DatabaseName, name AS TableName, SCHEMA_NAME(schema_id) AS SchemaName
        FROM sys.tables 
        WHERE name = ''' + @TableName + ''';
    END
';

EXEC sp_MSforeachdb @SQL;
```   