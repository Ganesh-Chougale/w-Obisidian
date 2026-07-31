# 1. Popup Markup
```html
<!-- stock list group Popup -->
<div id="SlgPopUpUI" style="display:none; position:fixed; inset:0; background:rgba(0,0,0,.5); z-index:999;">
    <div style="width:95%; margin:1% auto; background:#fff; border-radius:6px; height:100%; overflow:hidden; padding:0px;">

        <div class="modal-header" style="height: 50px; padding:5px; background-color: #092347 !important;">
            <div class="col-md-12" style="padding: 0px">
                <div class="col-md-2" style="padding: 0px">
                    <img src="~/content/img/logo.png" style="height : 40px">
                </div>
                <div class="col-md-8" style="text-align: center; padding-top: 5px;">
                    <label style="font-size : 20px"><b> Raise PR </b></label>
                </div>
                <div class="col-md-2">
                    <button type="button" class="a-button-close" data-dismiss="modal" aria-hidden="true" style="margin-top:8px;" onclick="closeSLGPopup()">
                        <i class="fa fa-lg fa-fw fa-close"></i>
                    </button>
                </div>
            </div>
        </div>

        <div>

            <section class="col-md-12" style="margin-top:15px; font-size:15px; ">
                <div class="col-md-12">
                    
                    <div class="col-md-1">
                        <label class="label" style="color:#000000 !important;">Stock List Group</label>
                    </div>
                    <div class="col-md-3">
                        <label style="color:#000000 !important;" class="label label-info" id="lblStockListGroup" value=""><b>  </b></label>
                    </div>

                    <div class="col-md-2"></div>

                    <div class="col-md-1">
                        <label class="label" style="color:#000000 !important;">Branch Name</label>
                    </div>
                    <div class="col-md-4">
                        <label style="color:#000000 !important;" class="label label-info" id="lblBranch" value=""><b>  </b></label>
                    </div>

                </div>
            </section>

            <section class="col-md-12" style="font-size:15px;">
                <div class="col-md-12">
                    <div class="col-md-1">
                        <label class="label" style="color:#000000 !important;">Material Name</label>
                    </div>
                    <div class="col-md-3">
                        <label style="color:#000000 !important;" class="label label-info" id="lblMaterial" ><b></b></label>
                    </div>
                </div>
            </section>

            <section class="col-md-12" style="font-size:15px;">
                <div class="col-md-12">
                    <div class="col-md-1">
                        <label class="label" style="color:#000000 !important;">Current Stock</label>
                    </div>
                    <div class="col-md-3">
                        <label style="color:#000000 !important;" class="label label-info" id="lblCurrentStock" ><b></b></label>
                    </div>
                </div>
            </section>

        </div>

        <div style="padding:10px; max-height:90vh; overflow:auto;">
            <table id="SLGDataTable" class="table table-striped table-bordered table-hover" width="100%">
                <thead>
                    <tr>
                        <th style="text-align:center">Department Name</th>
                        <th style="text-align:center">Minimum Qty</th>
                        <th style="text-align:center">Maximum Qty</th>
                        <th style="text-align:center">Action</th>
                    </tr>
                </thead>
                <tbody></tbody>
            </table>
        </div>
    </div>
</div>
<!--./ stock list group Popup -->
```  

