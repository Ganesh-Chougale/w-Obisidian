DECLARE @TableName NVARCHAR(256) = ''; -- table name

DECLARE @SchemaName NVARCHAR(128);
DECLARE @ObjectId INT;
DECLARE @Result NVARCHAR(MAX) = '';

SELECT
    @SchemaName = s.name,
    @ObjectId = t.object_id
FROM sys.tables t
INNER JOIN sys.schemas s
    ON t.schema_id = s.schema_id
WHERE t.name = @TableName;

IF @ObjectId IS NULL
BEGIN
    SELECT 'ERROR: Table [' + @TableName + '] was not found.' AS Result;
    RETURN;
END;

SET @Result =
    'USE [' + DB_NAME() + ']' + CHAR(13) + CHAR(10) +
    'GO' + CHAR(13) + CHAR(10) +
    CHAR(13) + CHAR(10);

SET @Result = @Result +
    'SET ANSI_NULLS ON' + CHAR(13) + CHAR(10) +
    'GO' + CHAR(13) + CHAR(10) +
    CHAR(13) + CHAR(10) +

    'SET QUOTED_IDENTIFIER ON' + CHAR(13) + CHAR(10) +
    'GO' + CHAR(13) + CHAR(10) +
    CHAR(13) + CHAR(10);

SET @Result = @Result +
    'CREATE TABLE [' + @SchemaName + '].[' + @TableName + '](' +
    CHAR(13) + CHAR(10);

SELECT @Result = @Result +

    '    [' + c.name + '] ' +

    CASE
        WHEN cc.object_id IS NOT NULL THEN
            'AS ' + cc.definition +
            CASE
                WHEN cc.is_persisted = 1 THEN ' PERSISTED'
                ELSE ''
            END

        WHEN tp.is_user_defined = 1 THEN
            '[' + SCHEMA_NAME(tp.schema_id) + '].[' +
            tp.name + ']'

        ELSE
            tp.name +

            CASE
                WHEN tp.name IN
                (
                    'varchar',
                    'nvarchar',
                    'char',
                    'nchar',
                    'binary',
                    'varbinary'
                )
                THEN
                    '(' +
                    CASE
                        WHEN c.max_length = -1 THEN 'MAX'

                        WHEN tp.name IN ('nvarchar', 'nchar')
                            THEN CAST(c.max_length / 2 AS VARCHAR(10))

                        ELSE
                            CAST(c.max_length AS VARCHAR(10))
                    END +
                    ')'

                WHEN tp.name IN ('decimal', 'numeric')
                THEN
                    '(' +
                    CAST(c.precision AS VARCHAR(10)) +
                    ',' +
                    CAST(c.scale AS VARCHAR(10)) +
                    ')'

                WHEN tp.name IN ('datetime2', 'datetimeoffset', 'time')
                THEN
                    '(' +
                    CAST(c.scale AS VARCHAR(10)) +
                    ')'

                ELSE ''
            END
    END +

    CASE
        WHEN c.collation_name IS NOT NULL
             AND tp.name IN
             (
                 'char',
                 'varchar',
                 'text',
                 'nchar',
                 'nvarchar',
                 'ntext'
             )
        THEN
            ' COLLATE ' + c.collation_name

        ELSE ''
    END +

    CASE
        WHEN ic.object_id IS NOT NULL THEN
            ' IDENTITY(' +
            CAST(ic.seed_value AS VARCHAR(50)) +
            ',' +
            CAST(ic.increment_value AS VARCHAR(50)) +
            ')'

        ELSE ''
    END +


    CASE
        WHEN c.is_rowguidcol = 1
        THEN ' ROWGUIDCOL'

        ELSE ''
    END +

    CASE
        WHEN c.is_sparse = 1
        THEN ' SPARSE'

        ELSE ''
    END +

    CASE
        WHEN cc.object_id IS NOT NULL THEN ''

        WHEN c.is_nullable = 1 THEN ' NULL'

        ELSE ' NOT NULL'
    END +

    CASE
        WHEN dc.object_id IS NOT NULL
        THEN
            ' CONSTRAINT [' + dc.name + '] DEFAULT ' +
            dc.definition

        ELSE ''
    END +

    ',' + CHAR(13) + CHAR(10)

FROM sys.columns c

INNER JOIN sys.types tp
    ON c.user_type_id = tp.user_type_id

LEFT JOIN sys.identity_columns ic
    ON c.object_id = ic.object_id
    AND c.column_id = ic.column_id

LEFT JOIN sys.default_constraints dc
    ON c.default_object_id = dc.object_id

LEFT JOIN sys.computed_columns cc
    ON c.object_id = cc.object_id
    AND c.column_id = cc.column_id

WHERE c.object_id = @ObjectId

ORDER BY c.column_id;

DECLARE @ConstraintSQL NVARCHAR(MAX) = '';

