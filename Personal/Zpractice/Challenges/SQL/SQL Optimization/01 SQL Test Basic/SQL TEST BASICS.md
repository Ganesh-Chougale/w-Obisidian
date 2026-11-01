#### Task 01
> Select all records from the `actor` table..
Tables Used: `actor`  
```sql
SELECT * FROM actor;
```   

#### Task 02
> Write a SQL query to select the `sex` and `body_mass_g` columns from the `little_penguins` table, sorted so that penguins with the largest body mass are displayed first..
Tables Used: `little_penguins`  
```sql
SELECT 
    sex,
    body_mass_g 
from 
    little_penguins
ORDER BY
    body_mass_g
DESC 
LIMIT
    10;
```   


#### Task 03
> Retrieve all records from `address` table where postal code does not provided..
Tables Used: `address`  
```sql
SELECT 
    *
FROM
    address
WHERE
    postal_code
IS NULL
```   

#### Task 04
> Retrieve the `name` column from the `language` table and present the results in alphabetical order..
Tables Used: `language`  
```sql
SELECT
    name
FROM
    language
ORDER BY
    name
```   

#### Task 05
> Select the `first` and `last` names of all actors from the `actor` table..
Tables Used: `actor`  
```sql
SELECT
    first_name,
    last_name
FROM
    actor
```   

#### Task 06
> Get list of values from the `name` column of the `language` table.
Tables Used: `language`  
```sql
SELECT
    name
FROM
    language;
```   

#### Task 07
> Select the movie titles from the table `film`. Sort the resulting list alphabetically.  
Tables Used: `film`  
```sql
SELECT
    title
FROM
    film
ORDER BY
    title
```   

#### Task 08
> From the `customer` table, select all records about `last_name`, `first_name` and `email` is sorted by last name in alphabetical order.
Tables Used: `customer`  
```sql
SELECT
    last_name,
    first_name,
    email
FROM
    customer
ORDER BY
    last_name;
```   

#### Task 09
> Write an SQL query to retrieve the unique `rating` values from the `film` table, sorted in alphabetical order..
Tables Used: `film`  
```sql
SELECT
    DISTINCT rating
FROM
    film
ORDER BY
    rating
```   

#### Task 10
> Retrieve the `titles` of the five longest films, sorted by their length in descending order..
Tables Used: `film`  
```sql
SELECT
    title
FROM
    film
ORDER BY
    length
DESC
LIMIT 5
```   

#### Task 11
> Select the `title`, `description`, and `release_year` of films from the `film` table. Sort the results in alphabetical order by `title` and return the first ten entries.  
Tables Used: `film`  
```sql
SELECT
    title,
    description,
    release_year
FROM
    film
ORDER BY
    title
LIMIT 10 
```   

#### Task 12
> For ease of display, we will divide the list of films into pages of ten entries each.  
To form the third page of the list, select the title, description and year of release of films from the `film` table.  
Sort the resulting list by name in alphabetical order and print ten lines starting from the twenty-first..  
Tables Used: `film`  
```sql
SELECT
    title,
    description,
    release_year
FROM
    film
ORDER BY
    title
LIMIT 10 -- pagination
OFFSET 20 -- skip first 20
```   

#### Task 13
> Select the title, rental rate and length of films from the `film` table.  
Sort the resulting list in descending order of rental rate, films with the same rate sort by length of the film in ascending order.
Tables Used: `film`  
```sql
SELECT
    title,
    rental_rate,
    length
FROM
    film
ORDER BY
    rental_rate DESC,
    length ASC
```   


#### Task 14
> Find the one longest movie from `film` table.    
If more than one movies have the same duration get one with lowest replacement_cost    
Write a query, without using aggregate functions, that returns two columns: `title` and `release_year`..   
Tables Used: `film`  
```sql
SELECT  
    title,
    release_year
FROM
    film
ORDER BY
    length DESC,
    replacement_cost
LIMIT 1
```  

#### Task 15
> Find all movies over three hours long.  
Write a query that returns a result consisting of three columns:   
the title of the movie, its description and the duration in minutes, sorted by the length of the movie..  
Tables Used: `film`  
```sql
SELECT
    title,
    description,
    length
FROM
    film
WHERE
    length > 180
ORDER BY
    length
```   

#### Task 16
> Find staff members worked in store number 1 and get all theirs data.
Tables Used: `staff`  
```sql
SELECT
    *
FROM
    staff
WHERE
    store_id = 1
```   

