# 1️. What is `GROUP BY`?

`GROUP BY` is used to group rows that have the same values in one or more columns so that aggregate functions (like `COUNT`, `SUM`, `AVG`, `MIN`, `MAX`) can be applied to each group separately.

**Explanation:**
Instead of calculating something for the entire table, `GROUP BY` divides the table into smaller groups and performs calculations per group.

---

# 2️. In which cases should we apply it?

We should apply `GROUP BY` **only when using aggregate functions together with non-aggregated columns**.

---

## `Case 1`: When using aggregate function with a column

### ❌ Without GROUP BY (Error Case)

Table: `employees`

| id | department | salary |
| -- | ---------- | ------ |
| 1  | HR         | 5000   |
| 2  | HR         | 6000   |
| 3  | IT         | 8000   |

Query:

```sql
SELECT department, SUM(salary)
FROM employees;
```

❌ Error
Because `department` is not aggregated and not grouped.

---

### ✅ With GROUP BY

```sql
SELECT department, SUM(salary)
FROM employees
GROUP BY department;
```

Result:

| department | SUM(salary) |
| ---------- | ----------- |
| HR         | 11000       |
| IT         | 8000        |

- Use `GROUP BY` when you want totals per department.

---

## `Case 2`: When counting records per category

### ❌ Without GROUP BY

```sql
SELECT department, COUNT(*)
FROM employees;
```

❌ Error (same reason)

---

### ✅ With GROUP BY

```sql
SELECT department, COUNT(*)
FROM employees
GROUP BY department;
```

Result:

| department | COUNT(*) |
| ---------- | -------- |
| HR         | 2        |
| IT         | 1        |

- Use it when you want number of employees per department.

---

## ❌ When NOT to use GROUP BY

If you want total salary of all employees:

```sql
SELECT SUM(salary)
FROM employees;
```

✅ No `GROUP BY` needed
Because you are calculating for the entire table.

---

# 3️. Rules / Regulations of GROUP BY

---

## 🔹 Rule 1: Every selected column must be grouped or aggregated

✔ Correct:

```sql
SELECT department, SUM(salary)
FROM employees
GROUP BY department;
```

❌ Wrong:

```sql
SELECT department, salary
FROM employees
GROUP BY department;
```

Reason: `salary` is neither grouped nor aggregated.

---

## 🔹 Rule 2: Order of columns in GROUP BY does not change grouping logic

```sql
GROUP BY department, role;
```

Groups by combination of department + role.

---

## 🔹 Rule 3: WHERE works before GROUP BY

Filtering rows first:

```sql
SELECT department, SUM(salary)
FROM employees
WHERE salary > 5000
GROUP BY department;
```

---

## 🔹 Rule 4: HAVING works after GROUP BY

Used to filter grouped results:

```sql
SELECT department, SUM(salary)
FROM employees
GROUP BY department
HAVING SUM(salary) > 10000;
```

---