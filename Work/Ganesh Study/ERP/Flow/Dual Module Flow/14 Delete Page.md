```csharp
@using ZanvarGroup.Erp.Business.Transactions.Material
@using ZanvarGroup.Erp.Business.Masters
@model ToolStockConversion
@{
    var IList = ViewBag.DetailsList as List<ToolStockConversionI>;
    List<Branch> branch = ViewData["branchList"] as List<Branch>;
    var currentRow = 0;
}

<div id="content">
    <article class="col-sm-12">
        <div class="jarviswidget jarviswidget-color-blueDark">
            <header>
                <span class="widget-icon">
                    <i class="fa fa-delete"></i>
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
                                            <select name="ddlUnit" id="ddlUnit" style="width:100%" disabled readonly>
                                                @foreach (Branch _branch in branch)
                                                {
                                                    <option @(_branch.BranchCode == Model.UnitCode ? "selected=selected" : "") value="@_branch.BranchCode">@_branch.LongName</option>
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

                                <div class="col-md-6">
                                    <div class="col-md-4">
                                        <label class="label">Material Weight</label>
                                    </div>
                                    <div class="col-md-2">
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
                                                    <input type="text" class='conversionQty' id="conversionQty_@currentRow" oninput='validateDecimalInput(this)' placeholder="&nbsp;Enter Conversion Qty" style="height: 20px;width:100%; text-align: right;" value="@item.ConversionQty" readonly disabled />
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

                            <section class="col-md-12">
                                <div class="col-md-10">
                                    <div class="col-md-2">
                                        <label class="label">Delete Reason</label>
                                    </div>
                                    <div class="col-md-7">
                                        <label class="input">
                                            <input type="text" class="form-control input-xs" name="DeleteReason" id="DeleteReason" placeholder="Delete Reason" />
                                            <b class="tooltip tooltip-top-right">
                                                <i class="fa fa-warning txt-color-teal"></i>
                                                Delete Reason
                                            </b>
                                        </label>
                                    </div>
                                </div>
                            </section>

                        </fieldset>
                        <footer>
                            <button type="submit" class="btn btn-danger" id="save">
                                <i class="fa fa-fw fa-ban"></i>
                                Delete
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


<script type="text/javascript">

    $(document).ready(function () {

        var form = $("#CreateToolStockConversion-form");

        form.validate({
            rules: {
                DeleteReason: {
                    required: true
                }
            },
            messages: {
                DeleteReason: {
                    required: 'Please enter delete reason'
                }
            },
            errorPlacement: function (error, element) {
                error.insertAfter(element.parent());
            }
        });


        $("#save").click(function (e) {
            debugger;
            e.preventDefault();
            if (form.valid()) {

                var isContinue = true;

                var TrnNoVal = $("#hfTrnNo").val();
                var DelReasonVal = $("#DeleteReason").val();


                var tscData = {
                    TrnNo: TrnNoVal,
                    DeleteReason: DelReasonVal
                };

                if (!isContinue) {
                    return;
                }

                $.ajax({
                    url: "ToolStockConversion/Delete",
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
            }

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




</script>
```  