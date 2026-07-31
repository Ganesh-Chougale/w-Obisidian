Constraints in PostgreSQL are rules applied to columns or tables to prevent invalid data from entering your database. You can assign them either during table creation (CREATE TABLE) or to an existing table (ALTER TABLE).  
------------------------------
## 1. The 5 Main Constraint Types## NOT NULL
Ensures that a column cannot accept NULL values.

* On Create:
```sql
CREATE TABLE users (id INT, email VARCHAR(100) NOT NULL);
```   

* On Existing:
```sql
ALTER TABLE users ALTER COLUMN email SET NOT NULL;
```   


## UNIQUE
Ensures that all values in a column (or combination of columns) are distinct. 
* On Create:
```sql
CREATE TABLE users (id INT, email VARCHAR(100) UNIQUE);
```   

* On Existing:
```sql
ALTER TABLE users ADD CONSTRAINT unique_email UNIQUE (email);
```   


## PRIMARY KEY
A combination of NOT NULL and UNIQUE. It uniquely identifies each row in a table. A table can only have one primary key. 

* On Create:
```sql
CREATE TABLE users (id INT PRIMARY KEY, username VARCHAR(50));
```   

* On Existing:
```sql
ALTER TABLE users ADD PRIMARY KEY (id);
```   



## FOREIGN KEY (References)
Prevents actions that would destroy links between tables. It ensures data in one table matches a value in another. 

* On Create:
```sql
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    user_id INT REFERENCES users(id) ON DELETE CASCADE
);
```   

(Note: ON DELETE CASCADE means if a user is deleted, their orders are automatically deleted too).
* On Existing:
```sql
ALTER TABLE orders ADD CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES users(id);
```   

## CHECK
Ensures that the values in a column satisfy a specific boolean condition. 

* On Create:
```sql
CREATE TABLE products (
    id INT PRIMARY KEY,
    price NUMERIC(10,2) CHECK (price > 0),
    discount NUMERIC(10,2),
    CHECK (discount < price) -- Table-level check involving multiple columns
);
```   
* On Existing:
```sql
ALTER TABLE products ADD CONSTRAINT check_positive_price CHECK (price > 0);
```   


------------------------------
## 2. How to Drop a Constraint
If you need to remove a constraint later, you must reference its name using ALTER TABLE. 
```sql
ALTER TABLE table_name DROP CONSTRAINT constraint_name;
```   

(If you did not explicitly name your constraint during creation, PostgreSQL assigns a default name like users_email_key).