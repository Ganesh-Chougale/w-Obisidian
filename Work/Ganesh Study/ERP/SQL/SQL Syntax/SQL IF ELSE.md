## SQL Condiditional Statement  
- sql if else
- sql conditional statement 
- sql switch case statement


## 1. Simple IF ELSE

```sql
DECLARE @ReleaseYear INT = 2022

IF @ReleaseYear < 2010
	BEGIN
		PRINT 'Old Movie'
	END

ELSE IF @ReleaseYear BETWEEN 2010 AND 2020
	BEGIN
		PRINT 'Modern Movie'
	END

ELSE
	BEGIN
		PRINT 'Latest Movie'
	END
```

---

## 2. Using CASE

```sql
DECLARE @ReleaseYear INT = 2022
DECLARE @Message VARCHAR(100)

SET @Message =
	CASE
		WHEN @ReleaseYear < 2010 THEN 'Old Movie'
		WHEN @ReleaseYear BETWEEN 2010 AND 2020 THEN 'Modern Movie'
		ELSE 'Latest Movie'
	END

PRINT @Message
```
