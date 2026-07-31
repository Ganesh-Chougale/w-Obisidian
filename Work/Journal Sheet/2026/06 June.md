## Date: `11-06-2026 (Thursday | गुरुवार)` to `21-06-2026 (Sunday | रविवार)`  
### Work
```yml
Description : Core production Tabs
Flow        : Production => Core Production => Core Production => Ag Plan [Button]
WFC         : 12
Ticket      : 
```  
### Database
##### Tables
```yml
Table               : TRN_PRD_CORE_OUT_SOURCE
Stored Procedure    : SP_GET_CORE_OUT_SOURCE_PURCHASE_SCHEDULE
                      SP_GET_CORE_OS_BOOKED_PURCHASE_SCHEDULE
```
### Programming
```yml
D to D      : DTOTrnPrdCoreOutSource, ITrnPrdCoreOutSource, DALTrnPrdCoreOutSource
BO          : CoreProductionPlanDetails, PrdCoreOutSource
Controller  : CoreProductionController
View        : OrderListByCoreBox, CreateAgPo, CreateAgSch
```  
### Git
```yml
Commit      : Core production merge solved
Push Date   : 21-06-2026
```  
----------------------------------------------------------------------------------------------------  

## Date: `21-06-2026 (Sunday | रविवार)` to `24-06-2026 (Wednesday | बुधवार)`  
### Work
```yml
Description : Leave Reason Dropdown implementation
Flow        : HRM => Leave Management => Leave Form + Leave Form Direct
WFC         : 12
Ticket      : 2627-000085
```  
### Programming
```yml
D to D      : DALTrnAttendanceI
BO          : HrmLeaveForm
Controller  : LeaveFormController, LeaveFormDirectController
View        : (Create, Edit, Dlete, Detailts) x 2, Approve 
```  
### Git
```yml
Commit      : Leave Reason Dropdown implementation
Push Date   : 
```  
----------------------------------------------------------------------------------------------------    

## Date: `25-06-2026 (Thursday | गुरुवार)` to `07-07-2026 (Tuesday | मंगलवार)` 
### Work
```yml
Description : Tool Stock Converion Module
Flow        : Material Management => Other => Tool Stock Conversion (New Menu)
WFC         : 15
Ticket      : 2627-000087
```  
### Database
##### Tables
```yml
1. TRN_TOOL_STOCK_CONVERSION_H
2. TRN_TOOL_STOCK_CONVERSION_I
```  
### Programming
```yml
D to D      : DtoTrnToolStockConversionH, DtoTrnToolStockConversionI, ITrnToolStockConversionH, ITrnToolStockConversionI, DalTrnToolStockConversionH, DalTrnToolStockConversionI
BO          : ToolStockConversion, ToolStockConversionI
Controller  : ToolStockConversionController
View        : Index, GoCreate, Create, Edit, Delete, Details
```  
### Git
```yml
Push Date   : 07-07-2025
```  
----------------------------------------------------------------------------------------------------    