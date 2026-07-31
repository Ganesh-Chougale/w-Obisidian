File search string
```txt
- Auto fill input box
- Auto fill inputbox
- Autofillinputbox
```   
# Auto fill input box Implementation  
### Controller
```csharp
[HttpPost]
public async Task<JsonResult> MaterialAutoFill(string searchString)
{
    List<MaterialsEntity> materialsList = await MaterialsService.GetMaterialAutoFillList(searchString);

    List<MaterialsEntity> lstMat = materialsList
                                                .Where(obj => obj.MaterialType == 113)
                                                .ToList();

    return Json(lstMat, JsonRequestBehavior.AllowGet);
}
```  
### View
1. HTML element
```csharp
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
```  
2. Js past
- function  
```csharp
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
```  
- function call 
```csharp
$(document).ready(function () {
    initializeMaterialAutocomplete();
}); // doc ready end
```  