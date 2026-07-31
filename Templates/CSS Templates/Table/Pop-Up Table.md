#### 1. CSS  
```css
.modal-body {
    max-height: calc(100vh - 120px); /* header + margins safe */
    overflow-y: auto;
    overflow-x: hidden;
    margin-top: 0;
    padding-top: 0;
}

.modal-90vw {
    width: 90vw !important;
    max-width: 90vw !important;
    margin: 30px auto;
}

.table-container {
    max-height: 90vh;       /* control vertical size */
    overflow-y: auto;
}
.scrollable-table {
    border-collapse: collapse;
    width: 100%;
}

.scrollable-table thead th {
    position: sticky;
    top: 0;
    background: #fff;
    z-index: 10;
    border-bottom: 1px solid #ccc;
}
table.scrollable-table td.left-push {
    text-align: left !important;
    padding-left: 12px !important;
}
```  
#### 2. Markup  
`Bootstrap Pop-Up (Modal)`  
changing names:
- `Id`      : demo-Entire-Popup-Area    : Entire Popup
- `Label`   : Demo Popup Title          : Pop Up title
- `Id`      : demo-Table-Area           : Table Area
- `Id`      : demo-Table-Rows           : Populating table rows by data  
- `Colspan` : colspan="4"               : changes by number of columns
replace "demo" with current work context  
```html
<div id="demo-Entire-Popup-Area" class="modal fade" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-90vw" role="document">
        <div class="modal-content">
            <div class="modal-header" style="height: 50px; padding:5px;">
                <div class="col-md-12" style="padding: 0px">
                    <div class="col-md-2" style="padding: 0px">
                        <img src="~/content/img/logo.png" style="height : 40px">
                    </div>
                    <div class="col-md-8" style="text-align: center; padding-top: 5px;">
                        <label style="font-size : 20px"><b>Demo Popup Title</b></label>
                    </div>
                    <div class="col-md-2">
                        <button type="button" class="a-button-close" data-dismiss="modal" aria-hidden="true" style="margin: 0px;">
                            <i class="fa fa-lg fa-fw fa-close"></i>
                        </button>
                    </div>
                </div>
            </div>
            <div class="modal-body  table-container" id="demo-Table-Area">
                <table class="table table-bordered table-striped scrollable-table">
                    <thead>
                        <tr>
                            <th style="width:25%;  text-align:center;">Col 1</th>
                            <th style="width:25%;  text-align:center;">Col 2</th>
                            <th style="width:25%; text-align:center;">Col 3</th>
                            <th style="width:25%;  text-align:center;">Col 4</th>
                        </tr>

                    </thead>
                    <tbody id="demo-Table-Rows">
                        <tr>
                            <td colspan="4" class="text-center">Loading...</td>
                        </tr>
                    </tbody>
                </table>

            </div>
        </div>
    </div>
</div>
```  