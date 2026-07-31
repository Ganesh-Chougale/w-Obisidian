```csharp
// ...
using ZanvarGroup.Erp.Business.Entities.Masters;
using ZanvarGroup.Erp.Business.Services.Masters;


namespace //....................................
{
    public class 
    {
        public static YourInterfaceName interfaceObj;

        public static int MenuId = <>;

        public int MaterialCode { get; set; }
        public string MaterialName { get; set; }


        public static async Task <List<BusinessName>> GetDistinctMaterialList()
        {
            try
            {
                interfaceObj = new DALName();
                List<DTOName> dtoList = interfaceObj.GetDistinctMaterialList();

                List<MaterialsEntity> matList = await MaterialsService.GetMaterialFillList(dtoList.Select(x=> x.MATERIAL_CODE).toList());


                List<BusinessName> lst = (
                                            from x in dtoList
                                            
                                            join mat in matList
                                            on x.MATERIAL_CODE equals mat.MaterialCode

                                            select new BusinessName()
                                            {
                                                MaterialCode = x.MATERIAL_CODE,
                                                MaterialName = mat.MaterialName
                                            }
                                         ).ToList();

                return lst;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

    }
}
```  