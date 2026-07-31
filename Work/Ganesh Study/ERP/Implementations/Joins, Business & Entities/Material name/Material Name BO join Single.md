### Before:
```cs
public static async Task<PirFinalInspection> GetExisting(Int64 trnNo)
{
    try
    {
        _dalPirFinalInspectionH = new DALTrnPirFinalInspectionH();
        var obj = _dalPirFinalInspectionH.GetExisting(trnNo);


        PirFinalInspection bObj = new PirFinalInspection()
        {
            TrnNo = obj.TRN_NO,
            ,
            ,
            ,
            PirFinalInspectionIs = await PirFinalInspectionI.GetTrnNoWiseData(trnNo)
        };
        return bObj;
    }
    catch (Exception ex) { throw ex; }
}
```

### After:
1. increase `MaterialName` property at the declaration are.  
2. Grab the material name from `MaterialsEntity` => `MaterialsService` => `GetExistingAsync(obj.MATERIAL_CODE)`
3. Inject `MaterialName = mat.MaterialName` in value assign area.         
```csharp
// MaterialsEntity
using ZanvarGroup.Erp.Business.Entities.Masters;
// MaterialsService
using ZanvarGroup.Erp.Business.Services.Masters;
```                               
```cs
public string MaterialName { get; set; }    // 1

public static async Task<PirFinalInspection> GetExisting(Int64 trnNo)
{
    try
    {
        _dalPirFinalInspectionH = new DALTrnPirFinalInspectionH();
        var obj = _dalPirFinalInspectionH.GetExisting(trnNo);       // 2

        MaterialsEntity mat = await MaterialsService.GetExistingAsync(obj.MATERIAL_CODE);

        PirFinalInspection bObj = new PirFinalInspection()
        {
           TrnNo = obj.TRN_NO,
            ,
            ,
            ,
            PirFinalInspectionIs = await PirFinalInspectionI.GetTrnNoWiseData(trnNo),
            MaterialName = mat.MaterialName     // 3
        };
        return bObj;
    }
    catch (Exception ex) { throw ex; }
}
```  