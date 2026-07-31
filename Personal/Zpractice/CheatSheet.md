### 1. `Writing Order`
```
1. SELECT
2. DISTINCT
3. FROM
4. JOIN
5. WHERE
6. GROUP BY
7. HAVING
8. ORDER BY
9. LIMIT
10. OFFSET
```  
### 2. `Execution Order`  
```
FROM     ⇒ JOIN ⇒
WHERE    ⇒ GROUP BY ⇒
HAVING   ⇒ SELECT ⇒
DISTINCT ⇒ ORDER BY ⇒ 
LIMIT    ⇒ OFFSET
```
### 3. `Statement Chaining`
```
SELECT:     ,
WHERE:      AND / OR
ORDER BY:   ,
GROUP BY:   ,
HAVING:     AND / OR
```
`,`   → “also include this”  
`AND` → “must satisfy both”  
`OR`  → “any one is enough”  