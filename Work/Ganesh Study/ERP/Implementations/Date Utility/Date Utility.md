File search string
```
- dateutility
- date conversion
- date formatt conversion
```   
## Source: DateUtility.cs
```csharp
using ZanvarGroup.Erp.Business.Base;
```  
### Mostly used
- `yyyyMMdd` To `dd/MM/yyyy`
```csharp
DateUtility.getFormatedDate(obj.GRN_DATE, 0)
```  
- `dd/MM/yyyy` To `yyyyMMdd`
```csharp
DateUtility.getFormatedDate(obj.GRN_DATE, 1)
```  
