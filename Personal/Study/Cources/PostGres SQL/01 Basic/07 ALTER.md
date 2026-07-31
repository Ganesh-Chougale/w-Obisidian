## 1. Drop column
```sql
ALTER TABLE table_name DROP COLUMN column_name;
```   
```sql
-- safer version
ALTER TABLE table_name DROP COLUMN IF EXISTS column_name;
```   
```sql
-- drop column even if it give or has dependancies to other table
ALTER TABLE table_name DROP COLUMN column_name CASCADE;
```   
```sql
-- drop multiple columns
ALTER TABLE table_name 
  DROP COLUMN column_one, 
  DROP COLUMN column_two;
```   


## 2. Change Datatype of column
```sql
ALTER TABLE table_name
ALTER COLUMN column_name TYPE new_data_type;
```

Example:

```sql
ALTER TABLE employees
ALTER COLUMN salary TYPE BIGINT;
```

If conversion is needed (for example `TEXT` → `INTEGER`), use `USING`:

```sql
ALTER TABLE employees
ALTER COLUMN age TYPE INTEGER
USING age::INTEGER;
```

Another example (`VARCHAR` → `DATE`):

```sql
ALTER TABLE orders
ALTER COLUMN order_date TYPE DATE
USING order_date::DATE;
```

`USING` tells PostgreSQL how to convert existing values while changing the datatype.

## 3. Change name of columns
```sql
ALTER TABLE table_name
RENAME COLUMN old_column_name TO new_column_name
```   

example  
```sql
ALTER TABLE users
RENAME COLUMN full_name TO Long_name
```   

## 4. Giving constraint to column
- `SET`
```sql
ALTER TABLE table_name
ALTER COLUMN column_name SET constraint_name
```   
example  
```sql
ALTER TABLE users
ALTER COLUMN gender SET NOT NULL
```   
- using `CONSTRAINT` for custom contraints
```sql
ALTER TABLE table_name
ADD CONSTRAINT column_name your_custom_contraints
```   
example  
```sql
ALTER TABLE users
ADD CONSTRAINT age CHECK (age >= 18)
```   
- remove constriant
```sql
ALTER TABLE table_name
DROP CONSTRAINT column_name
```   
example  
```sql
ALTER TABLE users
DROP CONSTRAINT age
```  
## 5. Rename Table
```sql
ALTER TABLE table_name
RENAME TO new_table_name
```   
