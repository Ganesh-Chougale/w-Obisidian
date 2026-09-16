```csharp
@model PagedList.IPagedList<ZanvarGroup.Erp.Business.Transactions.Production.ChildPartConsumption>
@using ZanvarGroup.Erp.Business.Base

@{
    TranGridSettings grid_settings = ViewData["trangridsettings"] as TranGridSettings;
}

<div id="content">
    <section id="widget-grid" class="">
        <div class="row">
            <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <section class="jarviswidget jarviswidget-color-blueDark top-border" id="wid-id-1" data-widget-editbutton="false">

                    <header>
                        <span class="widget-icon"> <i class="fa fa-eye"></i> </span>
                        <h2>Child Part Consumption</h2>
                    </header>

                    <div class="navigation-button">
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                            <div class="col-md-3">
                                <div class="pull-left">
                                    <a class="btn btn-primary" href="/Production/ChildPartConsumption/GoCreate" data-ajax-update="#mainContent" data-ajax-mode="replace" data-ajax-method="GET" data-ajax="true">
                                        <i class="fa fa-lg fa-fw fa-sticky-note"></i>
                                        New
                                    </a>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="col-md-4">
                                    <div class="input-group">
                                        <input class="form-control" id="from" type="text" value="@grid_settings.TranFromDate" placeholder="From">
                                        <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="input-group">
                                        <input class="form-control" id="to" value="@grid_settings.TranToDate" type="text" placeholder="Select a date">
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
                                    <form class="form-inline" role="search" data-ajax-update="#mainContent" data-ajax-mode="replace" data-ajax="true" action="/Production/ChildPartConsumption/Index?page=1&FromDate=@ViewBag.FromDate&ToDate=@ViewBag.ToDate">
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


                    @* MIDDLE STUFF *@
                    <section class="row">

                            <section class="col-md-12">
                                <table class="table table-striped table-bordered" id="tblTransactions">
                                    <thead>
                                        <tr>
                                            <th style="text-align:center; width: 10%">
                                                <a href="/Production/ChildPartConsumption/index?page=1&sortOrder=TrnNoSort&sortdir=@ViewBag.SortDir&searchString=@ViewBag.CurrentFilter&FromDate=@ViewBag.FromDate&ToDate=@ViewBag.ToDate" data-ajax-update="#mainContent" data-ajax-mode="replace" data-ajax-method="GET" data-ajax="true">
                                                    Trn No
                                                </a>
                                            </th>
                                            <th style="text-align:center; width: 10%">
                                                <a href="/Production/ChildPartConsumption/index?page=1&sortOrder=PrdDate&sortdir=@ViewBag.SortDir&searchString=@ViewBag.CurrentFilter&FromDate=@ViewBag.FromDate&ToDate=@ViewBag.ToDate" data-ajax-update="#mainContent" data-ajax-mode="replace" data-ajax-method="GET" data-ajax="true">
                                                    Production Date
                                                </a>
                                            </th>
                                            <th style="text-align:center; width: 30%">
                                                <a href="/Production/ChildPartConsumption/index?page=1&sortOrder=MatName&sortdir=@ViewBag.SortDir&searchString=@ViewBag.CurrentFilter&FromDate=@ViewBag.FromDate&ToDate=@ViewBag.ToDate" data-ajax-update="#mainContent" data-ajax-mode="replace" data-ajax-method="GET" data-ajax="true">
                                                    Material Name
                                                </a>
                                            </th>
                                            <th style="text-align:center; width: 30%">
                                                <a href="/Production/ChildPartConsumption/index?page=1&sortOrder=CoreName&sortdir=@ViewBag.SortDir&searchString=@ViewBag.CurrentFilter&FromDate=@ViewBag.FromDate&ToDate=@ViewBag.ToDate" data-ajax-update="#mainContent" data-ajax-mode="replace" data-ajax-method="GET" data-ajax="true">
                                                    Core Name
                                                </a>
                                            </th>
                                            <th style="text-align:center; width: 10%">
                                                <a href="/Production/ChildPartConsumption/index?page=1&sortOrder=CrtBy&sortdir=@ViewBag.SortDir&searchString=@ViewBag.CurrentFilter&FromDate=@ViewBag.FromDate&ToDate=@ViewBag.ToDate" data-ajax-update="#mainContent" data-ajax-mode="replace" data-ajax-method="GET" data-ajax="true">
                                                    Crt By
                                                </a>
                                            </th>
                                            <th style="text-align:center; width: 10%">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach (var item in Model)
                                        {
                                            <tr class="@(item.StatusCode==1 ? "deleted" : (item.StatusCode>=101 ? "approvalpend" : (item.StatusCode == 11 ? "amend" : (item.StatusCode == 2 ? "unapproved" : ""))))">
                                                <td style="text-align:center;">
                                                    <a href="ChildPartConsumption/Details?TrnNo=@item.TrnNo" data-ajax-update="#mainContent" data-ajax-mode="replace" data-ajax-method="GET" data-ajax="true">
                                                        @item.ShortTrnNo
                                                    </a>
                                                </td>
                                                <td style="text-align:center;">@item.FormattedTrnDate</td>
                                                <td class="left-Push">@item.MaterialName</td>
                                                <td class="left-Push">@item.CoreName</td>
                                                <td style="text-align:center;">@item.CrtBy</td>
                                                <td style="text-align:center;">
                                                    @if(item.StatusCode == 0)
                                                    {
                                                        <a class="btn btn-xs btn-danger" id="newBtn" href="ChildPartConsumption/Delete?TrnNo=@item.TrnNo&AmendNo" data-ajax-update="#mainContent" data-ajax-mode="replace" data-ajax-method="GET" data-ajax="true">
                                                            <i class="fa fa-fw fa-ban"></i>
                                                        </a>
                                                    }
                                                </td>
                                            </tr>
                                        }
                                    </tbody>
                                </table>
                            </section>



                    </section>


                    @* FOOTER BUTTONS *@
                    <section class="row">
                        <div class="col-sm-6 col-xs-12">
                            <div class="dataTables_paginate paging_simple_numbers" id="datatable_tabletools_paginate">
                                <ul class="pagination pagination-sm">
                                    <li>
                                        <div class="">
                                            <a href="/Production/ChildPartConsumption/index?sortOrder=@ViewBag.CurrentSort&sortdir=@ViewBag.SortDir&page=@(Model.PageNumber-1)&searchString=@ViewBag.CurrentFilter&FromDate=@ViewBag.FromDate&ToDate=@ViewBag.ToDate" class="@((@Model.PageNumber == 1) ? "btn btn-primary disabled":"btn btn-primary")" data-ajax-update="#mainContent" data-ajax-mode="replace" data-ajax-method="GET" data-ajax="true">Previous</a>
                                            <a href="/Production/ChildPartConsumption/index?sortOrder=@ViewBag.CurrentSort&sortdir=@ViewBag.SortDir&page=@(Model.PageNumber+1)&searchString=@ViewBag.CurrentFilter&FromDate=@ViewBag.FromDate&ToDate=@ViewBag.ToDate" class="@((@Model.PageNumber == @Model.PageCount) ? "btn btn-primary disabled":"btn btn-primary")" data-ajax-update="#mainContent" data-ajax-mode="replace" data-ajax-method="GET" data-ajax="true">Next</a>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </section>

                </section>
            </article>
        </div>
    </section>
</div>

<style>

</style>


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
            if (FromDate !== undefined && ToDate !== undefined) {
                var urlName = "/Production/ChildPartConsumption/Index?FromDate=" + FromDate + "&ToDate=" + ToDate;
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
        });


    });
</script>
```  