# 2. Trigger Popup
```csharp
function showSLGDataPopup(obj) {

    debugger;
    var branchCode = $("#ddlUnit").val();
    var materialCode = $(obj).closest("tr").find(".materialCode").data("materialcodeval");

    // popup modal label assigning.
    var stockListGroupTxt = $("#ddlStockListGroup option:selected").text();
    $("#lblStockListGroup").text(stockListGroupTxt);

    var currentStockTxt = $(obj).closest("tr").find(".currentStock").text();
    $("#lblCurrentStock").text(currentStockTxt);


    var urlString = `/BranchDeptMinMax/StockListGroupWisePopupData?intBranchCode=${branchCode}&intMaterialCode=${materialCode}`;

    $.ajax({
        url: urlString,
        type: 'POST',
        dataType: 'json',
        success: function (data) {
            if (data && data.length > 0) {
                
                $('#lblBranch').html(data[0].BranchName);
                $('#lblMaterial').html(data[0].MaterialName);

                $('#SLGDataTable tbody').empty();

                $.each(data, function (index, item) {
                    var row = `<tr>

                                <td style="text-align:left" class ="deptCode" data-deptcodeval="${item.DeptCode}">
                                    ${item.DeptName}
                                </td>

                                <td style="text-align:center">
                                    <input style="width:100%; text-align:right;" oninput="validateDecimalInput(this)" type="text" class ="minQty" value="${item.MinQty}">
                                </td>

                                <td style="text-align:center">
                                    <input style="width:100%; text-align:right;" oninput="validateDecimalInput(this)" type="text" class ="maxQty" value="${item.MaxQty}">
                                </td>

                                <td style="text-align:center" class ="updateBtn" data-matcodeval="${item.MaterialCode}" data-branchcodeval="${item.BranchCode}">
                                    <div class ="btn btn-sm" style="min-width:75px; text-align:left; background: #FAFBFC; outline: 1px solid #5E79E2;" onclick="update(this)">
                                        <strong style="color:#5E79E2; font-weight: 900;"">Update</strong>
                                    </div>
                                </td>

                                </tr>`;
                    $('#SLGDataTable tbody').append(row);
                });

                $('body').append($('#SlgPopUpUI'));
                $('#SlgPopUpUI').css('display', 'block');
            }
        },
        error: function (xhr, status, error) {
            alert('Error loading employee material data:', error);
        }
    });
}


// input validator
function validateDecimalInput(obj) {
    let value = obj.value;
    value = value.replace(/[^0-9.]/g, '');
    const parts = value.split('.');
    if (parts.length > 2) {
        value = parts[0] + '.' + parts[1];
    }
    obj.value = value;
}    
// Close popup
function closeSLGPopup() {
    $('#SlgPopUpUI').hide();
}
```  
##  Controller method
```csharp
[HttpPost]
public async Task<JsonResult> StockListGroupWisePopupData(int intBranchCode, int intMaterialCode)
{
    List<BranchDeptMinMax> lst = await BranchDeptMinMax.StockListGroupWisePopUpData(intBranchCode, intMaterialCode);
    return Json(lst, JsonRequestBehavior.AllowGet);
}
```  
## Business method
```csharp
public static async Task<List<BranchDeptMinMax>> StockListGroupWisePopUpData(int intBranchCode, int intMaterialCode)
{
    try
    {
        interfaceObj = new DalMstBranchDeptMinMax();

        List<DtoMstBranchDeptMinMax> dtoList = interfaceObj.StockListGroupWisePopUpData(intBranchCode, intMaterialCode);

        List<MaterialsEntity> matList = await MaterialsService.GetMaterialFillList(dtoList.Select(x => x.MATERIAL_CODE).ToList());

        Branch branchobj = Branch.GetExisting(intBranchCode);

        List<Department> deptList = Department.GetDepartmentList();

        List<BranchDeptMinMax> lst =
            (
                from obj in dtoList

                join matObj in matList
                on obj.MATERIAL_CODE equals matObj.MaterialCode

                join depObj in deptList
                on obj.DEPT_CODE equals depObj.DepartmentId

                select new BranchDeptMinMax
                {
                    MaterialCode = obj.MATERIAL_CODE,
                    MaterialName = matObj.MaterialName,
                    BranchCode = obj.BRANCH_CODE,
                    BranchName = branchobj.LongName,
                    DeptCode = obj.DEPT_CODE,
                    DeptName = depObj.DepartmentName,
                    MinQty = obj.MIN_QTY,
                    MaxQty = obj.MAX_QTY
                }
            ).ToList();

        return lst;

    }
    catch (Exception ex)
    {
        throw ex;
    }
}

```  
## Dal Methods
```csharp
        public List<DtoMstBranchDeptMinMax> StockListGroupWisePopUpData(int intBranchCode, int intMaterialCode)
        {
            try
            {
                List<DtoMstBranchDeptMinMax> lst = new List<DtoMstBranchDeptMinMax>();
                using (ConManager con = new ConManager())
                {
                    string query = $@"
                                        SELECT 
	                                        *
                                        FROM 
	                                        MST_BRANCH_DEPT_MIN_MAX
                                        WHERE
	                                        BRANCH_CODE = @BRANCH_CODE
	                                        AND MATERIAL_CODE = @MATERIAL_CODE
                                            AND STATUS_CODE = 0
                                    ";

                    lst = con.transactionDb.Query<DtoMstBranchDeptMinMax>(
                                            query,
                                            new
                                            {
                                                BRANCH_CODE = intBranchCode,
                                                MATERIAL_CODE = intMaterialCode
                                            }
                                            ).ToList();
                    return lst;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
```  


