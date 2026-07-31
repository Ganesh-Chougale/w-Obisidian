```
- New TranSeries
- New Tran Series
```  

after knowing MenuId  
`MenuDocNo` = `TranType` + `TranSubType`  

we can use same field for Cnf tran type
table used: `CNF_TRAN_TYPES`  
```sql
ERP_MASTERS  
            => Tables  
                    => `dbo.CNF_TRAN_TYPES`  
                                    => Right click  
                                                => Edit top 200 Rows   
```   
- press on upper left `SQL` button.  
& concate the query with this
```sql
WHERE        (TRAN_TYPE = your_tran_type)
```   
- copy the last entire row & paste it between that row & NULL row.
give your
1. TRAN_TYPE
2. TRAN_SUB_TYPE
3. TRAN_SERIES
- to save click on NULL row, it will be saved  
- then for confirmation use the where clause with new created MENU_ID  

Replace the where clause with this to check final output confirmation  
```sql
WHERE        (TRAN_TYPE = ) AND (TRAN_SUB_TYPE = ) AND (TRAN_SERIES = )
```   