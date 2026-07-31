### within Controller  
- Method must has (string searchString) as parameters
```csharp
        public async Task<ActionResult> Index(string sortOrder, string sortDir, string searchString, int? page, string FromDate, string ToDate)
        {
            // within this we need following method
        }
```  
```csharp

// skip this if done already
SupplierCastingWtChange objBo = new SupplierCastingWtChange();
List<SupplierCastingWtChange> lst = await objBo.GetBetweenDate(strStartDate, strTodate);
//

if (!string.IsNullOrEmpty(searchString))
{
    ViewBag.CurrentFilter = searchString;
    lst = lst.Where(obj =>
                    (obj.TrnDate != null && obj.TrnDate.ToUpper().Contains(searchString.ToUpper())) ||
                    (obj.ShortTrnNo.ToString().Contains(searchString)) ||
                    (obj.SupplierName.ToString().Contains(searchString)) ||
                    (obj.CastingWt.ToString().Contains(searchString)) ||
                    (obj.MaterialName != null && obj.MaterialName.ToUpper().Contains(searchString.ToUpper()))
                    ).ToList();
}
```  