## Strict Match
- full word match
```sql
DECLARE @ColumnName1 VARCHAR(128) = 'SUB_GL_ACNO';
DECLARE @ColumnName2 VARCHAR(128) = 'LONG_NAME';
DECLARE @SQL NVARCHAR(MAX);

SET @SQL = N'
    USE [?];
    IF EXISTS (
        SELECT 1
        FROM sys.columns c
        JOIN sys.tables t ON c.object_id = t.object_id
        WHERE c.name = ''' + @ColumnName1 + '''
          AND EXISTS (
              SELECT 1
              FROM sys.columns c2
              WHERE c2.object_id = c.object_id
                AND c2.name = ''' + @ColumnName2 + '''
          )
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
        WHERE c.name IN (''' + @ColumnName1 + ''', ''' + @ColumnName2 + ''')
          AND EXISTS (
              SELECT 1
              FROM sys.columns c2
              WHERE c2.object_id = c.object_id
                AND c2.name = ''' + @ColumnName2 + '''
          )
        ORDER BY c.name;
    END
';

EXEC sp_MSforeachdb @SQL;
```   

## Loose Match
- partial word match
```sql
DECLARE @ColumnName VARCHAR(128) = 'Yor_column_name';
DECLARE @SQL NVARCHAR(MAX);

SET @SQL = N'
    USE [?];

    IF EXISTS (
        SELECT 1
        FROM sys.columns c
        JOIN sys.tables t ON c.object_id = t.object_id
        WHERE c.name LIKE ''%' + @ColumnName + '%''
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
        WHERE c.name LIKE ''%' + @ColumnName + '%'';
    END;
';

EXEC sp_MSforeachdb @SQL;
```   