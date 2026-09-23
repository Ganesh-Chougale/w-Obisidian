USE ERP_MASTERS;
GO

DECLARE @TARGET_ID INT = '';

SELECT 
    'INSERT INTO ' + CHAR(13) + CHAR(10) +
    '    [dbo].[MST_MENU] ' + CHAR(13) + CHAR(10) +
    '        ([MENU_ID], [MENU_SHORT_NAME], [MENU_NAME], [MENU_DOC_NO], [ENTRY_DAYS], [VIEW_DAYS], [PARENT_MENU_ID], [APPROVAL_REQ], [APPROVAL_LEVEL], [VOU_TYPE], [STATUS_CODE], [MODULE_ID]) ' + CHAR(13) + CHAR(10) +
    '    VALUES ' + CHAR(13) + CHAR(10) +
    '        (' +
        CAST(MENU_ID AS VARCHAR) + ', ' +
        'N''' + ISNULL(REPLACE(MENU_SHORT_NAME, '''', ''''''), '') + ''', ' +
        'N''' + ISNULL(REPLACE(MENU_NAME, '''', ''''''), '') + ''', ' +
        ISNULL(CAST(MENU_DOC_NO AS VARCHAR), 'NULL') + ', ' +
        CAST(ISNULL(ENTRY_DAYS, 5) AS VARCHAR) + ', ' +
        ISNULL(CAST(VIEW_DAYS AS VARCHAR), 'NULL') + ', ' +
        ISNULL(CAST(PARENT_MENU_ID AS VARCHAR), 'NULL') + ', ' +
        ISNULL(CAST(APPROVAL_REQ AS VARCHAR), 'NULL') + ', ' +
        ISNULL(CAST(APPROVAL_LEVEL AS VARCHAR), 'NULL') + ', ' +
        'N''' + ISNULL(REPLACE(VOU_TYPE, '''', ''''''), '') + ''', ' +
        ISNULL(CAST(STATUS_CODE AS VARCHAR), 'NULL') + ', ' +
        ISNULL(CAST(MODULE_ID AS VARCHAR), 'NULL') +
    ');' + CHAR(13) + CHAR(10) +
    '-- Preview' + CHAR(13) + CHAR(10) +
    'SELECT * FROM [dbo].[MST_MENU] WHERE MENU_ID = ' + CAST(MENU_ID AS VARCHAR) + ';' AS [Generated_Insert_Script_For_Senior]
FROM 
    [dbo].[MST_MENU]
WHERE 
    [MENU_ID] = @TARGET_ID;
GO