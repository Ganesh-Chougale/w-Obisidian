```
- New MenuDocNo
- New Menu Doc No
```
## `MenuDocNo` :
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

so before implementing it, ask you senior the proper tran type & sub type.  