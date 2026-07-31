### `Controller`  
```csharp
[AuthorizationFilter(MenuId = <>, AccessType = "Console")]
public ActionResult Index(string sortOrder, string sortDir, string searchString, int? page, string FromDate, string ToDate)
{
    string strStartDate = "";
    string strTodate = "";
    string strSortDir = "";

    if(FromDate == null)
    {
        MstMenu _objMstMenu = MstMenu.getMenuById(40616);
        strStartDate = DateUtility.getFormatedDate(DateUtility.getBackDateOnDays(_objMstMenu.ViewDays), 1);
    }
    else
    {
        strStartDate = FromDate;
    }

    if(ToDate == null)
    {
        strTodate = DateUtility.getFormatedDate(DateUtility.getCurrentDate(), 1);
    }
    else
    {
        strTodate = ToDate;
    }

    BusinessName objBo = new BusinessName();  //
    List<BusinessName> lst = objBo.GetBetweenDate(strStartDate, strTodate);

    TranGridSettings _objTranGridSettings = new TranGridSettings() {
        TranFromDate = DateUtility.getFormatedDate(strStartDate, 0),
        TranToDate = DateUtility.getFormatedDate(strTodate, 0)
    };

    ViewData["trangridsetting"] = _objTranGridSettings;

    ViewBag.CurrentSort = sortOrder;
    ViewBag.FromDate = strStartDate;
    ViewBag.ToDate = strTodate;

    if (!string.IsNullOrEmpty(searchString))
    {
        ViewBag.CurrentFilter = searchString;
                ViewBag.CurrentFilter = searchString;
                lst = lst.Where(obj =>
                                (obj.TrnDate != null && obj.TrnDate.ToUpper().Contains(searchString.ToUpper())) ||
                                (obj.MaterialName != null && obj.MaterialName.ToUpper().Contains(searchString.ToUpper()))
                                (obj.CastingWt.ToString().Contains(searchString)) ||
                                (obj.ShortTrnNo.ToString().Contains(searchString)) ||
                                (obj.SupplierName.ToString().Contains(searchString)) ||
                                ).ToList();
    }

    if (!string.IsNullOrEmpty(sortDir))
    {
        strSortDir = sortDir;
        ViewBag.SortDir = (sortDir == "desc") ? "asc" : "desc";
    }

    switch (sortOrder)
    {
        case "DateSort":
            lst = (strSortDir == "desc")
                ? lst.OrderByDescending(x => x.TrnDate).ToList()
                : lst.OrderBy(x => x.TrnDate).ToList();
            break;

        case "MaterialSort":
            lst = (strSortDir == "desc")
                ? lst.OrderByDescending(x => x.MaterialName).ToList()
                : lst.OrderBy(x => x.MaterialName).ToList();
            break;

        case "PoSort":
            lst = (strSortDir == "desc")
                ? lst.OrderByDescending(x => x.PoNo).ToList()
                : lst.OrderBy(x => x.PoNo).ToList();
            break;

        default:
            lst = lst.OrderByDescending(x => x.TrnDate).ThenByDescending(x => x.PoNo).ToList();
            ViewBag.SortDir = "asc";
            break;
    }

    int pageSize = 50;
    int PageNumber = (page ?? 1);

    return PartialView(lst.ToPagedList(PageNumber, pageSize));
}
```  
### `Markup`  
```csharp
@model PagedList.IPagedList<ZanvarGroup.Erp.Business.Transactions.SupplierCastingWtChange>
@using ZanvarGroup.Erp.Business.Base
@using PagedList.Mvc

@{
    TranGridSettings grid_settings = ViewData["trangridsetting"] as TranGridSettings;
    int row_num = 1;
}

<div id="content">
    <section id="buttons"></section>
    <section id="widget-grid">
        <div class="row">
            <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <div class="jarviswidget jarviswidget-color-blueDark top-border"
                     id="wid-id-1" data-widget-editbutton="false">

                    <!-- Nav bar -->
                    <div class="navigation-button">
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">

                            <!-- new btn -->
                            <div class="col-md-3">
                                <div class="pull-left">
                                    <a class="btn btn-primary"
                                        href="MiddlePageUrlString" //
                                        data-ajax-update="#mainContent"
                                        data-ajax-mode="replace"
                                        data-ajax-method="GET"
                                        data-ajax="true">
                                        <i class="fa fa-lg fa-fw fa-sticky-note"></i>
                                        New
                                    </a>
                                </div>
                            </div>

                            <!-- fromdate todate -->
                            <div class="col-md-6">
                                <div class="col-md-4">
                                    <div class="input-group">
                                        <input class="form-control"
                                               id="from"
                                               type="text"
                                               value="@grid_settings.TranFromDate"
                                               placeholder="From">
                                        <span class="input-group-addon">
                                            <i class="fa fa-calendar"></i>
                                        </span>
                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <div class="input-group">
                                        <input class="form-control"
                                               id="to"
                                               type="text"
                                               value="@grid_settings.TranToDate"
                                               placeholder="To">
                                        <span class="input-group-addon">
                                            <i class="fa fa-calendar"></i>
                                        </span>
                                    </div>
                                </div>

                                <div class="col-md-1">
                                    <a class="btn btn-default"
                                       href="javascript:void(0);"
                                       id="datesearch">
                                        <i class="fa fa-lg fa-fw fa-search"></i>
                                    </a>
                                </div>
                            </div>

                            <!-- str search -->
                            <div class="col-md-3">
                                <div class="pull-right">
                                    <form class="form-inline"
                                            role="search"
                                            data-ajax-update="#mainContent"
                                            data-ajax-mode="replace"
                                            data-ajax="true"
                                            action="/YourURLString/Index?page=1&FromDate=@ViewBag.FromDate&ToDate=@ViewBag.ToDate"> //
                                        <div class="form-group">
                                            <input type="text"
                                                    value="@ViewBag.CurrentFilter"
                                                    name="searchString"
                                                    class="form-control input-sm input-search-btn"
                                                    placeholder="Search">
                                        </div>
                                        <button type="submit"
                                                class="btn btn-sm btn-primary">
                                            <i class="fa fa-lg fa-fw fa-search"></i>
                                        </button>
                                    </form>
                                </div>
                            </div>

                        </div>
                        <div id="divTrnStatus"></div>
                    </div>

                    <!-- tabular data -->
                    <div>
                        <div class="widget-body no-padding">
                            <table id="datatable_fixed_column"
                                   class="table table-striped table-bordered"
                                   width="100%">
                                <thead>
                                    <tr>
                                        @*<th style="width:05%"></th>*@
                                        <th style="width:6%;text-align:center">Date</th>
                                        <th style="width:6%;text-align:center">Amend No</th>
                                        <th style="width:20%">Material Name</th>
                                        <th style="width:10%;text-align:right">Casting Wt</th>
                                        <th style="width:10%;text-align:center">PO No</th>
                                        <th style="width:10%;text-align:center">PO Amend No</th>
                                        <th style="width:10%;text-align:center">Created By</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    @foreach (var item in Model)
                                    {
                                        <tr>
                                            <td class="text-center">@item.TrnDate</td>
                                            <td class="text-center">@item.AmendNo</td>
                                            <td>@item.MaterialName</td>
                                            <td style="text-align:right">@item.CastingWt</td>
                                            <td class="text-center">@item.ShortTrnNo</td>
                                            <td class="text-center">@item.PoAmendNo</td>
                                            <td class="text-center">@item.CrtBy
                                            </td>
                                        </tr>
                                        row_num = row_num + 1;
                                    }
                                </tbody>
                            </table>
                        </div>

                        <!-- pagination -->
                        <div class="row">
                            <div class="dt-toolbar-footer">
                                <div class="col-sm-6 col-xs-12 hidden-xs">
                                    <div class="dataTables_info">
                                        Showing
                                        <span class="txt-color-darken">
                                            @(Model.PageCount < Model.PageNumber ? 0 : Model.PageNumber)
                                        </span>
                                        of
                                        <span class="text-primary">
                                            @Model.PageCount
                                        </span>
                                    </div>
                                </div>

                                <div class="col-sm-6 col-xs-12">
                                    <div class="dataTables_paginate paging_simple_numbers">
                                        <ul class="pagination pagination-sm">
                                            <li>
                                                @if (Model.PageNumber != 1)
                                                {
                                                     //
                                                    <a href="/YourURLString/Index?page=@(Model.PageNumber-1)&searchString=@ViewBag.CurrentFilter&FromDate=@ViewBag.FromDate&ToDate=@ViewBag.ToDate"
                                                       class="btn btn-primary"
                                                       data-ajax-update="#mainContent" style="margin-right: 10px"
                                                       data-ajax-mode="replace"
                                                       data-ajax-method="GET"
                                                       data-ajax="true">
                                                        Previous
                                                    </a>
                                                }
                                                @if (Model.PageNumber < Model.PageCount)
                                                {
                                                     //
                                                    <a href="/YourURLString/Index?page=@(Model.PageNumber + 1)&searchString=@ViewBag.CurrentFilter&FromDate=@ViewBag.FromDate&ToDate=@ViewBag.ToDate"
                                                       class="btn btn-primary"
                                                       data-ajax-update="#mainContent"
                                                       data-ajax-mode="replace"
                                                       data-ajax-method="GET"
                                                       data-ajax="true">
                                                        Next
                                                    </a>
                                                }
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

            if (FromDate && ToDate) {
                var urlName =
                    "/Material/SupplierCastingWtChange/Index?FromDate='" +
                    FromDate + "'&ToDate='" + ToDate + "'";

                $.ajax({
                    url: urlName,
                    type: "POST",
                    success: function (response) {
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