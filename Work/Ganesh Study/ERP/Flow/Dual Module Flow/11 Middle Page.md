```csharp
@model IEnumerable<ZanvarGroup.Erp.Business.Transactions.Material.ToolStockConversion>
@using ZanvarGroup.Erp.Business.Masters

@{

}

<div id="content">
    <article class="col-sm-12 col-md-12 col-lg-12">

        <div class="jarviswidget jarviswidget-color-blueDark" id="wid-id-3" data-widget-colorbutton="false" data-widget-editbutton="false" data-widget-custombutton="false">

            <header>
                <span class="widget-icon"> <i class="fa fa-edit"></i> </span>
                <h2>Order List Tool Stock Conversion</h2>
            </header>

            <div>
                <div class="jarviswidget-editbox">
                </div>
                <div class="widget-body no-padding">
                    <form method="POST" id="ToolStockConversion-form" class="smart-form client-form">
                        <fieldset>

                            <section class="col-md-12">
                                <div class="col-md-1">
                                    <label class="label">Material Name</label>
                                </div>
                                <div class="col-md-4">
                                    <label class="input">
                                        <input type="text" id="MatName" name="MatName" class="form-control input-xs" placeholder="Material Name" />
                                        <input type="hidden" id="hfMatCode" name="hfMatCode" />
                                        <b class="tooltip tooltip-top-right">
                                            <i class="fa fa-warning txt-color-teal"></i>
                                            Please Enter Material Name
                                        </b>
                                    </label>
                                </div>
                                <div class="col-md-1"></div>
                                <div class="col-md-1">
                                    <button type="button" class="btn btn-success" id="show" style="width:75px;">
                                        Show
                                        <i class="fa fa-fw fa-search"></i>
                                    </button>
                                </div>
                                <div class="col-md-1">
                                    <button type="button" class="btn btn-warning" id="next" style="width:75px;">
                                        Next
                                        <i class="fa fa-fw fa-chevron-right"></i>
                                    </button>
                                </div>
                            </section>

                            <section class="col-md-12">
                                <div class="col-md-12">
                                    <hr style="background-color:cadetblue;height: 1px" />
                                </div>
                            </section>

                            <section class="col-md-12">
                                <table class="table table-striped table-bordered" id="tblMaterials">
                                    <thead>
                                        <tr>
                                            <th width="2%" ></th>
                                            <th width="5%" class="text-center">Grn No</th>
                                            <th width="5%" class="text-center">Grn Date</th>
                                            <th width="5%" class="text-center">Party Bill No</th>
                                            <th width="5%" class="text-center">Party Bill Date</th>
                                            <th width="20%" class="text-center">Supplier Name</th>
                                            <th width="20%" class="text-center">Material</th>
                                            <th width="5%" class="text-center">Qty</th>
                                            <th width="5%" class="text-center">Crt By</th>
                                        </tr>
                                    </thead>
                                    <tbody> </tbody>
                                </table>
                            </section>
                        </fieldset>

                    </form>
                </div>
            </div>
        </div>
    </article>
</div>



<script type="text/javascript">

    $(document).ready(function () {

        initializeMaterialAutocomplete();
    }); // doc ready end

    var scrapMaterialName;

    function initializeMaterialAutocomplete() {

        $("#MatName").keyup(function () {
            if ($("#MatName").val().trim().length >= 3) {
                dontBlock = true;
            }
        });

        $("#MatName").autocomplete({
            minLength: 3,
            source: function (request, response) {

                $.ajax({
                    url: "ToolStockConversion/MaterialAutoFill",
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
                $("#hfMatCode").val(
                    window.materialMap[ui.item.value].id
                );
                $("#MatName").val(
                    window.materialMap[ui.item.value].name
                );
            }
        });
    }

    function customWarning(p_focus_id, p_title, p_description, p_color, p_time_in_ms) {

        $(p_focus_id).focus();

        $.smallBox({
            title: p_title,
            content: p_description,
            color: p_color,
            timeout: p_time_in_ms
        });
    }

    $(document).off("click", "#show").on("click", "#show", function () {

        var matCode = $("#hfMatCode").val();

        if (!matCode) {
            customWarning("#MatName", "Material", "please Select material first!", "#C46A69", 3000);
            return false;
        }

        var urlName = "ToolStockConversion/GetCreateList?intMatCode=" + matCode;
        $.ajax({
            url: urlName,
            type: "POST",
            dataType: "json",
            async: false,
            success: function (data) {
                var tbody = $("#tblMaterials tbody");
                tbody.empty();

                if (data.length > 0) {
                    $.each(data, function (i, item) {
                        
                        var row = "";

                        row += "<tr>";

                        row += "<input type='hidden' class='hfFinishWt' name='hfFinishWt' value='" + item.FinishWt + "'>";
                        row += "<input type='hidden' class='hfScrapMatCode' name='hfScrapMatCode' value='" + item.ScarpMaterialCode + "'>";

                        row += "<td class='text-center'>"
                            + "<input type='Checkbox' id='currentRow " + i + "'>"
                            + "</td>";

                        row += "<td class='text-center' data-grn='" + item.StrGrnNo + "'>"
                                + (item.ShortGrnNo || "")
                                + "</td>";

                        row += "<td class='text-center' data-grndate='" + item.GrnDate + "'>"
                                + (item.FormattedGrnDate || "")
                                + "</td>";

                        row += "<td class='text-center'>"
                                + (item.PartyBillNo || "")
                                + "</td>";

                        row += "<td class='text-center' data-pbdate='" + item.PartyBillDate + "'>"
                                + (item.FormattedPartyBillDate || "")
                                + "</td>";

                        row += "<td class='text-left' value=" + item.SubGlAcNo + ">"
                                + (item.SupplierName || "")
                                + "</td>";

                        row += "<td class='text-left' value=" + item.MaterialCode + ">"
                                + (item.MaterialName || "")
                                + "</td>";

                        row += "<td class='text-center'>"
                                + (item.IssuedQty || 0)
                                + "</td>";

                        row += "<td class='text-center'>"
                                + (item.GrnCrtBy || "")
                                + "</td>";

                        row += "</tr>";

                        tbody.append(row);
                    });
                }
            },
            error: function (error) {
                customWarning( "#MatName", "Error", "Failed to load records", "#C46A69", 3000);
            }
        });
        
    });


    $(document).off("click", "#next").on("click", "#next", function () {
        var matCode = $("#hfMatCode").val();

        if (!matCode) {
            customWarning("#MatName", "Material", "please Select material first!", "#C46A69", 3000);
            return false;
        }

        var selectedItems = [];

        $("#tblMaterials tbody tr").each(function () {

            var checkbox = $(this).find('input[type="Checkbox"]');

            if (checkbox.prop('checked')) {

                var row = $(this);
                selectedItems.push({
                    StrGrnNo: row.find('td').eq(1).data('grn'),
                    ShortGrnNo: row.find('td').eq(1).text(),
                    GrnDate: row.find('td').eq(2).data('grndate'),
                    FormattedGrnDate: row.find('td').eq(2).text(),
                    FinishWt: row.find('.hfFinishWt').val(),

                    PartyBillNo: row.find('td').eq(3).text(),
                    PartyBillDate: row.find('td').eq(4).data('pbdate'),
                    FormattedPartyBillDate: row.find('td').eq(4).text(),
                    SubGlAcNo: row.find('td').eq(5).attr('value'),
                    SupplierName: row.find('td').eq(5).text(),

                    MaterialCode: row.find('td').eq(6).attr('value'),
                    MaterialName: row.find('td').eq(6).text(),

                    IssuedQty: row.find('td').eq(7).text(),
                    ScarpMaterialCode: row.find('.hfScrapMatCode').val()
                });
            }

        });

        if (selectedItems.length == 0) {
            customWarning("#MatName", "Selection", "Please select at least one row", "#C46A69", 3000);
            return false;
        }

        $.ajax({
            url: "ToolStockConversion/Create",
            type: "POST",
            contentType: "application/json",
            data: JSON.stringify(selectedItems),
            success: function (response) {
                $("#mainContent").html(response);
            },
            error: function () {
                customWarning("#MatName", "Error", "Failed to open create page", "#C46A69", 3000);
            }
        });

    });





</script>
```  