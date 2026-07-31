## `Full join`  

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
- Return ALL rows from BOTH tables
- Match where possible
- If no match → missing side becomes NULL
--- 
```sql
SELECT
    t.TrainName,
    p.PlatformNo
FROM Trains as t
    FULL JOIN Platforms as p
    ON t.PlatformId = p.PlatformId
```  
---  
#### `output`:  
| TrainName      | PlatformNo |
| -------------- | ---------- |
| Deccan Express | PF-1       |
| Shatabdi       | PF-2       |
| Intercity      | NULL       |
| Konkan Kanya   | NULL       |
| NULL           | PF-3       |
| NULL           | PF-4       |
---  