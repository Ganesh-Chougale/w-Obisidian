## How to & where to use `HAVING` Statment
- HAVING 
- HAVING statement  

> Find long movie categories
Find categories with an average movie length of more than two hours.  
Display the result as a table with columns: category - the name of the movie category and avg_length sorted in descending order of the average movie length  
Tables Used: `category`, `film_category`, `film`  
```sql
SELECT
    cgt.name AS category,
    AVG(fl.length) AS avg_length
    
FROM
    category AS cgt
    
    LEFT JOIN film_category AS fc
    ON cgt.category_id = fc.category_id
    
    LEFT JOIN film AS fl
    ON fl.film_id = fc.film_id


-------------------------------------
-- we can't use where clause here ❌
WHERE
    AVG(fl.length) > 120       
-------------------------------------
    
GROUP BY
    cgt.name 
    
ORDER BY
    avg_length DESC
```  


```sql
SELECT
    cgt.name AS category,
    AVG(fl.length) AS avg_length
    
FROM
    category AS cgt
    
    LEFT JOIN film_category AS fc
    ON cgt.category_id = fc.category_id
    
    LEFT JOIN film AS fl
    ON fl.film_id = fc.film_id
    
GROUP BY
    cgt.name

--------------------------------------------
-- for aggragate filtering we use HAVING ✅
HAVING
    AVG(fl.length) > 120    
--------------------------------------------
    
ORDER BY
    avg_length DESC
```  

```
WHERE  -> filters rows
HAVING -> filters groups
```