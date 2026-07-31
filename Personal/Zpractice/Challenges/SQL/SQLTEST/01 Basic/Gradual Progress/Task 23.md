#### Task 23
> Find all films with NC-17 (adults only) rating where description contains the 'Database Administrator' substring. Output these films titles, descriptions, release_years and  in alphabetical order of title.  
Tables Used: `film`  
Expected cost: `102`

1. 
```sql
SELECT
    title,
    description,
    release_year
FROM
    film
WHERE
    rating = 'NC-17'
    AND description LIKE '%Database Administrator%'
ORDER BY 
    title
```   
Cost: `1102`
Diff: `1000`

2.
```sql
select 
    title,
    description,
    release_year
from 
    film
where 
    film_id in  (
                    select
                        film_id
                    FROM
                        film
                    where 
                        rating = 'NC-17'
                        and description LIKE '%Database Administrator%'
                    order by
                        title asc
                )
```   
Cost: `110`
Diff: `8`

3. 
```sql
select 
    title,
    description,
    release_year
from 
    film
where 
    film_id in  (
                    select film_id
                    -- removed FROM FILM
                    where 
                        rating = 'NC-17'
                        and description LIKE '%Database Administrator%'
                    order by
                        title asc
                )
```   
Cost: `102`
Diff: `0`