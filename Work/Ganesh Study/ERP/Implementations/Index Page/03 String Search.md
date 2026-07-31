### `Markup`  
```csharp
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
```  