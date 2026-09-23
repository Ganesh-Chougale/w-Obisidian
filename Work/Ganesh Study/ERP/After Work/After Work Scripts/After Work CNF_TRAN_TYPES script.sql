USE ERP_MASTERS;
GO

DECLARE @TRAN_TYPE INT = '';
DECLARE @TRAN_SUB_TYPE INT = '';

SELECT 
    'INSERT INTO ' + CHAR(13) + CHAR(10) +
    '    [dbo].[CNF_TRAN_TYPES] ' + CHAR(13) + CHAR(10) +
    '        ([TRAN_TYPE], [TRAN_SUB_TYPE], [TRAN_SERIES], [SHORT_NARRATION], [LONG_DESCRIPTION], [MONTHLY_NUMBERING], [STATUS_CODE]) ' + CHAR(13) + CHAR(10) +
    '    VALUES ' + CHAR(13) + CHAR(10) +
    '        (' +
        CAST(TRAN_TYPE AS VARCHAR) + ', ' +
        CAST(TRAN_SUB_TYPE AS VARCHAR) + ', ' +
        ISNULL(CAST(TRAN_SERIES AS VARCHAR), 'NULL') + ', ' +
        'N''' + ISNULL(REPLACE(SHORT_NARRATION, '''', ''''''), '') + ''', ' +
        'N''' + ISNULL(REPLACE(LONG_DESCRIPTION, '''', ''''''), '') + ''', ' +
        ISNULL(CAST(MONTHLY_NUMBERING AS VARCHAR), 'NULL') + ', ' +
        ISNULL(CAST(STATUS_CODE AS VARCHAR), 'NULL') +
    ');' + CHAR(13) + CHAR(10) +
    '-- Preview' + CHAR(13) + CHAR(10) +
    'SELECT * FROM [dbo].[CNF_TRAN_TYPES] ' +
    'WHERE TRAN_TYPE = ' + CAST(TRAN_TYPE AS VARCHAR) +
    ' AND TRAN_SUB_TYPE = ' + CAST(TRAN_SUB_TYPE AS VARCHAR) + ';' AS [Generated_Insert_Script_For_Senior]
FROM 
    [dbo].[CNF_TRAN_TYPES]
WHERE 
    [TRAN_TYPE] = @TRAN_TYPE
    AND [TRAN_SUB_TYPE] = @TRAN_SUB_TYPE;
GO