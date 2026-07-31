## SQL Date / DateTime Formatting

### 1. Normal `DATETIME` column

Use this when the column datatype is already `DATE`, `DATETIME`, `DATETIME2`, etc.

### Raw Value

```sql
SELECT TOP 1
    DATE_TIME
FROM
    [DB_NAME]..[TABLE_NAME];
```

#### Output

```sql
2021-03-11 16:43:19.553
```

### Formatted Value

```sql
SELECT TOP 1
    ISNULL(FORMAT(DATE_TIME, 'dd/MM/yyyy hh:mm:ss tt'), '') AS DATE_TIME
FROM
    [DB_NAME]..[TABLE_NAME];
```

#### Output

```sql
11/03/2021 04:43:19 PM
```

---

## 2. DateTime stored as `VARCHAR` / text

Use this when the column contains date characters/text like:

```sql
May 26 2002 12:00AM
```

Because the value is stored as text, first convert it to `DATETIME`.

### Raw Value

```sql
SELECT TOP 1
    DATE_TIME
FROM
    [DB_NAME]..[TABLE_NAME];
```

#### Output

```sql
May 26 2002 12:00AM
```

### Formatted Value

```sql
SELECT TOP 1
    ISNULL(
        FORMAT(CONVERT(DATETIME, DATE_TIME), 'dd/MM/yyyy hh:mm:ss tt'),
        ''
    ) AS DATE_TIME
FROM
    [DB_NAME]..[TABLE_NAME];
```

#### Output

```sql
26/05/2002 12:00:00 AM
```

---

# Difference

### Direct formatting

Use when column datatype is already date/datetime.

```sql
ISNULL(FORMAT(DATE_TIME, 'dd/MM/yyyy hh:mm:ss tt'), '') AS DATE_TIME
```

### Convert + formatting

Use when column datatype is string/text (`VARCHAR`, `NVARCHAR`, etc.) containing date values.

```sql
ISNULL(FORMAT(CONVERT(DATETIME, DATE_TIME), 'dd/MM/yyyy hh:mm:ss tt'), '') AS DATE_TIME
```

---

# Important Notes

## `FORMAT`

* Easy to read/write
* Slower on large datasets
* Best for:

  * reports
  * UI display
  * export formatting

## `CONVERT`

`CONVERT(DATETIME, DATE_TIME)` transforms text into actual SQL datetime.

Without conversion:

```sql
FORMAT(DATE_TIME, ...)
```

may fail if `DATE_TIME` is a string column.

---

# Common SQL Date Formats

| Format                     | Output                   |
| -------------------------- | ------------------------ |
| `'dd/MM/yyyy'`             | `26/05/2026`             |
| `'dd/MM/yyyy hh:mm tt'`    | `26/05/2026 04:30 PM`    |
| `'dd/MM/yyyy hh:mm:ss tt'` | `26/05/2026 04:30:45 PM` |
| `'yyyy-MM-dd'`             | `2026-05-26`             |
| `'MMM dd yyyy'`            | `May 26 2026`            |
| `'dddd, dd MMM yyyy'`      | `Tuesday, 26 May 2026`   |

---

# Safer Version (`TRY_CONVERT`)

If invalid date strings may exist:

```sql
SELECT TOP 1
    ISNULL(
        FORMAT(TRY_CONVERT(DATETIME, DATE_TIME), 'dd/MM/yyyy hh:mm:ss tt'),
        ''
    ) AS DATE_TIME
FROM
    [DB_NAME]..[TABLE_NAME];
```

`TRY_CONVERT` returns `NULL` instead of throwing an error for invalid dates.