File search string
```
- formatted trn no
- short trn no
- formatted trn_no
- short trn_no
```   
## 3 + 4 + 3 + 2 + 2 + 4 = `18 digits Transaction Number`  
| 3[Digits] (1, 3) | 4[Digits] (4, 4) | 3[Digits] (8, 3) | 2[Digits] (11, 2)  | 2[Digits] (13, 2) | 4[Digits] (15,4) |
| ---------------- | --------------- | ----------------- | ------------------ | ----------------- | ---------------- |
|   Company Id     | Financial Year  | Transaction Type  | Transaction Series | Monthly Number    | Auto increment   |
---  

`Transaction Series` = `Transaction Sub Type`  

E.g  
`101192020611092596`  
| Numnering|    Descriptions        |   Disect                                      |
| -------- | ---------------------- | --------------------------------------------- |
| 3 Digits |	Company ID:			|   `101`                                       |
| 4 Digits | 	Financial Year:		|   `1920`(FY: 2019 - 2020)                     |
| 3 Digits | 	Transaction Type:	|   `206`                                       |
| 2 Digits |	Transaction Series:	|   `11`                                        |
| 2 Digits |	Monthly Numerics:	|   `09` (September/ or sometimes default 00)   |
| 4 Digits |	Auto-Increment:		|   `2596`                                      |
---  
```csharp
        public string GrnNo { get; set; } // reciever variable need to be string
```  
```csharp
    GrnNo = obj.TRN_NO.ToString().Substring(3, 4) + "-" + obj.TRN_NO.ToString().Substring(obj.TRN_NO.ToString().Length - 6),
```  
Final Output will be   
`1920-092596`  

variable names can be different
```csharp
FormattedTrnNo = x.TRN_NO.ToString().Substring(3, 4) + "-" + x.TRN_NO.ToString().Substring(x.TRN_NO.ToString().Length - 6),
```  
or
```csharp
ShortTrnNo = x.TRN_NO.ToString().Substring(3, 4) + "-" + x.TRN_NO.ToString().Substring(x.TRN_NO.ToString().Length - 6),
```  