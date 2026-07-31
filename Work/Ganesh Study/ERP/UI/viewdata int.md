### in controller
```csharp
int BranchCode = intBranchCode;
int MaterialCode = intMaterialCode;

ViewData["BranchCode"] = BranchCode;
ViewData["MaterialCode"] = MaterialCode;
```  
### in UI
```csharp
int? BranchCode = ViewData["BranchCode"] as Nullable<int>;
int? MaterialCode = ViewData["MaterialCode"] as Nullable<int>;
```  