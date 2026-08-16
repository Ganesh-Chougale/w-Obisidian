within this. i want do this
1. when i click on "Add material" button
2. it will fetch data & add row to the table
3. delete button will remove that row 
# Business method:
```csharp
public static async Task<PackingDetails> GetCreateRowDate(int intMaterialCode)
{
    try
    {
        MaterialsEntity matObj = await MaterialsService.GetExistingAsync(intMaterialCode);
        LastPurchaseRate lprObj = await LastPurchaseRate.GetLastPurchaseRate(intMaterialCode);
        PackingDetails bObj = new PackingDetails
                            {
                                MaterialCode = matObj.MaterialCode,
                                MaterialName = matObj.MaterialName,
                                DrawingNo = matObj.DrawingNo,
                                StockListGroupName = matObj.StockListGroupName,
                                MaterialUOM = matObj.MaterialUom,
                                Rate = lprObj.Rate
                            };

        return bObj;
    }
    catch (Exception ex)
    {
        throw ex;
    }
}
```  

# controller method:
```csharp
public async Task<JsonResult> GetCreateRowDate(int intMaterialCode)
{
    try
    {
        PackingDetails obj = await PackingDetails.GetCreateRowDate(intMaterialCode);
        return Json(obj, JsonRequestBehavior.AllowGet);
    }
    catch (Exception ex)
    {
        throw ex;
    }
}
```  
# View:
```csharp
@using ZanvarGroup.Erp.Business.Transactions.Production
@using ZanvarGroup.Erp.Business.Masters
@using ZanvarGroup.Erp.Business.Base
@{
    var materialList = ViewBag.MaterialData as List<PackingDetails>;

    int customerCode = ViewBag.CustomerCode;
    string customerName = ViewBag.CustomerName;
    int sellerCode = ViewBag.SellerCode;
    string sellerName = ViewBag.SellerName;
    int IsOverSeas = ViewBag.IsOverSeas;
    List<Company> CompanyLst = ViewBag.CompanyList;

    int CurIndex = 1;
}

<div id="content">
    <section id="buttons"></section>
    <section id="widget-grid" class="">
        <div class="row">
            <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <section class="jarviswidget jarviswidget-color-blueDark top-border" id="wid-id-1" data-widget-editbutton="false">

    

                    <section class="navigation-button">
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">

                            <section class="col-md-3">
                                <div class="pull-left">
                                    <h1 style="font-weight:800;color: #720102;">PACKING BOM CONFIGURATION</h1>
                                </div>
                            </section>

                        </div>
                    </section>



                    <section style="border:1px solid #A3A3A3; padding:10px 20px 0px 20px; border-radius:10px;  margin:70px 20px 0px 20px;">
                        <h3 style="font-weight:800;color: #720102;">1. PACKING BOM HEADER</h3>

                        <section id="Line1" style="display: flex; gap: 15px; width: 100%; margin-bottom:10px;">

                            <div style="width:25%;">
                                <label style="font-size:15px;font-weight:600;">Customer Name</label><br />
                                <input style="width:100%;" id="CustomerName" type="text" value="@customerName" readonly disabled />
                                <input id="hfCustomerCode" type="hidden" value="@customerCode"/>
                            </div>

                            <div style="width:25%">
                                <label style="font-size:15px;font-weight:600;">Seller Company</label><br />
                                <input style="width:100%;" id="SellerCompany" type="text" value="@sellerName" readonly disabled />
                                <input id="hfSellerCompanyId" type="hidden" value="@sellerCode" />
                            </div>

                            <div style="width:25%">
                                <label style="font-size:15px;font-weight:600;">Packing Destination</label>
                                    <select name="ddlPackingDestination" id="ddlPackingDestination" style="width:100%;">
                                        @foreach (Company item in CompanyLst)
                                        {
                                            <option value="@item.SubGlAcNo">@item.CompanyName</option>
                                        }
                                    </select>
                            </div>

                        </section>




                        <section id="Line2" style="display:flex; gap:15px; width:100%; margin-bottom:10px;">

                            <div style="width:25%;">
                                <label style="font-size:15px;font-weight:600; display:block; margin-bottom:10px;">Part Name</label>
                                @foreach (PackingDetails item in materialList)
                                {
                                    <span style="display:inline-block; margin:1px; padding:5px; border:1px solid #ccc; box-sizing:border-box; line-height:normal; vertical-align:middle;">
                                        @item.MaterialName
                                    </span>
                                    <input id="hfPartCode@CurIndex" type="hidden" value="@item.MaterialCode" />
                                }
                            </div>

                            <div style="width:25%;">
                                <label style="font-size:15px;font-weight:600; display:block; margin-bottom:10px;">BOM Type</label>
                                <div style="width:100px; background-color:white; margin:1px; padding:5px; border:1px solid #ccc; text-align:center; font-size:15px; border-radius: 0 20px 0px 20px;">
                                    @if (IsOverSeas == 0)
                                    {
                                        @:Domestic
                                    }
                                    else if (IsOverSeas == 1)
                                    {
                                        @:Export
                                    }
                                    else
                                    {
                                        @:Unknown
                                    }
                                </div>
                            </div>

                        </section>


                        <section id="Line3" style="display: flex; gap: 15px; width: 100%; margin-bottom:10px;">

                            <div style="width:25%">
                                <label style="font-size:15px;font-weight:600;">Price Breakup available</label><br />
                                <div style="width:100px; background-color:white; margin:1px; padding:5px; border:1px solid #ccc; text-align:center; font-size:15px; border-radius: 0 20px 0px 20px;">Yes</div>
                                <div style="width:100px; background-color:white; margin:1px; padding:5px; border:1px solid #ccc; text-align:center; font-size:15px; border-radius: 0 20px 0px 20px;">No</div>
                            </div>

                            <div style="width:25%">
                                <label style="font-size:15px;font-weight:600; display:block; margin-bottom:5px;">Effective Date</label>
                                <div class="input-group">
                                    <input class="form-control" id="EffectiveDate" type="text" placeholder="Select a date">
                                    <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                </div>
                            </div>

                            <div style="width:25%">
                                <label style="font-size:15px;font-weight:600;">Revision No</label><br />
                                <div style="width:100px; background-color:white; margin:1px; padding:5px; border:1px solid #ccc; text-align:center; font-size:15px; border-radius: 0 20px 0px 20px;">0</div>
                            </div>

                        </section>


                        <section id="Line4" style="display: flex; gap: 15px; width: 100%; margin-bottom:10px;">

                            <div style="width:25%;">
                                <label style="font-size:15px;font-weight:600;">Per Box Part Quantity</label><br />
                                <input style="width:100%;" oninput="validateIntegerInput(this)" id="PerBoxPartQuantity" type="text" />
                            </div>

                            <div style="width:25%;">
                                <label style="font-size:15px;font-weight:600;">Remark</label><br />
                                <textarea style="width:100%;" id="Remark"></textarea>
                            </div>


                        </section>


                    </section>



                    <section style="border:1px solid #A3A3A3; padding:10px 20px 0px 20px; border-radius:10px;  margin:10px 20px 0px 20px;">

                        <section id="HeaderLine" style="display: flex; gap: 15px; width: 100%; margin-bottom:10px;">

                            <div style="width:25%;">
                                <h3 style="font-weight:800;color: #720102;">2. PACKING MATERIALS (BOM DETAILS)</h3>
                            </div>

                            <div style="width:25%; display: flex; align-items: center; min-height: 50px;">
                                <label class="input" style="width: 100%;">
                                    <input type="text" id="aFinpMatName" name="aFinpMatName" class="form-control input-xs" placeholder="Material Name" />
                                    <input type="hidden" id="aFhfMatCode" name="aFhfMatCode" />
                                    <b class="tooltip tooltip-top-right">
                                        <i class="fa fa-warning txt-color-teal"></i>
                                        Please Enter Material Name
                                    </b>
                                </label>
                            </div>

                            <div style="width:25%; display: flex; align-items: center; min-height: 50px;">
                                <button onclick="handleAddRow()" style="background-color:#720102; width:150px; color:white; padding:3px; font-size:12px; font-weight:700;"> <i class="fa fa-plus"></i> Add Material </button>
                            </div>


                        </section>


                            <table id="PackingMaterialBomDetails" class="table table-striped table-bordered" width="100%">
                                <thead>
                                    <tr>
                                        <th>SrNo</th>
                                        <th>Packing Material</th>
                                        <th>Mateial Code</th>
                                        <th>Mateial Group</th>
                                        <th>Unit</th>
                                        <th>Rate</th>
                                        <th>Qty/Piece</th>
                                        <th>Cost/Piece</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody></tbody>
                            </table>


                        </section>




                    </section>
            </article>
        </div>
    </section>
</div>

<style>

    #Heading{
        
    }

    #PackingMaterialBomDetails th {
        background-color: #720102;
    }

</style>

<script type="text/javascript">

    $(document).ready(function () {
        $("#ddlPackingDestination").select2();


        $("#EffectiveDate").datepicker({
            defaultDate: "+1w",
            changeMonth: true,
            numberOfMonths: 1,
            dateFormat: 'dd/mm/yy',
            prevText: '<i class="fa fa-chevron-left"></i>',
            nextText: '<i class="fa fa-chevron-right"></i>',
            onClose: function (selectedDate) {
                $("#from").datepicker("option", "maxDate", selectedDate);
            }
        });
    });

    function validateIntegerInput(obj) {
        let value = obj.value;
        value = value.replace(/[^0-9]/g, '');
        obj.value = value;
    }

    function validateDecimalInput(obj) {
        let value = obj.value;
        value = value.replace(/[^0-9.]/g, '');
        const parts = value.split('.');
        if (parts.length > 2) {
            value = parts[0] + '.' + parts[1];
        }
        obj.value = value;
    }


    $("#aFinpMatName").keyup(function () {
        if ($("#aFinpMatName").val().trim().length >= 3) {
            dontBlock = true;
        }
    });

    $("#aFinpMatName").autocomplete({

        minLength: 3,
        source: function (request, response) {

            $.ajax({
                url: "PackingDetails/GetMaterialAutoFill",
                type: "POST",
                dataType: "json",
                data: {
                    searchString: request.term
                },
                success: function (data) {

                    dontBlock = false;

                    let items = [];
                    let map = {};

                    $.each(data, function (i, item) {
                        map[item.MaterialName] = {
                            id: item.MaterialCode,
                            name: item.MaterialName
                        };
                        items.push(item.MaterialName);
                    });
                    window.materialMap = map;
                    response(items);
                    $(".dropdown-menu").css("height", "auto");
                },

                error: function (response) {
                    dontBlock = false;
                    alert(response.responseText);
                }
            });
        },

        select: function (event, ui) {
            $("#aFhfMatCode").val(
                window.materialMap[ui.item.value].id
            );
            $("#aFinpMatName").val(
                window.materialMap[ui.item.value].name
            );
            //ItemSelect();
        }
    });

    function handleAddRow() {
        debugger;
        var MaterialCode = $("#aFhfMatCode").val();

        var urlString = `PackingDetails/GetCreateRowDate?intMaterialCode=${MaterialCode}`;

        $.ajax({
            url: urlString,
            type: "POST",
            dataType: "json",
            success: function (data) {
                if (data.length > 0) {
                    console.log(data)
                    
                    var row = "";
                    $.each(data, function (i, item) {
                        row += `
                                   <tr>
                                        <td>${i}</td>
                                        <td>
                                            ${item.MaterialName}
                                            <input type="hidden" id="tdhfMatCode${i}" name="tdhfMatCode${i}" value="${item.MaterialCode}"/>
                                        </td>
                                        <td>${item.DrawingNo}</td>
                                        <td>${item.StockListGroupName}</td>
                                        <td>${item.MaterialUOM}</td>
                                        <td>${item.Rate}</td>
                                        <td><input id="tdhfQty${i}" style="width:100%; text-align:right;" oninput="validateDecimalInput(this)" type="text"></td>
                                        <td><span onclick="DeleteRow(this)"><i class ="fa fa-fw fa-ban"></i></span></td>
                                   </tr>
                                 `;
                        $("#PackingMaterialBomDetails tbody").append(row);

                    });
                }

            },
            error: function (xhr) {
                alert("Error: " + xhr.status + ": " + xhr.statusText);
            }
        });

    }


</script>
```  