## SQL Condiditional Statement  
- sql if exists statement

# Tables Used

## Movies

| movie_id | movie_name | release_year |
| -------- | ---------- | ------------ |
| 1        | Black Adam | 2022         |
| 2        | Creed      | 2015         |

---


## Example

```sql
IF EXISTS (
	SELECT
		1
	FROM
		Movies
	WHERE
		movie_name = 'Black Adam'
)

BEGIN
	PRINT 'Movie exists'
END

ELSE
BEGIN
	PRINT 'Movie not found'
END
```

## Output

```txt id="8kq1lp"
Movie exists
```
