after git push if ERP password not working. then check these: 
- `d:\zanvargroup\source\erp\zanvargroup.sso\web.config`  
-  `d:\zanvargroup\source\erp\zanvargroup.masters\web.config`  
if you these
```csharp
<add name="MasterDBConnection" connectionString="Data Source=10.10.1.3;Initial Catalog=ERP_MASTERS;Integrated Security=False;MultipleActiveResultSets=True;uid = sa; password =sa1234#;Connection Timeout=900" providerName="System.Data.SqlClient" />

<add name="TransactionDBConnection" connectionString="Data Source=10.10.1.3;Initial Catalog=SRF_ERP;Integrated Security=False;MultipleActiveResultSets=True;uid = sa; password =sa1234#;Connection Timeout=900" providerName="System.Data.SqlClient" />
```  
here 
- Data Source=`10.10.1.3`  
it should be Data Source=`DESKTOP-J57A6GE`

- Catalog=`ALKA_ERP`;
it should be Catalog=`SRF_ERP`;

even this not work then check other web.config files too.

& check for company id too
```csharp
<add key="CompanyId" value="101" />
```  
if its not 101 then make it 101.  