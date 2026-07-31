### `Markup`  
```csharp
<div class="col-md-6">
<div class="col-md-4">
    <div class="input-group">
        <input class="form-control"
                id="from"
                type="text"
                value="@grid_settings.TranFromDate"
                placeholder="From">
        <span class="input-group-addon"> <i class="fa fa-calendar"></i> </span>
    </div>
</div>

<div class="col-md-4">
    <div class="input-group">
        <input class="form-control"
                id="to"
                type="text"
                value="@grid_settings.TranToDate"
                placeholder="To">
        <span class="input-group-addon"> <i class="fa fa-calendar"></i> </span>
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
```  

### `JS`  
```javascript
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
```  