# Menu_ID no UI hassle

## 1. Find the Gap
```sql
DECLARE @MENU_ID INT = '';

SELECT 
        MENU_ID,
        PARENT_MENU_ID,
        MODULE_ID,
        * 
FROM
        MST_MENU
WHERE 
        MENU_ID >= @MENU_ID
ORDER BY
		MST_MENU.MENU_ID,
		MST_MENU.PARENT_MENU_ID,
		MST_MENU.MODULE_ID;
```   
note the gap & write it down in text.
## 2. Clone the row with new data
```sql
USE ERP_MASTERS;
GO

-- 1. DEFINE YOUR NEW VALUES AND BASE MENU ID HERE
DECLARE @OLD_MENU_ID		INT           = '';         -- The row you want to clone from
DECLARE @NEW_MENU_ID        INT           = '';         -- Your next available/gap ID
DECLARE @NEW_SHORT_NAME     VARCHAR(50)   = '';         -- New short name
DECLARE @FULL_NEW_MENU_NAME	VARCHAR(255)  = '';         -- New full name
DECLARE @NEW_PARENT_MENU_ID INT           = '';         -- Change if needed, otherwise clones base
DECLARE @NEW_APPROVAL_REQ   BIT           = 0;          -- Change if needed (e.g., 0/1 or False/True)

-- 2. AUTOMATIC CALCULATION OF MENU_DOC_NO
DECLARE @TRAN_TYPE          INT           = ''; 
DECLARE @TRAN_SUB_TYPE      INT           = '';

DECLARE @NEW_MENU_DOC_NO    INT           = CAST(CAST(@TRAN_TYPE AS VARCHAR) + CAST(@TRAN_SUB_TYPE AS VARCHAR) AS INT);


-- 3. VALIDATION: Prevent accidental primary key collisions
IF EXISTS (SELECT 1 FROM MST_MENU WHERE MENU_ID = @NEW_MENU_ID)
BEGIN
    RAISERROR('Execution Stopped: MENU_ID %d already exists in the database!', 16, 1, @NEW_MENU_ID);
    RETURN;
END

-- 4. CLONE AND INSERT
-- Inserts all columns from the base row, overriding only the fields you specified
INSERT INTO MST_MENU (
    MENU_ID, MENU_SHORT_NAME, MENU_NAME, MENU_DOC_NO, CONSOLE_URL, PAGE_URL, VIEW_PAGE, PRINT_URL, CONCATE_URL, 
    SEQUENCE, MENU_DESCRIPTION, ALLOW_PAGING, PAGE_RECORDS, ENTRY_DAYS, VIEW_DAYS, PARENT_MENU_ID, APPROVAL_REQ, 
    APPROVAL_LEVEL, IS_TYPEWS_NO, IS_MONTHLY_NO, VOU_TYPE, REPORT_NAME, CRT_DATE_TIME, CRT_BY, STATUS_CODE, 
    SYS_LOGIN, SYS_DATE_TIME, MENU_IMG, MODULE_ID, IS_MOB_APP, ICON, STATE, IS_GROUP, TRN_MODULE_ID
)
SELECT 
    @NEW_MENU_ID,                                               -- Overridden
    @NEW_SHORT_NAME,                                            -- Overridden
    @FULL_NEW_MENU_NAME,                                             -- Overridden
    @NEW_MENU_DOC_NO,                                           -- Overridden (Auto-calculated)
    CONSOLE_URL, PAGE_URL, VIEW_PAGE, PRINT_URL, CONCATE_URL, 
    SEQUENCE, MENU_DESCRIPTION, ALLOW_PAGING, PAGE_RECORDS, ENTRY_DAYS, VIEW_DAYS, 
    ISNULL(@NEW_PARENT_MENU_ID, PARENT_MENU_ID),                -- Overridden if provided, else cloned
    ISNULL(@NEW_APPROVAL_REQ, APPROVAL_REQ),                    -- Overridden if provided, else cloned
    APPROVAL_LEVEL, IS_TYPEWS_NO, IS_MONTHLY_NO, VOU_TYPE, REPORT_NAME, 
    GETDATE(),                                                  -- Automatically marks current creation time
    CRT_BY, STATUS_CODE, SYS_LOGIN, 
    GETDATE(),                                                  -- Automatically marks current system time
    MENU_IMG, MODULE_ID, IS_MOB_APP, ICON, STATE, IS_GROUP, TRN_MODULE_ID
FROM 
    MST_MENU
WHERE 
    MENU_ID = @OLD_MENU_ID;

-- 5. CONFIRMATION VERIFICATION
-- Automatically displays the base row and your newly created row side-by-side for review
PRINT 'Row inserted successfully!';
SELECT MENU_ID, MENU_SHORT_NAME, MENU_NAME, MENU_DOC_NO, PARENT_MENU_ID, APPROVAL_REQ, MODULE_ID, CRT_DATE_TIME
FROM MST_MENU
WHERE MENU_ID IN (@OLD_MENU_ID, @NEW_MENU_ID)
ORDER BY MENU_ID;
GO
```   
## 3. Optional (change MENU_DOC_NO)
```sql
DECLARE @MENU_ID INT = '';
DECLARE @MENU_DOC_NO INT = '';

UPDATE
	ERP_MASTERS..MST_MENU
SET
	MENU_DOC_NO = @MENU_DOC_NO
WHERE MENU_ID = @MENU_ID
```   

## 4. Generate the Script
```sql
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
```   