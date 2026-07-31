### 1. DDL (Data Definition Language)

* Focuses on **database structure/schema**, not the actual data values.
* Used to create, modify, or remove database objects.
* Constraints are usually defined here.

```sql
CREATE
ALTER
DROP
TRUNCATE
RENAME
```

Example:

```sql
CREATE TABLE Employee (
    Id INT PRIMARY KEY,
    Name VARCHAR(50)
);
```

---

### 2. DML (Data Manipulation Language)

* Focuses on **data (rows/records)** inside tables.
* Used to add, modify, or remove data.

```sql
INSERT
UPDATE
DELETE
```

Example:

```sql
INSERT INTO Employee VALUES (1, 'John');

UPDATE Employee
SET Name = 'Jack'
WHERE Id = 1;

DELETE FROM Employee
WHERE Id = 1;
```

---

### 3. TCL (Transaction Control Language)


* Controls **transactions**.
* Decides whether changes should be permanently saved or undone.

```sql
BGEIN
COMMIT
ROLLBACK
SAVEPOINT
```
NOTE: `Always use COMMIT & ROLLBACK carefully to avoid unintended changes, especially in critical databases. Practice using SELECT frequentky to understand your data before making changes with DML commands.`  

Example:

```sql
UPDATE Employee
SET Name = 'Jack'
WHERE Id = 1;

ROLLBACK;
```

---

### 4. DCL (Data Control Language)

* Controls **permissions and access** to database objects.
* Decides who can do what.

```sql
GRANT
REVOKE
```

Example:

```sql
GRANT SELECT ON Employee TO User1;

REVOKE SELECT ON Employee FROM User1;
```

---

### 5. DQL (Data Query Language)

* Used to retrieve data from tables.

```sql
SELECT
```

Example:

```sql
SELECT * FROM Employee;
```

---

### Quick Memory Trick

| Type | Purpose             | Common Commands               |
| ---- | ------------------- | ----------------------------- |
| DDL  | Structure/Schema    | CREATE, ALTER, DROP, TRUNCATE |
| DML  | Data Manipulation   | INSERT, UPDATE, DELETE        |
| DQL  | Data Retrieval      | SELECT                        |
| DCL  | Permissions/Access  | GRANT, REVOKE                 |
| TCL  | Transaction Control | COMMIT, ROLLBACK, SAVEPOINT   |