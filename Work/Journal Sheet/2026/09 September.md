#### Date: `04-09-2026 (Friday | शुक्रवार)` to `17-09-2026 (Thursday | गुरुवार)`
### Work
```yml
Description : 
Menu Path   : Production => Foundry Production => Child Part Consumption (NEW MENU)
Menus       : Child Part Consumption
WFC         : 18
Ticket      : 
```  
### Database
```yml
Tables     : TRN_CHILD_PART_CONSUMPTION_H,
             TRN_CHILD_PART_CONSUMPTION_I
SPs        : SP_CHILD_PART_CONSUMPTION_SUMMARY,
             SP_CHILD_PART_CONSUMPTION_TRANSACTION
```  
##### New column in old tables 
```yml

```
### Programming
```yml
D to D      : DTOTrnChildPartConsumptionH,  DTOTrnChildPartConsumptionI,
              ITrnChildPartConsumptionH,    ITrnChildPartConsumptionI,
              DALTrnChildPartConsumptionH,  DALTrnChildPartConsumptionI
BO          : ChildPartConsumption,
              ChildPartConsumptionI
Controller  : ChildPartConsumptionController
View        : Index, 
              GoCreate,
              Create,
              Delete,
              Details
```  
### Git
```yml
Push Date   : 
```  
----------------------------------------------------------------------------------------------------    

#### Date: `18-09-2026 (Friday | शुक्रवार)` to
![alt](./Z_imagges/09/01%20Target%20Price%20Create%20page.png)
### Work
```yml
Description : New Menu [Red Theme]
Menu Path   : Marketing => Transaction => New Menu
Menus       : Target Price [720102]
WFC         : 
Ticket      : 
```  
### Database
```yml
Tables     : TRN_PART_PRICE_H,
             TRN_PART_PRICE_I
SPs        : 
```  
##### New column in old tables 
```yml

```
### Programming
```yml
D to D      : DTOTrnPartPriceH, DTOTrnPartPriceI,
              ITrnPartPriceH,   ITrnPartPriceI,
              DALTrnPartPriceH, DALTrnPartPriceI

BO          : 
Controller  : 
View        : 
```  
### Git
```yml
Push Date   : 
```  
----------------------------------------------------------------------------------------------------    