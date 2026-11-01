# 1. for json result, JsonResult ajax
```csharp
$.ajax({
    url: urlString,
    type: "POST",
    dataType: "json",
    success: function (data) {
        console.log(data)
        if (data.length > 0) {

        }

    },
    error: function (xhr, status, error) {
        console.error("Status: " + status);
        console.error("Error: " + error);
        console.error("Response Text: " + xhr.responseText);
    }
});
```  