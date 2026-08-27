```csharp
using ZanvarGroup.Erp.Business.Masters;
```  
# 1. Single Object
```csharp
StockGroup stkgrpObj = await StockGroup.GetExisting(matObj.StockListGroup);
```  

# 2. List
```csharp
List<StockGroup> stkgrpList = await StockGroup.GetAllAsync();
```  