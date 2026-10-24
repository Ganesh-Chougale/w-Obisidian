```csharp
static int IsApprove(){
    if (Convert.ToBoolean(_objMstMenu.ApprovalReq) == true)
    {
        x = 101;
    }else{
        x = 0;
    }
    return x;
}
```  
```csharp
int intStatusCode = IsApprove();
```  