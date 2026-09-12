Reference files:
- DTO: `DTOTrnPackingDetailsH`
- Interface: `ITrnPackingDetailsH`
- DAL: `DALTrnPackingDetailsH`
- Business: `PackingDetails`
- Controller: `PackingDetailsController`  

1. - DTO: `DTOTrnPackingDetailsH`
```csharp
public int AMEND_NO { get; set; }
```  
- Interface: `ITrnPackingDetailsH`
```csharp
int GetNextAmend(long longTrnNo);
int CloseAmend(long longTrnNo, int intAmendNo);
```  
- DAL: `DALTrnPackingDetailsH`
```csharp
public int GetNextAmend(long longTrnNo)
{
    try
    {
        int intAmedNo = 0;
        string query = @"
                        SELECT
                            MAX(AMEND_NO) + 1 AS AMEND_NO 
                        FROM
                            TRN_PACKING_DETAILS_H 
                        WHERE 
                                TRN_NO = @TrnNo
                        ";
        using (ConManager con = new ConManager())
        {
            intAmedNo = (int)con.transactionDb.ExecuteScalar(
                            query,
                            new
                            {
                                TrnNo = longTrnNo
                            });
        }
        return intAmedNo;
    }
    catch (Exception ex)
    {
        throw ex;
    }
}

public int CloseAmend(long longTrnNo, int intAmendNo)
{
    try
    {
        int i = 0;
        using (ConManager con = new ConManager())
        {
            string query = "UPDATE TRN_PACKING_DETAILS_H SET STATUS_CODE=11 where TRN_NO = " + longTrnNo + "AND AMEND_NO = " + intAmendNo + " AND STATUS_CODE = 0";
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
- Business: `PackingDetailsAmend`
```csharp
public static ITrnPackingDetailsH _dalPdH;
        public int AmendNo { get; set; }
        public int CloseAmendNo { get; set; }


// 1. in insert method
                    if (flag == 1)
                    {
                        _dalPdH.CloseAmend(bObj.TrnNo, bObj.CloseAmendNo);
                        _dalPdI.CloseAmend(bObj.TrnNo, bObj.CloseAmendNo);
                        _dalPdIBom.CloseAmend(bObj.TrnNo, bObj.CloseAmendNo);
                        _dalPdH.Create(dtoObj_H);
                    }


// 2. Create Amend
        public static async Task<long> CreateAmend(PackingDetailsAmend bObj)
        {
            try
            {
                MstMenu _objMstMenu = MstMenu.getMenuById(MenuId);
                DTOCnfTranTypes _dtoCnfTranTypes = _dalCnfTranTypes.GetExisting(TranType, TranSubType);
                ITrnPackingDetailsH _dalPdH = new DALTrnPackingDetailsH();
                int intStatusCode = 0;

                if (Convert.ToBoolean(_objMstMenu.ApprovalReq) == true)
                {
                    intStatusCode = 101;
                }

                bObj.DocType = _objMstMenu.VouType;
                bObj.TrnSubType = TranSubType;
                bObj.StatusCode = intStatusCode;
                // Amend Handling
                bObj.CloseAmendNo = bObj.AmendNo;
                bObj.AmendNo = _dalPdH.GetNextAmend(bObj.TrnNo);

                long result = 0;
                result = await Task.Run(() => { return insert(bObj, 1); });
                return result;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

```  
- Controller: `PackingDetailsController`  