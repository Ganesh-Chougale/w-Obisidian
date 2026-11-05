## TrnNo => ShortTrnNo
```csharp
TrnNo = objDto.TRN_NO,
ShortTrnNo = objDto.TRN_NO.ToString().Substring(3, 4) + "-" + objDto.TRN_NO.ToString().Substring(objDto.TRN_NO.ToString().Length - 6)
```  
## TrnDate => FormattedTrnDate
```csharp
TrnDate = objDto.TRN_DATE,
FormattedTrnDate = DateUtility.getFormatedDate(objDto.TRN_DATE, 0)
```  