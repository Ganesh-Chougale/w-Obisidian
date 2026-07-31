## without `ISNULL`  
```sql
SELECT
	*
FROM
	ORDERS
WHERE
    DELIVERY_RATING = 0
```   
this means return only value where DELIVERY_RATING = 0. it neglects NULL value.  
0 means absolute `0` value.  
NULL means value is absent or un-assigned.  
so in this condition we are not having rows where we dont have DELIVERY_RATING saved.  
## with `ISNULL` 
we can tell SQL that consider all NULL values as `0` by using this syntax  
```sql
    ISNULL(Column_name, value_we_want_to_assign_to_it)
```    
so it will consider NULL values as `0` (Only during the execution & not saved into actual DB)  
```sql
SELECT
	*
FROM
	ORDERS
WHERE
    ISNULL(DELIVERY_RATING, 0) = 0
```   
now all un-assigned DELIVERY_RATING will considered as `0`  