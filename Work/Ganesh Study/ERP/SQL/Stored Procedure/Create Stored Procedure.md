## 1. SMSS  
```yml
Database:
        <DataBase_Name>:
                        Programability:
                                    Stored Procedures
```  
`Right click` => `New Stored Procedures`  

## 2. Query  
#### Syntax  
```sql
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

------------------------------------------------------------------------------------
-- DROP PROC Stored_Procedure_Name
-- [Stored_Procedure_Name]  'Parameter_value'
-------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[Stored_Procedure_Name] 

@Parameter          dataType
AS
BEGIN

-- Query Starts


-- Query Ends

END


GO

```   
#### Example
```sql
USE [SRF_ERP]
GO

/****** Object:  StoredProcedure [dbo].[SP_MAINTENANCE_STATUS]    Script Date: 15-04-2026 16:12:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


------------------------------------------------------------------------------------
-- DROP PROC SP_MAINTENANCE_STATUS
-- [SP_MAINTENANCE_STATUS]  '101','ERP_MASTERS'
-------------------------------------------------------------------------------------
-- PURPOSE     :  FOR PROJECT TO DO LIST
-- CREATED BY  :  Ganesh Chougale 
-- CREATE DATE :  15-04-2026 
--------------------------------------------------------------------------------------
-- UPDATED BY  : 
-- UPDATED DAE : 
--------------------------------------------------------------------------------------
CREATE PROCEDURE [dbo].[SP_MAINTENANCE_STATUS] 

@COMPANY_ID            int,
@SYSTEM_DB_NAME        VARCHAR(20)
AS
BEGIN

-- Query Starts

SELECT
    SUM(TOTAL_COUNT.BREAK_DOWN_TC) AS BREAK_DOWN_TC,
    SUM(TOTAL_COUNT.WORK_ORDER_TC) AS WORK_ORDER_TC,
    SUM(TOTAL_COUNT.BREAK_DOWN_ACTION_TC) AS BREAK_DOWN_ACTION_TC,
    SUM(TOTAL_COUNT.BREAK_DOWN_ANALYSIS_TC) AS BREAK_DOWN_ANALYSIS_TC
FROM
(
    -- 1. Break Down
	SELECT
		COUNT(DISTINCT SLIP_T.TRN_NO) AS BREAK_DOWN_TC,
        0 AS WORK_ORDER_TC,
        0 AS BREAK_DOWN_ACTION_TC,
        0 AS BREAK_DOWN_ANALYSIS_TC
	FROM
		TRN_MAINTENANCE_H AS SLIP_T
	WHERE
		SUBSTRING(CONVERT(VARCHAR, SLIP_T.TRN_NO), 8, 3) = '121'
		AND SLIP_T.TRN_SUB_TYPE = '11'
		AND SLIP_T.STATUS_CODE = 0

		AND NOT EXISTS (
			SELECT 
				ACTION_T.TRN_NO
			FROM 
				TRN_MAINTENANCE_H AS ACTION_T

				-- inner join	as workOrder
				INNER JOIN TRN_MAINTENANCE_H AS WK_OD_T
					ON WK_OD_T.TRN_NO = ACTION_T.REF_TRN_NO
					AND WK_OD_T.TRN_SUB_TYPE = '12'
			WHERE
				SLIP_T.TRN_NO = WK_OD_T.REF_TRN_NO -- maint.trn = workOrder.reftrnno
				AND SUBSTRING(CONVERT(VARCHAR, ACTION_T.TRN_NO), 8, 3) = '121'
				AND ACTION_T.TRN_SUB_TYPE = '13'
				AND ACTION_T.STATUS_CODE = 0
				AND ACTION_T.IS_MAINTENANCE_COMPLETED = 1
		)

    -- 2. Work Order
    SELECT 
        0,
        COUNT(DISTINCT TRN_NO),
        0,
        0
    FROM TRN_MAINTENANCE_H
    WHERE
        SUBSTRING(CONVERT(VARCHAR(20), TRN_NO), 8, 3) = '121'
        AND TRN_SUB_TYPE = 11
        AND TRN_NO NOT IN (
            SELECT REF_TRN_NO
            FROM TRN_MAINTENANCE_H
            WHERE
                STATUS_CODE IN (0, 101)
                AND SUBSTRING(CONVERT(VARCHAR(20), TRN_NO), 8, 3) = '121'
                AND TRN_SUB_TYPE = 12
        )
        AND STATUS_CODE = 0

    UNION ALL

    -- 3. Break Down Action
    SELECT 
        0,
        0,
        COUNT(DISTINCT TRN_NO),
        0
    FROM TRN_MAINTENANCE_H
    WHERE 
        SUBSTRING(CONVERT(VARCHAR(20), TRN_NO), 8, 3) = '121'
        AND TRN_SUB_TYPE = 12
        AND TRN_NO NOT IN (
            SELECT REF_TRN_NO
            FROM TRN_MAINTENANCE_H
            WHERE 
                STATUS_CODE IN (0, 101)
                AND SUBSTRING(CONVERT(VARCHAR(20), TRN_NO), 8, 3) = '121'
                AND TRN_SUB_TYPE = 13
                AND IS_MAINTENANCE_COMPLETED = 'True'
        )
        AND STATUS_CODE = 0

    UNION ALL

    -- 4. Break Down Analysis
    SELECT 
        0,
        0,
        0,
        COUNT(DISTINCT TRN_NO)
    FROM TRN_MAINTENANCE_H
    WHERE 
        SUBSTRING(CONVERT(VARCHAR(20), TRN_NO), 8, 3) = '121'
        AND TRN_SUB_TYPE = 13
        AND IS_MAINTENANCE_COMPLETED = 'True'
        AND TRN_NO NOT IN (
            SELECT REF_TRN_NO
            FROM TRN_MAINTENANCE_H
            WHERE 
                STATUS_CODE IN (0, 101)
                AND SUBSTRING(CONVERT(VARCHAR(20), TRN_NO), 8, 3) = '121'
                AND TRN_SUB_TYPE = 16
        )
        AND STATUS_CODE = 0

) TOTAL_COUNT;

-- Query Ends

END


GO
```   
## DAL
```csharp
public DTOMaintenanceStatus GetMaintainanceStatusCount(int CompanyId)
{
    try
    {
        string query = "SP_MAINTENANCE_STATUS";
        DTOMaintenanceStatus obj = new DTOMaintenanceStatus();
        using (ConManager con = new ConManager())
        {

            string strmasterdb = con.masterDb.Database;

            obj = (DTOMaintenanceStatus)con.transactionDb.Query<DTOMaintenanceStatus>
                                    (
                                        query, 
                                        new 
                                            { 
                                                @COMPANY_ID = CompanyId, 
                                                @SYSTEM_DB_NAME = strmasterdb 
                                            }, 
                                        commandTimeout: 900, 
                                        commandType: System.Data.CommandType.StoredProcedure
                                    ).SingleOrDefault();

        }
        return obj;
    }
    catch (Exception ex)
    {
        throw ex;
    }
}
```  