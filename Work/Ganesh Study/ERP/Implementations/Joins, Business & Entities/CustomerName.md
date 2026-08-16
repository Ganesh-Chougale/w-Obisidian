# 2. List  
```csharp
private static async Task<List<PackingDetails>> fillList(List<DTOTrnPackingDetailsH> dtoList)
{
    try
    {
        List<PackingDetails> boList = new List<PackingDetails>();

        List <CustomerAccountEntity> LstCustomer = await CustomerAccountService.GetCustomerListAsync();

        if (dtoList != null)
        {
            boList = (from dtoObj in dtoList

                        join objCustomer in LstCustomer
                        on dtoObj.CUSTOMER_CODE equals objCustomer.SubGlAcNo

                        select new PackingDetails()
                        {
                            CustomerCode = dtoObj.CUSTOMER_CODE,
                            CustomerName = objCustomer.LongName,
                        }).ToList();
        }
        return boList;
    }
    catch (Exception ex)
    {
        throw ex;
    }
}
```  