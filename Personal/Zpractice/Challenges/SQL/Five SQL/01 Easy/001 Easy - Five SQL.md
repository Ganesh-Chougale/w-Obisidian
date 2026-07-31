#### 01. `List all customers`

> Retrieve every column for all customers from the customers table.
- Basic SELECT & Filtering  
Tables Used: `customers`  
```sql
SELECT * FROM CUSTOMERS;
```   


#### 02. `Customers from Bengaluru`
> Return customer_id, name and email for customers located in Bengaluru.
- Basic SELECT & Filtering
Tables Used: `customers`  
```sql
SELECT 
    CUSTOMER_ID, 
    NAME, 
    EMAIL 
FROM 
    CUSTOMERS
WHERE 
    CITY = 'Bengaluru'
```   

#### 03. `Count total orders`
> Return a single value showing total number of orders in the orders table.
- Aggregate Functions  
Tables Used: `orders`  
```sql
SELECT
    COUNT(*)
FROM
    ORDERS
```   

#### 04. `Top 10 most expensive products`
> List product_id, product_name and price for the 10 highest priced products.
- Sorting & Limiting
Tables Used: `products`  
```sql
SELECT
    PRODUCT_ID,
    PRODUCT_NAME,
    PRICE
FROM
    PRODUCTS
ORDER BY
    PRICE DESC
LIMIT 10
```   

#### 05. `Products low in stock`
> Return product_id, product_name and stock_qty for products with stock_qty less than 50.
- Basic SELECT & Filtering  
Tables Used: `products`  
```sql
SELECT
    PRODUCT_ID,
    PRODUCT_NAME,
    STOCK_QTY
FROM
    PRODUCTS
WHERE
    STOCK_QTY < 50;
```   

#### 06. `Average product rating`
> Calculate the average rating for all products. Show as avg_rating with two decimals.
- Aggregate Functions    
Tables Used: `products`  
```sql
SELECT
    AVG(RATING) AS avg_rating
FROM
    PRODUCTS;
```   
`or`
```sql
SELECT
    ROUND(AVG(rating),2) AS avg_rating
FROM
    PRODUCTS;
```   

#### 07. `Distinct cities of customers`
> List unique cities where customers are registered.
- Basic SELECT & Filtering  
Tables Used: `customers`  
```sql
SELECT
    DISTINCT(CITY)
FROM
    CUSTOMERS
```   

#### 08. `Recent 5 orders`
> Return order_id, customer_id, order_date and total_amount for the 5 most recent orders.
- Sorting & Limiting  
Tables Used: `orders`  
```sql
SELECT
    ORDER_ID,
    CUSTOMER_ID,
    ORDER_DATE,
    TOTAL_AMOUNT
FROM
    ORDERS
ORDER BY
    ORDER_DATE DESC
LIMIT 5
```   

#### 09. `Total revenue across all orders`
> Compute the sum of total_amount from orders as total_revenue.
- Aggregate Functions  
Tables Used: `orders`  
```sql
SELECT
    SUM(TOTAL_AMOUNT)
FROM
    ORDERS
```   

#### 10. `Most frequent courier`  
> Identify which courier handled the most shipments. Return courier and shipment_count.
- Grouping & HAVING  
Tables Used: `shipments`  
##### Hit used: `GROUP BY courier and ORDER BY COUNT DESC LIMIT 1.`  
```sql
SELECT
    COURIER,
    COUNT(*) AS SHIPMENT_COUNT
FROM
    SHIPMENTS
GROUP BY
    COURIER
ORDER BY SHIPMENT_COUNT DESC
LIMIT 1
```   

#### 11. `Patients: male list`  
> Show first name, last name, and gender of patients whose gender is 'M'.
- Basic SELECT / WHERE  
Tables Used: `patients`  
```sql
SELECT
    FIRST_NAME,
    LAST_NAME,
    GENDER
FROM
    PATIENTS
WHERE
    GENDER = 'M'
```   

#### 12. `Patients without allergies`
> Show first name and last name of patients who do not have allergies (NULL).
- NULL filtering  
Tables Used: `patients`  
```sql
SELECT
    FIRST_NAME,
    LAST_NAME
FROM
    PATIENTS
WHERE
    ALLERGIES IS NULL
```   

#### 13. `Patients starting with C`
> Show first name of patients that start with the letter 'C'.
- String matching (LIKE)  
Tables Used: `patients`  
##### Hint used: `Use WHERE first_name LIKE 'C%'.`  
```sql
SELECT
    FIRST_NAME
FROM
    PATIENTS
WHERE 
    FIRST_NAME LIKE('C%')
```    

#### 14. `Patients weight range 50-60`  
> Show first name and last name of patients whose weight is within 50 to 60 (inclusive).
- Range filter / BETWEEN  
Tables Used: `patients`
```sql
SELECT
    FIRST_NAME,
    LAST_NAME
FROM
    PATIENTS
WHERE
    WEIGHT >=50
    AND WEIGHT <=60
```   
`OR`
```sql
SELECT
    FIRST_NAME,
    LAST_NAME
FROM
    PATIENTS
WHERE
    WEIGHT BETWEEN 50 AND 60    
```   

