## Final Answer First

**`UNION` → returns Combined Rows. (vertical merge).**
**`JOIN` → returns Combined Columns. (horizontal merge using relationship).**

That’s the core difference.

---

# Visual Difference

## UNION (Stack data)

```
TableA        TableB
------        ------
1 Amit        3 Raj
2 Neha        4 Simran

Result (UNION)

1 Amit
2 Neha
3 Raj
4 Simran
```

Rows added one below another.

---

## JOIN (Merge side-by-side)

```
Employees        Departments
---------        -----------
1 Amit  10       10 HR
2 Neha  20       20 IT

Result (JOIN)

1 Amit 10 HR
2 Neha 20 IT
```

Columns merged using relation.

---

# Syntax Comparison

## UNION

```sql
SELECT Name FROM TableA
UNION
SELECT Name FROM TableB;
```

---

## JOIN

```sql
SELECT e.Name, d.DepartmentName
FROM Employees e
JOIN Departments d
  ON e.DeptID = d.DeptID;
```

---

# When to Use What

## Use UNION when:

* Same structure tables
* Combine similar data
* Example:

```sql
CurrentYearSales
ArchiveSales
```

---

## Use JOIN when:

* Tables are related by key
* Need combined info
* Example:

```sql
Sales + Customer + Item
```

---

# ERP-Style Practical Example

## UNION Case

File: `Sales reports query`

```sql
SELECT TRN_NO, TRN_DATE
FROM TRN_SALES_2025

UNION ALL

SELECT TRN_NO, TRN_DATE
FROM TRN_SALES_2026;
```

👉 Combining transactions across years.

---

## JOIN Case

File: `Sales detail query`

```sql
SELECT 
    S.TRN_NO,
    C.CustomerName,
    S.Amount
FROM TRN_SALES S
JOIN MST_CUSTOMER C
  ON S.CustomerID = C.CustomerID;
```

👉 Fetching customer info with sales.

---

# Structural Difference

| Feature            | UNION      | JOIN           |
| ------------------ | ---------- | -------------- |
| Merge direction    | Vertical   | Horizontal     |
| Adds               | Rows       | Columns        |
| Requires relation  | ❌ No       | ✔ Yes          |
| Column count same? | ✔ Required | ❌ Not required |
| Data type match?   | ✔ Yes      | ❌ No           |

---

# Diagram Memory Trick

```
UNION  →  ↑↓  (stack)

JOIN   →  ←→  (attach)
```

---

# Types Inside JOIN (Quick View)

| Join Type  | Meaning           |
| ---------- | ----------------- |
| INNER JOIN | Matching only     |
| LEFT JOIN  | All left + match  |
| RIGHT JOIN | All right + match |
| FULL JOIN  | Everything        |