# 3. saving data frop popup
```csharp
    function update(obj) {
        debugger;
        var materialCode, branchCode, deptCode, minQty, maxQty;

        var updateRow = {
            materialCode : $(obj).closest("tr").find(".updateBtn").data("matcodeval"),
            branchCode : $(obj).closest("tr").find(".updateBtn").data("branchcodeval"),
            deptCode : $(obj).closest("tr").find(".deptCode").data("deptcodeval"),
            minQty : $(obj).closest("tr").find(".minQty").val(),
            maxQty : $(obj).closest("tr").find(".maxQty").val()
        };

        if (updateRow.length != 0) {
            $.ajax({
                url: 'BranchDeptMinMax/CreateBySlg',
                type: "POST",
                async: false,
                contentType: "application/json",
                dataType: "json",
                data: JSON.stringify(updateRow),
                success: function (response, status, xhr) {

                    $.smallBox({
                        title: "Record saved",
                        content: "Record is being upadated",
                        color: "#00A228",
                        timeout: 3000,
                        zindex: 9999
                    });


                },
                error: function (error) {
                    alert("Error : " + error.toSource());
                }
            });
        } else {

            $.smallBox({
                title: "Record not saved",
                content: "Record is failed to upadat!",
                color: "#C46A69",
                timeout: 3000,
            });
            return false;
        }


    }
```  
##  Controller method
```csharp
        [HttpPost]
        [AuthorizationFilter(MenuId = 40200, AccessType = "Create")]
        public async Task<ActionResult> CreateBySlg(BranchDeptMinMax bObj)
        {
            try
            {
                bObj.CrtBy = User.Identity.Name;
                Int64 trn_no = await BranchDeptMinMax.Create(bObj);
                if (trn_no != 0)
                {
                    return Content("0");
                }
                else
                {
                    return RedirectToAction("Create");
                }
            }
            catch
            {
                return RedirectToAction("Create");
            }
        }
```  
## Business method
```csharp
static int insert(BranchDeptMinMax bObj, int flag)
{
    interfaceObj = new DalMstBranchDeptMinMax();
    int i = 0;

    using (var scope = new TransactionScope())
    {
        try
        {
            DtoMstBranchDeptMinMax dtoObj = new DtoMstBranchDeptMinMax()
            {
                MATERIAL_CODE = bObj.MaterialCode,
                BRANCH_CODE = bObj.BranchCode,
                DEPT_CODE = bObj.DeptCode,
                AMEND_NO = bObj.AmendNo,
                TRN_DATE = bObj.TrnDate,
                MIN_QTY = bObj.MinQty,
                MAX_QTY = bObj.MaxQty,
                STATUS_CODE = bObj.StatusCode,
                CRT_BY = bObj.CrtBy
            };

            if (flag == 1)
            {
                interfaceObj.CloseAmend(bObj.MaterialCode, bObj.BranchCode, bObj.DeptCode);
                i = interfaceObj.Create(dtoObj);
            }
            //else if (flag == 2)
            //{
            //    interfaceObj.Edit(dtoObj);
            //}
            //else if (flag == 3)
            //{
            //    interfaceObj.Approve(dtoObj);
            //}

            scope.Complete();
        }
        catch (Exception ex)
        {
            scope.Dispose();
            throw ex;
        }
        return i;
    }
}


public static async Task<long> Create(BranchDeptMinMax bObj)
{
    try
    {
        MstMenu _objMstMenu = MstMenu.getMenuById(MenuId);
        _dalCnfTranTypes = new DALCnfTranTypes();
        interfaceObj = new DalMstBranchDeptMinMax();

        //DTOCnfTranTypes _dtoCnfTranTypes = _dalCnfTranTypes.GetExisting(TranType, TranSubType);

        int materialCode = bObj.MaterialCode;
        int branchCode = bObj.BranchCode;
        int deptCode = bObj.DeptCode;
        int intAmendNo = interfaceObj.GetNextAmend(materialCode, branchCode, deptCode);

        string strTranDate = DateUtility.getFormatedDate(DateTime.Now.ToString("dd/MM/yyyy"), 1);

        bObj.CloseAmendNo = bObj.AmendNo;

        int intStatusCode = 0;
        if (Convert.ToBoolean(_objMstMenu.ApprovalReq) == true)
        {
            intStatusCode = 101;
        }

        bObj.TrnDate = strTranDate;
        bObj.StatusCode = intStatusCode;
        bObj.AmendNo = intAmendNo;

        long result = 0;
        result = await Task.Run(() => { return insert(bObj, 1); });
        return result;
    }
    catch (Exception ex)
    {
        throw ex;
    }
}
```  
## Dal Methods
- al necessary dal methods
```csharp
// 1. GetNextAmend
public int GetNextAmend(int intMatCode, int intBranchCode, int intDeptCode)
{
    try
    {
        int intAmedNo = 0;
        string query = @"
                        SELECT
                            MAX(AMEND_NO) + 1 AS AMEND_NO 
                        FROM
                            MST_BRANCH_DEPT_MIN_MAX 
                        WHERE 
                            MATERIAL_CODE = @MATERIAL_CODE
                            AND BRANCH_CODE = @BRANCH_CODE
                            AND DEPT_CODE = @DEPT_CODE
                        ";
        using (ConManager con = new ConManager())
        {
            intAmedNo = (int)con.transactionDb.ExecuteScalar(
                            query,
                            new
                            {
                                MATERIAL_CODE = intMatCode,
                                BRANCH_CODE = intBranchCode,
                                DEPT_CODE = intDeptCode
                            });
        }
        return intAmedNo;
    }
    catch (Exception ex)
    {
        throw ex;
    }
}

// 2. close amend
public int CloseAmend(int intMatCode, int intBranchCode, int intDeptCode)
{
    try
    {
        int i = 0;
        using (ConManager con = new ConManager())
        {
            string query = "UPDATE MST_BRANCH_DEPT_MIN_MAX SET STATUS_CODE=11 where MATERIAL_CODE = " + intMatCode + " AND BRANCH_CODE = " + intBranchCode + " AND DEPT_CODE = " + intDeptCode + " AND STATUS_CODE = 0";
            i = con.transactionDb.Execute(query);
        }
        return i;
    }
    catch (Exception ex)
    {
        throw ex;
    }
}      .

// 3. Create
public int Create(DtoMstBranchDeptMinMax dtoObj)
{
    try
    {
        string query = @"
                        INSERT 
                            INTO 
                        MST_BRANCH_DEPT_MIN_MAX 
                            (
                                MATERIAL_CODE,
                                BRANCH_CODE,
                                DEPT_CODE,
                                AMEND_NO,
                                TRN_DATE,
                                MIN_QTY,
                                MAX_QTY,
                                STATUS_CODE,
                                CRT_BY,
                                CRT_DATE_TIME
                            )";
        query = query + @" 
                        VALUES 
                            (
                                @MATERIAL_CODE,
                                @BRANCH_CODE,
                                @DEPT_CODE,
                                @AMEND_NO,
                                @TRN_DATE,
                                @MIN_QTY,
                                @MAX_QTY,
                                @STATUS_CODE,
                                @CRT_BY,
                                GETDATE()
                            );";
        int i;

        using (ConManager con = new ConManager())
        {
            i = con.transactionDb.Execute(query, dtoObj);
        }
        return i;
    }
    catch (Exception ex)
    {
        throw ex;
    }
}
```  