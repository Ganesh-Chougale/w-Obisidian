```csharp
@model PagedList.IPagedList<ZanvarGroup.Erp.Business.Masters.Department>

<div id="content">
    <section id="buttons"></section>
    <section id="widget-grid" class="">
        <div class="row">
            <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <div class="jarviswidget jarviswidget-color-blueDark top-border" id="wid-id-1" data-widget-editbutton="false">
                    <div class="navigation-button">
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                            <div class="col-md-8">
                                <div class="pull-left">
                                    <a class="btn btn-primary" href="/masters/Department/create" data-ajax-update="#mainContent" data-ajax-mode="replace" data-ajax-method="GET" data-ajax="true">
                                        <i class="fa fa-lg fa-fw fa-sticky-note"></i>
                                        New
                                    </a>
                                    <a class="btn btn-warning" href="javascript:void(0);">
                                        <i class="fa fa-lg fa-fw fa-print"></i>
                                        Print
                                    </a>

                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="pull-right">
                                    <form class="form-inline" role="search" data-ajax-update="#mainContent" data-ajax-mode="replace" data-ajax="true" action="/masters/Department/index">
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
                            <div class="no-padding">
                                <table id="datatable_fixed_column" class="table table-striped table-hover table-bordered" width="100%">
                                    <thead>
                                        <tr>
                                            <th style="width:11%;"></th>
                                            <th data-class="expand">
                                                <a href="/masters/Department/index?sortOrder=@ViewBag.NameSortParam&searchString=@ViewBag.CurrentFilter" data-ajax-update="#mainContent" data-ajax-mode="replace" data-ajax-method="GET" data-ajax="true">
                                                    Department Name
                                                </a>
                                            </th>
                                            <th style="width:09%;text-align:center">Created By</th>
                                            <th style="width:09%;text-align:center">Change By</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach (var item in Model)
                                        {
                                            <tr class="@(item.StatusCode == 1 ? "deleted" : "ok")">
                                                <td>
                                                    @if (item.StatusCode == 0)
                                                    {
                                                        <a class="btn btn-xs btn-success" title="Edit" href="/masters/Department/edit?Code=@item.DepartmentId" data-ajax-update="#mainContent" data-ajax-mode="replace" data-ajax-method="GET" data-ajax="true">
                                                            <i class="fa fa-fw fa-edit"></i>
                                                        </a>
                                                        <a class="btn btn-xs btn-danger" title="Delete" href="/masters/Department/delete?Code=@item.DepartmentId" data-ajax-update="#mainContent" data-ajax-mode="replace" data-ajax-method="GET" data-ajax="true">
                                                            <i class="fa fa-fw fa-ban"></i>
                                                        </a>
                                                    }
                                                    <a class="btn btn-xs btn-info" title="View" href="/masters/Department/details?Code=@item.DepartmentId" data-ajax-update="#mainContent" data-ajax-mode="replace" data-ajax-method="GET" data-ajax="true">
                                                        <i class="fa fa-fw fa-eye"></i>
                                                    </a>
                                                </td>
                                                <td>@Html.DisplayFor(modelItem => item.DepartmentName)</td>
                                                <td style="text-align:center">@Html.DisplayFor(modelItem => item.CreatedBy)</td>
                                                <td style="text-align:center">@Html.DisplayFor(modelItem => item.ChangeBy)</td>
                                            </tr>
                                        }
                                    </tbody>
                                </table>
                            </div>
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
                                                    <a href="/masters/Department/index?sortOrder=@ViewBag.CurrentSort&page=@(Model.PageNumber-1)&searchString=@ViewBag.CurrentFilter" class="@((@Model.PageNumber == 1) ? "btn btn-primary disabled":"btn btn-primary")" data-ajax-update="#mainContent" data-ajax-mode="replace" data-ajax-method="GET" data-ajax="true">Previous</a>
                                                    <a href="/masters/Department/index?sortOrder=@ViewBag.CurrentSort&page=@(Model.PageNumber+1)&searchString=@ViewBag.CurrentFilter" class="@((@Model.PageNumber == @Model.PageCount) ? "btn btn-primary disabled":"btn btn-primary")" data-ajax-update="#mainContent" data-ajax-mode="replace" data-ajax-method="GET" data-ajax="true">Next</a>
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
```  