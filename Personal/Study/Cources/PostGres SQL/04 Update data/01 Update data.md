A basic PostgreSQL `UPDATE` query looks like:

```sql
UPDATE table_name
SET column1 = value1,
    column2 = value2
WHERE condition;
```

### Example: Update a single row

```sql
UPDATE employees
SET salary = 75000
WHERE employee_id = 101;
```

### Example: Update multiple columns

```sql
UPDATE employees
SET salary = 75000,
    department = 'Engineering'
WHERE employee_id = 101;
```

### Example: Update using values from another table

```sql
UPDATE orders o
SET customer_name = c.name
FROM customers c
WHERE o.customer_id = c.id;
```

### Example: Update all rows (be careful)

```sql
UPDATE employees
SET status = 'Active';
```

### Return updated rows

```sql
UPDATE employees
SET salary = salary * 1.10
WHERE department = 'Engineering'
RETURNING *;
```