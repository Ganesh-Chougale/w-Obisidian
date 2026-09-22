```csharp
@model IEnumerable<ZanvarGroup.Erp.Business.Transactions.Production.PartPrice>
@using ZanvarGroup.Erp.Business.Entities.Masters;
@using ZanvarGroup.Erp.Business.Base;

@{
    List<AccountSubGlEntity> customer = ViewData["_objcustomerList"] as List<AccountSubGlEntity>;
    int CurrentCompany = ViewBag.CompanyCode;
}
<style>
    /*page*/
    #content {
        background-color: #14171C !important;
        color: #F1F3F6;
        min-height: 100vh;
    }

    #content th, td{
        font-size: 20px !important;
    }

    #NightMode {
        background: transparent !important;
        border: none !important;
        box-shadow: none !important;
    }

        #NightMode > header {
            background: #14171C !important;
            border: 0 !important;
            margin: 8px 0 12px !important;
            padding: 0 20px !important;
            display: flex !important;
            flex-direction: column !important;
            align-items: flex-start !important;
            height: auto !important;
            min-height: 45px !important;
        }

            #NightMode > header h2 {
                float: none !important;
                clear: both !important;
                width: 100% !important;
                margin: 0 0 5px !important;
                padding: 0 !important;
                color: #F4F5F7 !important;
                font-size: 15px !important;
                line-height: 20px !important;
                font-weight: 700 !important;
            }

            #NightMode > header p {
                float: none !important;
                clear: both !important;
                width: 100% !important;
                margin: 0 !important;
                padding: 0 !important;
                color: #AEB6C7 !important;
                font-size: 13px !important;
                line-height: 0 !important;
            }


    /*main container*/
    #widget-grid {
        margin: 0 !important;
        padding: 0 !important;
    }

        #widget-grid > .row {
            margin: 0 !important;
        }

        #widget-grid article {
            padding: 0 19px !important;
            border: none !important;
        }

    /*upper customer / part section*/
    #UpperSection {
        background-color: #1B1F25 !important;
        border: 1px solid #303641 !important;
        border-top: 2px solid #8B74E8 !important;
        border-radius: 5px !important;
        padding: 14px 15px !important;
        min-height: 68px !important;
        height: auto !important;
        overflow: hidden;
    }

        #UpperSection:before,
        #UpperSection:after {
            display: table;
            content: "";
        }

        #UpperSection:after {
            clear: both;
        }

        #UpperSection > div {
            padding: 0 7px !important;
            margin: 0 !important;
        }

            #UpperSection > div:first-child {
                padding-left: 0 !important;
            }

            #UpperSection > div:last-child {
                padding-right: 0 !important;
            }

        #UpperSection .col-md-12 {
            padding-left: 0 !important;
            padding-right: 0 !important;
        }

            #UpperSection .col-md-12:first-child {
                color: #AEB8CA !important;
                font-size: 10.5px !important;
                line-height: 15px !important;
                font-weight: 500 !important;
                margin-bottom: 5px !important;
            }

        /*select Controls*/
        #UpperSection label.select {
            display: block !important;
            width: 100% !important;
            height: 30px !important;
            position: relative !important;
            margin: 0 !important;
            padding: 0 !important;
        }

            #UpperSection label.select:after {
                content: "";
                position: absolute;
                right: 10px;
                top: 50%;
                width: 6px;
                height: 6px;
                margin-top: -4px;
                border-right: 2px solid #D7DBE4;
                border-bottom: 2px solid #D7DBE4;
                transform: rotate(45deg);
                pointer-events: none;
                z-index: 5;
            }

        #UpperSection select {
            width: 100% !important;
            height: 30px !important;
            min-height: 30px !important;
            padding: 0 32px 0 10px !important;
            background-color: #20252C !important;
            background-image: none !important;
            border: 1px solid #3D4655 !important;
            border-radius: 4px !important;
            color: #F4F5F7 !important;
            font-size: 12px !important;
            font-family: inherit !important;
            outline: none !important;
            box-shadow: none !important;
            appearance: none !important;
            -webkit-appearance: none !important;
            -moz-appearance: none !important;
        }

            #UpperSection select:focus {
                border-color: #8171DC !important;
                box-shadow: 0 0 0 1px rgba(129, 113, 220, 0.18) !important;
            }

            #UpperSection select option {
                background-color: #20252C;
                color: #F4F5F7;
            }

        #UpperSection .select2-container {
            width: 100% !important;
        }

            #UpperSection .select2-container .select2-selection--single {
                height: 30px !important;
                background-color: #20252C !important;
                border: 1px solid #3D4655 !important;
                border-radius: 4px !important;
            }

                #UpperSection .select2-container .select2-selection--single .select2-selection__rendered {
                    height: 28px !important;
                    line-height: 28px !important;
                    padding-left: 10px !important;
                    padding-right: 30px !important;
                    color: #F4F5F7 !important;
                    font-size: 12px !important;
                }

                #UpperSection .select2-container .select2-selection--single .select2-selection__arrow {
                    height: 28px !important;
                    right: 7px !important;
                }

                    #UpperSection .select2-container .select2-selection--single .select2-selection__arrow b {
                        border-color: #D7DBE4 transparent transparent transparent !important;
                    }

    /*Indicators*/
    #legendsIndicators {
        min-height: 31px !important;
        height: auto !important;
        padding: 13px 0 11px 0 !important;
        border: none !important;
        background: transparent !important;
        font-size: 10px !important;
        line-height: 12px !important;
    }

        #legendsIndicators span {
            display: inline-flex !important;
            align-items: center !important;
            color: #AEB6C7 !important;
            margin-right: 17px !important;
            font-size: 10px !important;
            white-space: nowrap;
        }

        #legendsIndicators i {
            width: 8px !important;
            height: 8px !important;
            line-height: 8px !important;
            font-size: 8px !important;
            margin-right: 5px !important;
        }

        #legendsIndicators span:nth-child(1) i {
            color: #73A5FF !important;
        }

        #legendsIndicators span:nth-child(2) i {
            color: #A784F1 !important;
        }

        #legendsIndicators span:nth-child(3) i {
            color: #FFA65C !important;
        }

    /*table outer contianer*/
    #NightMode .widget-body {
        background-color: #1B1F25 !important;
        border: 1px solid #303641 !important;
        border-radius: 5px !important;
        overflow: hidden !important;
        padding: 0 !important;
    }

    #datatable_fixed_column {
        width: 100% !important;
        margin: 0 !important;
        padding: 0 !important;
        table-layout: fixed !important;
        border-collapse: collapse !important;
        background-color: #1B1F25 !important;
        color: #E7E9EE !important;
        border: none !important;
    }

        /*table header*/
        #datatable_fixed_column thead tr:first-child th {
            height: 29px !important;
            padding: 0 7px !important;
            border: none !important;
            border-right: 1px solid rgba(20, 23, 28, 0.22) !important;
            border-bottom: 1px solid #303641 !important;
            color: #F4F4F7 !important;
            font-size: 9px !important;
            font-weight: 700 !important;
            text-align: center !important;
            vertical-align: middle !important;
            box-shadow: none !important;
        }

            #datatable_fixed_column thead tr:first-child th:nth-child(1),
            #datatable_fixed_column thead tr:first-child th:nth-child(2) {
                background-color: #20252C !important;
            }

            #datatable_fixed_column thead tr:first-child th:nth-child(3) {
                background-color: #638FE0 !important;
            }

            #datatable_fixed_column thead tr:first-child th:nth-child(4) {
                background-color: #A384ED !important;
            }

            #datatable_fixed_column thead tr:first-child th:nth-child(5) {
                background-color: #FFA65B !important;
            }

        /*table header 2nd row*/
        #datatable_fixed_column thead tr:nth-child(2) th {
            height: 29px !important;
            padding: 0 9px !important;
            border: none !important;
            border-right: 1px solid #303641 !important;
            border-bottom: 1px solid #303641 !important;
            color: #DCE0E8 !important;
            font-size: 10px !important;
            font-weight: 600 !important;
            text-align: right !important;
            vertical-align: middle !important;
            box-shadow: none !important;
        }

            #datatable_fixed_column thead tr:nth-child(2) th:nth-child(1),
            #datatable_fixed_column thead tr:nth-child(2) th:nth-child(2),
            #datatable_fixed_column thead tr:nth-child(2) th:nth-child(3) {
                background-color: #243B65 !important;
            }

            #datatable_fixed_column thead tr:nth-child(2) th:nth-child(4),
            #datatable_fixed_column thead tr:nth-child(2) th:nth-child(5),
            #datatable_fixed_column thead tr:nth-child(2) th:nth-child(6) {
                background-color: #382B65 !important;
            }

            #datatable_fixed_column thead tr:nth-child(2) th:nth-child(7),
            #datatable_fixed_column thead tr:nth-child(2) th:nth-child(8),
            #datatable_fixed_column thead tr:nth-child(2) th:nth-child(9) {
                background-color: #54371E !important;
            }

        /*column width*/
        #datatable_fixed_column thead tr:first-child th:nth-child(1) {
            width: 5% !important;
        }

        #datatable_fixed_column thead tr:first-child th:nth-child(2) {
            width: 16% !important;
        }

        #datatable_fixed_column thead tr:first-child th:nth-child(3),
        #datatable_fixed_column thead tr:first-child th:nth-child(4),
        #datatable_fixed_column thead tr:first-child th:nth-child(5) {
            width: 26.333% !important;
        }



        /*table body*/
        #datatable_fixed_column tbody {
            background-color: #1B1F25 !important;
        }

            #datatable_fixed_column tbody tr {
                height: 36px !important;
                background-color: #1B1F25 !important;
            }

                #datatable_fixed_column tbody tr:nth-child(odd),
                #datatable_fixed_column tbody tr:nth-child(even) {
                    background-color: #1B1F25 !important;
                }

            #datatable_fixed_column tbody td {
                height: 36px !important;
                padding: 0 8px !important;
                background-color: #1B1F25 !important;
                border-top: none !important;
                border-left: none !important;
                border-right: 1px solid #303641 !important;
                border-bottom: 1px solid #303641 !important;
                color: #E7E9EE !important;
                font-size: 10.5px !important;
                line-height: 16px !important;
                vertical-align: middle !important;
            }

            #datatable_fixed_column tbody tr:last-child td {
                border-bottom: none !important;
            }

            #datatable_fixed_column tbody td:first-child {
                width: 5% !important;
                padding: 0 !important;
                text-align: center !important;
                color: #AAB2C1 !important;
            }

            #datatable_fixed_column tbody td:nth-child(2) {
                width: 16% !important;
                padding-left: 10px !important;
                padding-right: 10px !important;
                color: #EEF0F4 !important;
                white-space: nowrap;
                overflow: hidden;
                text-overflow: ellipsis;
            }


            /*cost column background*/
            #datatable_fixed_column tbody td:nth-child(3),
            #datatable_fixed_column tbody td:nth-child(4),
            #datatable_fixed_column tbody td:nth-child(5) {
                background-color: #1C2A42 !important;
            }

            #datatable_fixed_column tbody td:nth-child(6),
            #datatable_fixed_column tbody td:nth-child(7),
            #datatable_fixed_column tbody td:nth-child(8) {
                background-color: #29213F !important;
            }

            #datatable_fixed_column tbody td:nth-child(9),
            #datatable_fixed_column tbody td:nth-child(10),
            #datatable_fixed_column tbody td:nth-child(11) {
                background-color: #33271D !important;
            }



            /*input inside table*/
            #datatable_fixed_column tbody input.form-control {
                width: calc(100% - 0px) !important;
                height: 25px !important;
                min-height: 25px !important;
                margin: 0 !important;
                padding: 0 9px !important;
                border: 0 !important;
                border-radius: 3px !important;
                background-color: #F5F5F7 !important;
                color: #22252A !important;
                font-family: inherit !important;
                font-size: 10px !important;
                text-align: right !important;
                box-shadow: none !important;
                outline: none !important;
            }

                #datatable_fixed_column tbody input.form-control:focus {
                    border: 0 !important;
                    outline: none !important;
                    box-shadow: 0 0 0 2px rgba(127, 110, 222, 0.45) !important;
                }

                #datatable_fixed_column tbody input.form-control::placeholder {
                    color: #969AA2 !important;
                }

            /*Target*/
            #datatable_fixed_column tbody td.target-cell input,
            #datatable_fixed_column tbody input[readonly],
            #datatable_fixed_column tbody input:disabled {
                background-color: #9CA7B7 !important;
                border: 1px dashed #596273 !important;
                color: #5F6671 !important;
                cursor: not-allowed !important;
            }


            /*Difference*/
            #datatable_fixed_column tbody td.diff-cell {
                text-align: center !important;
                color: #D2D5DC !important;
            }

                #datatable_fixed_column tbody td.diff-cell span {
                    color: #D2D5DC !important;
                }

            /*empty table*/
            #datatable_fixed_column tbody:empty:after {
                content: "";
                display: block;
            }

    /*Notes*/
    #notesSection {
        margin-top: 13px !important;
        padding: 12px 15px 11px !important;
        background-color: #1B1F25 !important;
        border: 1px solid #303641 !important;
        border-radius: 5px !important;
        color: #B7BFCE !important;
    }

        #notesSection .notes-title {
            margin: 0 0 7px 0 !important;
            color: #F2F4F7 !important;
            font-size: 10px !important;
            line-height: 14px !important;
            font-weight: 700 !important;
        }

        #notesSection ol {
            margin: 0 !important;
            padding-left: 17px !important;
            color: #B7BFCE !important;
            font-size: 10px !important;
            line-height: 17px !important;
        }

        #notesSection li {
            margin: 0 !important;
            padding: 0 !important;
        }

    /*footer*/
    #footerSection {
        margin-top: 17px !important;
        min-height: 32px !important;
        padding: 0 !important;
        border: none !important;
        background: transparent !important;
    }

        #footerSection:before,
        #footerSection:after {
            display: table;
            content: "";
        }

        #footerSection:after {
            clear: both;
        }

    #footerStatus {
        float: left;
        color: #48E69B !important;
        font-size: 10.5px !important;
        line-height: 31px !important;
        font-weight: 500 !important;
    }

    #footerActions {
        float: right;
        display: flex !important;
        align-items: center !important;
        gap: 9px !important;
    }

        /*Buttons*/
        #footerActions a,
        #footerActions button {
            display: inline-flex !important;
            align-items: center !important;
            justify-content: center !important;
            height: 31px !important;
            min-width: 65px !important;
            margin: 0 !important;
            padding: 0 14px !important;
            border-radius: 5px !important;
            font-family: inherit !important;
            font-size: 10.5px !important;
            font-weight: 600 !important;
            text-decoration: none !important;
            cursor: pointer !important;
            box-shadow: none !important;
        }

    #btnfooterreset {
        background-color: #1C2128 !important;
        border: 1px solid #3B4453 !important;
        color: #E5E8EE !important;
    }

        #btnfooterreset:hover {
            background-color: #252A32 !important;
            color: #FFFFFF !important;
        }

    #save {
        background-color: #8871ED !important;
        border: 1px solid #8D79EE !important;
        color: #FFFFFF !important;
    }

        #save:hover {
            background-color: #967FF5 !important;
            color: #FFFFFF !important;
        }

    /*remove old smartadmin*/
    #NightMode .jarviswidget-editbox,
    #NightMode .widget-toolbar,
    #NightMode .jarviswidget-ctrls {
        display: none !important;
    }

    #NightMode .table-striped > tbody > tr:nth-of-type(odd) {
        background-color: transparent !important;
    }

    #NightMode .table-hover > tbody > tr:hover {
        background-color: transparent !important;
    }

    #NightMode .table-bordered {
        border: none !important;
    }
</style>
<div id="content" style="height:100vh;">

    <section id="widget-grid" class="">

        <div class="row">

            <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">

                <div class="jarviswidget jarviswidget-color-blueDark top-border"
                     id="NightMode" data-widget-editbutton="false">

                    <header>
                        <h2>Part Cost Agreement</h2>
                        <input type="hidden" id="hfCompanyId" value="@CurrentCompany" />
                        <p>
                            Compare agreed cost against system target cost across packing,
                            child parts and transport. Target values are pulled from the
                            parts price breakup and are read-only.
                        </p>
                    </header>

                    <div class="navigation-button" id="UpperSection">

                        <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">

                            <div class="col-md-12"> Customer Name </div>

                            <div class="col-md-12">

                                <label class="select">
                                    <select name="ddlcustomer" id="ddlcustomer">
                                        <option>Select Customer</option>
                                        @if (customer != null)
                                        {
                                            foreach (AccountSubGlEntity cust in customer)
                                            {
                                                <option value="@cust.SubGlAcNo">@cust.LongName</option>
                                            }
                                        }
                                    </select>
                                </label>
                            </div>
                        </div>

                        <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                            <div class="col-md-12">Part Name</div>
                            <div class="col-md-12">
                                <label class="select">
                                    <select name="ddlParts" id="ddlParts" multiple="multiple" style="width:100%;"></select>
                                </label>
                            </div>
                        </div>

                    </div>


                    <div class="navigation-button" id="legendsIndicators">
                        <span>
                            <i class="fa fa-square" aria-hidden="true"></i>
                            Packing
                        </span>
                        <span>
                            <i class="fa fa-square" aria-hidden="true"></i>
                            Child parts
                        </span>
                        <span>
                            <i class="fa fa-square" aria-hidden="true"></i>
                            Transport
                        </span>
                        <span>
                            <i class="fa fa-square" style="color:#858993 !important;" aria-hidden="true"></i>
                            Target cost — from price breakup, read-only
                        </span>
                        <span>
                            <i class="fa fa-square" style="color:#FF6B72 !important;" aria-hidden="true"></i>
                            Row blocked — agreed cost is below target
                        </span>
                    </div>

                    <div style="border: none; border-radius: 10px;">
                        <div class="widget-body no-padding">
                            <table id="datatable_fixed_column" class="table table-striped table-bordered table-hover" width="100%">
                                <thead>
                                    <tr>
                                        <th rowspan="2" style="text-align:center; vertical-align:bottom;">
                                            Sr.
                                        </th>

                                        <th rowspan="2" style="text-align:left; vertical-align:bottom;">
                                            Name of the Parts
                                        </th>

                                        <th colspan="3" style="text-align:center;">
                                            PACKING COST
                                        </th>

                                        <th colspan="3" style="text-align:center;">
                                            CHILD PARTS COST
                                        </th>

                                        <th colspan="3" style="text-align:center;">
                                            TRANSPORT COST
                                        </th>
                                        <th rowspan="2" style="text-align:center; vertical-align:bottom;">
                                            Action
                                        </th>
                                    </tr>
                                    <tr>
                                        <th> Agreed </th>
                                        <th> Target </th>
                                        <th> Diff </th>
                                        <th> Agreed </th>
                                        <th> Target </th>
                                        <th> Diff </th>
                                        <th> Agreed </th>
                                        <th> Target </th>
                                        <th> Diff </th>
                                    </tr>

                                </thead>
                                <tbody></tbody>
                            </table>
                        </div>
                    </div>


                    <div id="notesSection">

                        <div class="notes-title">
                            NOTES
                        </div>

                        <ol>

                            <li>
                                Row data is populated automatically once a customer
                                and parts group are selected, sourced from the parts
                                price breakup.
                            </li>

                            <li>
                                An agreed cost cannot be saved below its target cost —
                                the row is flagged and Save is blocked until it's corrected.
                            </li>

                        </ol>

                    </div>


                    <div id="footerSection">

                        <div id="saveMessage"></div>


                        <div id="footerActions">

                            <a class="btn" id="btnfooterreset" href="PartPrice/index" data-ajax-update="#mainContent" data-ajax-mode="replace" data-ajax-method="GET" data-ajax="true">
                                Cancel
                            </a>

                            <a class="btn" id="btnfooterreset">
                                Reset
                            </a>

                            <a class="btn" id="save" href="javascript:void(0);">
                                Save
                            </a>

                        </div>

                    </div>

                </div>

            </article>

        </div>

    </section>

</div>


<script type="text/javascript">
    var lstarrey = [];

    $(document).ready(function () {

        $("#ddlcustomer").select2({
            width: "100%"
        });

        $("#ddlParts").select2({
            width: "100%",
            closeOnSelect: false,
            placeholder: "Select Parts"
        });

    });

    $(document).off("change", "#ddlcustomer")
        .on("change", "#ddlcustomer", function () {

            var selectedCustomer = $(this).val();
            var companyid = $("#hfCompanyId").val();

            var PartsDropDown = $("#ddlParts");
            var tableBody = $("#datatable_fixed_column > tbody");

            PartsDropDown.empty();
            tableBody.empty();

            if (!selectedCustomer) {
                PartsDropDown.val(null).trigger("change");
                return;
            }

            var urlName =
                "PartPrice/GetPendingPlanningList?SubGlAcNo=" +
                encodeURIComponent(selectedCustomer) +
                "&companyid=" +
                encodeURIComponent(companyid);

            $.ajax({
                url: urlName,
                dataType: "json",
                type: "POST",
                contentType: "application/json; charset=utf-8",

                success: function (data) {

                    if (!data || data.length === 0) {

                        lstarrey = [];

                        PartsDropDown.empty();
                        PartsDropDown.val(null).trigger("change");

                        tableBody.empty();

                        return;
                    }

                    lstarrey = data;

                    $.each(data, function (i, item) {

                        if (
                            PartsDropDown.find(
                                "option[value='" + item.MaterialCode + "']"
                            ).length === 0
                        ) {

                            PartsDropDown.append(
                                $("<option></option>")
                                    .val(item.MaterialCode)
                                    .text(item.MaterialName)
                            );

                        }

                    });

                    var allPartCodes = $.map(data, function (item) {
                        return item.MaterialCode;
                    });

                    PartsDropDown.val(allPartCodes).trigger("change");
                    populatePartsTable(data);

                },

                error: function (response) {
                    alert(response.responseText);
                },

                failure: function (response) {
                    alert(response.responseText);
                }

            });

        });

    $(document).off("change", "#ddlParts")
        .on("change", "#ddlParts", function () {

            var selectedPartCodes = $(this).val() || [];

            if (selectedPartCodes.length === 0) {

                $("#datatable_fixed_column > tbody").empty();

                return;
            }

            selectedPartCodes = $.map(
                selectedPartCodes,
                function (code) {
                    return String(code);
                }
            );

            var selectedData = $.grep(lstarrey, function (item) {

                return selectedPartCodes.indexOf(
                    String(item.MaterialCode)
                ) !== -1;

            });

            populatePartsTable(selectedData);

        });

    function populatePartsTable(data) {

        var tableBody = $("#datatable_fixed_column > tbody");
        tableBody.empty();

        $.each(data, function (i, item) {
            var rowNumber = i + 1;
            var row = `
                        <tr data-material-code="${item.MaterialCode}">
                          <td style="text-align:center;">${rowNumber}</td>
                          <td>${item.MaterialName || ""}</td>

                          <!-- packing cost -->
                          <td>
                            <input type="text" class="form-control clsPackingCostAgree" style="text-align:right;" value="${item.PackingCostAgree != null ? item.PackingCostAgree : 0}" readonly />
                          </td>

                          <td>
                            <input type="text" class="form-control clsPackingCostTarget" style="text-align:right;" />
                          </td>

                          <td>
                            <input type="text" class="form-control clsPackingCostDifference" style="text-align:right;" readonly />
                          </td>

                          <!-- child parts cost -->
                          <td>
                            <input type="text" class="form-control clsChildPartsCostAgree" style="text-align:right;" value="${item.ChildPartsCostAgree != null ? item.ChildPartsCostAgree : 0}" readonly />
                          </td>

                          <td>
                            <input type="text" class="form-control clsChildPartsCostTarget" style="text-align:right;" />
                          </td>

                          <td>
                            <input type="text" class="form-control clsChildPartsCostDifference" style="text-align:right;" readonly />
                          </td>

                          <!-- transport cost -->
                          <td>
                            <input type="text" class="form-control clsTransportCostAgree" style="text-align:right;" value="${item.TransportCostAgree != null ? item.TransportCostAgree : 0}" readonly />
                          </td>

                          <td>
                            <input type="text" class="form-control clsTransportCostTarget" style="text-align:right;" />
                          </td>

                          <td>
                            <input type="text" class="form-control clsTransportCostDifference" style="text-align:right;" readonly />
                          </td>

                          <td style="text-align:center;">
                            <button type="button" class="btn btn-danger deleteRow">
                              <i class="fa fa-lg fa-fw fa-ban"></i>
                            </button>
                          </td>
                        </tr>
                        `;

            tableBody.append(row);

        });

    }


    $(document).off("input change", ".clsPackingCostTarget")
        .on("input change", ".clsPackingCostTarget", function () {

            var row = $(this).closest("tr");

            var agreed = parseFloat(
                row.find(".clsPackingCostAgree").val()
            ) || 0;

            var target = parseFloat(
                $(this).val()
            ) || 0;

            var difference = agreed - target;

            row.find(".clsPackingCostDifference")
                .val(difference.toFixed(2));

        });


    $(document).off("input change", ".clsChildPartsCostTarget")
        .on("input change", ".clsChildPartsCostTarget", function () {

            var row = $(this).closest("tr");

            var agreed = parseFloat(
                row.find(".clsChildPartsCostAgree").val()
            ) || 0;

            var target = parseFloat(
                $(this).val()
            ) || 0;

            var difference = agreed - target;

            row.find(".clsChildPartsCostDifference")
                .val(difference.toFixed(2));

        });

    $(document).off("input change", ".clsTransportCostTarget")
        .on("input change", ".clsTransportCostTarget", function () {

            var row = $(this).closest("tr");

            var agreed = parseFloat(
                row.find(".clsTransportCostAgree").val()
            ) || 0;

            var target = parseFloat(
                $(this).val()
            ) || 0;

            var difference = agreed - target;

            row.find(".clsTransportCostDifference")
                .val(difference.toFixed(2));
        });

    $(document).off("click", ".deleteRow")
        .on("click", ".deleteRow", function () {

            var row = $(this).closest("tr");

            var materialCode = String(
                row.attr("data-material-code")
            );

            var selectedParts = $("#ddlParts").val() || [];

            selectedParts = $.grep(
                selectedParts,
                function (code) {
                    return String(code) !== materialCode;
                }
            );

            $("#ddlParts")
                .val(selectedParts)
                .trigger("change");

        });


</script>
```  