SELECT @ConstraintSQL = @ConstraintSQL +

    '    CONSTRAINT [' + i.name + '] ' +

    CASE
        WHEN i.is_primary_key = 1
            THEN 'PRIMARY KEY '

        WHEN i.is_unique_constraint = 1
            THEN 'UNIQUE '
    END +

    CASE
        WHEN i.type = 1
            THEN 'CLUSTERED '

        WHEN i.type = 2
            THEN 'NONCLUSTERED '

        ELSE ''
    END +

    '(' +

    STUFF
    (
        (
            SELECT
                ', [' + c2.name + '] ' +
                CASE
                    WHEN ic2.is_descending_key = 1
                        THEN 'DESC'

                    ELSE 'ASC'
                END

            FROM sys.index_columns ic2

            INNER JOIN sys.columns c2
                ON ic2.object_id = c2.object_id
                AND ic2.column_id = c2.column_id

            WHERE ic2.object_id = i.object_id
              AND ic2.index_id = i.index_id
              AND ic2.key_ordinal > 0

            ORDER BY ic2.key_ordinal

            FOR XML PATH(''), TYPE
        ).value('.', 'NVARCHAR(MAX)'),

        1,
        2,
        ''
    )

    + ')' +

    CASE
        WHEN i.is_primary_key = 1
             OR i.is_unique_constraint = 1

        THEN

            ' WITH (PAD_INDEX = ' +
            CASE
                WHEN i.is_padded = 1 THEN 'ON'
                ELSE 'OFF'
            END +

            ', STATISTICS_NORECOMPUTE = OFF' +

            ', IGNORE_DUP_KEY = ' +
            CASE
                WHEN i.ignore_dup_key = 1 THEN 'ON'
                ELSE 'OFF'
            END +

            ', ALLOW_ROW_LOCKS = ' +
            CASE
                WHEN i.allow_row_locks = 1 THEN 'ON'
                ELSE 'OFF'
            END +

            ', ALLOW_PAGE_LOCKS = ' +
            CASE
                WHEN i.allow_page_locks = 1 THEN 'ON'
                ELSE 'OFF'
            END +

            ')'

        ELSE ''
    END +

    CASE
        WHEN ds.name IS NOT NULL
        THEN ' ON [' + ds.name + ']'

        ELSE ''
    END +

    ',' + CHAR(13) + CHAR(10)

FROM sys.indexes i

LEFT JOIN sys.data_spaces ds
    ON i.data_space_id = ds.data_space_id

WHERE i.object_id = @ObjectId

  AND
  (
      i.is_primary_key = 1
      OR i.is_unique_constraint = 1
  )

ORDER BY
    CASE
        WHEN i.is_primary_key = 1 THEN 1
        ELSE 2
    END;

SELECT @ConstraintSQL = @ConstraintSQL +

    '    CONSTRAINT [' + cc.name + '] CHECK ' +

    CASE
        WHEN cc.is_not_for_replication = 1
            THEN 'NOT FOR REPLICATION '

        ELSE ''
    END +

    '(' + cc.definition + ')' +

    ',' + CHAR(13) + CHAR(10)

FROM sys.check_constraints cc

WHERE cc.parent_object_id = @ObjectId;

IF LEN(@ConstraintSQL) > 0
BEGIN
    SET @Result = @Result + @ConstraintSQL;
END;

SET @Result =
    LEFT(@Result, LEN(@Result) - 3) +
    CHAR(13) + CHAR(10) +
    ')' +
    CHAR(13) + CHAR(10);

DECLARE @TableFileGroup NVARCHAR(128);

SELECT @TableFileGroup = ds.name

FROM sys.indexes i

INNER JOIN sys.data_spaces ds
    ON i.data_space_id = ds.data_space_id

WHERE i.object_id = @ObjectId
  AND i.index_id IN (0,1);


IF @TableFileGroup IS NOT NULL
BEGIN

    SET @Result = @Result +
        'ON [' + @TableFileGroup + ']' +
        CHAR(13) + CHAR(10);

END;

SET @Result = @Result +

    'GO' +
    CHAR(13) + CHAR(10) +
    CHAR(13) + CHAR(10);

DECLARE @ForeignKeys NVARCHAR(MAX) = '';


