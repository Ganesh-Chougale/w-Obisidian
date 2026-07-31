# 1. Popup Markup
```html
<!-- Popup -->
<div id="PopUpUI_ModuleName" style="display:none; position:fixed; inset:0; background:rgba(0,0,0,.5); z-index:999;">
    <div style="width:95%; margin:1% auto; background:#fff; border-radius:6px; height:100%; overflow:hidden; padding:0px;">

        <div class="modal-header" style="height: 50px; padding:5px; background-color: #092347 !important;">
            <div class="col-md-12" style="padding: 0px">
                <div class="col-md-2" style="padding: 0px">
                    <img src="~/content/img/logo.png" style="height : 40px">
                </div>
                <div class="col-md-8" style="text-align: center; padding-top: 5px;">
                    <label style="font-size : 20px"><b> Module Name </b></label>
                </div>
                <div class="col-md-2">
                    <button type="button" class="a-button-close" data-dismiss="modal" aria-hidden="true" style="margin-top:8px;" onclick="closePopup_ModuleName()">
                        <i class="fa fa-lg fa-fw fa-close"></i>
                    </button>
                </div>
            </div>
        </div>

        <div>

            <section class="col-md-12" style="margin-top:15px; font-size:15px; ">
                <div class="col-md-12">
                    
                    <div class="col-md-1">
                        <label class="label" style="color:#000000 !important;">Lable 1</label>
                    </div>
                    <div class="col-md-3">
                        <label style="color:#000000 !important;" class="label label-info" id="lable_1_Id" value=""><b>  </b></label>
                    </div>

                    <div class="col-md-2"></div>

                    <div class="col-md-1">
                        <label class="label" style="color:#000000 !important;">Drop Down 1</label>
                    </div>
                    <div class="col-md-4">
                        <label style="color:#000000 !important;" class="label label-info" id="ddl_1_Id" value=""><b>  </b></label>
                    </div>

                </div>
            </section>

            <section class="col-md-12" style="font-size:15px;">
                <div class="col-md-12">
                    <div class="col-md-1">
                        <label class="label" style="color:#000000 !important;">Lable 2</label>
                    </div>
                    <div class="col-md-3">
                        <label style="color:#000000 !important;" class="label label-info" id="ddl_2_Id" ><b></b></label>
                    </div>
                </div>
            </section>

            <section class="col-md-12" style="font-size:15px;">
                <div class="col-md-12">
                    <div class="col-md-1">
                        <label class="label" style="color:#000000 !important;">Lable 3</label>
                    </div>
                    <div class="col-md-3">
                        <label style="color:#000000 !important;" class="label label-info" id="ddl_3_Id" ><b></b></label>
                    </div>
                </div>
            </section>

        </div>

        <div style="padding:10px; max-height:90vh; overflow:auto;">
            <table id="Modal_Table_Name" class="table table-striped table-bordered table-hover" width="100%">
                <thead>
                    <tr>
                        <th style="text-align:center">Title 1</th>
                        <th style="text-align:center">Title 2</th>
                        <th style="text-align:center">Title 3</th>
                        <th style="text-align:center">Title 4</th>
                    </tr>
                </thead>
                <tbody></tbody>
            </table>
        </div>
    </div>
</div>
<!--./ Popup -->
```  