#### Task 17
> Find all customers who are currently active (active = 1) in the `customer` table.
The result table must contain next fields customer_id, first_name and last_name.
Tables Used: `customer`  
```sql
SELECT
    customer_id,
    first_name,
    last_name
FROM
    customer
WHERE
    active = 1
```   

#### Task 18  
> Get actors whose first name is Scarlett.
Tables Used: `actor`  
```sql
SELECT
    *
FROM
    actor
WHERE
    first_name = "Scarlett"
```   

#### Task 19
> Find all films where description contains the Student word. Output these films titles in alphabetical order.
Tables Used: `film`  
```sql
SELECT
    title
FROM
    film
WHERE
    description LIKE '%Student%'
ORDER BY
    title
```   

#### Task 20
> Find all films longer then 3 hours and get their title, release year and length sorted by length in ascending order.
Tables Used: `film`  
```sql
SELECT
    title,
    release_year,
    length
FROM
    film
WHERE
    length > 180
ORDER BY
    length
```   

#### Task 21
> Write an SQL query to retrieve all comedies with a running time exceeding three hours. The output should include three columns: film title, release year, and running time in minutes. The results should be sorted first by running time (from shortest to longest) and then alphabetically by film title.
Tables Used: `film`, `film_category`, `category`  
```sql
SELECT
    title,
    release_year,
    length
FROM
    film as f
    
    LEFT JOIN film_category  as fc
    ON f.film_id = fc.film_id
    
    LEFT JOIN category as c
    on fc.category_id = c.category_id
    
WHERE
    f.length > 180
    AND c.name = 'Comedy'
ORDER BY
    length,
    title
```   

#### Task 22
> Select last and first names and email addresses of customers whose first and last names do not contain a any letter “A” Sort the result by customer_id.  
Tables Used: `customer`  
```sql
SELECT
    last_name,
    first_name,
    email
FROM
    customer
WHERE
    first_name NOT LIKE '%a%'
    AND last_name NOT LIKE '%a%'
ORDER BY customer_id
```   

#### Task 23
> Find all films with NC-17 (adults only) rating where description contains the 'Database Administrator' substring. Output these films titles, descriptions, release_years and  in alphabetical order of title.  
Tables Used: `film`  
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

#### Task 24
> Find all films where description contains the Dog or Cat words marked with PG or PG-13 rating (for viewing under parents control).  
Output these films titles, descriptions, release_years and  in alphabetical order of title.
Tables Used: `film`  
```sql
SELECT
    title,
    description,
    release_year
FROM
    film
WHERE
    (description LIKE '%Dog%' OR description LIKE '%Cat%')
    AND
    (rating = 'PG' OR rating = 'PG-13')
ORDER BY
    title
```   

#### Task 25   
> The films rated with R (Restricted) and NC-17 (Adults only) cannot be rented by youth customers.   
Get list of this films in two columns title, rating sorted by title.  
Use the OR keyword in query condition.  
Tables Used: `film`  
```sql
SELECT
    title,
    rating
FROM
    film
WHERE
    (rating = 'R' OR rating = 'NC-17') 
ORDER BY
    title
```   

#### Task 26   
> Films rated PG (Parental Guidance Suggested) and PG-13 (Parents Strongly Cautioned) may only be viewed by children under parental supervision.
Get a list of these movies in two columns title, rating, sorted by title.
Tables Used: `film`  
```sql
SELECT
    title,
    rating
FROM
    film
WHERE
    (rating = 'PG' OR rating = 'PG-13') 
ORDER BY
    title
```   

#### Task 27
> Retrieve all employees working on the "Video Database" project.  
Write a query that displays the employee number, first name, last name, hire date, and job code.  
Sort the results by last name in alphabetical order. If the last names are the same, sort by job code.  
Tables Used: `employee`, `employee_project`, `project`    
```sql
SELECT
	EMPL.EMP_NO,
	EMPL.FIRST_NAME,
	EMPL.LAST_NAME,
	EMPL.HIRE_DATE,
	EMPL.JOB_CODE
FROM
	employee as EMPL
LEFT JOIN employee_project as EMP_PRJ
	ON EMPL.EMP_NO = EMP_PRJ.EMP_NO

LEFT JOIN project as PRJ
	ON EMP_PRJ.PROJ_ID = PRJ.PROJ_ID
	
WHERE
PRJ.PROJ_NAME = 'Video Database'
	
ORDER BY
	EMPL.LAST_NAME,
	EMPL.JOB_CODE
```   

