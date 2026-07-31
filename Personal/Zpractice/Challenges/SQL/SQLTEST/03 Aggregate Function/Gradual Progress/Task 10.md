#### Task 10
> Find the top spending customers  
Write an SQL query to find the top three customers with the highest total payment volume in the Sakila database. Display in result table the first name, last name and total payment amount of clients in the first_name, last_name and total_pay columns respectively. Sort the results by total_pay in descending order.
excepted time: `1585`

Tables Used: `payment`, `customer`
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

