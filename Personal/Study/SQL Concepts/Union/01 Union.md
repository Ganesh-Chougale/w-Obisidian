**`UNION` combines the result of two or more SELECT queries into one single result set — removing duplicate rows by default.**

If you want duplicates also → use **`UNION ALL`**.

---

# Basic Syntax

```sql
SELECT column1, column2
FROM TableA

UNION

SELECT column1, column2
FROM TableB;
```

---

# Example (SSMS Practical)

### Tables

**Employees_Pune**

| EmpID | Name |
| ----- | ---- |
| 1     | Amit |
| 2     | Neha |

**Employees_Mumbai**

| EmpID | Name |
| ----- | ---- |
| 2     | Neha |
| 3     | Raj  |

---

### Query

```sql
SELECT EmpID, Name 
FROM Employees_Pune

UNION

SELECT EmpID, Name 
FROM Employees_Mumbai;
```

### Result

| EmpID | Name |
| ----- | ---- |
| 1     | Amit |
| 2     | Neha |
| 3     | Raj  |

👉 Duplicate row (Neha) removed automatically.

---

# UNION ALL (with duplicates)

```sql
SELECT EmpID, Name 
FROM Employees_Pune

UNION ALL

SELECT EmpID, Name 
FROM Employees_Mumbai;
```

### Result

| EmpID | Name |
| ----- | ---- |
| 1     | Amit |
| 2     | Neha |
| 2     | Neha |
| 3     | Raj  |

---

# Rules (Very Important)

### 1️⃣ Column count must match

❌ Wrong

```sql
SELECT EmpID, Name FROM Employees_Pune
UNION
SELECT EmpID FROM Employees_Mumbai;
```

✔ Both SELECTs must return same number of columns.

---

### 2️⃣ Data types must be compatible

Example:

* INT ↔ INT ✔
* VARCHAR ↔ VARCHAR ✔
* INT ↔ DATE ❌

---

### 3️⃣ Column order matters (not names)

```sql
SELECT EmpID, Name FROM A
UNION
SELECT Name, EmpID FROM B; -- Wrong logic
```

SQL matches **position**, not column name.

---

# Real-world SSMS Use Cases

### 1️⃣ Combine current + archive data

```sql
SELECT TRN_NO, TRN_DATE
FROM TRN_SALES_CURRENT

UNION ALL

SELECT TRN_NO, TRN_DATE
FROM TRN_SALES_ARCHIVE;
```

---

### 2️⃣ Combine multiple branches

```sql
SELECT ItemName FROM Stock_Pune
UNION
SELECT ItemName FROM Stock_Mumbai;
```

---

# UNION vs UNION ALL

| Feature            | UNION    | UNION ALL |
| ------------------ | -------- | --------- |
| Removes duplicates | ✔ Yes    | ❌ No      |
| Faster             | ❌ Slower | ✔ Faster  |
| Sorting required   | ✔ Yes    | ❌ No      |

👉 Because UNION must check duplicates → extra processing.

---

# Performance Tip

If duplicates are impossible or irrelevant → always use:

```sql
UNION ALL
```

It’s significantly faster in large ERP databases.

---

# Visual Understanding

Think like:

```
Result = Query1 + Query2
           ↓
     Remove duplicates (UNION)
```

or

```
Result = Query1 + Query2
           ↓
     Keep all rows (UNION ALL)
```

---