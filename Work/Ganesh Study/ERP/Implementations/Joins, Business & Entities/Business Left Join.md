### Left Join (single variable)
```cs
_objPatternDetails = (from objPatt in _objPatternDetails

                        join objMat in lstItmStock 
                        on objPatt.RefMaterialCode equals objMat.MaterialCode 
                        into <joined_name> from anyVariableName in <joined_name>.DefaultIfEmpty() // Left join

                        select new PatternDetails
                        {
                            MaterialCode = objPatt.MaterialCode,
                            PatternName = objPatt.PatternName,
                            RefMaterialCode = objPatt.RefMaterialCode,
                            MaterialName = objPatt.MaterialName,
                            Qty = objPatt.Qty,
                            StockQty = anyVariableName?.Quantity ?? 0
                        }).ToList();
```   
joined_name & anyVariableName are new variable, we can decide the names case wise
### Left Join (Multiple variable)

```csharp
join reObj in dtoReList
on new { dtoObj.BOM_MATERIAL_CODE, dtoObj.CUSTOMER_CODE }
equals new { reObj.BOM_MATERIAL_CODE, reObj.CUSTOMER_CODE }
into joinedGroup from subReObj in joinedGroup.DefaultIfEmpty() // left join

select new PackingDetailsOutSource()
{
    PlanQty = subReObj?.SUM_OF_PLAN_QTY ?? 0
}
```  