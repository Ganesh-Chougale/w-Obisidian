# While Work
## Date: `10-10-2026 (Saturday | शनिवार)` to 
## A. Menu Images
### Images: ``
![alt](../Z_imagges/10/Packing%20Details%20[707705].png)  
## B. Work Section
```yml
Description : 
Menu Path   : Procurement => Purchase Schedule => OutSource => Packing Details
Menu Ids    : Packing Details 
                |- MenuId = 707705
                |- TranType = 809
                |- TrnSubType = 15
                |- MenuDocNo = 80915
WFC         : 8
Ticket      : 
```  
## C. Database
#### New Tables
```yml
Tables     : TRN_PRD_PACKING_MAT_OUT_SOURCE
```  
#### New Tables
```yml
SPs        : 
            - SP_PACKING_DETAILS_OUT_SOURCE_PENDING_SCHEDULE_TAB_DATA
            - SP_PACKING_DETAILS_OUT_SOURCE_PURCHASE_SCHEDULE_TAB_DATA
```
## D. Programming
```yml
D to D      : DTOPackingDetailsOutSource, IPackingDetailsOutSource, DALPackingDetailsOutSource
BO          : PackingDetailsOutSource
Controller  : PackingDetailsOutSourceController
View        : Index, CreateAgPo, CreateSchedule
```  
## E. Git
```yml
Push Date   : 29-10-2026
```  

----------------------------------------------------------------------------------------------------    

# After Work
## A. Scripts
### Table scripts
- TRN_PRD_PACKING_MAT_OUT_SOURCE
```sql
USE [SRF_ERP]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TRN_PRD_PACKING_MAT_OUT_SOURCE](
    [TRN_NO] bigint NULL,
    [SR_NO] int NULL,
    [TRN_DATE] [dbo].[UTYPE_DateTime] NULL,
    [TRAN_SUB_TYPE] int NULL,
    [FINISH_MATERIAL_CODE] int NULL,
    [BOM_MATERIAL_CODE] int NULL,
    [PLAN_QTY] [dbo].[UTYPE_Decimal3] NULL,
    [PLAN_DATE] [dbo].[UTYPE_DateTime] NULL,
    [STATUS_CODE] int NULL,
    [PRD_QTY] [dbo].[UTYPE_Decimal3] NULL,
    [REF_TRN_NO] bigint NULL,
    [REF_AMEND_NO] int NULL,
    [FROM_COMPANY] int NULL,
    [CUSTOMER_CODE] int NULL,
    [CRT_BY] [dbo].[UTYPE_SHORT_Text1] NULL,
    [SUPPLIER_SUB_GL_ACNO] int NULL,
    [IS_SISTERS_COMPANY] int NULL,
    [SELLER_COMPANY_CODE] int NULL
)
ON [PRIMARY]
GO
```   
### Menu Creations
- Packing Details [707705]
```sql
INSERT INTO 
    [dbo].[MST_MENU] 
        ([MENU_ID], [MENU_SHORT_NAME], [MENU_NAME], [MENU_DOC_NO], [ENTRY_DAYS], [VIEW_DAYS], [PARENT_MENU_ID], [APPROVAL_REQ], [APPROVAL_LEVEL], [VOU_TYPE], [STATUS_CODE], [MODULE_ID]) 
    VALUES 
        (707705, N'PKDTOS', N'PKG DTS OUTSOURCE', 80915, 15, 60, 7077, 0, 1, N'PKDTOS', 0, 7);
-- Preview
SELECT * FROM [dbo].[MST_MENU] WHERE MENU_ID = 707705;
```   

## B. Comments for removal
- all done

## Save Order UI
1. Prodction
	- production plan
		- `packing details`

2. Sales
	- Sales schedule
		- `Monthly sales schedule`
		- `Daily Sales Schedule`
```
from packing details
Customer Name: A M TOOLINGS 
Part Name: BUSHING - Z37508
```

3. Procurement
	- Purchase Order
		- `Direct Purchase Order`
	- Approve
		- `Purchase Order`
```
from packing details
Supplier: AFCIL INDUSTRIES LTD  
Packing Material: BARR SADDLE - 1 INCH 
```

4. Procurement
	- Purchase Order
		- `Packing Details`
----------------------------------------------------------------------------------------------------    
## Save Order DB
```sql
-- 1. Save from packing details
SELECT * FROM TRN_PACKING_DETAILS_H 
WHERE TRN_DATE BETWEEN 20261017 AND 20261030;

SELECT * FROM TRN_PACKING_DETAILS_I
WHERE TRN_DATE BETWEEN 20261017 AND 20261030;

SELECT * FROM TRN_PACKING_DETAILS_I_BOM
WHERE TRN_DATE BETWEEN 20261017 AND 20261030;

SELECT * FROM TRN_PACKING_DETAILS_I_BOM_SUP
WHERE TRN_DATE BETWEEN 20261017 AND 20261030;

-- 2. Save from sale schedule
SELECT * FROM TRN_PRD_PACKING_MAT_OUT_SOURCE
WHERE TRN_DATE BETWEEN 20261017 AND 20261030;

SELECT * FROM TRN_PO_H
WHERE TRN_DATE BETWEEN 20261017 AND 20261030;

SELECT * FROM TRN_PO_MAT_I
WHERE TRN_DATE BETWEEN 20261017 AND 20261030;

SELECT * FROM TRN_SCHEDULE_H
WHERE TRN_DATE BETWEEN 20261017 AND 20261030;

SELECT * FROM TRN_SCHEDULE_I
WHERE TRN_DATE BETWEEN 20261017 AND 20261030;

-- 3. Save from purchase order
-- SELECT * FROM TRN_PO_H
-- WHERE TRN_DATE BETWEEN 20261017 AND 20261030;

SELECT * FROM TRN_PO_TAX
WHERE TRN_DATE BETWEEN 20261017 AND 20261030;

-- SELECT * FROM TRN_PO_MAT_I
-- WHERE TRN_DATE BETWEEN 20261017 AND 20261030;

-- SELECT * FROM TRN_SCHEDULE_H
-- WHERE TRN_DATE BETWEEN 20261017 AND 20261030;

-- SELECT * FROM TRN_SCHEDULE_I
-- WHERE TRN_DATE BETWEEN 20261017 AND 20261030;

SELECT * FROM TRN_ATTACHMENT
WHERE TRN_DATE BETWEEN 20261017 AND 20261030;

SELECT * FROM TRN_PO_MAT_CRM_I
WHERE TRN_DATE BETWEEN 20261017 AND 20261030;

SELECT * FROM TRN_PO_MAT_I_SCHEDULE
WHERE TRN_DATE BETWEEN 20261017 AND 20261030;

SELECT * FROM TRN_PO_MAT_I_COST_CENTER
WHERE TRN_NO BETWEEN 101262770111000029 AND 101262770111000034;
```   