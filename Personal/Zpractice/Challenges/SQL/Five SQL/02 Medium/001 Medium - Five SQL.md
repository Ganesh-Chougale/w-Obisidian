#### 01. `Join orders with customers`
> Return order_id, orders.order_date, total_amount and customers.name for all orders paired with customer name.
- Joins & Relationships  
Tables Used: `orders customers`  
```sql
SELECT
    O.ORDER_ID,
    O.ORDER_DATE,
    O.TOTAL_AMOUNT,
    C.NAME
FROM
    ORDERS AS O
LEFT JOIN CUSTOMERS AS C
ON O.CUSTOMER_ID = C.CUSTOMER_ID
```   

#### 02. `Products and their category names`
> List product_id, product_name and category_name by joining products with categories.
- Joins & Relationships
Tables Used: `products categories`  
```sql
SELECT
    p.PRODUCT_ID,
    p.PRODUCT_NAME,
    c.CATEGORY_NAME
FROM
    PRODUCTS AS p
LEFT JOIN CATEGORIES AS c
ON p.CATEGORY_ID = c.CATEGORY_ID
```   

#### 03. `Total items sold per product`
> For each product, return product_id, product_name and total quantity sold across all orders. Order by quantity sold descending.
- Grouping & HAVING  
Tables Used: `order_items products`  
```sql
SELECT
    oi.PRODUCT_ID,
    p.PRODUCT_NAME,
    SUM(oi.QUANTITY) AS TOTAL_QUANTITY
FROM
    ORDER_ITEMS AS oi
LEFT JOIN PRODUCTS AS p
on oi.PRODUCT_ID = p.PRODUCT_ID
GROUP BY
    oi.PRODUCT_ID,
    p.PRODUCT_NAME
ORDER BY TOTAL_QUANTITY DESC
```   

#### 04. `Top 5 customers by spend`
> Find the top 5 customers who spent the most total_amount across their orders. Return customer_id, name, total_spent.
- Grouping & HAVING
Tables Used: `orders customers`  
```sql
SELECT
    O.CUSTOMER_ID,
    C.NAME,
    SUM(O.TOTAL_AMOUNT) AS TOTAL_SPENT
FROM
    ORDERS AS O
    LEFT JOIN CUSTOMERS AS C
        ON O.CUSTOMER_ID = C.CUSTOMER_ID 
GROUP BY
    O.CUSTOMER_ID,
    C.NAME
ORDER BY TOTAL_SPENT DESC
LIMIT 5
```   

#### 05. `Average order amount per city`
> Compute average order total_amount grouped by customer city. Return city and avg_order_amount sorted by highest average.
- Grouping & HAVING
Tables Used: `orders customers`
```sql
SELECT
    c.CITY,
    AVG(o.TOTAL_AMOUNT) as AVERAGE_ORDER_AMOUNT
FROM
    ORDERS AS o
    LEFT JOIN CUSTOMERS c
    ON o.CUSTOMER_ID = c.CUSTOMER_ID 
GROUP BY
    c.CITY
ORDER BY AVERAGE_ORDER_AMOUNT DESC
```   

#### 06. `Products with no sales`
> List product_id and product_name for products that do not appear in order_items.
- Subqueries & EXISTS
Tables Used: `products order_items`  
```sql
SELECT
    p.PRODUCT_ID,
    p.PRODUCT_NAME
FROM
    PRODUCTS as p
    LEFT JOIN ORDER_ITEMS oi
    ON p.PRODUCT_ID = oi.PRODUCT_ID
WHERE
    oi.PRODUCT_ID IS NULL
```   

#### 07. `Monthly revenue for 2024`
> Return year_month (YYYY-MM) and total revenue for each month in 2024 from orders. Order results by month ascending.
- Date & Time Functions  
##### Hint used: `Extract year and month from order_date and GROUP BY it. Filter ORDER_DATE between '2024-01-01' and '2024-12-31'.`  
Tables Used: `orders`  
```sql
SELECT    
    strftime('%Y-%m', ORDER_DATE) AS YEAR_MONTH,
    ROUND(SUM(TOTAL_AMOUNT),2) AS TOTAL_REVENUE
FROM
    ORDERS
WHERE
    ORDER_DATE BETWEEN '2024-01-01' AND '2024-12-31'
GROUP BY
    YEAR_MONTH
ORDER BY YEAR_MONTH ASC
```   

