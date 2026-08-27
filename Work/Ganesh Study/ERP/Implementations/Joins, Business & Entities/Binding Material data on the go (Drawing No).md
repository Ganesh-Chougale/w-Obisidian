```csharp
List<PackingDetails> lstMaterialData = Newtonsoft.Json.JsonConvert.DeserializeObject<List<PackingDetails>>(MaterialData);
var materialCodes = lstMaterialData.Select(x => x.MaterialCode).ToList();
List<MaterialsEntity> matList = await MaterialsService.GetMaterialFillList(materialCodes);

foreach (var item in lstMaterialData)
{
    var match = matList.FirstOrDefault(x => x.MaterialCode == item.MaterialCode);
    if (match != null)
    {
        item.DrawingNo = match.DrawingNo;
    }
}
```  