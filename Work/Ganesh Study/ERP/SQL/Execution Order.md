# SQL Execution Order

When SQL runs a query, it does **NOT** follow the order you write.

Actual execution order is:

```sql
1. FROM
2. JOIN
3. WHERE
4. GROUP BY
5. HAVING
6. SELECT
7. DISTINCT
8. ORDER BY
9. LIMIT / OFFSET
```

---

Now let’s understand each step clearly 

---

# 1️. FROM

SQL first identifies the main table.

```sql
SELECT *
FROM employees;
```

- It loads the `employees` table first.

---

# 2️. JOIN

If there are joins, SQL combines tables now.

```sql
FROM employees e
JOIN departments d ON e.dept_id = d.id
```

- Tables are merged before filtering or grouping.

---

# 3️. WHERE

Rows are filtered here.

```sql
WHERE salary > 5000
```

Important:

⚠️ Aggregate functions CANNOT be used here.
Because grouping has not happened yet.

❌ Wrong:

```sql
WHERE SUM(salary) > 10000
```

---

# 4️. GROUP BY

Now rows are grouped.

```sql
GROUP BY department
```

- Creates buckets based on department.

---

# 5️. HAVING

Filters grouped data.

```sql
HAVING SUM(salary) > 10000
```

Difference:

* WHERE → filters rows
* HAVING → filters groups

---

# 6️. SELECT

Now SQL chooses what to display.

```sql
SELECT department, SUM(salary)
```

This is why:

You cannot use column aliases in WHERE
Because SELECT runs later.

---

# 7️. DISTINCT

Removes duplicate rows from final result.

---

# 8️. ORDER BY

Sorts final result.

```sql
ORDER BY SUM(salary) DESC
```

You CAN use column alias here because SELECT already happened.

---

# 9️. LIMIT / OFFSET

Restricts number of rows returned.

```sql
LIMIT 5;
```

---

# Full Example

```sql
SELECT 
    department,
    SUM(salary) AS total_salary
FROM 
    employees
WHERE 
    salary > 5000
GROUP BY 
    department
HAVING
    SUM(salary) > 10000
ORDER BY
    total_salary DESC
LIMIT 3;
```

### Internally SQL runs like this:

1. Load `employees`
2. Filter salary > 5000
3. Group by department
4. Filter groups with SUM > 10000
5. Select columns
6. Sort
7. Return top 3 rows

---

## Why This Matters

Because it explains:

* Why aggregate doesn’t work in WHERE
* Why alias doesn’t work in WHERE
* Why HAVING exists
* Why DISTINCT comes after SELECT

---

Further Doubts:

* Execution order with Subqueries
* Execution order with Window Functions
* Logical vs Physical execution difference