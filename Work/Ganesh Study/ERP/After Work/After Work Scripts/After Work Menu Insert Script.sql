USE ERP_MASTERS;
GO

DECLARE @TARGET_ID INT = ''; -- Paste your newly created ID here

SELECT 
    'INSERT INTO ' + CHAR(13) + CHAR(10) +
    '    [dbo].[MST_MENU] ' + CHAR(13) + CHAR(10) +
    '        ([MENU_ID], [MENU_SHORT_NAME], [MENU_NAME], [MENU_DOC_NO], [PARENT_MENU_ID], [APPROVAL_REQ]) ' + CHAR(13) + CHAR(10) +
    '    VALUES ' + CHAR(13) + CHAR(10) +
    '        (' +
        CAST(MENU_ID AS VARCHAR) + ', ' +
        'N''' + ISNULL(REPLACE(MENU_SHORT_NAME, '''', ''''''), '') + ''', ' +
        'N''' + ISNULL(REPLACE(MENU_NAME, '''', ''''''), '') + ''', ' +
        ISNULL(CAST(MENU_DOC_NO AS VARCHAR), 'NULL') + ', ' +
        ISNULL(CAST(PARENT_MENU_ID AS VARCHAR), 'NULL') + ', ' +
        ISNULL(CAST(APPROVAL_REQ AS VARCHAR), 'NULL') +
    ');' + CHAR(13) + CHAR(10) +
    'PRINT ''Row inserted successfully!'';' + CHAR(13) + CHAR(10) +
    CHAR(13) + CHAR(10) +
    '-- Preview newly created row' + CHAR(13) + CHAR(10) +
    'SELECT MENU_ID, MENU_SHORT_NAME, MENU_NAME, MENU_DOC_NO, PARENT_MENU_ID, APPROVAL_REQ ' + CHAR(13) + CHAR(10) +
    'FROM [dbo].[MST_MENU] ' + CHAR(13) + CHAR(10) +
    'WHERE MENU_ID = ' + CAST(MENU_ID AS VARCHAR) + ';' AS [Generated_Insert_Script_For_Senior]
FROM 
    [dbo].[MST_MENU]
WHERE 
    [MENU_ID] = @TARGET_ID;
GO