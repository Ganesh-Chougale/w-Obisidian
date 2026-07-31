I'm practicing sql on online websites. i want you to assist me within these scenarios
we gonna gamify this
1. when i give my answer tell me how much is my progress in percentage.
2. if not getting the question: tell me the question in easy manner & after that teach me how to read complex question.  
3. if i'm stucked for too long time then give me hint. hint only like you are this much right/wrong you need to apply this(here this can be a filter, sorting & any of sql stuff) not an exact answer.
4. your output must be within 10 to 15 lines max.
- every positive progress have mark.
- every negetive mistake will cut mark


it will be like a gradual teaching conversation.

![](./sqltest%20sakila_dark.png "")  

My Current Active website is:   
https://sqltest.online/en/ (just in case you need to see the schema, & i will be giving you image of schema too)
- `customer`    -> `rental`         -> `inventory`  -> `film`  
- `film`        -> `film_category`  -> `category`  
- `film`        -> `film_actor`     -> `actor`  
OR see it by yourself  
## The list of tables

### 01. actor - actor table.
```
actor_id            : unique record identifier (PK)
first_name          : actor's first name
last_name           : actor's last name
last_update         : date and time of last update
```
> Example output  
```
actor_id    first_name  last_name   last_update
1 	        John 	    Doe 	    2023-01-01 12:00:00
```
- PRIMARY KEY, btree (actor_id)

### 02. address - customer and staff addresses.
```
address_id      : unique record identifier (PK)
address         : postal address
address2        : additional address
district        : district or region
city_id         : city identifier (FK)
postal_code     : postal code
phone           : phone number
last_update     : date and time of last update
```
> Example output  
```
address_id  address         address2    district    city_id     postal_code     phone           last_update
1 	        123 Main St     [null]      Downtown    1           12345           +1234567890 	2023-01-01 12:00:00
```
- PRIMARY KEY, btree (address_id)
- FOREIGN KEY (city_id) REFERENCES city(city_id)

### 03. category - film categories.
```
category_id : unique record identifier (PK)
name        : category name
last_update : date and time of last update
```
> Example output  
```
category_id     name        last_update
1 	            Action      2023-01-01 12:00:00
```
- PRIMARY KEY, btree (category_id)

### 04. city - city table.
```
city_id     : unique record identifier (PK)
city        : city name
country_id  : country identifier (FK)
last_update : date and time of last update
```
> Example output  
```
city_id     city        country_id  last_update
1           Metropolis 	1           2023-01-01 12:00:00
```
- PRIMARY KEY, btree (city_id)
- FOREIGN KEY (country_id) REFERENCES country(country_id)

### 05. country - country table.
```
country_id      : unique record identifier (PK)
country         : country name
last_update     : date and time of last update
```
> Example output  
```
country_id      country         last_update
1               United States   2023-01-01 12:00:00
```
- PRIMARY KEY, btree (country_id)

### 06. customer - customer table.
```
customer_id     : unique record identifier (PK)
store_id        : store identifier (FK)
first_name      : customer's first name
last_name       : customer's last name
email           : customer's email address
address_id      : address identifier (FK)
active          : customer activity indicator (0/1)
create_date     : date and time the customer was added to the database
last_updat      : edate and time of last update
```
> Example output  
```
customer_id     store_id    first_name  last_name   email                   address_id  active  create_date             last_update
1               1           John        Doe         john.doe@example.com    1           1       2023-01-01 12:00:00     2023-01-01 12:00:00
```
- PRIMARY KEY, btree (customer_id)
- FOREIGN KEY (store_id) REFERENCES store(store_id)
- FOREIGN KEY (address_id) REFERENCES address(address_id)

### 07. film - table of films.
```
film_id                 : unique record identifier (PK)
title                   : film title
description             : brief description or plot of the film
release_year            : year the film was released
language_id             : identifier of the film's language (FK)
original_language_id    : identifier of the original language of the film in case it is dubbed into a new language
rental_duration         : duration of rental period in days
rental_rate             : cost of renting the film for the duration specified in the rental_duration column
length                  : length of the film in minutes
replacement_cost        : amount of penalty for loss or damage of the disc
rating                  : rating assigned to the film. Can be one of: G, PG, PG-13, R, or NC-17
special_features        : list of special features included on the DVD. Can be zero or more of: Trailers, Commentaries, Deleted Scenes, Behind the Scenes
last_update             : date and time of last update
```
> Example output  
```
film_id     title       description                         release_year    language_id     original_language_id    rental_duration     rental_rate     length      replacement_cost        rating      special_features            last_update
1           Film Title  A brief description of the film.    2000            1               2                       5                   4.99            120         19.99                   PG-13       Trailers, Commentaries      2023-01-01 12:00:00
```
- PRIMARY KEY, btree (film_id)
- FOREIGN KEY (language_id) REFERENCES language(language_id)
- FOREIGN KEY (original_language_id) REFERENCES language(language_id)

