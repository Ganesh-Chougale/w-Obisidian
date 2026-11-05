USE [HARIOM_MASTERS]
GO

/****** Object:  StoredProcedure [dbo].[SP_HARI_OM_RENTAL_ORDER_LIST]    Script Date: 04-11-2026 09:24:22 ******/
DROP PROCEDURE [dbo].[SP_HARI_OM_RENTAL_ORDER_LIST]
GO

/****** Object:  StoredProcedure [dbo].[SP_HARI_OM_RENTAL_ORDER_LIST]    Script Date: 04-11-2026 09:24:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

------------------------------------------------------------------------------------    
-- DROP PROC SP_HARI_OM_RENTAL_ORDER_LIST 101,101,'HARIOM_MASTERS'
-- [SP_HARI_OM_RENTAL_ORDER_LIST]  '101', '101', 'HARIOM_MASTERS'
-------------------------------------------------------------------------------------    
-- PURPOSE     :  
-- CREATED BY  :  
-- CREATE DATE :  
--------------------------------------------------------------------------------------    
-- UPDATED BY  : Ganesh Chougale     
-- UPDATED DATE:   
--------------------------------------------------------------------------------------

create PROC [dbo].[SP_HARI_OM_RENTAL_ORDER_LIST]
@SO_TYPE	INT,
@COMPANY_ID INT,
@SYS_DBNAME VARCHAR(50)
AS

BEGIN

DECLARE @STR_QRY NVARCHAR(MAX)
DECLARE @STR_QRY1 NVARCHAR(MAX)
DECLARE @SUB_GL_ACNO INT
DECLARE @SUPP_SUB_GL_ACNO INT
DECLARE @H_SUB_GL_ACNO INT
DECLARE @ERP_DB_NAME VARCHAR(50)

CREATE TABLE 
    #TBL_TRN_GATE
        (
            IO_TYPE INT,
            TRN_NO BIGINT,
            TRN_DATE VARCHAR(10),
            INV_NO VARCHAR(20),
            INV_DATE VARCHAR(10),
            VEHICLE_NO VARCHAR(50),
            MATERIAL_CODE INT,
            QUANTITY DECIMAL(20,2),
            SUPP_SUB_GL_ACNO INT,
            SUPP_NAME VARCHAR(500),
            CRT_BY VARCHAR(30),
            EMPLOYEE_ID INT,
            EMP_NAME VARCHAR(500)
        )

SET @STR_QRY='
	SELECT 
		@SUB_GL_ACNO=ISNULL(SUB_GL_ACNO, 0),
        @SUPP_SUB_GL_ACNO=ISNULL(SUPP_SUB_GL_ACNO, 0),
        @ERP_DB_NAME=ISNULL(ERP_DB, '''' )
	FROM 
        '+@SYS_DBNAME+'..MST_COMPANY
	WHERE
		COMPANY_ID='+CONVERT(VARCHAR,@COMPANY_ID)

exec 
    sp_executesql 
        @STR_QRY, 
        N'@SUB_GL_ACNO INT output,
        @SUPP_SUB_GL_ACNO INT output,
        @ERP_DB_NAME VARCHAR(50) output', 
        @SUB_GL_ACNO = @SUB_GL_ACNO out,
        @SUPP_SUB_GL_ACNO = @SUPP_SUB_GL_ACNO out,
        @ERP_DB_NAME = @ERP_DB_NAME out


PRINT @SUPP_SUB_GL_ACNO
DECLARE @DB_NAME VARCHAR(100)
DECLARE @STRSQL_POH VARCHAR(MAX)
DECLARE @STRSQL_POI VARCHAR(MAX)
DECLARE @STRSQL_GSTTAX VARCHAR(MAX)
DECLARE @STRSQL_TCS VARCHAR(MAX)

DECLARE @INT_COUNT INT 
SET @STRSQL_POH=''
SET @STRSQL_POI=''
SET @STRSQL_GSTTAX=''
SET @STRSQL_TCS=''
SET @INT_COUNT = 1


------------------------------------------------------- SALE ORDER -------------------------------------------------------
IF @SO_TYPE IN(101,103) -- SALE ORDER
    BEGIN

    DECLARE CURR_COMPANY CURSOR STATIC LOCAL FORWARD_ONLY FOR
    SELECT ERP_DB FROM ERP_MASTERS..MST_COMPANY WHERE COMPANY_ID  IN(101) -- Transaction DB Assign
    OPEN CURR_COMPANY    
    FETCH NEXT FROM CURR_COMPANY INTO  @DB_NAME
    
	WHILE @@FETCH_STATUS=0          
        BEGIN
            --SELECT @DB_NAME
            SET @STRSQL_POH = @STRSQL_POH +
            '
            SELECT 
                PO_H.TRN_NO,
                PO_H.TRN_AMEND_NO AS AMEND_NO,
                PO_H.TRN_DATE,
                PO_H.SUB_GL_ACNO, 
                CASE 
                    WHEN 
                        '+CONVERT(VARCHAR,@COMPANY_ID)+'=115 
                        AND LEFT(PO_H.TRN_NO,3)=101 
						AND PO_H.FORMULA_CODE=101920 
                    THEN 
                        101922 
                    ELSE 
                        PO_H.FORMULA_CODE 
                    END 
                FORMULA_CODE,
                PO_H.CRT_BY,
                TRNSPORT,
                CARRIER,
                PO_TYPE,
                TRANSPORT_TYPE,
                IS_TAX_ROUND,
                IS_GST_NOT_APP,
                IS_NET_AMT_ROUND 
            FROM 
                '+@DB_NAME+'..TRN_PO_H PO_H 
            WHERE 
                SUBSTRING(CONVERT(VARCHAR,PO_H.TRN_NO),8,3) =''701'' 
                AND PO_H.TRN_SUB_TYPE IN(10,14) 
                AND PO_H.SUB_GL_ACNO = '+CONVERT(VARCHAR,@SUPP_SUB_GL_ACNO)+' 
                AND PO_H.STATUS_CODE = 0 
                AND ISNULL(INTER_SO_FLAG,0) = 0 
				AND PO_H.TRN_DATE >=20210401
            '

            IF @SO_TYPE = 101
            BEGIN
                SET @STRSQL_POI = @STRSQL_POI +
                '
                SELECT 
                    TRN_NO,
                    AMEND_NO,
                    SR_NO,
                    MATERIAL_CODE,
                    PO_QTY,
                    CASE 
                        WHEN 
                            ISNULL(DISC_RATE,0) = 0 
                        THEN 
                            RATE 
                        ELSE 
                            DISC_RATE 
                        END 
                    RATE,
                    RATE_PER,
                    DISC_PER,
                    DISC_RATE,
                    RATE_PER_KG,
                    HSN_CODE
                FROM 
                    '+@DB_NAME+'..TRN_PO_MAT_I 
                WHERE 
                    SUBSTRING(CONVERT(VARCHAR,TRN_NO),8,3) =''701'' 
                    AND STATUS_CODE = 0 
                    AND ISNULL(INTER_SO_FLAG,0) = 0 
                    AND TRN_DATE >=20210401 
                    AND MATERIAL_CODE LIKE ''10101%''
                '
            END
            ELSE
            BEGIN
                SET @STRSQL_POI = @STRSQL_POI +
                '
                SELECT 
                    TRN_NO,
                    AMEND_NO,
                    SR_NO,
                    MATERIAL_CODE,
                    PO_QTY,
                    CASE 
                        WHEN 
                            ISNULL(DISC_RATE,0) = 0 
                        THEN
                            RATE
                        ELSE 
                            DISC_RATE 
                        END
                    RATE,
                    RATE_PER,
                    DISC_PER,
                    DISC_RATE,
                    RATE_PER_KG,
                    HSN_CODE 
                FROM 
                    '+@DB_NAME+'..TRN_PO_MAT_I
                WHERE 
                    SUBSTRING(CONVERT(VARCHAR,TRN_NO),8,3) =''701'' 
                    AND STATUS_CODE = 0 
                    AND ISNULL(INTER_SO_FLAG,0) = 0 
                    AND TRN_DATE >=20210401 
                    AND MATERIAL_CODE NOT LIKE ''10101%''
                '
            END

            SET @STRSQL_GSTTAX = @STRSQL_GSTTAX +
            '
            SELECT 
                TRN_NO,
                AMEND_NO,
                POST_KEY_CODE,
                CODE AS GST_TAX_CODE,
                CASE 
                    WHEN 
                        POST_KEY_CODE IN(231,233) 
                    THEN 
                        2 * PERCENTAGE 
                    ELSE 
                        PERCENTAGE 
                    END 
                GST_RATE 
            FROM 
                '+@DB_NAME+'..TRN_PO_TAX 
            WHERE 
                SUBSTRING(CONVERT(VARCHAR,TRN_NO),8,3) =''701'' 
                AND POST_KEY_CODE IN(231,233,241,242) 
                AND STATUS_CODE = 0 
                AND ISNULL(INTER_SO_FLAG,0) = 0 
                AND TRN_DATE >=20210401
            '

            SET @STRSQL_TCS = @STRSQL_TCS +
            '
            SELECT 
                TRN_NO,
                AMEND_NO,
                POST_KEY_CODE,
                CODE TCS_CODE
            FROM 
                '+@DB_NAME+'..TRN_PO_TAX 
            WHERE 
                SUBSTRING(CONVERT(VARCHAR,TRN_NO),8,3) =''701'' 
                AND POST_KEY_CODE IN(281) 
                AND STATUS_CODE = 0 
                AND ISNULL(INTER_SO_FLAG,0) = 0 
                AND TRN_DATE >=20210401
            '


            IF @INT_COUNT <> (SELECT COUNT(*) FROM HARIOM_MASTERS..MST_COMPANY WHERE COMPANY_ID IN(105)) --NOT IN(@COMPANY_ID,107,112,113,114,116,201,202,301))
            BEGIN
                SET @STRSQL_POH = @STRSQL_POH +
				'UNION ALL'			

                SET @STRSQL_POI = @STRSQL_POI +
				'UNION ALL'	
                
                SET @STRSQL_GSTTAX = @STRSQL_GSTTAX +
				'UNION ALL'	
                
                SET @STRSQL_TCS = @STRSQL_TCS +
				'UNION ALL'	

            END

            SET @INT_COUNT = @INT_COUNT + 1

            --PRINT @STRSQL
            FETCH NEXT FROM CURR_COMPANY INTO @DB_NAME
        END
    CLOSE CURR_COMPANY          
    DEALLOCATE CURR_COMPANY

    -- SO
    SET @STR_QRY='
    SELECT DISTINCT
        PO_H.TRN_NO,
        PO_H.AMEND_NO AS AMEND_NO,
        CONVERT(REAL,RIGHT(PO_H.TRN_NO,6)) AS PO_NO,
        DBO.FUN_GETFORMATTEDDATE(PO_H.TRN_DATE) AS PO_DATE,
        PO_H.TRN_DATE,	
        PO_H.FORMULA_CODE,
        PO_MAT_I.SR_NO,
        PO_MAT_I.MATERIAL_CODE,	
        PO_MAT_I.PO_QTY,
        PO_MAT_I.RATE,
        PO_MAT_I.RATE_PER,
        PO_MAT_I.DISC_PER,
        PO_MAT_I.DISC_RATE,
        PO_MAT_I.RATE_PER_KG,
        PO_MAT_I.HSN_CODE,	
        MST_COMPANY.SUB_GL_ACNO,	
        MST_ACCT_SUB_GL.LONG_NAME,
        PO_H.CRT_BY,
        MST_EMPLOYEE.EMPLOYEE_ID,
        MST_EMPLOYEE.EMPLOYEE_FIRST_NAME + '' '' + MST_EMPLOYEE.EMPLOYEE_MIDDLE_NAME + '' '' + MST_EMPLOYEE.EMPLOYEE_LAST_NAME AS EMP_NAME,
        ISNULL(MST_MAT_WT_HIST.CASTING_WT,0) AS CASTING_WT,
        ISNULL(MST_MAT_WT_HIST.FINISH_WT,0) AS FINISH_WT,
        ISNULL(TRN_GST.GST_TAX_CODE,0) AS GST_TAX_CODE,
        TRN_GST.GST_RATE,
        ISNULL(TRN_TCS.TCS_CODE,0) AS TCS_CODE,
        PO_H.TRNSPORT,PO_H.CARRIER,
        PO_H.PO_TYPE,
        PO_H.TRANSPORT_TYPE,
        PO_H.IS_TAX_ROUND,
        PO_H.IS_GST_NOT_APP,
        PO_H.IS_NET_AMT_ROUND
    FROM
        ('+@STRSQL_POH+')PO_H'

    SET @STR_QRY1=
    '
    LEFT OUTER JOIN('+@STRSQL_GSTTAX+')TRN_GST 
    ON TRN_GST.TRN_NO = PO_H.TRN_NO 
    AND TRN_GST.AMEND_NO = PO_H.AMEND_NO

    LEFT OUTER JOIN('+@STRSQL_TCS+')TRN_TCS 
    ON TRN_TCS.TRN_NO = PO_H.TRN_NO 
    AND TRN_TCS.AMEND_NO = PO_H.AMEND_NO

    INNER JOIN ('+@STRSQL_POI+')PO_MAT_I  
                ON PO_MAT_I.TRN_NO = PO_H.TRN_NO 
                AND PO_MAT_I.AMEND_NO = PO_H.AMEND_NO

                LEFT OUTER JOIN(
                                SELECT
                                    MST_MAT_WT_HIST.MATERIAL_CODE,
                                    ISNULL(CASTING_WT,0) AS CASTING_WT,
                                    ISNULL(FINISH_WT,0) AS FINISH_WT
                                FROM
                                    '+@ERP_DB_NAME+'..MST_MAT_WT_HIST
                                    INNER JOIN(
                                    SELECT 
                                        MATERIAL_CODE,MAX(SR_NO) AS SR_NO
                                    FROM 
                                        '+@ERP_DB_NAME+'..MST_MAT_WT_HIST 
                                    WHERE STATUS_CODE=0
                                    GROUP BY
                                        MATERIAL_CODE
                ) AS MAX_MAT_WT_HIST 
                ON MAX_MAT_WT_HIST.MATERIAL_CODE = MST_MAT_WT_HIST.MATERIAL_CODE
                AND MAX_MAT_WT_HIST.SR_NO = MST_MAT_WT_HIST.SR_NO
    ) AS MST_MAT_WT_HIST 
    ON MST_MAT_WT_HIST.MATERIAL_CODE = PO_MAT_I.MATERIAL_CODE

    LEFT OUTER JOIN '+ @SYS_DBNAME +'..MST_COMPANY 
    ON MST_COMPANY.COMPANY_ID = LEFT(PO_H.TRN_NO,3)

    LEFT OUTER JOIN '+ @SYS_DBNAME +'..MST_EMPLOYEE 
    ON MST_EMPLOYEE.EMPLOYEE_LOGIN_ID = PO_H.CRT_BY

    LEFT OUTER JOIN '+ @SYS_DBNAME +'..MST_ACCT_SUB_GL 
    ON MST_ACCT_SUB_GL.SUB_GL_ACNO = MST_COMPANY.SUB_GL_ACNO
        
    ORDER BY 
        PO_H.TRN_DATE DESC,PO_H.TRN_NO DESC
    '

    --INSERT INTO #TBL_TRN_GATE
    EXEC(@STR_QRY+@STR_QRY1)
    print @STRSQL_POI
    print @STR_QRY
    PRINT @STR_QRY1

    END
------------------------------------------------------- JOB WORK ORDER / SUB CONTRACT -------------------------------------------------------

    ELSE IF @SO_TYPE = 102 -- JOB WORK ORDER -- SUB CONTRACT
    BEGIN

    DECLARE CURR_COMPANY CURSOR STATIC LOCAL FORWARD_ONLY FOR
    SELECT ERP_DB FROM HARIOM_MASTERS..MST_COMPANY WHERE COMPANY_ID NOT IN(@COMPANY_ID,107,112,113,114,116,201,202,301)
    OPEN CURR_COMPANY          
    FETCH NEXT FROM CURR_COMPANY INTO  @DB_NAME
    WHILE @@FETCH_STATUS=0          
        BEGIN
            --SELECT @DB_NAME
            SET @STRSQL_POH = @STRSQL_POH +
            '
            SELECT 
                PO_H.TRN_NO,
                PO_H.TRN_AMEND_NO AS AMEND_NO,
                PO_H.TRN_DATE,
                PO_H.SUB_GL_ACNO,
                PO_H.FORMULA_CODE,
                PO_H.PROCESS_CODE,
                PO_H.CRT_BY,
                TRNSPORT,
                CARRIER,PO_TYPE,
                TRANSPORT_TYPE,
                IS_TAX_ROUND,
                IS_GST_NOT_APP,
                IS_NET_AMT_ROUND 
            FROM 
                '+@DB_NAME+'..TRN_PO_H PO_H
            WHERE 
                SUBSTRING(CONVERT(VARCHAR,PO_H.TRN_NO),8,3) =''701'' 
                AND PO_H.TRN_SUB_TYPE IN(16) 
                AND PO_H.SUB_GL_ACNO = '+CONVERT(VARCHAR,@SUPP_SUB_GL_ACNO)+' 
                AND PO_H.STATUS_CODE = 0 
                AND ISNULL(INTER_SO_FLAG,0) = 0 
                AND PO_H.TRN_DATE >=20210401
            '
                    
            SET @STRSQL_POI = @STRSQL_POI +
            '
            SELECT 
                TRN_NO,
                AMEND_NO,
                SR_NO,
                MATERIAL_CODE,
                PO_QTY,
                CASE 
                    WHEN 
                        ISNULL(DISC_RATE,0) = 0 
                    THEN 
                        RATE 
                    ELSE 
                        DISC_RATE 
                    END 
                RATE,
                RATE_PER,
                DISC_PER,
                DISC_RATE,
                RATE_PER_KG,
                HSN_CODE 
            FROM 
                '+@DB_NAME+'..TRN_PO_MAT_I 
            WHERE 
                SUBSTRING(CONVERT(VARCHAR,TRN_NO),8,3) =''701'' 
                AND STATUS_CODE = 0 
                AND ISNULL(INTER_SO_FLAG,0) = 0 
                AND TRN_DATE >=20210401
            '
            
            SET @STRSQL_GSTTAX = @STRSQL_GSTTAX +
            '
            SELECT 
                TRN_NO,
                AMEND_NO,
                POST_KEY_CODE,
                CODE AS GST_TAX_CODE,
                CASE 
                    WHEN 
                        POST_KEY_CODE IN(231,233) 
                    THEN 
                        2 * PERCENTAGE 
                    ELSE 
                        PERCENTAGE 
                    END 
                GST_RATE 
            FROM 
                '+@DB_NAME+'..TRN_PO_TAX 
            WHERE 
                SUBSTRING(CONVERT(VARCHAR,TRN_NO),8,3) =''701'' 
                AND POST_KEY_CODE IN(231,233,241,242) 
                AND STATUS_CODE = 0 
                AND ISNULL(INTER_SO_FLAG,0) = 0 
                AND TRN_DATE >=20210401
            '

            SET @STRSQL_TCS = @STRSQL_TCS +
            '
            SELECT 
                TRN_NO,
                AMEND_NO,
                POST_KEY_CODE,
                CODE TCS_CODE 
            FROM 
                '+@DB_NAME+'..TRN_PO_TAX 
            WHERE 
                SUBSTRING(CONVERT(VARCHAR,TRN_NO),8,3) =''701'' 
                AND POST_KEY_CODE IN(281) 
                AND STATUS_CODE = 0 
                AND ISNULL(INTER_SO_FLAG,0) = 0 
                AND TRN_DATE >=20210401
            '

            IF @INT_COUNT <> (SELECT COUNT(*) FROM HARIOM_MASTERS..MST_COMPANY WHERE COMPANY_ID NOT IN(@COMPANY_ID,107,112,113,114,116,201,202,301))
            BEGIN
                SET @STRSQL_POH = @STRSQL_POH +
				'UNION ALL'	

                SET @STRSQL_POI = @STRSQL_POI +
				'UNION ALL'	
                
                SET @STRSQL_GSTTAX = @STRSQL_GSTTAX +
				'UNION ALL'	
                
                SET @STRSQL_TCS = @STRSQL_TCS +
				'UNION ALL'	

            END

            SET @INT_COUNT = @INT_COUNT + 1

            --PRINT @STRSQL
            FETCH NEXT FROM CURR_COMPANY INTO @DB_NAME
        END
    CLOSE CURR_COMPANY          
    DEALLOCATE CURR_COMPANY

    -- SO
    SET @STR_QRY='
    SELECT DISTINCT --TOP 20
        PO_H.TRN_NO,
        PO_H.AMEND_NO AMEND_NO,
        SUBSTRING(CONVERT(VARCHAR,PO_H.TRN_NO),4,4) + ''-'' + RIGHT(PO_H.TRN_NO,6) PO_NO,
        DBO.FUN_GETFORMATTEDDATE(PO_H.TRN_DATE) PO_DATE,
        PO_H.TRN_DATE,	
        PO_H.FORMULA_CODE,
        PO_MAT_I.SR_NO,
        --ISNULL(MAT_JOB_WORK_BOM.REF_MAT_CODE,0) MATERIAL_CODE,

        CASE 
            WHEN 
                ISNULL(MAT_JOB_WORK_BOM.REF_MAT_CODE,0) = 0 
            THEN 
                CASE 
                    WHEN 
                        UPPER(LEFT(ORG_MST_MATERIALS.MATERIAL_NAME,3))=''J/W'' 
                    THEN 
                        PO_MAT_I.MATERIAL_CODE 
                    ELSE 
                        ISNULL(MAT_JOB_WORK_BOM.REF_MAT_CODE,0) 
                    END
        ELSE
            ISNULL(MAT_JOB_WORK_BOM.REF_MAT_CODE,0)
        END 

        MATERIAL_CODE,
        PO_MAT_I.MATERIAL_CODE AS CUST_MATERIAL_CODE,		
        PO_MAT_I.PO_QTY,
        PO_MAT_I.RATE,
        PO_MAT_I.RATE_PER,
        PO_MAT_I.DISC_PER,
        PO_MAT_I.DISC_RATE,
        PO_MAT_I.RATE_PER_KG,
        PO_MAT_I.HSN_CODE,	
        MST_COMPANY.SUB_GL_ACNO,	
        MST_ACCT_SUB_GL.LONG_NAME,
        PO_H.CRT_BY,
        MST_EMPLOYEE.EMPLOYEE_ID,
        MST_EMPLOYEE.EMPLOYEE_FIRST_NAME + '' '' + MST_EMPLOYEE.EMPLOYEE_MIDDLE_NAME + '' '' + MST_EMPLOYEE.EMPLOYEE_LAST_NAME EMP_NAME,
        ISNULL(MST_MAT_WT_HIST.CASTING_WT,0) CASTING_WT,
        ISNULL(MST_MAT_WT_HIST.FINISH_WT,0) FINISH_WT,
        PO_H.PROCESS_CODE,
        ISNULL(TRN_GST.GST_TAX_CODE,0) GST_TAX_CODE,TRN_GST.GST_RATE,
        ISNULL(TRN_TCS.TCS_CODE,0) TCS_CODE,
        PO_H.TRNSPORT,PO_H.CARRIER,PO_H.PO_TYPE,PO_H.TRANSPORT_TYPE,
        PO_H.IS_TAX_ROUND,PO_H.IS_GST_NOT_APP,PO_H.IS_NET_AMT_ROUND,
        ISNULL(PROCESS_MAP.JOB_WORK_PROCESS_CODE,0) JOB_WORK_PROCESS_CODE
    FROM
        ('+@STRSQL_POH+')PO_H'

    SET @STR_QRY1=
        '
        LEFT OUTER JOIN('+@STRSQL_GSTTAX+')TRN_GST 
        ON TRN_GST.TRN_NO = PO_H.TRN_NO 
        AND TRN_GST.AMEND_NO = PO_H.AMEND_NO

        LEFT OUTER JOIN('+@STRSQL_TCS+')TRN_TCS 
        ON TRN_TCS.TRN_NO = PO_H.TRN_NO 
        AND TRN_TCS.AMEND_NO = PO_H.AMEND_NO

        INNER JOIN ('+@STRSQL_POI+')PO_MAT_I  
        ON PO_MAT_I.TRN_NO = PO_H.TRN_NO 
        AND PO_MAT_I.AMEND_NO = PO_H.AMEND_NO

        LEFT OUTER JOIN(
                        SELECT 
                            *
                        FROM
                            '+@ERP_DB_NAME+'..MST_MAT_JOB_WORK_BOM
                        WHERE 
                            STATUS_CODE = 0
        ) AS MAT_JOB_WORK_BOM 
        ON PO_MAT_I.MATERIAL_CODE= MAT_JOB_WORK_BOM.MAT_CODE

        LEFT OUTER JOIN(

                        SELECT
                            MST_MAT_WT_HIST.MATERIAL_CODE,
                            ISNULL(CASTING_WT,0) AS CASTING_WT,
                            ISNULL(FINISH_WT,0) AS FINISH_WT
                        FROM
                            '+@ERP_DB_NAME+'..MST_MAT_WT_HIST

                            INNER JOIN(
                                        SELECT 
                                            MATERIAL_CODE,
                                            MAX(SR_NO) AS SR_NO
                                        FROM 
                                            '+@ERP_DB_NAME+'..MST_MAT_WT_HIST 
                                        WHERE 
                                            STATUS_CODE=0
                                        GROUP BY
                                            MATERIAL_CODE
                            )MAX_MAT_WT_HIST 
                            ON MAX_MAT_WT_HIST.MATERIAL_CODE = MST_MAT_WT_HIST.MATERIAL_CODE
                            AND MAX_MAT_WT_HIST.SR_NO = MST_MAT_WT_HIST.SR_NO

        ) AS MST_MAT_WT_HIST 
        ON MST_MAT_WT_HIST.MATERIAL_CODE = PO_MAT_I.MATERIAL_CODE

        LEFT OUTER JOIN '+ @SYS_DBNAME +'..MST_COMPANY 
        ON MST_COMPANY.COMPANY_ID = LEFT(PO_H.TRN_NO,3)

        LEFT OUTER JOIN '+ @SYS_DBNAME +'..MST_EMPLOYEE 
        ON MST_EMPLOYEE.EMPLOYEE_LOGIN_ID = PO_H.CRT_BY

        LEFT OUTER JOIN '+ @SYS_DBNAME +'..MST_ACCT_SUB_GL 
        ON MST_ACCT_SUB_GL.SUB_GL_ACNO = MST_COMPANY.SUB_GL_ACNO

        LEFT OUTER JOIN ' + @SYS_DBNAME  + '.dbo.MST_SUBCON_JOBWORK_PROCESS_MAP AS PROCESS_MAP 
        ON PO_H.PROCESS_CODE=PROCESS_MAP.SUB_CON_PROCESS_CODE

        LEFT OUTER JOIN ' + @SYS_DBNAME  + '.dbo.MST_MATERIALS AS ORG_MST_MATERIALS 
        ON PO_MAT_I.MATERIAL_CODE=ORG_MST_MATERIALS.MATERIAL_CODE

    WHERE 
        MST_COMPANY.SUB_GL_ACNO IS NOT NULL
    ORDER BY 
        PO_H.TRN_DATE DESC,
        PO_H.TRN_NO DESC
    '

    --INSERT INTO #TBL_TRN_GATE
    EXEC(@STR_QRY+@STR_QRY1)
    print @STR_QRY
    PRINT @STR_QRY1

END

------------------------------------------------------- SALE / OTHER ORDER AMEND -------------------------------------------------------
IF @SO_TYPE IN(105,106) -- SALE,OTHER ORDER AMEND
BEGIN

    DECLARE CURR_COMPANY CURSOR STATIC LOCAL FORWARD_ONLY FOR
    SELECT ERP_DB FROM HARIOM_MASTERS..MST_COMPANY WHERE COMPANY_ID NOT IN(@COMPANY_ID,107,112,113,114,116,201,202,301)
    OPEN CURR_COMPANY          
    FETCH NEXT FROM CURR_COMPANY INTO  @DB_NAME
    WHILE @@FETCH_STATUS=0          
        BEGIN
            --SELECT @DB_NAME
            SET @STRSQL_POH = @STRSQL_POH +
            '
            SELECT 
                PO_H.TRN_NO,
                PO_H.TRN_AMEND_NO AS AMEND_NO,
                PO_H.TRN_DATE,
                PO_H.SUB_GL_ACNO,
                PO_H.FORMULA_CODE,
                PO_H.CRT_BY,
                TRNSPORT,
                CARRIER,
                PO_TYPE,
                TRANSPORT_TYPE,
                IS_TAX_ROUND,
                IS_GST_NOT_APP,
                IS_NET_AMT_ROUND 
            FROM 
                '+@DB_NAME+'..TRN_PO_H PO_H
            WHERE 
                SUBSTRING(CONVERT(VARCHAR,PO_H.TRN_NO),8,3) =''701'' 
                AND PO_H.TRN_SUB_TYPE IN(12,15) 
                AND PO_H.SUB_GL_ACNO = '+CONVERT(VARCHAR,@SUPP_SUB_GL_ACNO)+' 
                AND PO_H.STATUS_CODE = 0
                AND ISNULL(INTER_SO_FLAG,0) = 0 
                AND PO_H.TRN_DATE >=20210401
            '

            IF @SO_TYPE = 105
            BEGIN
                SET @STRSQL_POI = @STRSQL_POI +
                '
                SELECT 
                    TRN_NO,
                    AMEND_NO,
                    SR_NO,
                    MATERIAL_CODE,
                    PO_QTY,
                    CASE 
                        WHEN 
                            ISNULL(DISC_RATE,0) = 0 
                        THEN 
                            RATE 
                        ELSE 
                            DISC_RATE 
                    END 
                    RATE,
                    RATE_PER,
                    DISC_PER,
                    DISC_RATE,
                    RATE_PER_KG,
                    HSN_CODE 
                FROM 
                    '+@DB_NAME+'..TRN_PO_MAT_I 
                WHERE 
                    SUBSTRING(CONVERT(VARCHAR,TRN_NO),8,3) =''701'' 
                    AND STATUS_CODE = 0 
                    AND ISNULL(INTER_SO_FLAG,0) = 0
                    AND TRN_DATE >=20210401 
                    AND MATERIAL_CODE LIKE ''10101%''
                '
            END
            ELSE
            BEGIN
                SET @STRSQL_POI = @STRSQL_POI +
                '
                SELECT 
                    TRN_NO,
                    AMEND_NO,
                    SR_NO,
                    MATERIAL_CODE,
                    PO_QTY,
                    CASE 
                        WHEN 
                            ISNULL(DISC_RATE,0) = 0 
                        THEN 
                            RATE 
                        ELSE 
                            DISC_RATE 
                    END 
                    RATE,
                    RATE_PER,
                    DISC_PER,
                    DISC_RATE,
                    RATE_PER_KG,
                    HSN_CODE 
                FROM 
                    '+@DB_NAME+'..TRN_PO_MAT_I 
                WHERE 
                    SUBSTRING(CONVERT(VARCHAR,TRN_NO),8,3) =''701'' 
                    AND STATUS_CODE = 0 
                    AND ISNULL(INTER_SO_FLAG,0) = 0 
                    AND TRN_DATE >=20210401 
                    AND MATERIAL_CODE NOT LIKE ''10101%''
                '
            END

            SET @STRSQL_GSTTAX = @STRSQL_GSTTAX +
            '
            SELECT 
                TRN_NO,
                AMEND_NO,
                POST_KEY_CODE,
                CODE GST_TAX_CODE,
                CASE 
                    WHEN 
                        POST_KEY_CODE IN(231,233) 
                    THEN 
                        2 * PERCENTAGE 
                    ELSE 
                        PERCENTAGE 
                END 
                GST_RATE 
            FROM 
                '+@DB_NAME+'..TRN_PO_TAX 
            WHERE 
                SUBSTRING(CONVERT(VARCHAR,TRN_NO),8,3) =''701'' 
                AND POST_KEY_CODE IN(231,233,241,242) 
                AND STATUS_CODE = 0 
                AND ISNULL(INTER_SO_FLAG,0) = 0 
                AND TRN_DATE >=20210401
            '

            SET @STRSQL_TCS = @STRSQL_TCS +
            '
            SELECT 
                TRN_NO,
                AMEND_NO,
                POST_KEY_CODE,
                CODE TCS_CODE 
            FROM 
             '+@DB_NAME+'..TRN_PO_TAX 
            WHERE 
                SUBSTRING(CONVERT(VARCHAR,TRN_NO),8,3) =''701'' 
                AND POST_KEY_CODE IN(281) 
                AND STATUS_CODE = 0 
                AND ISNULL(INTER_SO_FLAG,0) = 0 
                AND TRN_DATE >=20210401
            '


            IF @INT_COUNT <> (SELECT COUNT(*) FROM HARIOM_MASTERS..MST_COMPANY WHERE COMPANY_ID NOT IN(@COMPANY_ID,107,112,113,114,116,201,202,301))
            BEGIN
                SET @STRSQL_POH = @STRSQL_POH +
				'UNION ALL'	

                SET @STRSQL_POI = @STRSQL_POI +
				'UNION ALL'	
                
                SET @STRSQL_GSTTAX = @STRSQL_GSTTAX +
				'UNION ALL'	
                
                SET @STRSQL_TCS = @STRSQL_TCS +
				'UNION ALL'	

            END

            SET @INT_COUNT = @INT_COUNT + 1

            --PRINT @STRSQL
            FETCH NEXT FROM CURR_COMPANY INTO @DB_NAME
        END
    CLOSE CURR_COMPANY          
    DEALLOCATE CURR_COMPANY

    -- SO
    SET @STR_QRY='
    SELECT DISTINCT --TOP 20
        PO_H.TRN_NO,
        PO_H.AMEND_NO AMEND_NO,
        CONVERT(REAL,RIGHT(PO_H.TRN_NO,6)) PO_NO,
        --SUBSTRING(CONVERT(VARCHAR,PO_H.TRN_NO),4,4) + ''-'' + RIGHT(PO_H.TRN_NO,6) PO_NO,
        DBO.FUN_GETFORMATTEDDATE(PO_H.TRN_DATE) PO_DATE,
        PO_H.TRN_DATE,	
        PO_H.FORMULA_CODE,
        PO_MAT_I.SR_NO,
        PO_MAT_I.MATERIAL_CODE,	
        PO_MAT_I.PO_QTY,
        PO_MAT_I.RATE,
        PO_MAT_I.RATE_PER,
        PO_MAT_I.DISC_PER,
        PO_MAT_I.DISC_RATE,
        PO_MAT_I.RATE_PER_KG,
        PO_MAT_I.HSN_CODE,	
        MST_COMPANY.SUB_GL_ACNO,	
        MST_ACCT_SUB_GL.LONG_NAME,
        PO_H.CRT_BY,
        MST_EMPLOYEE.EMPLOYEE_ID,
        MST_EMPLOYEE.EMPLOYEE_FIRST_NAME + '' '' + MST_EMPLOYEE.EMPLOYEE_MIDDLE_NAME + '' '' + MST_EMPLOYEE.EMPLOYEE_LAST_NAME EMP_NAME,
        ISNULL(MST_MAT_WT_HIST.CASTING_WT,0) CASTING_WT,
        ISNULL(MST_MAT_WT_HIST.FINISH_WT,0) FINISH_WT,
        ISNULL(TRN_GST.GST_TAX_CODE,0) GST_TAX_CODE,TRN_GST.GST_RATE,
        ISNULL(TRN_TCS.TCS_CODE,0) TCS_CODE,
        PO_H.TRNSPORT,PO_H.CARRIER,PO_H.PO_TYPE,PO_H.TRANSPORT_TYPE,
        PO_H.IS_TAX_ROUND,PO_H.IS_GST_NOT_APP,PO_H.IS_NET_AMT_ROUND,
        SO_H.TRN_NO SO_TRN_NO,
        SO_H.TRN_AMEND_NO SO_AMEND_NO,
        CONVERT(REAL,RIGHT(SO_H.TRN_NO,6)) SO_NO,
        DBO.FUN_GETFORMATTEDDATE(SO_H.TRN_DATE) SO_DATE,
        SO_MAT_I.WIP_STAGE_CODE,
        SO_MAT_I.AMORT_RATE,
        SO_MAT_I.CASTING_WEIGHT SO_CASTING_WEIGHT,
        SO_MAT_I.FINISH_WEIGHT SO_FINISH_WEIGHT,
        SO_MAT_I.GL_ACNO SO_GL_ACNO,
        SO_MAT_I.SUB_GL_ACNO SO_SUB_GL_ACNO
    FROM('+@STRSQL_POH+')PO_H'

    SET @STR_QRY1=
        '
        LEFT OUTER JOIN('+@STRSQL_GSTTAX+')TRN_GST 
        ON TRN_GST.TRN_NO = PO_H.TRN_NO 
        AND TRN_GST.AMEND_NO = PO_H.AMEND_NO

        LEFT OUTER JOIN('+@STRSQL_TCS+')TRN_TCS 
        ON TRN_TCS.TRN_NO = PO_H.TRN_NO 
        AND TRN_TCS.AMEND_NO = PO_H.AMEND_NO

        INNER JOIN ('+@STRSQL_POI+')PO_MAT_I  
        ON PO_MAT_I.TRN_NO = PO_H.TRN_NO 
        AND PO_MAT_I.AMEND_NO = PO_H.AMEND_NO

        LEFT OUTER JOIN(
                        SELECT
                            MST_MAT_WT_HIST.MATERIAL_CODE,
                            ISNULL(CASTING_WT,0) AS CASTING_WT,
                            ISNULL(FINISH_WT,0) AS FINISH_WT
                        FROM
                            '+@ERP_DB_NAME+'..MST_MAT_WT_HIST

                            INNER JOIN(
                                        SELECT 
                                            MATERIAL_CODE,
                                            MAX(SR_NO) AS SR_NO
                                        FROM 
                                            '+@ERP_DB_NAME+'..MST_MAT_WT_HIST 
                                        WHERE 
                                            STATUS_CODE=0
                                        GROUP BY
                                            MATERIAL_CODE
                            ) AS MAX_MAT_WT_HIST 
                            ON MAX_MAT_WT_HIST.MATERIAL_CODE = MST_MAT_WT_HIST.MATERIAL_CODE
                            AND MAX_MAT_WT_HIST.SR_NO = MST_MAT_WT_HIST.SR_NO

        )AS MST_MAT_WT_HIST 
        ON MST_MAT_WT_HIST.MATERIAL_CODE = PO_MAT_I.MATERIAL_CODE

        LEFT OUTER JOIN '+ @SYS_DBNAME +'..MST_COMPANY 
        ON MST_COMPANY.COMPANY_ID = LEFT(PO_H.TRN_NO,3)

        LEFT OUTER JOIN '+ @SYS_DBNAME +'..MST_EMPLOYEE 
        ON MST_EMPLOYEE.EMPLOYEE_LOGIN_ID = PO_H.CRT_BY

        LEFT OUTER JOIN '+ @SYS_DBNAME +'..MST_ACCT_SUB_GL 
        ON MST_ACCT_SUB_GL.SUB_GL_ACNO = MST_COMPANY.SUB_GL_ACNO

        LEFT OUTER JOIN (
                            SELECT 
                                TRN_PO_H.TRN_NO,
                                TRN_PO_H.TRN_AMEND_NO,
                                TRN_PO_H.TRN_DATE,
                                TRN_PO_H.REF_TRN_NO,
                                TRN_PO_H.REF_TRN_AMEND_NO
                            FROM 
                                '+@ERP_DB_NAME+'..TRN_PO_H
                            INNER JOIN (

                                        SELECT 
                                            TRN_PO_H.TRN_NO,
                                            MAX(TRN_PO_H.TRN_AMEND_NO) AS TRN_AMEND_NO
                                        FROM 
                                            '+@ERP_DB_NAME+'..TRN_PO_H

                                        INNER JOIN (
                                                    SELECT 
                                                        MAX(TRN_NO) AS TRN_NO,
                                                        SUB_GL_ACNO,
                                                        REF_TRN_NO,
                                                        REF_TRN_AMEND_NO 
                                                    FROM 
                                                        '+@ERP_DB_NAME+'..TRN_PO_H 
                                                    GROUP BY 
                                                        SUB_GL_ACNO,
                                                        REF_TRN_NO,
                                                        REF_TRN_AMEND_NO
                                        ) AS TRN_MAX_AMEND 
                                        ON TRN_MAX_AMEND.TRN_NO = TRN_PO_H.TRN_NO

                                        GROUP BY 
                                            TRN_PO_H.TRN_NO

                            ) AS TRN_PO 
                            ON TRN_PO.TRN_NO = TRN_PO_H.TRN_NO 
                            AND TRN_PO.TRN_AMEND_NO = TRN_PO_H.TRN_AMEND_NO

        ) AS SO_H 
        ON SO_H.REF_TRN_NO = PO_H.TRN_NO A
        ND SO_H.REF_TRN_AMEND_NO = (PO_H.AMEND_NO-1)

        LEFT OUTER JOIN '+@ERP_DB_NAME+'..TRN_PO_MAT_I AS SO_MAT_I 
        ON SO_MAT_I.TRN_NO = SO_H.TRN_NO 
        AND SO_MAT_I.AMEND_NO=SO_H.TRN_AMEND_NO
        AND SO_MAT_I.MATERIAL_CODE = PO_MAT_I.MATERIAL_CODE

    ORDER BY 
        PO_H.TRN_DATE DESC,
        PO_H.TRN_NO DESC
        '
    --LEFT OUTER JOIN '+@ERP_DB_NAME+'..TRN_PO_H SO_H ON SO_H.REF_TRN_NO = PO_H.TRN_NO AND SO_H.REF_TRN_AMEND_NO = (PO_H.AMEND_NO-1)

    --INSERT INTO #TBL_TRN_GATE
    EXEC(@STR_QRY+@STR_QRY1)
    print @STRSQL_POI
    print @STR_QRY
    PRINT @STR_QRY1

    END
    ELSE IF @SO_TYPE = 107 -- JOB WORK ORDER -- SUB CONTRACT AMEND
    BEGIN

    DECLARE CURR_COMPANY CURSOR STATIC LOCAL FORWARD_ONLY FOR
    SELECT ERP_DB FROM HARIOM_MASTERS..MST_COMPANY WHERE COMPANY_ID NOT IN(@COMPANY_ID,107,112,113,114,116,201,202,301)
    OPEN CURR_COMPANY          
    FETCH NEXT FROM CURR_COMPANY INTO  @DB_NAME
    WHILE @@FETCH_STATUS=0          
        BEGIN
            --SELECT @DB_NAME
            SET @STRSQL_POH = @STRSQL_POH +
            '
            SELECT 
                PO_H.TRN_NO,
                PO_H.TRN_AMEND_NO AMEND_NO,
                PO_H.TRN_DATE,
                PO_H.SUB_GL_ACNO,
                PO_H.FORMULA_CODE,
                PO_H.PROCESS_CODE,
                PO_H.CRT_BY,
                TRNSPORT,
                CARRIER,
                PO_TYPE,
                TRANSPORT_TYPE,
                IS_TAX_ROUND,
                IS_GST_NOT_APP,
                IS_NET_AMT_ROUND 
            FROM 
                '+@DB_NAME+'..TRN_PO_H PO_H 
            WHERE 
                SUBSTRING(CONVERT(VARCHAR,PO_H.TRN_NO),8,3) =''701'' 
                AND PO_H.TRN_SUB_TYPE IN(17) 
                AND PO_H.SUB_GL_ACNO = '+CONVERT(VARCHAR,@SUPP_SUB_GL_ACNO)+' 
                AND PO_H.STATUS_CODE = 0 
                AND ISNULL(INTER_SO_FLAG,0) = 0 
                AND PO_H.TRN_DATE >=20210401
            '
                    
            SET @STRSQL_POI = @STRSQL_POI +
            '
            SELECT 
                TRN_NO,
                AMEND_NO,
                SR_NO,
                MATERIAL_CODE,
                PO_QTY,
                CASE 
                    WHEN 
                        ISNULL(DISC_RATE,0) = 0 
                    THEN 
                        RATE 
                    ELSE 
                        DISC_RATE 
                END 
                RATE,
                RATE_PER,
                DISC_PER,
                DISC_RATE,
                RATE_PER_KG,
                HSN_CODE 
            FROM 
            '+@DB_NAME+'..TRN_PO_MAT_I 
            WHERE 
                SUBSTRING(CONVERT(VARCHAR,TRN_NO),8,3) =''701'' 
                AND STATUS_CODE = 0 
                AND ISNULL(INTER_SO_FLAG,0) = 0 
                AND TRN_DATE >=20210401
            '
            
            SET @STRSQL_GSTTAX = @STRSQL_GSTTAX +
            '
            SELECT 
                TRN_NO,
                AMEND_NO,
                POST_KEY_CODE,
                CODE GST_TAX_CODE,
                CASE 
                    WHEN 
                        POST_KEY_CODE IN(231,233) 
                    THEN 
                        2 * PERCENTAGE 
                    ELSE 
                        PERCENTAGE 
                END 
                GST_RATE 
            FROM 
                '+@DB_NAME+'..TRN_PO_TAX 
            WHERE 
                SUBSTRING(CONVERT(VARCHAR,TRN_NO),8,3) =''701'' 
                AND POST_KEY_CODE IN(231,233,241,242) 
                AND STATUS_CODE = 0 
                AND ISNULL(INTER_SO_FLAG,0) = 0 
                AND TRN_DATE >=20210401
            '

            SET @STRSQL_TCS = @STRSQL_TCS +
            '
            SELECT 
                TRN_NO,
                AMEND_NO,
                POST_KEY_CODE,
                CODE TCS_CODE 
            FROM 
                '+@DB_NAME+'..TRN_PO_TAX 
            WHERE 
                SUBSTRING(CONVERT(VARCHAR,TRN_NO),8,3) =''701'' 
                AND POST_KEY_CODE IN(281) 
                AND STATUS_CODE = 0 
                AND ISNULL(INTER_SO_FLAG,0) = 0 
                AND TRN_DATE >=20210401
            '

            IF @INT_COUNT <> (SELECT COUNT(*) FROM HARIOM_MASTERS..MST_COMPANY WHERE COMPANY_ID NOT IN(@COMPANY_ID,107,112,113,114,116,201,202,301))
            BEGIN
                SET @STRSQL_POH = @STRSQL_POH +
				'UNION ALL'	

                SET @STRSQL_POI = @STRSQL_POI +
				'UNION ALL'	
                
                SET @STRSQL_GSTTAX = @STRSQL_GSTTAX +
				'UNION ALL'	
                
                SET @STRSQL_TCS = @STRSQL_TCS +
				'UNION ALL'			
            END

            SET @INT_COUNT = @INT_COUNT + 1

            --PRINT @STRSQL
            FETCH NEXT FROM CURR_COMPANY INTO @DB_NAME
        END
    CLOSE CURR_COMPANY          
    DEALLOCATE CURR_COMPANY

    -- SO
    SET @STR_QRY='
    SELECT DISTINCT --TOP 20
        PO_H.TRN_NO,
        PO_H.AMEND_NO AMEND_NO,
        SUBSTRING(CONVERT(VARCHAR,PO_H.TRN_NO),4,4) + ''-'' + RIGHT(PO_H.TRN_NO,6) PO_NO,
        DBO.FUN_GETFORMATTEDDATE(PO_H.TRN_DATE) PO_DATE,
        PO_H.TRN_DATE,	
        PO_H.FORMULA_CODE,
        PO_MAT_I.SR_NO,
        --ISNULL(MAT_JOB_WORK_BOM.REF_MAT_CODE,0) MATERIAL_CODE,
        CASE 
            WHEN 
                ISNULL(MAT_JOB_WORK_BOM.REF_MAT_CODE,0) = 0 
            THEN 
            CASE 
                WHEN 
                    UPPER(LEFT(ORG_MST_MATERIALS.MATERIAL_NAME,3))=''J/W'' 
                THEN 
                    PO_MAT_I.MATERIAL_CODE 
                ELSE 
                    ISNULL(MAT_JOB_WORK_BOM.REF_MAT_CODE,0) 
                END
        ELSE
            ISNULL(MAT_JOB_WORK_BOM.REF_MAT_CODE,0)
        END MATERIAL_CODE,
        PO_MAT_I.MATERIAL_CODE CUST_MATERIAL_CODE,		
        PO_MAT_I.PO_QTY,
        PO_MAT_I.RATE,
        PO_MAT_I.RATE_PER,
        PO_MAT_I.DISC_PER,
        PO_MAT_I.DISC_RATE,
        PO_MAT_I.RATE_PER_KG,
        PO_MAT_I.HSN_CODE,	
        MST_COMPANY.SUB_GL_ACNO,	
        MST_ACCT_SUB_GL.LONG_NAME,
        PO_H.CRT_BY,
        MST_EMPLOYEE.EMPLOYEE_ID,
        MST_EMPLOYEE.EMPLOYEE_FIRST_NAME + '' '' + MST_EMPLOYEE.EMPLOYEE_MIDDLE_NAME + '' '' + MST_EMPLOYEE.EMPLOYEE_LAST_NAME EMP_NAME,
        ISNULL(MST_MAT_WT_HIST.CASTING_WT,0) CASTING_WT,
        ISNULL(MST_MAT_WT_HIST.FINISH_WT,0) FINISH_WT,
        PO_H.PROCESS_CODE,
        ISNULL(TRN_GST.GST_TAX_CODE,0) GST_TAX_CODE,
        TRN_GST.GST_RATE,
        ISNULL(TRN_TCS.TCS_CODE,0) TCS_CODE,
        PO_H.TRNSPORT,PO_H.CARRIER,PO_H.PO_TYPE,
        PO_H.TRANSPORT_TYPE,
        PO_H.IS_TAX_ROUND,PO_H.IS_GST_NOT_APP,
        PO_H.IS_NET_AMT_ROUND,
        ISNULL(PROCESS_MAP.JOB_WORK_PROCESS_CODE,0) JOB_WORK_PROCESS_CODE,
        SO_H.TRN_NO SO_TRN_NO,
        SO_H.TRN_AMEND_NO SO_AMEND_NO,
        CONVERT(REAL,RIGHT(SO_H.TRN_NO,6)) SO_NO,
        DBO.FUN_GETFORMATTEDDATE(SO_H.TRN_DATE) SO_DATE,
        SO_MAT_I.WIP_STAGE_CODE,
        SO_MAT_I.AMORT_RATE,
        SO_MAT_I.CASTING_WEIGHT SO_CASTING_WEIGHT,
        SO_MAT_I.FINISH_WEIGHT SO_FINISH_WEIGHT,
        SO_MAT_I.BORING_WEIGHT SO_BORING_WEIGHT,
        SO_MAT_I.GL_ACNO SO_GL_ACNO,
        SO_MAT_I.SUB_GL_ACNO SO_SUB_GL_ACNO
    FROM('+@STRSQL_POH+')PO_H'

    SET @STR_QRY1=
        '
        LEFT OUTER JOIN('+@STRSQL_GSTTAX+')TRN_GST 
        ON TRN_GST.TRN_NO = PO_H.TRN_NO AND TRN_GST.AMEND_NO = PO_H.AMEND_NO

        LEFT OUTER JOIN('+@STRSQL_TCS+')TRN_TCS 
        ON TRN_TCS.TRN_NO = PO_H.TRN_NO AND TRN_TCS.AMEND_NO = PO_H.AMEND_NO

        INNER JOIN ('+@STRSQL_POI+') AS PO_MAT_I  
        ON PO_MAT_I.TRN_NO = PO_H.TRN_NO 
        AND PO_MAT_I.AMEND_NO = PO_H.AMEND_NO

        LEFT OUTER JOIN(
                        SELECT
                            *
                        FROM
                            '+@ERP_DB_NAME+'..MST_MAT_JOB_WORK_BOM
                        WHERE 
                            STATUS_CODE = 0
        ) AS MAT_JOB_WORK_BOM 
        ON PO_MAT_I.MATERIAL_CODE= MAT_JOB_WORK_BOM.MAT_CODE

        LEFT OUTER JOIN(

                        SELECT
                            MST_MAT_WT_HIST.MATERIAL_CODE,
                            ISNULL(CASTING_WT,0) AS CASTING_WT,
                            ISNULL(FINISH_WT,0) AS FINISH_WT
                        FROM
                            '+@ERP_DB_NAME+'..MST_MAT_WT_HIST
                            INNER JOIN(
                                        SELECT 
                                            MATERIAL_CODE,
                                            MAX(SR_NO) AS SR_NO
                                        FROM 
                                            '+@ERP_DB_NAME+'..MST_MAT_WT_HIST 
                                        WHERE 
                                            STATUS_CODE=0
                                        GROUP BY
                                            MATERIAL_CODE
                            ) AS MAX_MAT_WT_HIST 
                            ON MAX_MAT_WT_HIST.MATERIAL_CODE = MST_MAT_WT_HIST.MATERIAL_CODE
                            AND MAX_MAT_WT_HIST.SR_NO = MST_MAT_WT_HIST.SR_NO

        ) AS MST_MAT_WT_HIST 
        ON MST_MAT_WT_HIST.MATERIAL_CODE = PO_MAT_I.MATERIAL_CODE
        
        LEFT OUTER JOIN '+ @SYS_DBNAME +'..MST_COMPANY 
		ON MST_COMPANY.COMPANY_ID = LEFT(PO_H.TRN_NO,3)

        LEFT OUTER JOIN '+ @SYS_DBNAME +'..MST_EMPLOYEE 
		ON MST_EMPLOYEE.EMPLOYEE_LOGIN_ID = PO_H.CRT_BY

        LEFT OUTER JOIN '+ @SYS_DBNAME +'..MST_ACCT_SUB_GL 
		ON MST_ACCT_SUB_GL.SUB_GL_ACNO = MST_COMPANY.SUB_GL_ACNO

        LEFT OUTER JOIN ' + @SYS_DBNAME  + '.dbo.MST_SUBCON_JOBWORK_PROCESS_MAP PROCESS_MAP 
		ON PO_H.PROCESS_CODE=PROCESS_MAP.SUB_CON_PROCESS_CODE

        LEFT OUTER JOIN '+@ERP_DB_NAME+'..TRN_PO_H SO_H 
		ON SO_H.REF_TRN_NO = PO_H.TRN_NO 
		AND SO_H.REF_TRN_AMEND_NO = (PO_H.AMEND_NO-1)

        LEFT OUTER JOIN '+@ERP_DB_NAME+'..TRN_PO_MAT_I SO_MAT_I 
        ON SO_MAT_I.TRN_NO = SO_H.TRN_NO 
        AND SO_MAT_I.AMEND_NO=SO_H.TRN_AMEND_NO
        AND SO_MAT_I.MATERIAL_CODE = ISNULL(MAT_JOB_WORK_BOM.REF_MAT_CODE,0)

        LEFT OUTER JOIN ' + @SYS_DBNAME  + '.dbo.MST_MATERIALS ORG_MST_MATERIALS 
        ON PO_MAT_I.MATERIAL_CODE=ORG_MST_MATERIALS.MATERIAL_CODE
    ORDER BY 
        PO_H.TRN_DATE DESC,PO_H.TRN_NO DESC
    '
    EXEC(@STR_QRY+@STR_QRY1)
    print @STR_QRY
    PRINT @STR_QRY1

    END

------------------------------------------------------- HARIOM SUPPLIER ORDER -------------------------------------------------------

    ELSE IF @SO_TYPE = 108
    BEGIN

        SET @H_SUB_GL_ACNO = 0

        SET @STR_QRY = '
        SELECT
            @H_SUB_GL_ACNO = ISNULL(SUB_GL_ACNO, 0)
        FROM
            '+QUOTENAME(@SYS_DBNAME)+'..MST_ZGROUP_HARIOM_SUPP
        WHERE
            COMPANY_ID = @P_COMPANY_ID
        '

        EXEC sp_executesql
            @STR_QRY,
            N'@P_COMPANY_ID INT,
            @H_SUB_GL_ACNO INT OUTPUT',
            @P_COMPANY_ID = @COMPANY_ID,
            @H_SUB_GL_ACNO = @H_SUB_GL_ACNO OUTPUT


        ------------------------------------------------------- FETCH HARIOM SUPPLIER ORDER -------------------------------------------------------

        SET @STR_QRY = '

        SELECT
            PO_H.TRN_NO,
            PO_H.TRN_AMEND_NO,
            MAT.MATERIAL_CODE AS ORIGINAL_MATERIAL_CODE,
            MAT_I.PO_QTY,
            MAT_I.RATE,

            -- UOM FROM BUSINESS
            MAPPING.MATERIAL_CODE AS MAPPED_MATERIAL_CODE

        FROM
            VW_TRN_PO_H AS PO_H

            INNER JOIN VW_TRN_PO_MAT_I AS MAT_I
            ON PO_H.TRN_NO = MAT_I.TRN_NO
            AND PO_H.TRN_AMEND_NO = MAT_I.AMEND_NO

            LEFT OUTER JOIN MST_MATERIAL_MAPPING AS MAPPING
            ON MAPPING.REF_MATERIAL_CODE = MAT_I.MATERIAL_CODE

            LEFT OUTER JOIN MST_MATERIAL AS MAT
            ON MAT.MATERIAL_CODE = MAPPING.MATERIAL_CODE

            LEFT OUTER JOIN MST_COMAPNY_SUBGL AS COMP_GL
            ON COMP_GL.COMPANY_ID = LEFT(PO_H.TRN_NO,3)

            LEFT OUTER JOIN MST_ACCT_SUB_GL AS ACC_GL
            ON ACC_GL.SUB_GL_ACNO = COMP_GL.SUB_GL_ACNO

        WHERE
            SUBSTRING(CONVERT(VARCHAR(20),PO_H.TRN_NO),8,3) = ''701''
            AND PO_H.TRN_SUB_TYPE IN (10)
            AND PO_H.SUB_GL_ACNO = @P_H_SUB_GL_ACNO

        '

        EXEC sp_executesql
            @STR_QRY,
            N'@P_H_SUB_GL_ACNO INT',
            @P_H_SUB_GL_ACNO = @H_SUB_GL_ACNO

        PRINT @H_SUB_GL_ACNO
        PRINT @STR_QRY

    END    



END






GO


