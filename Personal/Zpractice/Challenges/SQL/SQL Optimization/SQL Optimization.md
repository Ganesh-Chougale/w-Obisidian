# Examples:  
`Task: Find the top spending customers`
Write an SQL query to find the top three customers with the highest total payment volume in the Sakila database. Display in result table the first name, last name and total payment amount of clients in the first_name, last_name and total_pay columns respectively. Sort the results by total_pay in descending order.  

excepted time: 1585

1. 
```sql
WITH customer_pay AS    (
                            SELECT
                                cst.first_name,
                                cst.last_name,
                                SUM(pmnt.amount) AS total_pay
                            FROM
                                customer AS cst
                                
                                INNER JOIN payment AS pmnt
                                ON pmnt.customer_id = cst.customer_id 
                            
                            GROUP BY
                                cst.first_name,
                                cst.last_name
                        )

SELECT
    first_name,
    last_name,
    total_pay
FROM
    customer_pay

ORDER BY
    total_pay DESC
LIMIT 3
```   
Time: 7268
Difference: -5,683

2. 
```sql
WITH customer_pay AS    (
                            SELECT
                                cst.first_name,
                                cst.last_name,
                                SUM(pmnt.amount) AS total_pay
                            FROM
                                customer AS cst
                                
                                INNER JOIN payment AS pmnt
                                ON pmnt.customer_id = cst.customer_id 
                            
                            GROUP BY
                                cst.first_name,
                                cst.last_name
                                
                            ORDER BY  
                                total_pay DESC
                            LIMIT 3
                        )
                        
SELECT
    first_name,
    last_name,
    total_pay
FROM
    customer_pay
```   
Time: 5515
Difference: -3,930
3. 
```sql
WITH pay_sum AS    (
                        SELECT
                            customer_id,
                            SUM(amount) AS total_pay
                        FROM
                            payment 
                        GROUP BY
                            customer_id
                        ORDER BY
                            total_pay DESC
                        LIMIT 3    
                    )
                        
SELECT
    cst.first_name,
    cst.last_name,
    ps.total_pay
FROM
    customer AS cst
    
    INNER JOIN pay_sum AS ps
    ON ps.customer_id = cst.customer_id
```   
Time: 1585
Difference: 0  



# SQL Performance Mental Model

## Core Principle

The fastest query is usually the one that makes the database process the smallest amount of data.

---

## Work Reduction Hierarchy

When optimizing a query, try to reduce work in this order:

1. Reduce Rows
2. Reduce Columns
3. Reduce Groups
4. Reduce Sorts
5. Reduce Joins

The earlier a reduction happens, the more valuable it is.

---

## Filter Early

Bad:

```sql
Read 1,000,000 rows
→ Join
→ Filter to 100 rows
```

Better:

```sql
Read 1,000,000 rows
→ Filter to 100 rows
→ Join
```

Rule:

> Never carry rows further through the query than necessary.

---

## Aggregate Early

Bad:

```sql
Join large tables
→ Aggregate
```

Better:

```sql
Aggregate
→ Join aggregated result
```

Rule:

> Summarize data before combining it whenever possible.

---

## Join Late

Bad:

```sql
Join 2 large datasets
→ Filter
→ Aggregate
```

Better:

```sql
Filter
→ Aggregate
→ Join
```

Rule:

> Join only the data that survived previous operations.

---

## Use Small Keys

Prefer:

```sql
GROUP BY customer_id
```

Over:

```sql
GROUP BY first_name, last_name
```

Rule:

> Comparing integers is cheaper than comparing strings.

---

## Sorting Is Expensive

Sorting often requires examining every candidate row.

Rule:

> Reduce the dataset before sorting whenever possible.

---

## Think Like a Factory

Every SQL operation is a processing station.

```text
Read
→ Filter
→ Aggregate
→ Sort
→ Join
→ Return
```

At each station ask:

"Can I send fewer rows to the next station?"

If yes, do it.

---

## Universal Optimization Questions

Whenever a query feels slow, ask:

1. Can I filter earlier?
2. Can I aggregate earlier?
3. Can I limit earlier?
4. Can I join later?
5. Can I use smaller grouping keys?
6. Can I sort fewer rows?

---

## One-Sentence Summary

SQL optimization is mostly the art of reducing the amount of data that reaches the next operation.