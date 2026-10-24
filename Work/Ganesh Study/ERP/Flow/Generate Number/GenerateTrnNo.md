```csharp
static int GenerateTrnNo(){
    if (_dtoCnfTranTypes != null)
    {
        if (Convert.ToBoolean(_dtoCnfTranTypes.MONTHLY_NUMBERING) == true)
        {
            intTrnNo = _dalPackingDetailsOutSource.GetMonthlyTrnNo(TranType, _dtoCnfTranTypes.TRAN_SERIES, strTranDate.Substring(0, 6));
            if (intTrnNo == 1)
            {
                intTrnNo = CustomTranNo.GetCustomMonthlyTranNo(TranType, _dtoCnfTranTypes.TRAN_SERIES, strTranDate);
            }
        }
        else
        {
            intTrnNo = _dalPackingDetailsOutSource.GetTrnNo(TranType, _dtoCnfTranTypes.TRAN_SERIES, strFinancialYear);
            if (intTrnNo == 1)
            {
                intTrnNo = CustomTranNo.GetCustomTranNo(TranType, _dtoCnfTranTypes.TRAN_SERIES, strTranDate);
            }
        }
    }
}
```  
```csharp
Int64 intTrnNo = GenerateTrnNo();
```  