### Normal Join
```sql
from dtoObj in dtoList
join objSupplier in LstSupplierAccount
on dtoObj.SELLER_COMPANY_CODE equals objSupplier.SubGlAcNo
```  
### Left Join
```sql
from dtoObj in dtoList
join objSupplier in LstSupplierAccount
on dtoObj.SELLER_COMPANY_CODE equals objSupplier.SubGlAcNo
into item from objSupplier in item.DefaultIfEmpty()
```   
