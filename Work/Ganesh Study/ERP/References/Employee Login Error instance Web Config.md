1. Web Config from `ZanvarGroup` 
```xml
    <add key="CompanyId" value="101" />
    <add key="config:CompanyShortName" value="SRF" />
    <add key="config:ShortName" value="SRF" />
    <add key="config:SystemDataBase" value="ERP_MASTERS" />
    <add key="config:ERPDataBase" value="SRF_ERP" />
```
```csharp
  <connectionStrings>
    <!--<add name="DefaultConnection" connectionString="Data Source=(localdb)\V11.0;Initial Catalog=SmartAdminMvc;Integrated Security=SSPI" providerName="System.Data.SqlClient" />-->
    <!-- <add name="DefaultConnection" connectionString="Data Source=10.10.1.18;Initial Catalog=SmartAdminMvc;Integrated Security=SSPI" providerName="System.Data.SqlClient" />-->
    <add name="MasterDBConnection" connectionString="Data Source=DESKTOP-J57A6GE;Initial Catalog=ERP_MASTERS;Integrated Security=False;MultipleActiveResultSets=True;uid = sa; password =sa1234#;Connection Timeout=900" providerName="System.Data.SqlClient" />
    <add name="TransactionDBConnection" connectionString="Data Source=DESKTOP-J57A6GE;Initial Catalog=SRF_ERP;Integrated Security=False;MultipleActiveResultSets=True;uid = sa; password =sa1234#;Connection Timeout=900" providerName="System.Data.SqlClient" />
    <add name="ReportDBConnection" connectionString="Data Source=10.10.1.18;Initial Catalog=ERP_REPORT;Integrated Security=False;MultipleActiveResultSets=True;uid = sa; password =sa1234#;Connection Timeout=900" providerName="System.Data.SqlClient" />
    <add name="CalibrationDBConneection" connectionString="Data Source=10.10.4.22;Initial Catalog=WEB_CALIBRATION;Integrated Security=False;MultipleActiveResultSets=True;uid = sa; password =sa1234#;Connection Timeout=900" providerName="System.Data.SqlClient" />
  </connectionStrings>
```  
2. Web Config from `ZanvarGroup.Masters` => Connection tag
```xml
  <connectionStrings>
    <add name="DefaultConnection" connectionString="Data Source=DESKTOP-J57A6GE;AttachDbFilename=|DataDirectory|\aspnet-ZanvarGroup.Masters-20171230110224.mdf;Initial Catalog=aspnet-ZanvarGroup.Masters-20171230110224;Integrated Security=True" providerName="System.Data.SqlClient" />    
    <add name="MasterDBConnection" connectionString="Data Source=DESKTOP-J57A6GE;Initial Catalog=ERP_MASTERS;Integrated Security=False;MultipleActiveResultSets=True;uid =sa; password =sa1234#;" providerName="System.Data.SqlClient" />
    <add name="TransactionDBConnection" connectionString="Data Source=DESKTOP-J57A6GE;Initial Catalog=SRF_ERP;Integrated Security=False;MultipleActiveResultSets=True;uid =sa; password =sa1234#;" providerName="System.Data.SqlClient" />
    <add name="ReportDBConnection" connectionString="Data Source=10.10.1.3;Initial Catalog=ERP_REPORT;Integrated Security=False;MultipleActiveResultSets=True;uid = sa; password =sa1234#;" providerName="System.Data.SqlClient" />
    <add name="CalibrationDBConneection" connectionString="Data Source=10.10.4.22;Initial Catalog=WEB_CALIBRATION;Integrated Security=False;MultipleActiveResultSets=True;uid = sa; password =sa1234#;Connection Timeout=900" providerName="System.Data.SqlClient" />
  </connectionStrings>
```  
3. Web Config from `ZanvarGroup.SSO` => Connection tag
```xml
  <connectionStrings>
    <add name="MasterDBConnection" connectionString="Data Source=DESKTOP-J57A6GE;Initial Catalog=ERP_MASTERS;Integrated Security=False;MultipleActiveResultSets=True;uid = sa; password =sa1234#;Connection Timeout=900" providerName="System.Data.SqlClient" />
    <add name="TransactionDBConnection" connectionString="Data Source=DESKTOP-J57A6GE;Initial Catalog=SRF_ERP;Integrated Security=False;MultipleActiveResultSets=True;uid = sa; password =sa1234#;Connection Timeout=900" providerName="System.Data.SqlClient" />
    <add name="ReportDBConnection" connectionString="Data Source=10.10.1.3;Initial Catalog=ERP_REPORT;Integrated Security=False;MultipleActiveResultSets=True;uid = sa; password =sa1234#;" providerName="System.Data.SqlClient" />
    <add name="CalibrationDBConneection" connectionString="Data Source=10.10.4.22;Initial Catalog=WEB_CALIBRATION;Integrated Security=False;MultipleActiveResultSets=True;uid = sa; password =sa1234#;Connection Timeout=900" providerName="System.Data.SqlClient" />
  </connectionStrings>
```  
```csharp
    <add key="CompanyId" value="101" />
```  


## Credentials
1. SRF_ERP
ID: `snkhade`
Password: `Ztcs@1234` or `Ztcs@123`

2. HO_ENT_ERP_LIVE
ID: `smunde`
Password: `Ztcs@1234` or `Ztcs@123`