#### 08. `Average rating per product`
> For each product, return product_id, product_name and average rating from reviews. Exclude products with no reviews.
- Grouping & HAVING
Tables Used: `products reviews`  
```sql
SELECT
    r.PRODUCT_ID,
    p.PRODUCT_NAME,
    ROUND(AVG(r.RATING),2) AS AVERAGE_RATING
FROM
    REVIEWS AS r
    JOIN PRODUCTS AS p
    ON r.PRODUCT_ID = p.PRODUCT_ID
GROUP BY
    r.PRODUCT_ID,
    p.PRODUCT_NAME
ORDER BY
    AVERAGE_RATING DESC
```   

#### 09. `Top-rated sellers by average product rating`  
> Find top 5 sellers ranked by the average rating of their products (use products.rating). Return seller_id, seller_name, avg_product_rating.
- Grouping & HAVING
Tables Used: `sellers products`  
```sql
SELECT
    s.SELLER_ID,
    s.SELLER_NAME,
    ROUND(AVG(p.RATING), 2) AS AVERAGE_PRODUCT_RATING
FROM
    SELLERS AS s
    LEFT JOIN PRODUCTS as p
    ON s.SELLER_ID = p.SELLER_ID 
GROUP BY
    s.SELLER_ID,
    s.SELLER_NAME
ORDER BY AVERAGE_PRODUCT_RATING DESC
LIMIT 5
```   

#### 10. `Orders with item count`  
> Return order_id and number_of_items per order by summing quantity from order_items.
- Grouping & HAVING
Tables Used: `orders order_items`  
```sql
SELECT
    o.ORDER_ID,
    SUM(oi.QUANTITY) AS NUMBER_OF_ITEMS
FROM
    ORDERS As o
    LEFT JOIN ORDER_ITEMS AS oi
    ON o.ORDER_ID = oi.ORDER_ID
GROUP BY
    o.ORDER_ID
```   

#### 11. `Customers with more than 3 orders`
> Find customer_id, name and order_count for customers who placed more than 3 orders.
- Grouping & HAVING
Tables Used: `orders customers`  
```sql
SELECT
    o.CUSTOMER_ID,
    c.NAME,
    COUNT(*) AS ORDER_COUNT
FROM
    ORDERS AS o
    LEFT JOIN CUSTOMERS AS c
    ON o.CUSTOMER_ID = c.CUSTOMER_ID
GROUP BY
    o.CUSTOMER_ID,
    c.NAME
HAVING 
    ORDER_COUNT > 3
```    

#### 12. `Best-selling category by volume`
> Identify category_id and category_name with the highest total quantity sold across all products and orders.
- Joins & Relationships
Tables Used: `order_items products categories`  
##### Hint used: `Join order_items -> products -> categories and SUM(quantity) GROUP BY category.`
```sql
SELECT
    p.CATEGORY_ID,
    c.CATEGORY_NAME,
    SUM(oi.QUANTITY) AS TOTAL_QUANTITY
FROM
    ORDER_ITEMS AS oi
    
    LEFT JOIN PRODUCTS AS p
    ON oi.PRODUCT_ID = p.PRODUCT_ID

    LEFT JOIN CATEGORIES c
    ON p.CATEGORY_ID = c.CATEGORY_ID
GROUP BY
    p.CATEGORY_ID,
    c.CATEGORY_NAME 
ORDER BY
    TOTAL_QUANTITY DESC
LIMIT 1
```   

#### 13. `Customers who placed an order in Electronics category`
> Find customer_id and name for customers who have ordered at least one product from the Electronics category.
- Subqueries & EXISTS
Tables Used: `customers orders order_items products categories`  
```sql

```   
