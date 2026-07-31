```csharp
@using ZanvarGroup.Erp.Business.Transactions.Material
@using ZanvarGroup.Erp.Business.Masters
@model ToolStockConversion
@{
    var IList = ViewBag.DetailsList as List<ToolStockConversionI>;

    var currentRow = 0;

    List<Branch> branch = ViewData["branchList"] as List<Branch>;

}

<div id="content">
    <article class="col-sm-12">
        <div class="jarviswidget jarviswidget-color-blueDark">
            <header>
                <span class="widget-icon">
                    <i class="fa fa-edit"></i>
                </span>
                <h2>Create Tool Stock Conversion</h2>
            </header>
            <input type="hidden" value="@Model.StrTrnNo" id="hfTrnNo">

            <div>
                <div class="widget-body no-padding">
                    <form method="POST" id="CreateToolStockConversion-form" class="smart-form client-form">

                        <fieldset>

                            <section class="col-md-12">

                                <div class="col-md-5">
                                    <div class="col-md-4">
                                        <label class="label">Date</label>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="input-group">
                                            <label class="input">

                                                <input class="form-control" id="TranDate" name="TranDate" type="text" value="@Model.FormattedTrnDate" readonly="readonly">
                                                <input type="hidden" value="@Model.TrnDate" id="hfTrnDate">
                                                <b class="tooltip tooltip-top-right">
                                                    <i class="fa fa-warning txt-color-teal"></i>
                                                    Please Select Date
                                                </b>
                                            </label>
                                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-1"></div>

                                <div class="col-md-5">
                                    <div class="col-md-3">
                                        <label class="label">Branch</label>
                                    </div>
                                    <div class="col-md-5">
                                        <label class="select">
                                            <select name="ddlUnit" id="ddlUnit" style="width:100%">
                                                @foreach (Branch _branch in branch)
                                                {
                                                    <option @(_branch.BranchCode == Model.UnitCode  ? "selected=selected" : "") value="@_branch.BranchCode">@_branch.LongName</option>
                                                }
                                            </select>
                                        </label>
                                    </div>
                                </div>

                            </section>



                            <section class="col-md-12">
                                <div class="col-md-10">
                                    <div class="col-md-2">
                                        <label class="label">Material Name</label>
                                    </div>
                                    <div class="col-md-4">
                                        <label class="label label-info" id="material" value="@IList.FirstOrDefault().MaterialCode"><b>@IList.FirstOrDefault().MaterialName</b></label>
                                    </div>
                                </div>
                            </section>

                            <section class="col-md-12">

                                <div class="col-md-5">
                                    <div class="col-md-4">
                                        <label class="label">Scrap Material Name</label>
                                    </div>
                                    <div class="col-md-8">
                                        <label class="label label-info" id="scarpMaterial" value="@IList.FirstOrDefault().ScrapMaterialCode"><b>@IList.FirstOrDefault().ScrapMaterialName</b></label>
                                    </div>
                                </div>

                                <div class="col-md-1"></div>
                                    
                                <div class="col-md-5">
                                    <div class="col-md-3">
                                        <label class="label">Material Weight</label>
                                    </div>
                                    <div class="col-md-5">
                                        <label class="label label-info" id="FinishWtval" value="@Model.FinishWt"><b> @Model.FinishWt </b></label>
                                    </div>
                                </div>

                            </section>


                            <section class="col-md-12">
                                <table class="table table-bordered" id="tblMaterials">
                                    <thead>
                                        <tr>
                                            <th>Grn No</th>
                                            <th>Grn Date</th>
                                            <th>Party Bill No</th>
                                            <th>Party Bill Date</th>
                                            <th>Supplier</th>
                                            @*<th>Material</th>*@
                                            <th>Qty</th>
                                            <th>Conversion Qty</th>
                                            <th>Scrap Wt</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach (var item in IList)
                                        {
                                            <tr>
                                                <td id="GrnNo_@currentRow" value="@item.StrRefTrnNo">@item.ShortRefTrnNo</td>
                                                <td id="GrnDate_@currentRow" value="@item.GrnDate">@item.FormattedGrnDate</td>
                                                <td id="PartyBillNo_@currentRow" value="@item.PartyBillNo">@item.PartyBillNo</td>
                                                <td id="PartyBillDate_@currentRow" value="@item.PartyBillDate">@item.FormattedPartyBillDate</td>
                                                <td id="Supplier_@currentRow" value="@item.SubGlAcNo">@item.SupplierName</td>
                                                @*<td id="Material_@currentRow" value="@item.MaterialCode">@item.MaterialName</td>*@
                                                <td id="IssuedQty_@currentRow" value="@item.GrnQty">@item.GrnQty</td>
                                                <td>
                                                    @*<input type="text" class="conversionQty" />*@
                                                    <input type="text" class='conversionQty' id="conversionQty_@currentRow" oninput='validateDecimalInput(this)' onblur='validateConversionQty(this)' placeholder="Enter Conversion Qty" style="height: 20px;width:100%; text-align: right;" value="@item.ConversionQty"/>
                                                </td>
                                                <td>
                                                    <input type="text" class='scrapWt' id="scrapWt_@currentRow" readonly style="height: 20px;width:100%; text-align: right;" value="@item.ConversionWt" disabled />

                                                </td>
                                            </tr>
                                            currentRow++;
                                        }
                                    </tbody>
                                </table>
                            </section>
                        </fieldset>
                        <footer>
                            <button type="button" class="btn btn-success" id="save">
                                <i class="fa fa-lg fa-fw fa-save"></i>
                                Save
                            </button>
                            <a class="btn btn-primary" href="/Material/ToolStockConversion/index" data-ajax-update="#mainContent" data-ajax-mode="replace" data-ajax-method="GET" data-ajax="true">
                                <i class="fa fa-lg fa-fw fa-reply"></i>
                                Cancel
                            </a>
                        </footer>
                    </form>
                </div>
            </div>
        </div>
    </article>
</div>


<script>

    $(document).ready(function () {

        $("#ddlUnit").select2();

        $(".conversionQty").on("keyup change", function () {
            var conversionQty = parseFloat($(this).val()) || 0;
            var finishWt = parseFloat($("#FinishWtval").text()) || 0;
            var scrapWt = conversionQty * finishWt;

            $(this)
                .closest("tr")
                .find(".scrapWt")
                .val(scrapWt.toFixed(3));
        });

    });

    function customWarning(p_focus_id, p_title, p_description, p_color, p_time_in_ms) {

        $(p_focus_id).focus();


        $.smallBox({
            title: p_title,
            content: p_description,
            color: p_color,
            timeout: p_time_in_ms,
            //icon: "fa fa-bell swing animated"
        });
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

    $("#save").click(function (e) {
        e.preventDefault();
        debugger;
        var isContinue = true;

        var TrnNoVal = $("#hfTrnNo").val();
        var TrnDateVal = $("#TranDate").val();

        if (!TrnDateVal) {
            customWarning("#TranDate", "Date", "Plaese Select date first!", "#C46A69", 3000);
            return false;
        }

        var UnitCodeVal = $("#ddlUnit").val();
        var MaterialCodeVal = $("#material").attr("value");
        var ScarpMaterialCodeVal = $("#scarpMaterial").attr("value");
        var FinishWt = $("#FinishWtval").attr("value");

        if (!FinishWt || FinishWt == 0) {
            customWarning("#FinishWtval", "Material weight", "Material weight is zero!", "#C46A69", 3000);
            return false;
        }


        var lstTStockCI = [];
        var rowCount = 0;

        $("#tblMaterials tbody tr").each(function () {
            debugger;
            var row = $(this);

            var conversionQtyVal = row.find("#conversionQty_" + rowCount).val();

            if (!conversionQtyVal || parseFloat(conversionQtyVal) <= 0) {
                customWarning("#conversionQty_" + rowCount, "conversion Qty", "conversion Qty is zero!", "#C46A69", 3000);
                isContinue = false;
                return false;
            }

            lstTStockCI.push({
                RefTrnNo: row.find("#GrnNo_" + rowCount).attr("value"),
                GrnQty: row.find("#IssuedQty_" + rowCount).attr("value"),
                ConversionQty: conversionQtyVal,
                ConversionWt: row.find("#scrapWt_" + rowCount).val()
            });

            rowCount++;
        });

        var tscData = {
            TrnNo: TrnNoVal,
            UnitCode: UnitCodeVal,
            TrnDate: TrnDateVal,
            MaterialCode: MaterialCodeVal,
            ScarpMaterialCode: ScarpMaterialCodeVal,
            FinishWt: FinishWt,
            LstTStockCI: lstTStockCI
        };

        if (!isContinue) {
            return;
        }

        $.ajax({
            url: "ToolStockConversion/Edit",
            type: "POST",
            contentType: "application/json",
            data: JSON.stringify(tscData),
            success: function (response, status, xhr) {
                if (response == 0) {
                    var urlName = '/Material/ToolStockConversion/index';
                    $.ajax({
                        url: urlName,
                        type: "GET",
                        success: function (response, status, xhr) {
                            $("#mainContent").html(response);
                        },
                        error: function (err) {
                            $("#mainContent").html(err);
                        }
                    });
                }
            },
            error: function () {
                alert("Error occurred while saving");
            }
        });

    });

    function validateConversionQty(obj) {
        debugger;

        var row = $(obj).closest("tr");

        var conversionQty = parseFloat($(obj).val()) || 0;
        var grnQty = parseFloat(row.find("[id^='IssuedQty_']").attr("value")) || 0;

        if (!conversionQty) {

            customWarning("#" + obj.id, "Qty Issue", "Conversion qty cannot be null or zero", "#C46A69", 3000);

            $(obj).val("");
            row.find(".scrapWt").val("");
            return false;
        }

        if (conversionQty > grnQty) {

            var message = "Conversion qty cannot be greater than Qty " + grnQty + "!";

            customWarning("#" + obj.id, "Qty Issue", message, "#C46A69", 3000);

            $(obj).val("");
            row.find(".scrapWt").val("");
            return false;
        }

        return true;
    }


</script>
```  