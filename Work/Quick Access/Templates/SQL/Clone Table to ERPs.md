- duplicate tables
- replicate tables
- clone tables
- copy table script
### 1. SRF_ERP
```sql
USE [SRF_ERP]

```   
### 2. ALKA_ERP
```sql
USE [ALKA_ERP]


```   

### 3. ATHARAV_ERP
```sql
USE [ATHARAV_ERP]


```   
### 4. HO_TECH_ERP
```sql
USE [HO_TECH_ERP]

```   
## OR just keep removing used + uncomment next 
`DO NOT do drop & Create, only do Create or else saved records will be gone`
USE [SRF_ERP]
```sql
-- USE [ALKA_ERP]

-- USE [ATHARAV_ERP]

-- USE [HO_TECH_ERP]
```   
then Check your table  
```sql
SELECT * FROM SRF_ERP..
SELECT * FROM ALKA_ERP..
SELECT * FROM ATHARAV_ERP..
SELECT * FROM HO_TECH_ERP..
```   