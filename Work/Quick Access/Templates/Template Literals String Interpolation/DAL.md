i will give you my old snippet, you have to convert it into template literal string interpolation.
keep in mind:
1. implement template literal string interpolation.
2. the file i'm sending you is .cs SQL DAL. follow these rules 
- 2a. use $@"" template literal string interpolation
- 2b. pass the paramters & variables safely
- 2c. keep the dal intedations like i shown in simple sql syntax below
```sql
SELECT
        DISTINCT TOP 10 *
FROM 
    TableA
    JOIN TableB 
    ON TableA.id = TableB.id
WHERE 
    Column1 = 'Value'
    AND Column2 > 100
GROUP BY 
    Column3
HAVING
    COUNT(*) > 1
ORDER BY 
    Column3 DESC;
```   
3. give me entire snippet in oneshot
4. syntax error is strictly prohibited

old snippet
```csharp

```  
& after that tell me 
A. tell me my old & your snippet both are same or not in yes or no
B. if i replace it, it will work 100% same as old or not, because i want that.