### `Table Describe`  
```sql
EXEC sp_help 'YourTableName';
```   
---

### `Only columns + types (clean & readable)`
```sql
SELECT 
    COLUMN_NAME,
    DATA_TYPE,
    CHARACTER_MAXIMUM_LENGTH,
    IS_NULLABLE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'YourTableName';
```   
---

### `Extra: keys & constraints`
```sql
EXEC sp_helpconstraint 'YourTableName';
```   
---

### Copy exactly like `CREATE TABLE` (DDL)

In **Object Explorer**:

1. Tables → right-click your table
2. **Script Table as**
3. **CREATE To**
4. **New Query Editor Window**

Now you can:

* Copy the full `CREATE TABLE` script
* Paste it anywhere

This is the **most accurate structure copy**.
---