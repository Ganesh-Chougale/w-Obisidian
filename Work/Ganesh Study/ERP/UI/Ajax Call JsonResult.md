# 1. for json result, JsonResult ajax
```csharp
var urlString = ``;

$.ajax({
    url: urlString,
    type: "POST",
    dataType: "json",
    success: function (data) {
        if (data.length > 0) {

        }

        },
    error: function (xhr) {
        alert("Error: " + xhr.status + ": " + xhr.statusText);
    }
});
```  