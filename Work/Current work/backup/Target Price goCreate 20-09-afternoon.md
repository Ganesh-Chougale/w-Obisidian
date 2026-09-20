```csharp
@model IEnumerable<ZanvarGroup.Erp.Business.Transactions.Production.PackingDetails>
@using ZanvarGroup.Erp.Business.Entities.Masters;
@using ZanvarGroup.Erp.Business.Base;
@{
    List<AccountSubGlEntity> customer = ViewData["_objcustomerList"] as List<AccountSubGlEntity>;
    int CurrentCompany = ViewBag.CompanyCode;
}
<style>
    #content{
        background-color: #14171C;
    }

</style>
<div id="content">
    <section id="widget-grid" class="">
        <div class="row">
            <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12" style="background-color: #14171C;">
                <div class="jarviswidget jarviswidget-color-blueDark top-border" id="NightMode" data-widget-editbutton="false">
                    <header style="background-color: #14171C;">
                        <h2 style="font-weight:700;">Part Cost Agreement</h2> <br>
                        <input type="hidden" id="hfCompanyId" value="@CurrentCompany" />
                        <p>Compare agreed cost against system target cost across packing, child parts and transport. Target values are pulled from the parts price breakup and are read-only.</p>
                    </header>
                    <div class="navigation-button" id="UpperSection">
                        <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                            <div class="col-md-12" style="color:#8D9FA4; font-weight:700; margin-bottom:5px;">
                                Customer Name
                            </div>
                            <div class="col-md-12">
                                <label class="select" style="width:100%; height: 15px;">
                                    <select name="ddlcustomer" id="ddlcustomer" style="width:100%;">
                                        <option>Select Customer</option>

                                        @foreach (AccountSubGlEntity cust in customer)
                                        {
                                            <option value="@cust.SubGlAcNo">@cust.LongName</option>
                                        }
                                    </select>
                                </label>
                            </div>
                        </div>
                        <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                            <div class="col-md-12"  style="color:#8D9FA4; font-weight:700; margin-bottom:5px;">
                                Part Name
                            </div>
                            <div class="col-md-12">
                                <label class="select" style="width:100%">
                                    <select name="ddlParts" id="ddlParts" style="width:100%;"></select>
                                </label>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="widget-body no-padding">
                            <table id="datatable_fixed_column" class="table table-striped table-bordered table-hover" width="100%">
                                <thead>
                                    <tr>
                                        <th rowspan="2" style="text-align:center; vertical-align:bottom; width:5%;">Sr.</th>
                                        <th rowspan="2" style="text-align:center; vertical-align:bottom;  width:25%;">Name of the Parts</th>
                                        <th colspan="3" style="text-align:center; background-color:#6EA1FF;">PACKING COST</th>
                                        <th colspan="3" style="text-align:center; background-color:#B494FF;">CHILD PARTS COST</th>
                                        <th colspan="3" style="text-align:center; background-color:#FFAB5C;">TRANSPORT COST</th>
                                        <th rowspan="2" style="text-align:center; vertical-align:bottom; width:10%;">Action</th>
                                    </tr>
                                    <tr>
                                        <th style="text-align:right; background-color:#1F3357;">Agreed</th>
                                        <th style="text-align:right; background-color:#1F3357;">Target</th>
                                        <th style="text-align:right; background-color:#1F3357;">Diff</th>
                                        <th style="text-align:right; background-color:#33285A;">Agreed</th>
                                        <th style="text-align:right; background-color:#33285A;">Target</th>
                                        <th style="text-align:right; background-color:#33285A;">Diff</th>
                                        <th style="text-align:right; background-color:#45301C;">Agreed</th>
                                        <th style="text-align:right; background-color:#45301C;">Target</th>
                                        <th style="text-align:right; background-color:#45301C;">Diff</th>
                                    </tr>
                                </thead>
                                <tbody></tbody>
                            </table>
                        </div>

                    </div>

                    <div style="padding-top:5px">
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                            <a class="btn pull-right margin-bottom-5" id="btnfooternext" href="javascript:void(0);">
                                Next
                            </a>
                            <a class="btn pull-right margin-bottom-5" id="btnfootercancel" href="PackingDetails/index" data-ajax-update="#mainContent" data-ajax-mode="replace" data-ajax-method="GET" data-ajax="true" style="margin-right:10px;">
                                Cancel
                            </a>
                        </div>
                    </div>
                </div>
            </article>
        </div>
    </section>
</div>


<style>

    #UpperSection{
        background-color: #293549 !important;
        padding: 15px !important;
    }

    /*#NightMode > div {
        background-color: #14171C !important;
    }*/

    #datatable_fixed_column,
    #datatable_fixed_column th {
        background-color: #20242C;
    }

    #btnfooternext, #btnfootercancel {
        background-color: #720102;
        color: white;
    }
</style>

<script type="text/javascript">
    var lstarrey = [];
    $(document).ready(function () {

        $("#ddlcustomer").select2();
        $("#ddlParts").select2();

        function customWarning(p_focus_id, p_title, p_description, p_color, p_time_in_ms) {

            $(p_focus_id).focus();

            $.smallBox({
                title: p_title,
                content: p_description,
                color: p_color,
                timeout: p_time_in_ms
            });
        }

    });


    $(document).off("change", "#ddlcustomer").on("change", "#ddlcustomer", function () {
        debugger;
        var selectedCustomer = $(this).val();
        var companyid = $("#hfCompanyId").val();

        var urlName = "PartPrice/GetPendingPlanningList?SubGlAcNo=" + selectedCustomer + "&companyid=" + companyid;
        $.ajax({
            url: urlName,
            dataType: "json",
            type: "POST",
            contentType: "application/json; charset=utf-8",
            success: function (data) {

                // Clear previous customer's parts and table
                var PartsDropDown = $("#ddlParts");

                PartsDropDown.empty();
                PartsDropDown.append(
                    $("<option></option>")
                        .val("")
                        .text("Select Part")
                );

                $("#datatable_fixed_column > tbody").empty();

                // Populate Part dropdown
                $.each(data, function (i, item) {

                    PartsDropDown.append(
                        $("<option></option>")
                            .val(item.MaterialCode)
                            .text(item.MaterialName)
                            .attr("data-material-name", item.MaterialName)
                    );

                });

                // Refresh Select2
                PartsDropDown.val("").trigger("change");

            },
            error: function (response) {
                alert(response.responseText);
            },
            failure: function (response) {
                alert(response.responseText);
            }
        });

    });

    $(document).off("change", "#ddlParts").on("change", "#ddlParts", function () {

        var selectedPartCode = $(this).val();

        if (!selectedPartCode) {
            return;
        }

        var selectedPartName = $("#ddlParts option:selected").text();

        // Prevent duplicate rows
        if ($("#datatable_fixed_column > tbody > tr[data-material-code='" + selectedPartCode + "']").length > 0) {
            $("#ddlParts").val("").trigger("change");
            return;
        }

        var rowNumber = $("#datatable_fixed_column > tbody > tr").length + 1;

        var row = `
        <tr data-material-code="${selectedPartCode}">
            <td style="text-align:center;">${rowNumber}</td>

            <td>
                ${selectedPartName}
            </td>

            <td>
                <input type="text" class ="form-control" style="text-align:right;" />
            </td>

            <td>
                <input type="text" class ="form-control" style="text-align:right;" />
            </td>

            <td>
                <input type="text" class ="form-control" style="text-align:right;" />
            </td>

            <td>
                <input type="text" class ="form-control" style="text-align:right;" />
            </td>

            <td>
                <input type="text" class ="form-control" style="text-align:right;" />
            </td>

            <td>
                <input type="text" class ="form-control" style="text-align:right;" />
            </td>

            <td>
                <input type="text" class ="form-control" style="text-align:right;" />
            </td>

            <td>
                <input type="text" class ="form-control" style="text-align:right;" />
            </td>

            <td>
                <input type="text" class ="form-control" style="text-align:right;" />
            </td>

            <td style="text-align:center;">
                <button class ="btn btn-danger">
                    <i class ="fa fa-lg fa-fw fa-ban deleteRow"></i>
                </button>
            </td>
        </tr>
    `;

        $("#datatable_fixed_column > tbody").append(row);
        $("#ddlParts").val("").trigger("change");

    });

    $(document).off("click", ".deleteRow").on("click", ".deleteRow", function () {
        $(this).closest("tr").remove();
        $("#datatable_fixed_column > tbody > tr").each(function (index) {
            $(this).find("td:first").text(index + 1);
        });

    });


</script>

```  