### `Markup`  
```csharp
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
```  