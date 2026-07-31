# GetNextAmend
```sql
SELECT
    MAX(AMEND_NO) + 1 AS AMEND_NO 
FROM
    Table_name 
WHERE 
    ....condition
```   
example  
```csharp
        public int GetNextAmend(int intMatCode, int intBranchCode, int intDeptCode)
        {
            try
            {
                int intAmedNo = 0;
                string query = @"
                                SELECT
	                                MAX(AMEND_NO) + 1 AS AMEND_NO 
                                FROM
	                                MST_BRANCH_DEPT_MIN_MAX 
                                WHERE 
	                                MATERIAL_CODE = @MATERIAL_CODE
	                                AND BRANCH_CODE = @BRANCH_CODE
	                                AND DEPT_CODE = @DEPT_CODE
                                ";
                using (ConManager con = new ConManager())
                {
                    intAmedNo = (int)con.transactionDb.ExecuteScalar(
                                    query,
                                    new
                                    {
                                        MATERIAL_CODE = intMatCode,
                                        BRANCH_CODE = intBranchCode,
                                        DEPT_CODE = intDeptCode
                                    });
                }
                return intAmedNo;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
```  