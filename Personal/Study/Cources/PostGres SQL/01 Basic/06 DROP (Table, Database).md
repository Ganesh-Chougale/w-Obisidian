## Table
```sql
DROP TABLE table_name;
```   
```sql
-- safe version
DROP TABLE IF EXISTS table_name;
```   

## Database
```sql
DROP DATABASE database_name;
```   
```sql
-- safe version
DROP DATABASE IF EXISTS database_name;
```   
```sql
-- force delete even if in use
DROP DATABASE database_name WITH (FORCE);
```   