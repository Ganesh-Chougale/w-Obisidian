- sql log
- sql timestamp
```sql
USE SRF_ERP;
GO

SET NOCOUNT ON; 

WITH LogData AS (
    SELECT 
        [Current LSN],
        [Transaction ID],
        [AllocUnitName],
        [Operation],
        [Transaction SID], 
        MAX(CASE WHEN [Operation] = 'LOP_BEGIN_XACT' THEN [Begin Time] END) 
            OVER (PARTITION BY [Transaction ID]) AS [Trigger Time],
        MAX(CASE WHEN [Operation] = 'LOP_BEGIN_XACT' THEN [Transaction SID] END) 
            OVER (PARTITION BY [Transaction ID]) AS [Base SID] 
    FROM sys.fn_dblog(NULL, NULL)
    WHERE [Operation] IN ('LOP_BEGIN_XACT', 'LOP_INSERT_ROWS', 'LOP_DELETE_ROWS', 'LOP_MODIFY_ROW', 'LOP_SET_FREE_SPACE')
)
SELECT 
    [Current LSN] AS [Precise ID], 
    [Transaction ID] AS [Execution ID], 
    PARSENAME([AllocUnitName], 1) AS [Table Name], 
    PARSENAME([AllocUnitName], 2) AS [Schema Name],
    -- 1. Extract just the Date component (YYYY-MM-DD)
    CAST([Trigger Time] AS DATE) AS [Trigger Date],
    -- 2. Extract just the Time component (HH:MM:SS.NNNNNNN)
    CAST([Trigger Time] AS TIME) AS [Trigger Time], 
    SUSER_SNAME([Base SID]) AS [User name], 
    CASE [Operation]
        WHEN 'LOP_INSERT_ROWS' THEN 'create'
        WHEN 'LOP_DELETE_ROWS' THEN 'delete'
        WHEN 'LOP_MODIFY_ROW' THEN 'update'
        WHEN 'LOP_SET_FREE_SPACE' THEN 'update'
        ELSE 'unknown'
    END AS [Operation type]
FROM LogData
WHERE [Operation] <> 'LOP_BEGIN_XACT'
      AND [AllocUnitName] IS NOT NULL
ORDER BY [Execution ID] DESC;
GO
```   