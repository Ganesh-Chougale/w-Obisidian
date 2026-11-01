# 1. for partial view 
```csharp
var urlString = ``;

$.ajax({
    url: urlString,
    type: 'GET',
    success: function (response, status, xhr) {
        $("#mainContent").html(response);
    },
    error: function (xhr, status, error) {
        console.error("AJAX Error Status: " + xhr.status + " (" + error + ")");
        console.error("Server Response: ", xhr.responseText);
    }
})
```  