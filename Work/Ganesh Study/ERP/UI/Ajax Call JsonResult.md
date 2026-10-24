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
        alert("Check Console log for error");
        console.warn("----- Error Details -----");
        console.error(xhr.status);
        console.error(xhr.statusText);
        console.error(xhr.responseText);
        console.error(status);
        console.error(error);
        console.warn("-------------------------");
    }
});
```  