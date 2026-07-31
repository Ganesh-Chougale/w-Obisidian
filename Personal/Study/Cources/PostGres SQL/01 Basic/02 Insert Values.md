# Insert values into table  
```sql
INSERT INTO EMPLOYEE
(
	EMP_NAME, POSITION, DEPARTMENT, HIRE_DATE, SALARY
)
VALUES
(
	'ABC', 'BROKER', 'FINANCE', CURRENT_DATE, 50000
);
```   
# Insert multiple values into table  
```sql
INSERT INTO EMPLOYEE
(
	EMP_NAME, POSITION, DEPARTMENT, HIRE_DATE, SALARY
)
VALUES
( 'DEF', 'STALKER', 'DEFENCE', CURRENT_DATE, 150000),
( 'HIG', 'FITTER', 'CONSTRUCTION', CURRENT_DATE, 50000);
--  ............... keep adding rows
```   