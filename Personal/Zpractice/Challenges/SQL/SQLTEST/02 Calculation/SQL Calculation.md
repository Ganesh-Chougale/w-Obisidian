#### Task 01
> Calculate circle perimeter
Write a query to calculate the perimeter of a circle with diameter 7. Display the result in the circle_perimeter column.
formulae: 2πr
- SMSS
```sql
DECLARE @diameter FLOAT = 7;
DECLARE @result FLOAT;

SET @result = ROUND(
					2 * PI() * (@diameter / 2),
					6);  -- get until 6th decimal point

SELECT @result AS circle_perimeter;
```

- MySQL
```sql
SET @diameter := 7;
SET @result := ROUND(
                        2 * PI() * (@diameter / 2),
                    6); -- get until 6th decimal point

SELECT @result AS circle_perimeter;
```   

#### Task 02
> Calculate the area of a circle
Write a query to calculate the area of a circle with a radius of 12. Round the result to 6 decimal places and display it in the circle_area column   
formulae: 𝜋(𝑟*r)

- SMSS
```sql
DECLARE @radius FLOAT = 12;
DECLARE @result FLOAT;

SET @result = ROUND(
					    PI() * (@radius * @radius),
					6);  -- get until 6th decimal point

SELECT @result AS circle_area;
```  
- MySql
```sql
SET @radius := 12;
SET @result := ROUND(
                        PI() * (@radius * @radius),
                    6); -- get until 6th decimal point

SELECT @result AS circle_area;
```

#### Task 03
> Find the hypotenuse of a triangle
Find the length of the hypotenuse of a right triangle with legs equal to 2 and 3.  
Output the result in the hypotenuse column. Round the result to three decimal places.  

- SMSS
```sql

```  
- MySql
```sql

```





#### Task 
> 

Tables Used:   
- SMSS
```sql

```  
- MySql
```sql

```