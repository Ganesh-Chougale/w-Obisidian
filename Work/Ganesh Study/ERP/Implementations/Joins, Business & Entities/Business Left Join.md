### Left Join
```sql
_objPatternDetails = (from objPatt in _objPatternDetails
                        join objMat in lstItmStock on objPatt.RefMaterialCode equals objMat.MaterialCode into mstmat
                        from objMat in mstmat.DefaultIfEmpty()
                        select new PatternDetails
                        {
                            MaterialCode = objPatt.MaterialCode,
                            PatternName = objPatt.PatternName,
                            RefMaterialCode = objPatt.RefMaterialCode,
                            MaterialName = objPatt.MaterialName,
                            Qty = objPatt.Qty,
                            StockQty = objMat?.Quantity ?? 0
                        }).ToList();
```   
