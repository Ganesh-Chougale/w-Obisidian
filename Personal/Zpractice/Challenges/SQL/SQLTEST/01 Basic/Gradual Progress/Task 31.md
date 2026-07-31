#### Task 31
> Find languages not represented in films  
Write an SQL query to retrieve a list of languages from the language table for which there are no available films.  
Display the language names in alphabetical order in a column named language.  
Use a tables join to solve the problem.   
Tables Used: `language` & `film`  

Expected cost: 10

1.
```sql
SELECT
    DISTINCT l.name AS language
FROM
    language AS l

    LEFT JOIN film AS f
    ON l.language_id = f.language_id

WHERE 
    f.film_id IS NULL

ORDER BY
    l.name
```   
Cost: 6603
Diff: 6503

2. 
```sql
SELECT 
    l.name AS language
FROM
    language AS l
    
    LEFT JOIN (
                SELECT DISTINCT 
                    language_id
                FROM 
                    film
            ) AS f 
    ON l.language_id = f.language_id
    
WHERE 
    f.language_id IS NULL
ORDER BY 
    l.name;
```   
Cost: 10
Diff: 0