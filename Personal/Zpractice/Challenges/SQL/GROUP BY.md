## How to & where to use `GROUP BY` Statment
- group by  
- group by statement  
here we are taking a department name & its employee count
```sql
SELECT
    DEPT.DEPARTMENT AS DEPARTMENT,
    COUNT(EMP.EMP_NO) AS EMP_COUNT
FROM
    DEPARTMENT AS DEPT
     
    LEFT JOIN EMPLOYEE AS EMP
    ON EMP.DEPT_NO = DEPT.DEPT_NO

ORDER BY
    EMP_COUNT
```  

but this wont work because for aggregate function like count we need to use GROUP BY clause. & add all fields which is not aggregate function 
in our case the select statement only has these fields
```sql
DEPT.DEPARTMENT AS DEPARTMENT,
COUNT(EMP.EMP_NO) AS EMP_COUNT
```   
here `DEPT.DEPARTMENT AS DEPARTMENT` is only field which is non-aggrigated field.
so we need this in GROUP BY statment.
GROUP BY statement always comes after WHERE clause

```sql
SELECT
    DEPT.DEPARTMENT AS DEPARTMENT,
    COUNT(EMP.EMP_NO) AS EMP_COUNT
FROM
    DEPARTMENT AS DEPT
    
    LEFT JOIN EMPLOYEE AS EMP 
    ON DEPT.DEPT_NO = EMP.DEPT_NO

-------------------------------
GROUP BY
    DEPT.DEPARTMENT
-------------------------------

ORDER BY
    EMP_COUNT DESC,
    DEPARTMENT ASC;

```   