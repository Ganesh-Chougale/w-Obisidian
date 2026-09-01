## Date: `08-08-2026 (Saturday | शनिवार)` to `09-08-2026 (Sunday | रविवार)`  
### Work
```yml
Description : Finance Advance Notificaion
Flow        : Finance => Other => Finance Advance Notificaion => New
WFC         : 
Ticket      : 
```  
### Database
```yml
Tables     : TRN_FIN_ADVANCE_NOTIFICATION
SPs        : 
```  
##### New column in old tables 
```yml

```
### Programming
```yml
D to D      : 
BO          : 
Controller  : 
View        : 
```  
### Git
```yml
Push Date   : 
```  
----------------------------------------------------------------------------------------------------    

## Date: `11-08-2026 (Tuesday | मंगलवार)` to `27-08-2026 (Thursday | गुरुवार)`  
### Work
```yml
Description : Production Plan Menu
Flow        : Production => Production Plan => New Menu (Packing Details)
Menus       : Packing Details, Packing Details Amend
WFC         : 28
Ticket      : 
```  
### Database
```yml
Tables     : TRN_PACKING_DETAILS_H, TRN_PACKING_DETAILS_I, TRN_PACKING_DETAILS_I_BOM
```  
### Programming
```yml
D to D      : DTOTrnPackingDetailsH, ITrnPackingDetailsH, DALTrnPackingDetailsH, DTOTrnPackingDetailsI, ITrnPackingDetailsI, DALTrnPackingDetailsI, DTOTrnPackingDetailsIBom, ITrnPackingDetailsIBom, DALTrnPackingDetailsIBom 
BO          : PackingDetails, PackingDetailsI, PackingDetailsIBom
Controller  : PackingDetailsController
View        : (Index, GoCreate, Create, Edit, Delete, Details) x 2
```  
### Git
```yml
Push Date   : 28-08-2026
```  

After Work
```yml
WFC         : 
``` 
### Database
```yml
Tables     : TRN_PACKING_DETAILS_I_BOM_SUP
```  
##### New column in old tables 
```yml
TRN_PACKING_DETAILS_I_BOM: BOM_TYPE int
```
### Programming
```yml
D to D      : DTOTrnPackingDetailsIBomSup, ITrnPackingDetailsIBomSup, DALTrnPackingDetailsIBomSup
BO          : PackingDetailsIBomSup
Controller  : 
View        : 
```  
### Git
```yml
Push Date   : 
```  
----------------------------------------------------------------------------------------------------    