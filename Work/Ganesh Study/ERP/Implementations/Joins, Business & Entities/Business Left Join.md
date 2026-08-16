### Normal Join
```sql
join rpObj in ReportPersonList on obj.PARENT_CODE equals rpObj.ParentCode
```  
### Left Join
```sql
join rpObj in ReportPersonList on obj.PARENT_CODE equals rpObj.ParentCode
into item from rpObj in item.DefaultIfEmpty()
```   
