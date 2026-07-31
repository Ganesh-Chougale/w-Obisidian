```csharp
public static async Task<List<MaterialMdnStatus>> GetMaterialMdnData(int companyId, int dbType, int materialCode)
{
    try
    {
        interfaceObj = new DALMaterialMdnStatus();
        List<MaterialMdnStatus> lst = new List<MaterialMdnStatus>();

        List<DTOMaterialMdnStatus> dtoList = await Task.Run(() => { return interfaceObj.GetTypeWiseMatMdnData(companyId, dbType, materialCode); });

        List<AccountSubGlEntity> lstSuppliers = await AccountSubGlService.GetSubGlFillList(dtoList.Select(p => p.SUB_GL_ACNO).Distinct().ToList());

        if (dtoList != null)
        {
            lst = (
                        from obj in dtoList

                        join supObj in lstSuppliers 
                        on obj.SUB_GL_ACNO equals supObj.SubGlAcNo
                        
                        select new MaterialMdnStatus
                        {
                            SupplierName = supObj.LongName
                        }).ToList();
        }
        return lst;
    }
    catch (Exception ex)
    {
        throw ex;
    }
}
```  