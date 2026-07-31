- What Db, table has this coulmn
- Which Db, table has this 
```sql
DECLARE @ColumnName VARCHAR(128) = 'Yor_column_name';
DECLARE @SQL NVARCHAR(MAX);

SET @SQL = N'
    USE [?];
    IF EXISTS (
        SELECT 1 
        FROM sys.columns c
        JOIN sys.tables t ON c.object_id = t.object_id
        WHERE c.name = ''' + @ColumnName + '''
    )
    BEGIN
        SELECT 
            ''?'' AS DatabaseName, 
            t.name AS TableName, 
            SCHEMA_NAME(t.schema_id) AS SchemaName,
            c.name AS ColumnName,
            TYPE_NAME(c.user_type_id) AS DataType
        FROM sys.columns c
        JOIN sys.tables t ON c.object_id = t.object_id
        WHERE c.name = ''' + @ColumnName + ''';
    END
';

EXEC sp_MSforeachdb @SQL;
```   