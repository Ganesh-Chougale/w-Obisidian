```sql
select 
	
FROM 
	person AS PSN
	
	JOIN drivers_license AS DL
	ON PSN.license_id = DL.id
	
	JOIN get_fit_now_member AS GYM
    ON GYM.person_id = PSN.id
	
```   

```sql
select 
	*
FROM 
	get_fit_now_member AS GYM
	
```   