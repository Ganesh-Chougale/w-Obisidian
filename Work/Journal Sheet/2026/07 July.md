## Date: `09-07-2026 (Thursday | गुरुवार)` to `01-08-2026 (Saturday | शनिवार)`
![alt](./Z_imagges/07/01.png)
### Work
```yml
Description : Branch and Dept wise min max
Flow        : Material-Management => Configuration => New Menu
WFC         : 11
Ticket      : 2627-000095
```  
### Database
```yml
Tables     : MST_BRANCH_DEPT_MIN_MAX
SPs        :
            - SP_MST_BRANCH_DEPT_MIN_MAX_STOCK_LIST_GROUP_WISE_DATA
            - SP_MST_BRANCH_DEPT_MIN_MAX_ITEM_WISE_DATA
```  
### Programming
```yml
D to D      : DtoMstBranchDeptMinMax, IMstBranchDeptMinMax, DalMstBranchDeptMinMax
BO          : BranchDeptMinMax
Controller  : BranchDeptMinMaxController
View        : Index, Create, CreateMdn, Approve, OrderList, CreatePoAgIdent
```  
### Git
```yml
Push Date   : 02-08-2026
```  

## After work
### Database:
```yml
- ERP_MASTERS..MST_STOCK_GROUP : IS_SCHEDULE_BASE = int 
```  
1. new date dropdown.
2. new column in both dashboards.

----------------------------------------------------------------------------------------------------        