#### Task 28
> Write a query for retrieve list of all employees working outside the US.
The result must contain all columns from the table EMPLOYEE.
Tables Used: `employee`  
```sql
SELECT
    *
FROM
    employee
WHERE 
    JOB_COUNTRY <> 'USA'
    OR JOB_COUNTRY IS NULL;
```   

#### Task 29
> Write a query that retrieves a list of all employees hired in 1992.  
The result should contain the following columns FULL_NAME - the full name of the employee and HIRE_DATE - the hiring date. Sort the results by ascending date of appointment.  
Tables Used: `EMPLOYEE`  
```sql
SELECT
    FULL_NAME,
    HIRE_DATE
FROM
    EMPLOYEE
WHERE
    SUBSTRING(HIRE_DATE, 0, 4) = '1992'
```   
```sql
SELECT
    FULL_NAME,
    HIRE_DATE
FROM
    EMPLOYEE
WHERE
    SUBSTRING(HIRE_DATE FROM 1 FOR 4) = '1992';
```   

#### Task 30
> Write an SQL query to get a list of films that are not available for rent (table inventory). 
Display the titles of these films in the `film_title` column in alphabetical order.
Use a tables join to solve the problem.
Tables Used: `film` & `inventory`  
```sql
SELECT 
    f.title AS film_title
FROM 
    film AS f
LEFT JOIN 
    inventory AS i
    ON f.film_id = i.film_id
WHERE 
    i.inventory_id IS NULL
ORDER BY 
    film_title ASC;
```   

#### Task 31
> Write an SQL query to retrieve a list of languages from the language table for which there are no available films.  
Display the language names in alphabetical order in a column named language.  
Use a tables join to solve the problem.   
Tables Used: `language` & `film`  
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

#### Task 32
> Write a SQL query to retrieve the titles of all movies along with their corresponding categories from the Sakila database.
Tables Used: `film`, `film_category`, `category`  
```sql
SELECT
    f.title,
    c.name
FROM
    film AS f

    LEFT JOIN  film_category AS fc
    ON f.film_id = fc.film_id
    
    LEFT JOIN category AS c
    ON fc.category_id = c.category_id
```   

#### Task 33
> Extract name and domain from customer email addresses in Sakila database.  
Write a query that returns three columns: email, address - the part of the email address before the "@" sign and domain - the part after “@”.  
Sort the result by email field.  
Tables Used: ``  
```sql
SELECT 
    email,
    SUBSTR(email, 1, INSTR(email, '@') - 1) AS address,
    SUBSTR(email, INSTR(email, '@') + 1) AS domain
FROM 
    customer
ORDER BY 
    email;
```   

#### Task 34
> Get columns definitions of `address` table .
Tables Used: `address`  
```sql
DESCRIBE address;
```   

#### Task 35
> Get list of indexes of film table and their definitions.
Tables Used: `film`  
```sql
SHOW INDEXES FROM film;
```   

#### Task 36
> Find movies from the Sakila database that don't have any cast records. Solve the problem using `JOIN` operator.
Output the result with the fields `title`, `release_year` sorted by movie title.
Tables Used: `film`, `film_actor`, `actor`  
```sql
SELECT
    flm.title,
    flm.release_year
FROM
    film as flm
    
    LEFT JOIN film_actor AS fla
    ON flm.film_id = fla.film_id
    
    LEFT JOIN actor as actr
    on fla.actor_id = actr.actor_id
    
WHERE 
    actr.last_update IS NULL
ORDER BY
    flm.title;
```   



#### Task 37
> Find clients whose first name is the last name of another client. Display a table with the fields customer_id, first_name, last_name for the first client and such the same fields customer_id, first_name, last_name for the second. Sort by customer_id of the first client.
Tables Used: `customer`  
```sql
SELECT
    c1.customer_id,
    c1.first_name,
    c1.last_name,
    c2.customer_id,
    c2.first_name,
    c2.last_name
FROM
    customer AS c1
    
    JOIN customer c2
    ON c1.first_name = c2.last_name;

```   

