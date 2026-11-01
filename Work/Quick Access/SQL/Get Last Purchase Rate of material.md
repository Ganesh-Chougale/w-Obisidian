## 1. Single Material
```sql
declare @MatCode Int = 0; -- place your Material Code here
SELECT 
	DISTINCT TOP 1 

	MST_MAT.MATERIAL_CODE,
    MST_MAT.MATERIAL_NAME,
	CASE 
		WHEN  
			TRN_MAT_I_PURCHASE.RATE_PER <> 0 
		THEN 
			ISNULL(CONVERT(DECIMAL(20,2),TRN_MAT_I_PURCHASE.RATE /  TRN_MAT_I_PURCHASE.RATE_PER), MST_MAT.RATE) 
		ELSE MST_MAT.RATE
	END AS RATE   

FROM 
	ERP_MASTERS.DBO.MST_MATERIALS AS MST_MAT 
    LEFT OUTER JOIN ( 
                    SELECT 
                        TMIP.MATERIAL_CODE ,
                        TMIP.TRN_DATE,
                        MAX(TRN_NO) AS TRN_NO 
                    FROM   
                        TRN_MAT_I_PURCHASE AS TMIP
                    INNER JOIN (
                                SELECT 
                                    TRN_MAT_I_PURCHASE.MATERIAL_CODE ,
                                    MAX(TRN_DATE)  TRN_DATE
                                FROM 
                                    TRN_MAT_I_PURCHASE  TRN_MAT_I_PURCHASE  
                                WHERE 
                                    STATUS_CODE = 0  
                                    AND SUBSTRING(CONVERT(VARCHAR,TRN_MAT_I_PURCHASE.TRN_NO),8,3) = 206 
                                    AND TRN_MAT_I_PURCHASE.MATERIAL_CODE= @MatCode   
                                GROUP BY 
                                    TRN_MAT_I_PURCHASE.MATERIAL_CODE  
                    ) TMP 
                    ON  TMIP.MATERIAL_CODE = TMP.MATERIAL_CODE 
                    AND TMP.TRN_DATE = TMIP.TRN_DATE 

                    WHERE 
                        STATUS_CODE = 0  
                    GROUP BY 
                        TMIP.MATERIAL_CODE,
                        TMIP.TRN_DATE 
    ) TMPRATE   
    ON  MST_MAT.MATERIAL_CODE = TMPRATE.MATERIAL_CODE  

    LEFT OUTER JOIN TRN_MAT_I_PURCHASE TRN_MAT_I_PURCHASE  
    ON  TRN_MAT_I_PURCHASE.MATERIAL_CODE= TMPRATE.MATERIAL_CODE 
    AND TMPRATE.TRN_NO = TRN_MAT_I_PURCHASE.TRN_NO                     
    AND TMPRATE.TRN_DATE = TRN_MAT_I_PURCHASE.TRN_DATE  
WHERE 
	MST_MAT.MATERIAL_CODE =  @MatCode
```   
## 2. from List of material
- first gather all material code
```sql
SELECT
	DISTINCT MATERIAL_CODE
FROM 
	ERP_MASTERS..MST_MATERIALS
-- add you where clauses here
```   
- then
```sql
DECLARE @MatCodeList TABLE (MaterialCode INT);

INSERT INTO @MatCodeList (MaterialCode)
VALUES (1), (2), (3), (4); -- place your Material Code here

SELECT 
    DISTINCT 
    MST_MAT.MATERIAL_CODE,
    MST_MAT.MATERIAL_NAME,
    CASE 
        WHEN TRN_MAT_I_PURCHASE.RATE_PER <> 0 
        THEN ISNULL(CONVERT(DECIMAL(20,2), TRN_MAT_I_PURCHASE.RATE / TRN_MAT_I_PURCHASE.RATE_PER), MST_MAT.RATE) 
        ELSE MST_MAT.RATE
    END AS RATE   
FROM 
    ERP_MASTERS.DBO.MST_MATERIALS AS MST_MAT 
    LEFT OUTER JOIN ( 
        SELECT 
            TMIP.MATERIAL_CODE,
            TMIP.TRN_DATE,
            MAX(TRN_NO) AS TRN_NO 
        FROM   
            TRN_MAT_I_PURCHASE AS TMIP
        INNER JOIN (
            SELECT 
                TRN_MAT_I_PURCHASE.MATERIAL_CODE,
                MAX(TRN_DATE) AS TRN_DATE
            FROM 
                TRN_MAT_I_PURCHASE  
            WHERE 
                STATUS_CODE = 0  
                AND SUBSTRING(CONVERT(VARCHAR, TRN_MAT_I_PURCHASE.TRN_NO), 8, 3) = '206' 
                AND TRN_MAT_I_PURCHASE.MATERIAL_CODE IN (SELECT MaterialCode FROM @MatCodeList)   
            GROUP BY 
                TRN_MAT_I_PURCHASE.MATERIAL_CODE  
        ) TMP 
        ON  TMIP.MATERIAL_CODE = TMP.MATERIAL_CODE 
        AND TMP.TRN_DATE = TMIP.TRN_DATE 
        WHERE 
            STATUS_CODE = 0  
        GROUP BY 
            TMIP.MATERIAL_CODE,
            TMIP.TRN_DATE 
    ) TMPRATE   
    ON  MST_MAT.MATERIAL_CODE = TMPRATE.MATERIAL_CODE  

    LEFT OUTER JOIN TRN_MAT_I_PURCHASE TRN_MAT_I_PURCHASE  
    ON  TRN_MAT_I_PURCHASE.MATERIAL_CODE = TMPRATE.MATERIAL_CODE 
    AND TMPRATE.TRN_NO = TRN_MAT_I_PURCHASE.TRN_NO                     
    AND TMPRATE.TRN_DATE = TRN_MAT_I_PURCHASE.TRN_DATE  
WHERE 
    MST_MAT.MATERIAL_CODE IN (SELECT MaterialCode FROM @MatCodeList);
```   