```
- new Menu_Id
- generate new menu_id
- generate new MenuId
```
# A. Check last menu id  
- Check the controller of neighbor menu
- open any view from that controller
- know the location of that view & within parent folder collection find the "Shared" folder 
- Shared => _Aside.cshtml
- find neighbouring menu name
- clone the LI do the necessary changes & for last note the MENU ID of it
# B. Checking process  
## DB: `ERP Master`  
1. Find the Gaps
```sql
DECLARE @MENU_ID INT = <MENU_ID>;

select 
        MENU_ID,
        PARENT_MENU_ID,
        MODULE_ID,
        * 
FROM
        ERP_MASTERS..MST_MENU
        WHERE MENU_ID >= @MENU_ID
```   

check this list, find the last MENU_ID or any gap between MENU_IDs. use the Last+1 or Gap+1 number.  e.g (if 100 then 100+1=101)  
verify that id is not being used to any other thing.  

2. In SQL UI go to:
```
ERP_MASTERS  
            => Tables  
                    => `dbo.MST_MENU`  
                                    => Right click  
                                                => Edit top 200 Rows   
```
- press on upper left `SQL` button.  
it will open query just append that query with `WHERE MENU_ID = <MENU_ID>` then check `WHERE MENU_ID = <MENU_ID+1>`. it +1 donot have any number then. go back to `WHERE MENU_ID = <MENU_ID>`.  
- copy the entire row & paste it between that row & NULL row.
- edit menu_Id with +1, give short name & then full name to it.
- to save click on NULL row, it will be saved  
- then for confirmation use the where clause with new created MENU_ID  
use this to check both
```sql
WHERE        (MENU_ID IN (<MENU_ID>, <MENU_ID+1>))
ORDER BY MENU_ID
```   
## `MenuDocNo` NOTE:
```cs
public static int TranType = 130;
public static int TranSubType = 12;
public static int MenuDocNo = 13012;
public static int MenuId = 13017;
```
while giving `MenuDocNo` next to MenuId you must know TranType & TranSubType. because MenuDocNo is concatanation of TranType & TranSubType.  
`MenuDocNo` = `TranType` + `TranSubType`  
`MenuDocNo` = "`130`" + "`12`"  
`MenuDocNo` = "`13012`"  