#### 15. `Patients with no known allergies`
> Show patient_id, first_name, last_name for patients whose allergies are NULL or 'NKA'.
- SELECT & NULL handling  
Tables Used: `patients`  
```sql
SELECT
    PATIENT_ID,
    FIRST_NAME,
    LAST_NAME
FROM
    PATIENTS
WHERE
    ALLERGIES IS NULL 
    OR ALLERGIES = 'NKA'
```   
`OR`  
```sql
SELECT
    PATIENT_ID,
    FIRST_NAME,
    LAST_NAME
FROM
    PATIENTS
WHERE
    ALLERGIES IS NULL 
    OR ALLERGIES IS 'NKA'
```   

#### 16. `Concatenate full name`
> Show first name and last name concatenated into one column as full name.
- String concatenation
Tables Used: `patients`  
```sql
SELECT
     CONCAT(FIRST_NAME, ' ', LAST_NAME) AS FULL_NAME
FROM
    PATIENTS;
```   
`OR`
```sql
SELECT 
    first_name || ' ' || last_name AS full_name 
FROM
    patients;
```   

#### 17. `Patients with province full name`  
> Show first name, last name, and the full province name (e.g., 'Ontario' instead of 'ON').
- JOINs
Tables Used: `patients`, `province_names`
```sql
SELECT
    PAT.FIRST_NAME,
    PAT.LAST_NAME,
    PN.PROVINCE_NAMES
FROM
    PATIENTS AS PAT
LEFT JOIN PROVINCE_NAMES AS PN
ON PAT.PROVINCE_ID = PN.PROVINCE_ID 
```   

#### 18. `Count patients born in 2010`
> Show how many patients have a birth_date with 2010 as the birth year.
- Date extraction / COUNT  
Tables Used: `patients`  
```sql
SELECT
    COUNT(*)    
FROM
    PATIENTS
WHERE
    BIRTH_DATE LIKE '2010%' 
```   

#### 19. `Tallest patient`
> Show the first_name, last_name, and height of the patient with the greatest height.
- Aggregation / ORDER BY / LIMIT  
Tables Used: `patients` 
- without aggregate  
```sql
SELECT
    FIRST_NAME,
    LAST_NAME,
    HEIGHT
FROM
    PATIENTS
ORDER BY HEIGHT DESC
LIMIT 1
```   

#### 20. `Patients by IDs list`
> Show all columns for patients who have one of the following patient_ids: 1,45,534,879,1000.
- IN operator
Tables Used: `patients`
```sql
SELECT
    *
FROM
    PATIENTS
WHERE
    PATIENT_ID IN (1,45,534,879,1000)
```   

#### 21. `Total number of admissions`
> Show the total number of admissions.
- Aggregate Functions
Tables Used: `admissions`  
```sql
SELECT
    COUNT(ADMISSION_ID)
FROM
    ADMISSIONS
```   

#### 22. `Admissions admitted and discharged same day`
> Show all columns from admissions where the patient was admitted and discharged on the same day.
Tables Used: `admissions`  
```sql
SELECT
    *
FROM
    ADMISSIONS
WHERE
    ADMISSION_DATE = DISCHARGE_DATE
```   

#### 23. `Admissions count for a specific patient`
> Show the patient id and the total number of admissions for patient_id 3.
- Grouping & HAVING  
Tables Used: `admissions`  
```sql
SELECT
    PATIENT_ID,
    COUNT(ADMISSION_ID) AS ADMISSION_COUNT
FROM
    ADMISSIONS
WHERE
    PATIENT_ID = 3
GROUP BY
    PATIENT_ID
```   

#### 24. `Unique cities in province 'NS'`
> Based on patients' cities, show unique cities that are in province_id 'NS'.
- Basic SELECT & Filtering
Tables Used: `patients`
```sql
SELECT
    DISTINCT CITY
FROM
    PATIENTS
WHERE
    PROVINCE_ID = 'NS'
```   

#### 25. `Patients taller than 160 and heavier than 70`
> Find first_name, last_name, and birth_date of patients who have height > 160 and weight > 70.
- Basic SELECT & Filtering
Tables Used: `patients`  
```sql
SELECT
    FIRST_NAME,
    LAST_NAME,
    BIRTH_DATE
FROM
    PATIENTS
WHERE
    HEIGHT > 160
    AND WEIGHT > 70
```   

#### 26. `Patients in Hamilton with allergies`
> List patients' first_name, last_name, and allergies where allergies IS NOT NULL and city = 'Hamilton'.
- Basic SELECT & Filtering
Tables Used: `patients`  
```sql
SELECT
    FIRST_NAME,
    LAST_NAME,
    ALLERGIES
FROM
    PATIENTS
WHERE
    ALLERGIES IS NOT NULL
    AND CITY = 'Hamilton'
```   
