`Description` : Appending two columns ROTEP Rate & ROTEP Amount and saving it in Database accordingly.  
### `Search Strings`
```
cs_rotep_rate
cs_rotep_amount
```

### Steps:
1. Added 
- `ROTEP_RATE` & 
- `ROTEP_AMOUNT`  
to *TRN_SALE_PACK_I*  table  
2. Added getter setters to 
- DTO `DTOTrnSalePackI` 
- BO `SalePackI`   
3. Added field into DAL: `DALTrnSalePackI` create method  
4. Increased those fields into `Create()` => `Insert()`'s transaction scope  
5. Did not need to touch controller. but increased 2 columns in `Create` View page table
6. for 
- ROTEP RATE  
if DBK rate is 1.5 => rotep rate 0.9  
if DBK rate is 2.0 => rotep rate 0.5  
- ROTEP AMOUNT  
rotep rate applied on FOB amount  
`ROTEP Amount = FOB × ROTEP Rate / 100`  
7. any change of the previous columns will change the further values  
```
FOB = OC Amount × Ship Rate  
Duty Amount = FOB × DBK Rate  
ROTEP Amount = FOB × ROTEP Rate
```
8. grabbing the values of both columns & push them into saving array
9. added fields in GET methods wherever required