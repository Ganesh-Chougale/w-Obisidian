```csharp
@model PagedList.IPagedList<ZanvarGroup.Erp.Business.Transactions.Material.ToolStockConversion>
@using ZanvarGroup.Erp.Business.Base

@{ 
    TranGridSettings grid_settings = ViewData["trangridsettings"] as TranGridSettings;
}

<div id="content">
    <section id="temp1"></section>
    <section id="widget-grid" class="">
        <div class="row">
            <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <div class="jarviswidget jarviswidget-color-blueDark top-border" id="wid-id-1" data-widget-editbutton="false">
                    <div class="navigation-button">
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                            <div class="col-md-3">
                                <div class="pull-left">
                                    <a class="btn btn-primary" href="/Material/ToolStockConversion/GoCreate" data-ajax-update="#mainContent" data-ajax-mode="replace" data-ajax-method="GET" data-ajax="true">
                                        <i class="fa fa-lg fa-fw fa-sticky-note"></i>
                                        New
                                    </a>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="col-md-4">
                                    <div class="input-group">
                                        <input class="form-control" id="from" type="text" value="@grid_settings.TranFromDate" placeholder="From" onblur="valDate(this)">
                                        <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="input-group">
                                        <input class="form-control" id="to" value="@grid_settings.TranToDate" type="text" placeholder="Select a date" onblur="valDate(this)">
                                        <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                    </div>
                                </div>

                                <div class="col-md-1">
                                    <a class="btn btn-default" href="javascript:void(0);" id="datesearch">
                                        <i class="fa fa-lg fa-fw fa-search"></i>
                                    </a>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="pull-right">
                                    <form class="form-inline" role="search" data-ajax-update="#mainContent" data-ajax-mode="replace" data-ajax="true" action="/Material/ToolStockConversion/index?page=1">
                                        @*<form class="form-inline" role="search" data-ajax-update="#mainContent" data-ajax-mode="replace" data-ajax="true" action="/Material/ToolStockConversion/index?page=1&FromDate=@ViewBag.FromDate&ToDate=@ViewBag.ToDate">*@
                                            <div class="form-group">
                                                <input type="text" value="@ViewBag.CurrentFilter" name="searchString" class="form-control input-sm input-search-btn" placeholder="Search">
                                            </div>
                                            <button type="submit" class="btn btn-sm btn-primary">
                                                <i class="fa fa-lg fa-fw fa-search"></i>
                                            </button>
                                        </form>
</div>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="widget-body no-padding">
                            <table id="datatable_fixed_column" class="table table-striped table-bordered" width="100%">
                                <thead>
                                    <tr>
                                        <th style="width:10%;"></th>
                                        <th style="width:35%">
                                            <a href="/Material/ToolStockConversion/index?page=1&sortOrder=DocNo&sortdir=@ViewBag.SortDir&searchString=@ViewBag.CurrentFilter&FromDate=@ViewBag.FromDate&ToDate=@ViewBag.ToDate" data-ajax-update="#mainContent" data-ajax-mode="replace" data-ajax-method="GET" data-ajax="true">
                                                Doc No
                                            </a>
                                        </th>
                                        <th style="width:35%">
                                            <a href="/Material/ToolStockConversion/index?page=1&sortOrder=DocDate&sortdir=@ViewBag.SortDir&searchString=@ViewBag.CurrentFilter&FromDate=@ViewBag.FromDate&ToDate=@ViewBag.ToDate" data-ajax-update="#mainContent" data-ajax-mode="replace" data-ajax-method="GET" data-ajax="true">
                                                Doc Date
                                            </a>
                                        </th>
                                        <th style="width:10%">
                                            <a href="/Material/ToolStockConversion/index?page=1&sortOrder=CrtBy&sortdir=@ViewBag.SortDir&searchString=@ViewBag.CurrentFilter&FromDate=@ViewBag.FromDate&ToDate=@ViewBag.ToDate" data-ajax-update="#mainContent" data-ajax-mode="replace" data-ajax-method="GET" data-ajax="true">
                                                Created By
                                            </a>
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach (var item in Model)
                                    {
                                        <tr class="@(item.StatusCode == 1 ? "deleted" : "ok")">
                                            <td style="text-align:center">

                                                @if (item.StatusCode == 0)
                                                {
                                                    <a class="btn btn-xs btn-success" title="Edit" href="/Material/ToolStockConversion/edit?TrnNo=@item.TrnNo" data-ajax-update="#mainContent" data-ajax-mode="replace" data-ajax-method="GET" data-ajax="true">
                                                        <i class="fa fa-fw fa-edit"></i>
                                                    </a>
                                                    <a class="btn btn-xs btn-danger" title="Delete" href="/Material/ToolStockConversion/delete?TrnNo=@item.TrnNo" data-ajax-update="#mainContent" data-ajax-mode="replace" data-ajax-method="GET" data-ajax="true">
                                                        <i class="fa fa-fw fa-ban"></i>
                                                    </a>
                                                }

                                            </td>
                                            <td>
                                                <a title="View" href="/Material/ToolStockConversion/details?TrnNo=@item.TrnNo" data-ajax-update="#mainContent" data-ajax-mode="replace" data-ajax-method="GET" data-ajax="true">
                                                    @item.ShortTrnNo
                                                </a>
                                            </td>
                                            <td style="text-align:center">@item.FormattedTrnDate</td>
                                            <td style="text-align:center">@item.CrtBy</td>
                                        </tr>
                                    }

                                </tbody>
                            </table>
                        </div>
                        <div class="row">
                            <div class="dt-toolbar-footer">
                                <div class="col-sm-6 col-xs-12 hidden-xs">
                                    <div class="dataTables_info" id="datatable_tabletools_info" role="status" aria-live="polite">
                                        Showing <span class="txt-color-darken">@(Model.PageCount < Model.PageNumber ? 0 : Model.PageNumber)</span>
                                        of <span class="text-primary">@Model.PageCount</span>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-xs-12">
                                    <div class="dataTables_paginate paging_simple_numbers" id="datatable_tabletools_paginate">
                                        <ul class="pagination pagination-sm">
                                            <li>
                                                <div class="">
                                                    <a href="/Material/ToolStockConversion/index?sortOrder=@ViewBag.CurrentSort&sortdir=@ViewBag.SortDir&page=@(Model.PageNumber-1)&searchString=@ViewBag.CurrentFilter&FromDate=@ViewBag.FromDate&ToDate=@ViewBag.ToDate" class="@((@Model.PageNumber == 1) ? "btn btn-primary disabled":"btn btn-primary")" data-ajax-update="#mainContent" data-ajax-mode="replace" data-ajax-method="GET" data-ajax="true">Previous</a>
                                                    <a href="/Material/ToolStockConversion/index?sortOrder=@ViewBag.CurrentSort&sortdir=@ViewBag.SortDir&page=@(Model.PageNumber+1)&searchString=@ViewBag.CurrentFilter&FromDate=@ViewBag.FromDate&ToDate=@ViewBag.ToDate" class="@((@Model.PageNumber == @Model.PageCount) ? "btn btn-primary disabled":"btn btn-primary")" data-ajax-update="#mainContent" data-ajax-mode="replace" data-ajax-method="GET" data-ajax="true">Next</a>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </article>
        </div>
    </section>
</div>

<script type="text/javascript">

    $(document).ready(function () {

        $("#from").datepicker({
            defaultDate: "+1w",
            changeMonth: true,
            numberOfMonths: 1,
            dateFormat: 'dd/mm/yy',
            prevText: '<i class="fa fa-chevron-left"></i>',
            nextText: '<i class="fa fa-chevron-right"></i>',
            onClose: function (selectedDate) {
                $("#to").datepicker("option", "minDate", selectedDate);
            }

        });
        $("#to").datepicker({
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

        $("#datesearch").click(function () {
            var FromDate = $("#from").val();
            var ToDate = $("#to").val();
            if (FromDate !== undefined && ToDate !== undefined && FromDate != null && ToDate != null && FromDate != "" && ToDate != "") {

                var urlName = "ToolStockConversion/index?FromDate='" + FromDate + "'&ToDate='" + ToDate + "'";
                $.ajax({
                    url: urlName,
                    type: "POST",
                    success: function (response, status, xhr) {
                        $("#mainContent").html(response);
                    },
                    error: function (err) {
                        $("#mainContent").html(err);
                    }
                });
            }
            else {
                $.smallBox({
                    title: "Date",
                    content: "Invalid date format!",
                    color: "#C46A69",
                    timeout: 3000,
                });
            }
        });
    })
</script>
```  