### 08. film_actor - actors to films relation.
```
actor_id        : identifier for actor (FK)
film_id         : identifier for film (FK)
last_update     : date and time of last update
```
> Example output  
```
actor_id    film_id     last_update
1           1           2023-01-01 12:00:00
```
- PRIMARY KEY, btree (actor_id, film_id)
- FOREIGN KEY (actor_id) REFERENCES actor(actor_id)
- FOREIGN KEY (film_id) REFERENCES film(film_id)

### 09. film_category - films to categories relation.
```
film_id         : identifier for each film (FK)
category_id     : identifier for each category (FK)
last_update     : date and time of last update
```
> Example output  
```
film_id     category_id     last_update
1           1               2023-01-01 12:00:00
```
- PRIMARY KEY, btree (film_id, category_id)
- FOREIGN KEY (film_id) REFERENCES film(film_id)
- FOREIGN KEY (category_id) REFERENCES category(category_id)

### 10. inventory - table of items.
```
inventory_id        : unique record identifier (PK)
film_id             : identifier of the film (FK)
store_id            : identifier of the store where the inventory is located (FK)
last_update         : date and time of last update
```
> Example output  
```
inventory_id    film_id     store_id    last_update
1               23          2           2023-01-01 12:00:00
```
- PRIMARY KEY, btree (inventory_id)
- FOREIGN KEY (film_id) REFERENCES film(film_id)
- FOREIGN KEY (store_id) REFERENCES store(store_id)

### 11. language - films languages.
```
language_id     : unique record identifier (PK)
name            : language name
last_update     : date and time of last update
```
> Example output  
```
language_id 	name 	last_update
1 	English 	2023-01-01 12:00:00
```
- PRIMARY KEY, btree (language_id)

### 12. payment - customers payments.
```
payment_id      : unique identifier of the record (PK)
customer_id     : identifier of the customer (FK)
staff_id        : identifier of the staff member who received the payment (FK)
rental_id       : identifier of the rental record (FK)
amount          : payment amount
payment_date    : date and time of the payment
last_update     : date and time of the last update
```
> Example output  
```
payment_id      customer_id     staff_id    rental_id       amount 	payment_date 	last_update
1               1               1           1               4.99 	2023-01-01 12:13:14 	2023-01-01 12:14:15
```
- PRIMARY KEY, btree (payment_id)
- FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
- FOREIGN KEY (staff_id) REFERENCES staff(staff_id)
- FOREIGN KEY (rental_id) REFERENCES rental(rental_id)

### 13. rental - customers rentals.
```
rental_id       : unique identifier of the record (PK)
rental_date     : rental start date
inventory_id    : identifier of the disk (FK)
customer_id     : identifier of the customer (FK)
return_date     : date of returning the film
staff_id        : id of the staff member issued the disk (FK)
last_update     : date and time of the last update
```
> Example output  
```
rental_id 	rental_date 	inventory_id 	customer_id 	return_date 	staff_id 	last_update
1 	2023-01-01 16:15:21 	1 	1 	2023-01-10 09:12:36 	1 	2023-01-01 12:00:00
```
- PRIMARY KEY, btree (rental_id)
- FOREIGN KEY (inventory_id) REFERENCES inventory(inventory_id)
- FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
- FOREIGN KEY (staff_id) REFERENCES staff(staff_id)

### 14. staff - company staff.
```
staff_idunique identifier of the record (PK)
first_namefirst name of the staff member
last_namelast name of the staff member
address_ididentifier of the address (FK)
picturephoto of the staff member
emailemail address of the staff member
store_idforeign key referencing the store table (FK)
activeindicator of staff member's activity (0/1)
usernameusername for system login
passwordpassword for login
last_updatedate and time of the last update
```
> Example output  
```
staff_id    first_name      last_name       address_id      picture     email                   store_id    active      username    password    last_update
1           John            Doe             1               [null]      john.doe@example.com    1           1           johndoe     ********    2023-01-01 12:00:00
```
- PRIMARY KEY, btree (staff_id)
- FOREIGN KEY (address_id) REFERENCES address(address_id)
- FOREIGN KEY (store_id) REFERENCES store(store_id)

### 15. store - company stories.
```
store_id                : unique identifier of the record (PK)
manager_staff_id        : identifier of the store manager (FK)
address_id              : identifier of the address (FK)
last_update             : date and time of the last update
```
> Example output  
```
store_id    manager_staff_id        address_id      last_update
1           1                       1               2023-01-01 12:00:00
```
- PRIMARY KEY, btree (store_id)
- FOREIGN KEY (manager_staff_id) REFERENCES staff(staff_id)
- FOREIGN KEY (address_id) REFERENCES address(address_id)