# 2. Trigger Popup
```csharp
function showModuleNameData(obj) {

    debugger;


    var urlString = `/BusinessName/MethodName?Parameter1=${Parameter1Value}&Parameter2=${Parameter2Value}`;

    $.ajax({
        url: urlString,
        type: 'POST',
        dataType: 'json',
        success: function (data) {
            if (data && data.length > 0) {
                
                $('#lblBranch').html(data[0].BranchName);
                $('#lblMaterial').html(data[0].MaterialName);

                $('#Modal_Table_Name tbody').empty();

                $.each(data, function (index, item) {
                    var row = `<tr>


                                </tr>`;
                    $('#Modal_Table_Name tbody').append(row);
                });

                $('body').append($('#PopUpUI_ModuleName'));
                $('#PopUpUI_ModuleName').css('display', 'block');
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
function closePopup_ModuleName() {
    $('#PopUpUI_ModuleName').hide();
}  
```  
## Controller method
```csharp
[HttpPost]
public async Task<JsonResult> MethodName(int Parameter1, int Parameter2)
{
    List<BusinessName> lst = await BusinessName.BusinessMethodName(Parameter1, Parameter2);
    return Json(lst, JsonRequestBehavior.AllowGet);
}
```  
## Business method
```csharp
public static async Task<List<BusinessName>> BusinessMethodName(int Parameter1, int Parameter2)
{
    try
    {
        interfaceObj = new DalName();

        List<DtoName> dtoList = interfaceObj.BusinessMethodName(Parameter1, Parameter2);

        List<MaterialsEntity> matList = await MaterialsService.GetMaterialFillList(dtoList.Select(x => x.MATERIAL_CODE).ToList());

        Branch branchobj = Branch.GetExisting(Parameter1);

        List<Department> deptList = Department.GetDepartmentList();

        List<BusinessName> lst =
            (
                from obj in dtoList

                join matObj in matList
                on obj.MATERIAL_CODE equals matObj.MaterialCode

                join depObj in deptList
                on obj.DEPT_CODE equals depObj.DepartmentId

                select new BusinessName
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
        public List<DtoName> BusinessMethodName(int Parameter1, int Parameter2)
        {
            try
            {
                List<DtoName> lst = new List<DtoName>();
                using (ConManager con = new ConManager())
                {
                    string query = $@"
                                        SELECT 
	                                        *
                                        FROM 
	                                        TableName
                                        WHERE
	                                        COLUMN_NAME1 = @PARAMETER1
	                                        AND COLUMN_NAME2 = @PARAMETER2
                                            AND STATUS_CODE = 0
                                    ";

                    lst = con.transactionDb.Query<DtoName>(
                                            query,
                                            new
                                            {
                                                PARAMETER1 = Parameter1,
                                                PARAMETER2 = Parameter2
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
        var something1, something2, something3

        var updateRow = {
            something1 : $(obj).closest("tr").find(".classname1").data("matcodeval"),
            something2 : $(obj).closest("tr").find(".classname1").data("branchcodeval"),
            something3 : $(obj).closest("tr").find("#Idname").val(),
        };

        if (updateRow.length != 0) {
            $.ajax({
                url: 'BusinessName/CreateByModuleName',
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
        public async Task<ActionResult> CreateByModuleName(BusinessName bObj)
        {
            try
            {
                bObj.CrtBy = User.Identity.Name;
                Int64 trn_no = await BusinessName.Create(bObj);
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
static int insert(BusinessName bObj, int flag)
{
    interfaceObj = new DalName();
    int i = 0;

    using (var scope = new TransactionScope())
    {
        try
        {
            DtoName dtoObj = new DtoName()
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


public static async Task<long> Create(BusinessName bObj)
{
    try
    {
        MstMenu _objMstMenu = MstMenu.getMenuById(MenuId);
        _dalCnfTranTypes = new DALCnfTranTypes();
        interfaceObj = new DalName();

        //DTOCnfTranTypes _dtoCnfTranTypes = _dalCnfTranTypes.GetExisting(TranType, TranSubType);

        int Parameter2Value = bObj.MaterialCode;
        int Parameter1Value = bObj.BranchCode;
        int deptCode = bObj.DeptCode;
        int intAmendNo = interfaceObj.GetNextAmend(Parameter2Value, Parameter1Value, deptCode);

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
public int GetNextAmend(int Parameter1, int Parameter2, int Parameter3)
{
    try
    {
        int intAmedNo = 0;
        string query = @"
                        SELECT
                            MAX(AMEND_NO) + 1 AS AMEND_NO 
                        FROM
                            TableName 
                        WHERE 
                            COLUMN_NAME1 = @PARAMETER1
                            AND COLUMN_NAME2 = @PARAMETER2
                            AND COLUMN_NAME3 = @PARAMETER3
                        ";
        using (ConManager con = new ConManager())
        {
            intAmedNo = (int)con.transactionDb.ExecuteScalar(
                            query,
                            new
                            {
                                PARAMETER1 = Parameter1,
                                PARAMETER2 = Parameter2,
                                PARAMETER3 = Parameter3
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
public int CloseAmend(int Parameter1, int Parameter2, int Parameter3)
{
    try
    {
        int i = 0;
        using (ConManager con = new ConManager())
        {
            string query = "UPDATE TableName SET STATUS_CODE=11 where COLUMN_NAME1 = " + Parameter1 + " AND COLUMN_NAME2 = " + Parameter2 + " AND COLUMN_NAME3 = " + Parameter3 + " AND STATUS_CODE = 0";
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
public int Create(DtoName dtoObj)
{
    try
    {
        string query = @"
                        INSERT 
                            INTO 
                        TableName 
                            (
                                COLUMN_NAME1,
                                COLUMN_NAME2,
                                COLUMN_NAME3,
                                CRT_BY,
                                CRT_DATE_TIME
                            )";
        query = query + @" 
                        VALUES 
                            (
                                @COLUMN_NAME1,
                                @COLUMN_NAME2,
                                @COLUMN_NAME3,
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