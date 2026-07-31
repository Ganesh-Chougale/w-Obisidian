# 1. Movies

| movie_id | movie_name              | release_year | genre_id | director_id |
| -------- | ----------------------- | ------------ | -------- | ----------- |
| 1        | Black Adam              | 2022         | 1        | 1           |
| 2        | Guardians of the Galaxy | 2014         | 4        | 2           |
| 3        | Peacemaker              | 2022         | 1        | 2           |
| 4        | Central Intelligence    | 2016         | 2        | 3           |
| 5        | Creed                   | 2015         | 3        | 4           |
| 6        | The Suicide Squad       | 2021         | 1        | 2           |

---

# 2. Casts

| cast_id | cast_name         | profession_id |
| ------- | ----------------- | ------------- |
| 1       | The Rock          | 1             |
| 2       | John Cena         | 1             |
| 3       | Dave Bautista     | 1             |
| 4       | Chris Pratt       | NULL          |
| 5       | Michael B. Jordan | NULL          |
| 6       | Kevin Hart        | 2             |
| 7       | Margot Robbie     | NULL          |
| 8       | Idris Elba        | 3             |

---

# 3. Professions

| profession_id | profession_name |
| ------------- | --------------- |
| 1             | WWE Superstar   |
| 2             | Comedian        |
| 3             | Rapper          |

---

# 4. Movie_Cast

| movie_id | cast_id | role_name    |
| -------- | ------- | ------------ |
| 1        | 1       | Black Adam   |
| 2        | 3       | Drax         |
| 2        | 4       | Star-Lord    |
| 3        | 2       | Peacemaker   |
| 4        | 1       | Bob          |
| 4        | 6       | Calvin       |
| 5        | 5       | Adonis Creed |
| 6        | 2       | Peacemaker   |
| 6        | 7       | Harley Quinn |
| 6        | 8       | Bloodsport   |

---

# 5. Genres

| genre_id | genre_name   |
| -------- | ------------ |
| 1        | Superhero    |
| 2        | Action       |
| 3        | Sports Drama |
| 4        | Sci-Fi       |

---

# 6. Directors

| director_id | director_name           |
| ----------- | ----------------------- |
| 1           | Jaume Collet-Serra      |
| 2           | James Gunn              |
| 3           | Rawson Marshall Thurber |
| 4           | Ryan Coogler            |

---

# Key Mappings

## Movies

| Column      | Key Type | References            |
| ----------- | -------- | --------------------- |
| movie_id    | PK       | -                     |
| genre_id    | FK       | Genres.genre_id       |
| director_id | FK       | Directors.director_id |

---

## Casts

| Column        | Key Type | References                |
| ------------- | -------- | ------------------------- |
| cast_id       | PK       | -                         |
| profession_id | FK       | Professions.profession_id |

---

## Professions

| Column        | Key Type | References |
| ------------- | -------- | ---------- |
| profession_id | PK       | -          |

---

## Movie_Cast

| Column   | Key Type          | References      |
| -------- | ----------------- | --------------- |
| movie_id | Composite PK + FK | Movies.movie_id |
| cast_id  | Composite PK + FK | Casts.cast_id   |

---

## Genres

| Column   | Key Type | References |
| -------- | -------- | ---------- |
| genre_id | PK       | -          |

---

## Directors

| Column      | Key Type | References |
| ----------- | -------- | ---------- |
| director_id | PK       | -          |