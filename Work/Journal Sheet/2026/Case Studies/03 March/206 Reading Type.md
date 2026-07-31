## Date: `18-03-2026 (Wednesday | बुधवार)` to `29-03-2026 (Sunday | रविवार)`  
### Work: `ReadIng Type` ⇒ `Station-No` ⇒ `Auto-Reading-Sr-No`  
```yml
Flow        : 
                1. Production => Configuration => Product Operation Wise Gauges => New => [ First Approval Tab & Process Inspection Tab ]  
                2. Production => Configuration => Product Operation Wise Gauges - Amend => New => Any row selection => [ First Approval Tab & Process Inspection Tab ]  

Ticket      : 206
WFC         : 14
```  
### Programming
```yml
Dal         : DALMstAutoGaugeStation
BO          : ProductOperationWiseGauge, ProductOperationWiseGaugeAmend, MstAutoGaugeStation
Controller  : ProductOperationWiseGaugeController, ProductOperationWiseGaugeAmend
View        : POWG(Create, Approve, Edit, Delete, Details), POWGA(Create, Approve, Edit, Delete, Details) 
```  
### Database
##### Operation Tables
```yml
- PRODUCT_OPERATION_WISE_GAUGE_I
- PRODUCT_OPERATION_WISE_GAUGE_I_PROCESS
- MST_AUTO_GAUGE_STATION
```  
##### New Table 
```yml
- MST_AUTO_GAUGE_STATION
STATION_CODE	    int	            Checked
COMPANY_ID	        int	            Checked
STATION_NAME	    nvarchar(50)	Checked
IP_ADRESS	        nvarchar(50)	Checked
LINK_SERVER_ID	    nvarchar(50)	Checked
STATION_TABLE_NAME	nvarchar(50)	Checked
STATUS_CODE	        int	            Checked
```
##### New column in old tables 
```yml
READING_TYPE	    int	            Checked

to both 
- PRODUCT_OPERATION_WISE_GAUGE_I
- PRODUCT_OPERATION_WISE_GAUGE_I_PROCESS
```
```sql
-- demo insertions
INSERT INTO ERP_MASTERS..MST_AUTO_GAUGE_STATION
(
    STATION_CODE,
    COMPANY_ID,
    STATION_NAME,
    IP_ADRESS,
    LINK_SERVER_ID,
    STATION_TABLE_NAME,
    STATUS_CODE
)
VALUES
(10100001, 20100001, 'Kagal', '192.168.10.11', 'LS_KAGAL', 'DEMO_TB_KAGAL', 0),
(10100002, 20100002, 'Shiroli', '192.168.10.12', 'LS_SHIROLI', 'DEMO_TB_SHIROLI', 0),
(10100003, 20100003, 'Gokul Shirgaon', '192.168.10.13', 'LS_GOKUL', 'DEMO_TB_GOKUL', 0),
(10100004, 20100004, 'Parvati Estates', '192.168.10.14', 'LS_PARVATI', 'DEMO_TB_PARVATI', 0),
(10100005, 20100005, 'Chh Shivaji Udyam Nagar', '192.168.10.15', 'LS_SHIVAJI', 'DEMO_TB_SHIVAJI', 0);

SELECT * FROM ERP_MASTERS..MST_AUTO_GAUGE_STATION;
```   

```sql
-- ALUMINIUM MASTER CASTING FOR 4WD HOUSING - CA 410938 ( SPICER) CORE BOX COPE 
DECLARE @MatCode Int = '1010104751'
DECLARE @OpCode Int = '1010000001'
DECLARE @MachCode Int = '1010003529'

SELECT * FROM PRODUCT_OPERATION_WISE_GAUGE_H WHERE MATERIAL_CODE = @MatCode AND OPERATION_CODE = @OpCode AND MACHINE_CODE = @MachCode
SELECT * FROM PRODUCT_OPERATION_WISE_GAUGE_I WHERE MATERIAL_CODE = @MatCode AND OPERATION_CODE = @OpCode AND MACHINE_CODE = @MachCode
SELECT * FROM PRODUCT_OPERATION_WISE_GAUGE_I_PROCESS WHERE MATERIAL_CODE = @MatCode AND OPERATION_CODE = @OpCode AND MACHINE_CODE = @MachCode

--UPDATE PRODUCT_OPERATION_WISE_GAUGE_H SET STATUS_CODE = 0 WHERE MATERIAL_CODE = @MatCode AND OPERATION_CODE = @OpCode AND MACHINE_CODE = @MachCode
--UPDATE PRODUCT_OPERATION_WISE_GAUGE_I SET STATUS_CODE = 0 WHERE MATERIAL_CODE = @MatCode AND OPERATION_CODE = @OpCode AND MACHINE_CODE = @MachCode
--UPDATE PRODUCT_OPERATION_WISE_GAUGE_I_PROCESS SET STATUS_CODE = 0 WHERE MATERIAL_CODE = @MatCode AND OPERATION_CODE = @OpCode AND MACHINE_CODE = @MachCode
```   
----------------------------------------------------------------------------------------------------  

