#### Task 01
> .Find the average length of a movie
Find the average length of the movie.
Display the result in the avg_film_length column.

Tables Used: `film`
```sql
SELECT
    AVG(length) AS avg_film_length
FROM
    film;
```

#### Task 02
> Find the minimal and maximal film rental cost
Find the minimal and maximal film replacement cost.
Display the result as two columns table minimal_replacement_cost and maximal_replacement_cost.
Tables Used: `film`
```sql
SELECT
    MIN(replacement_cost) AS minimal_replacement_cost,
    MAX(replacement_cost) AS maximal_replacement_cost
FROM
    film;
```

#### Task 03
> Average Rental Duration
Determine the average rental duration (in days) for films. Present the result in a column named average_rental_time.
The rental time is calculated as the difference between return_date and rental_date in the rental table.
Round the result to the nearest whole number.
Tables Used: `rental`
```sql
SELECT
    ROUND(
        AVG(
                DATEDIFF(return_date, rental_date)
            )
        ) AS average_rental_time
FROM
    rental;
```

#### Task 04
> Find the number of employees
Find the number of employees in each department.
Output the name of the department DEPARTMENT and the number of employees in it EMP_COUNT.
Sort the results by descending number of employees, then by department name alphabetically.

Tables Used: `DEPARTMENT`, `EMPLOYEE`
```sql
SELECT
    DEPT.DEPARTMENT AS DEPARTMENT,
    COUNT(EMP.EMP_NO) AS EMP_COUNT
FROM
    DEPARTMENT AS DEPT

    LEFT JOIN EMPLOYEE AS EMP
    ON DEPT.DEPT_NO = EMP.DEPT_NO

GROUP BY
    DEPT.DEPARTMENT

ORDER BY
    EMP_COUNT DESC,
    DEPARTMENT ASC;
```

#### Task 05
> Find the number of films in each category
Find the number of films in each category. Display a table with two columns category and film_count, sort it by category names in alphabetical order.

Tables Used: `film`, `film_category`, `category`
```sql
SELECT DISTINCT
    cgt.name AS category,
    COUNT(fc.film_id) AS film_count
FROM
    category AS cgt

    LEFT JOIN film_category AS fc
    ON cgt.category_id = fc.category_id

GROUP BY
    cgt.name

ORDER BY
    cgt.name
```

#### Task 06
> The average cost of renting a movie by category
Find the average cost of renting a movie for each category.
Display the result in two columns category and avg_rental_rate sorted in descending order of price.
Tables Used: `category`, `film_category`, `film`
```sql
SELECT
    cgt.name AS category,
    AVG(fl.rental_rate) AS avg_rental_rate
FROM
    category AS cgt

    LEFT JOIN film_category AS fc
    ON cgt.category_id = fc.category_id

    LEFT JOIN film AS fl
    ON fl.film_id = fc.film_id

GROUP BY
    cgt.name

ORDER BY
    avg_rental_rate DESC
```

#### Task 07
> Find minimum, maximum and average film duration
Find the minimum, maximum and average length of a movie for each category.
Display the result in the form of a table with columns: category - name of the movie category, min_length, max_length and avg_length sorted by category in alphabetical order
Tables Used: `category`, `film_category`, `film`
```sql
SELECT
    cgt.name AS category,
    MIN(fl.length) AS min_length,
    MAX(fl.length) AS max_length,
    AVG(fl.length) AS avg_length

FROM
    category AS cgt

    LEFT JOIN film_category AS fc
    ON cgt.category_id = fc.category_id

    LEFT JOIN film AS fl
    ON fl.film_id = fc.film_id

GROUP BY
    cgt.name

ORDER BY
    category
```

#### Task 08
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

GROUP BY
    cgt.name

HAVING
    AVG(fl.length) > 120

ORDER BY
    avg_length DESC
```

#### Task 09
> Find the least popular movies
Of the movies available, find the ones that are least rented based on the number of records in the rental table.
Display the film title and the number of rentals in the title and rentals_count columns. Sort the table by title.
Tables Used: ``
```sql
WITH movie_rentals AS (
                        SELECT
                            fl.title,
                            COUNT(rnt.rental_id) AS rentals_count
                        FROM 
                            film AS fl

                            INNER JOIN inventory AS inv
                            ON inv.film_id = fl.film_id

                            INNER JOIN rental AS rnt
                            ON rnt.inventory_id = inv.inventory_id
                        
                            GROUP BY fl.title
                    )

SELECT
    title,
    rentals_count
FROM
    movie_rentals
WHERE
    rentals_count = (
                    SELECT 
                        MIN(rentals_count)
                    FROM 
                        movie_rentals
                    )
ORDER BY title;
```

#### Task 10
> Find the top spending customers  
Write an SQL query to find the top three customers with the highest total payment volume in the Sakila database. Display in result table the first name, last name and total payment amount of clients in the first_name, last_name and total_pay columns respectively. Sort the results by total_pay in descending order.

Tables Used: `payment`, `customer`
```sql

```










#### Task
>

Tables Used: ``
```sql

```


Practice these more
- Task 09  