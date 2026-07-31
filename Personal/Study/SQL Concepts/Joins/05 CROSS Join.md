## `CROSS join`  

<div style="display:flex; gap:40px; align-items:flex-start;">

  <!-- Trains table -->
<table border="1" cellpadding="6" cellspacing="0">
  <caption><strong>Trains</strong></caption>
  <tr>
    <th>TrainId (pk)</th>
    <th>TrainName</th>
    <th>PlatformId (fk)</th>
  </tr>
  <tr>
    <td>101</td>
    <td>Deccan Express</td>
    <td>11</td>
  </tr>
  <tr>
    <td>102</td>
    <td>Shatabdi</td>
    <td>22</td>
  </tr>
  <tr>
    <td>103</td>
    <td>Intercity</td>
    <td>NULL</td>
  </tr>
  <tr>
    <td>104</td>
    <td>Konkan Kanya</td>
    <td>55</td>
  </tr>
</table>


  <!-- Platforms table -->
  <table border="1" cellpadding="6" cellspacing="0">
  <caption><strong>Platforms</strong></caption>
  <tr>
    <th>PlatformId (pk)</th>
    <th>PlatformNo</th>
  </tr>
  <tr>
    <td>11</td>
    <td>PF-1</td>
  </tr>
  <tr>
    <td>22</td>
    <td>PF-2</td>
  </tr>
  <tr>
    <td>33</td>
    <td>PF-3</td>
  </tr>
  <tr>
    <td>44</td>
    <td>PF-4</td>
  </tr>
</table>

</div>

--- 
- Every row from Trains pairs with every row from Platforms
- No matching condition
- Result = rows × rows  
eg. `4` x `4` = `16` rows total  
---
```sql
SELECT
    t.TrainName,
    p.PlatformNo
FROM Trains as t
    CROSS JOIN Platforms as p
```   
---  
#### `output`:  
| TrainName      | PlatformNo |
| -------------- | ---------- |
| Deccan Express | PF-1       |
| Deccan Express | PF-2       |
| Deccan Express | PF-3       |
| Deccan Express | PF-4       |
| Shatabdi       | PF-1       |
| Shatabdi       | PF-2       |
| Shatabdi       | PF-3       |
| Shatabdi       | PF-4       |
| Intercity      | PF-1       |
| Intercity      | PF-2       |
| Intercity      | PF-3       |
| Intercity      | PF-4       |
| Konkan Kanya   | PF-1       |
| Konkan Kanya   | PF-2       |
| Konkan Kanya   | PF-3       |
| Konkan Kanya   | PF-4       |
🚨 Key warning (very important in real systems)
- CROSS JOIN can explode rows
- 1,000 × 1,000 = 1,000,000 rows
- Use only when intentional
---  