SELECT @ForeignKeys = @ForeignKeys +

    'ALTER TABLE [' + @SchemaName + '].[' + @TableName + ']' +
    CHAR(13) + CHAR(10) +

    '    WITH CHECK ADD CONSTRAINT [' + fk.name + ']' +
    CHAR(13) + CHAR(10) +

    '    FOREIGN KEY (' +

    STUFF
    (
        (
            SELECT
                ', [' + pc.name + ']'

            FROM sys.foreign_key_columns fkc2

            INNER JOIN sys.columns pc
                ON fkc2.parent_object_id = pc.object_id
                AND fkc2.parent_column_id = pc.column_id

            WHERE fkc2.constraint_object_id = fk.object_id

            ORDER BY fkc2.constraint_column_id

            FOR XML PATH(''), TYPE
        ).value('.', 'NVARCHAR(MAX)'),

        1,
        2,
        ''
    )

    + ')' +

    ' REFERENCES [' +
    OBJECT_SCHEMA_NAME(fk.referenced_object_id) +
    '].[' +
    OBJECT_NAME(fk.referenced_object_id) +
    '] (' +

    STUFF
    (
        (
            SELECT
                ', [' + rc.name + ']'

            FROM sys.foreign_key_columns fkc3

            INNER JOIN sys.columns rc
                ON fkc3.referenced_object_id = rc.object_id
                AND fkc3.referenced_column_id = rc.column_id

            WHERE fkc3.constraint_object_id = fk.object_id

            ORDER BY fkc3.constraint_column_id

            FOR XML PATH(''), TYPE
        ).value('.', 'NVARCHAR(MAX)'),

        1,
        2,
        ''
    )

    + ')' +

    CASE
        WHEN fk.delete_referential_action <> 0
        THEN
            ' ON DELETE ' +

            CASE fk.delete_referential_action

                WHEN 1 THEN 'CASCADE'
                WHEN 2 THEN 'SET NULL'
                WHEN 3 THEN 'SET DEFAULT'

            END

        ELSE ''
    END +

    CASE
        WHEN fk.update_referential_action <> 0
        THEN
            ' ON UPDATE ' +

            CASE fk.update_referential_action

                WHEN 1 THEN 'CASCADE'
                WHEN 2 THEN 'SET NULL'
                WHEN 3 THEN 'SET DEFAULT'

            END

        ELSE ''
    END +

    CHAR(13) + CHAR(10) +

    'GO' +
    CHAR(13) + CHAR(10) +

    'ALTER TABLE [' + @SchemaName + '].[' + @TableName + ']' +
    ' CHECK CONSTRAINT [' + fk.name + ']' +

    CHAR(13) + CHAR(10) +

    'GO' +
    CHAR(13) + CHAR(10) +

    CHAR(13) + CHAR(10)

FROM sys.foreign_keys fk

WHERE fk.parent_object_id = @ObjectId;


SET @Result = @Result + @ForeignKeys;

DECLARE @Indexes NVARCHAR(MAX) = '';


SELECT @Indexes = @Indexes +

    'CREATE ' +

    CASE
        WHEN i.is_unique = 1 THEN 'UNIQUE '
        ELSE ''
    END +

    CASE
        WHEN i.type = 1 THEN 'CLUSTERED '
        WHEN i.type = 2 THEN 'NONCLUSTERED '
        ELSE ''
    END +

    'INDEX [' + i.name + ']' +

    ' ON [' + @SchemaName + '].[' + @TableName + '] (' +

    STUFF
    (
        (
            SELECT
                ', [' + c.name + '] ' +

                CASE
                    WHEN ic.is_descending_key = 1
                        THEN 'DESC'

                    ELSE 'ASC'
                END

            FROM sys.index_columns ic

            INNER JOIN sys.columns c
                ON ic.object_id = c.object_id
                AND ic.column_id = c.column_id

            WHERE ic.object_id = i.object_id
              AND ic.index_id = i.index_id
              AND ic.key_ordinal > 0

            ORDER BY ic.key_ordinal

            FOR XML PATH(''), TYPE
        ).value('.', 'NVARCHAR(MAX)'),

        1,
        2,
        ''
    )

    + ')' +

    CASE
        WHEN EXISTS
        (
            SELECT 1

            FROM sys.index_columns icx

            WHERE icx.object_id = i.object_id
              AND icx.index_id = i.index_id
              AND icx.is_included_column = 1
        )

        THEN

            ' INCLUDE (' +

            STUFF
            (
                (
                    SELECT
                        ', [' + c2.name + ']'

                    FROM sys.index_columns ic2

                    INNER JOIN sys.columns c2
                        ON ic2.object_id = c2.object_id
                        AND ic2.column_id = c2.column_id

                    WHERE ic2.object_id = i.object_id
                      AND ic2.index_id = i.index_id
                      AND ic2.is_included_column = 1

                    ORDER BY ic2.index_column_id

                    FOR XML PATH(''), TYPE
                ).value('.', 'NVARCHAR(MAX)'),

                1,
                2,
                ''
            )

            + ')'

        ELSE ''
    END +

    CASE
        WHEN ds.name IS NOT NULL
        THEN ' ON [' + ds.name + ']'

        ELSE ''
    END +

    CHAR(13) + CHAR(10) +

    'GO' +
    CHAR(13) + CHAR(10) +

    CHAR(13) + CHAR(10)

FROM sys.indexes i

LEFT JOIN sys.data_spaces ds
    ON i.data_space_id = ds.data_space_id

WHERE i.object_id = @ObjectId
  AND i.is_primary_key = 0
  AND i.is_unique_constraint = 0
  AND i.is_disabled = 0
  AND i.type IN (1,2);

SET @Result = @Result + @Indexes;

SELECT @Result AS CreateTableScript;