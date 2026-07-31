
#### Task 04
> Find the number of employees
Find the number of employees in each department.
Output the name of the department DEPARTMENT and the number of employees in it EMP_COUNT.
Sort the results by descending number of employees, then by department name alphabetically.

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