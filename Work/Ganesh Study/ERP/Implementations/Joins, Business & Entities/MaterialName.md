# 1. Single Object
```csharp
MaterialsEntity mat = await MaterialsService.GetExistingAsync(obj.MATERIAL_CODE);
```  
# 2. List  
1. increase `MaterialName` property at the declaration are.  
2. Grab the material name from `MaterialsEntity` => `MaterialsService` => `GetExistingAsync(obj.MATERIAL_CODE)`
3. Inject `MaterialName = mat.MaterialName` in value assign area.     
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

                List<MaterialsEntity> matList = await MaterialsService.GetMaterialFillList(dtoList.Select(x=> x.MATERIAL_CODE).ToList());


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