#### Task 38
> Find clients who met at one of the rental points. Display a table with fields meet_time - according the rental time, store_id, customers - list of meeting clients in the format JOHN SNOW,DAENERYS TARGARYEN sorted by clients's last name.
The results table should be sorted by meeting time and store id.
(Customers met if they rented movies from the same branch at the same time. The meeting place is determined by the employee's place of work.)
- worked but didn't understand
```sql
SELECT
    rnt.rental_date AS meet_time,
    str.store_id,
    GROUP_CONCAT(
        DISTINCT CONCAT(cstmr.first_name, ' ', cstmr.last_name)
        ORDER BY
                cstmr.last_name,
                cstmr.first_name
        SEPARATOR ','
    ) AS customers
FROM 
    rental AS rnt

LEFT JOIN customer AS cstmr
ON cstmr.customer_id = rnt.customer_id

LEFT JOIN staff sff
ON sff.staff_id = rnt.staff_id

LEFT JOIN store str
ON str.store_id = sff.store_id

GROUP BY
    rnt.rental_date,
    sff.store_id

HAVING COUNT(DISTINCT rnt.customer_id) > 1

ORDER BY
    rnt.rental_date,
    sff.store_id

LIMIT
    25;
```   


#### Task 39
> Write an SQL query to find films in the Sakila database that are currently in inventory (from the inventory table) but have never been rented out.   
Display the titles of these films in alphabetical order.
Use table joins to solve the task.
Tables Used: `film`, `inventory`, `rental`  
```sql
SELECT
    flm.title
FROM 
    film AS flm
    
    JOIN inventory AS i
    ON flm.film_id = i.film_id
    
    LEFT JOIN rental AS rnt
    ON i.inventory_id = rnt.inventory_id
    
WHERE
    rnt.rental_date IS NULL;
```     
#### Task 40    
> Find films in several categories.  
Get all the films in the following categories: Comedy, Music and Travel. Output table with film_id, title and category columns sorted by film_id. Write a query without using the OR keyword in the condition.
Tables Used: `film`, `film_category`, `category`  
```sql
SELECT
    flm.film_id,
    flm.title,
    ctgry.name AS category
FROM
    film AS flm

LEFT JOIN film_category AS flc
ON flm.film_id = flc.film_id

LEFT JOIN category AS ctgry
ON flc.category_id = ctgry.category_id 

WHERE
    ctgry.name IN ('Comedy', 'Music', 'Travel')
    
ORDER BY
    flm.film_id
```  

#### Task 41
> Customers with matching name initials
Select first and last names of customers whose first and last names begin with the same letter.
Sort the results by first and last name.
Tables Used: `customer`  
```sql
SELECT
    cstmr.first_name,
    cstmr.last_name
FROM
    customer as cstmr

WHERE
    LEFT(cstmr.first_name, 1) = LEFT(cstmr.last_name, 1)

ORDER BY
    cstmr.first_name,
    cstmr.last_name
```   

#### Task 42
> Rental history  
Generate a rental history report for customer KATIE ELLIOTT.
Display the title, rating and rental_date for each rented film.
Sort the list so that adult films ("R" rating) appear first, followed by all others. Within each of these two groups, records should be sorted by rental date.
Tables Used: `customer`, `rental`, `inventory`, `film`  
```sql
SELECT
    flm.title,
    flm.rating,
    rnt.rental_date  
FROM
     customer AS cstm

    LEFT JOIN rental AS rnt
    ON cstm.customer_id = rnt.customer_id 
    
    LEFT JOIN inventory AS inv
    ON inv.inventory_id = rnt.inventory_id 
    
    LEFT JOIN film AS flm
    ON flm.film_id = inv.film_id
    
WHERE
    cstm.first_name = 'KATIE'
    AND cstm.last_name = 'ELLIOTT'

ORDER BY
    flm.rating  = 'R' DESC,
    rnt.rental_date
```   


#### Task 43
> Rented Films
Generate a list of films rented by customer GEORGE LINTON. Display the title and rating for each rented film.
Sort the list by ratings in next order: 'R' appear first, followed by 'G', 'NC-17', 'PG-13' and 'PG' last. Within each rating group, sort by title. 
Tables Used: `customer`, `rental`, `inventory`, `film`   
```sql
SELECT DISTINCT
    flm.title,
    flm.rating
FROM
    customer AS cstm
    
    JOIN rental AS rnt
    ON cstm.customer_id = rnt.customer_id
    
    JOIN inventory AS inv
    ON inv.inventory_id = rnt.inventory_id
    
    JOIN film AS flm
    ON flm.film_id = inv.film_id
    
WHERE
    cstm.first_name = 'GEORGE'
    AND cstm.last_name = 'LINTON'
ORDER BY
    CASE flm.rating
        WHEN 'R' THEN 1
        WHEN 'G' THEN 2
        WHEN 'NC-17' THEN 3
        WHEN 'PG-13' THEN 4
        WHEN 'PG' THEN 5
    END,
    flm.title;
```   


Note:
1. practice Task 38 more
2. practice Task 43 more