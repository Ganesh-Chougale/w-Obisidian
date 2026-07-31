# Tables Used

## Casts

| cast_id | cast_name     |
| ------- | ------------- |
| 1       | The Rock      |
| 2       | John Cena     |
| 7       | Margot Robbie |

## Movie_Cast

| movie_id | cast_id |
| -------- | ------- |
| 1        | 1       |
| 3        | 2       |

---

# SQL NOT IN Syntax

## Example

```sql
SELECT
	*
FROM
	Casts AS cTable
WHERE
	cTable.cast_id NOT IN
                        (
                            SELECT
                                mCastTable.cast_id
                            FROM
                                Movie_Cast AS mCastTable
                        );
```

## Output

```txt 
cast_id | cast_name       | profession_id
--------|-----------------|--------------
7       | Margot Robbie   | NULL
```

---

# SQL NOT IN Example

## Tables Used

### Movies

| movie_id | movie_name        | release_year | director_id |
| -------- | ----------------- | ------------ | ----------- |
| 1        | Black Adam        | 2022         | 1           |
| 3        | Peacemaker        | 2022         | 2           |
| 6        | The Suicide Squad | 2021         | 2           |

### Directors

| director_id | director_name      |
| ----------- | ------------------ |
| 1           | Jaume Collet-Serra |
| 2           | James Gunn         |

---

## Example

```sql
SELECT
	*
FROM
	Movies AS MoviesTable
WHERE
	MoviesTable.release_year >= 2020

	AND MoviesTable.director_id NOT IN
											(
												SELECT
													DirectorsTable.director_id
												FROM
													Directors AS DirectorsTable
												WHERE
													DirectorsTable.director_name = 'James Gunn'
													AND DirectorsTable.director_id IS NOT NULL
											);
```

## Output

```txt
movie_id | movie_name | release_year | genre_id | director_id
---------|------------|--------------|----------|-------------
1        | Black Adam | 2022         | 1        | 1
```
