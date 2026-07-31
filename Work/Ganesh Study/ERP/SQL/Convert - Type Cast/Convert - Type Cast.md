File search string
```
- SQL Convert / Type Cast

```   

Standard Formatt  
```sql
CAST(TABLE_NAME.COLUMN_NAME AS DATA_TYPE_NAME)
```   

- To string
```sql
-- Using CAST (Standard)
CAST(TABLE_NAME.COLUMN_NAME AS VARCHAR(255))

-- Using CONVERT (SQL Server Specific)
CONVERT(VARCHAR(255), TABLE_NAME.COLUMN_NAME)
```   

- To DATE
```sql
-- Using CAST (Extracts only the date: YYYY-MM-DD)
CAST(TABLE_NAME.COLUMN_NAME AS DATE)

-- Using CAST for Date and Time
CAST(TABLE_NAME.COLUMN_NAME AS DATETIME2)

-- Using CONVERT with style code (e.g., style 103 handles 'DD/MM/YYYY')
CONVERT(DATE, TABLE_NAME.COLUMN_NAME, 103)
```   

- To INT
```sql
-- Using CAST
CAST(TABLE_NAME.COLUMN_NAME AS INT)

-- Using CONVERT
CONVERT(INT, TABLE_NAME.COLUMN_NAME)
```   

- To DECIMAL
```sql
-- Using CAST (18 total digits, 2 digits after the decimal point)
CAST(TABLE_NAME.COLUMN_NAME AS DECIMAL(18, 2))

-- Using CONVERT
CONVERT(DECIMAL(18, 2), TABLE_NAME.COLUMN_NAME)
```   

