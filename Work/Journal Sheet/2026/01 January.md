#### Date: `01-01-2026`  
```yml
Work        : Shortage Within & Beyond Limit
Flow        : Material Management=> Other=> Weight Slip=> CardPopup_GRN
Dal         : DALRawMaterialReconcilliation
BO          : RawMaterialReconcilliation
Controller  : WeightSlipController
View        : Index.cshtml
Notes       :
```  
-------------------------------------------------------------------------------------------------------------------
#### Date: `02-01-2026`  
```yml
Work        : Total DN/Purchase return
Flow        : Material Management=> Other=> Weight Slip=> CardPopup_GRN
Dal         : DALRawMaterialReconcilliation
BO          : RawMaterialReconcilliation
Controller  : WeightSlipController
View        : Index.cshtml
Notes       :
```  
-------------------------------------------------------------------------------------------------------------------
#### Date: `03-01-2026` to `06-01-2026`  
```yml
Work        : Job get pass against PO pending wt lock
Flow        : Job Work=> Gate Pass=> Job Get Pass Ag Po=> New => Customer Name => Any Entry
Dal         : DALGetPendingForWeightUpdate
BO          : GetPendingForWeightUpdate
Controller  : JobWorkGetPassAgPoController
View        : JobWorkGetPassAgPo/pendingjobworkchallan.cshtml
Notes       : 
```  
-------------------------------------------------------------------------------------------------------------------
#### Date: `07-01-2026`  
```yml
Work        : Planning Sale Schedule Pending Wt Lock
Flow        : Production=> Production Plan=> Planning Sale Schedule=> New=> select rows via checkbox=> Next button
Dal         : DALGetPendingForWeightUpdate
BO          : GetPendingForWeightUpdate
Controller  : JobWorkGetPassAgPoController
View        : OrderList.cshtml
Notes       :
```  
-------------------------------------------------------------------------------------------------------------------
#### Date: `08-01-2026`  
```yml
Work        : Job get pass pending wt lock
Flow        : Job Work=> Gate Pass=> Job Get Pass=> New => Customer Name => check boxes
Dal         : DALGetPendingForWeightUpdate
BO          : GetPendingForWeightUpdate
Controller  : JobWorkGetPassController
View        : JobWorkGetPass/pendingjobworkchallan.cshtml
Notes       :
```  
-------------------------------------------------------------------------------------------------------------------
#### Date: `09-01-2026`  
```yml
Work        : Job get pass against PO with Bom pending wt lock
Flow        : Job Work=> Gate Pass=> Job Get Pass Ag Po with BOM=> New => Customer Name => Order Name
Dal         : DALGetPendingForWeightUpdate
BO          : GetPendingForWeightUpdate
Controller  : JobWorkGetPassAgPoWithBomController
View        : JobWorkGetPassAgPoWithBom/PendingPo
Notes       :
```  
-------------------------------------------------------------------------------------------------------------------
#### Date: `10-01-2026`  
```yml
Work        : J/W entries writtable
Flow        : Production=> Configuration=> Finish Wt Change=> New=> Customer name=> Casting Weigth(read only)
Dal         : DALGetMstMatWtHistData
BO          : MatWtHist
Controller  : MaterialWtChangeController
View        :
Notes       : new methods:  int GetMaterialCount(int MaterialCode),
                            public static int GetMaterialCount(int MaterialCode),
                            public JsonResult GetMaterialCount(int MaterialCode)
```  
-------------------------------------------------------------------------------------------------------------------
#### Date: `11-01-2026 (Sunday | रविवार)`  
```yml
Work        : Validations for Finish Wt, Casting W at Both Create & Edit, Amort Rate
Flow        : Masters=> Material=> Finish=> New & Sales=> Orders=> Sales Order=> New
Dal         :
BO          :
Controller  : FinishMaterialController & SaleOrderController
View        : FinishMaterial/Create & SaleOrder/Create
Notes       :
```  
-------------------------------------------------------------------------------------------------------------------
#### Date: `13-01-2026` to `18-01-2026`
```yml
Work        : New Menu: Supplier Casting Weight Change (menu id = 40616)
Flow        : Material Management=> Other=> Supplier Casting Weight Change Update
Dal         : Dalmstsuppliercastingwtchange
BO          : SupplierCastingWtChange
Controller  : SupplierCastingWtChangeController
View        : Index, OrderList, Create
Notes       :
```  
-------------------------------------------------------------------------------------------------------------------
#### Date: `20-01-2026 (Tuesday | मंगळवार)` to `22-01-2026 (Thursday | गुरुवार)`
```yml
Work        : GRN ag po Quntity update weight lock (if last update less than 90 days)
Flow        : Material Management=> In Coming=> GRN Ag Po => New=> Help=> Supplier Name
Dal         : DALTrnPoH -GetLastWtUpdate()-  (gap > 90) ? 1 : 0
BO          : GRNAgPo
Controller  : GRNAgPoController
View        : GRNAgPo/Create
Notes       :
```  
-------------------------------------------------------------------------------------------------------------------
#### Date: `20-01-2026 (Tuesday | मंगळवार)` to `22-01-2026 (Thursday | गुरुवार)`
```yml
Work        : GRN ag po Quntity update weight lock (if last update less than 90 days)
Flow        : Material Management=> In Coming=> GRN Ag Po => New=> Help=> Supplier Name
Dal         : DALTrnPoH -GetLastWtUpdate()-  (gap > 90) ? 1 : 0
BO          : GRNAgPo
Controller  : GRNAgPoController
View        : GRNAgPo/Create
Notes       :
```  
-------------------------------------------------------------------------------------------------------------------
