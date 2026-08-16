# CloseAmend
- close Amend no

```csharp
public int CloseAmend(int intMatCode, int intBranchCode, int intDeptCode)
{
    try
    {
        int i = 0;
        using (ConManager con = new ConManager())
        {
            string query = "UPDATE MST_BRANCH_DEPT_MIN_MAX SET STATUS_CODE=11 where MATERIAL_CODE = " + intMatCode + " AND BRANCH_CODE = " + intBranchCode + " AND DEPT_CODE = " + intDeptCode + " AND STATUS_CODE = 0";
            i = con.transactionDb.Execute(query);
        }
        return i;
    }
    catch (Exception ex)
    {
        throw ex;
    }
}
```  
multiple queries
```csharp
public int CloseAmend(Int64 TrnNo, int AmendNo)
{
    try
    {
        string query = "";
        string query1 = "";

        int i = 0;
        using (ConManager con = new ConManager())
        {
            query = "UPDATE H_Table_Name SET STATUS_CODE=11 where TRN_NO = " + TrnNo + " AND AMEND_NO = " + AmendNo;
            i = con.transactionDb.Execute(query);

            query1 = "UPDATE I_Table_Name SET STATUS_CODE=11 where TRN_NO = " + TrnNo + " AND AMEND_NO = " + AmendNo;
            i = con.transactionDb.Execute(query1);
        }
        return i;
    }
    catch (Exception ex)
    {
        throw ex;
    }
}
```  