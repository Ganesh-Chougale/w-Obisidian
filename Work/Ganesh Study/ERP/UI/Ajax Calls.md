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
        console.log(xhr.responseText);
        alert("Error : " + xhr.status + ": " + error);
    }
})
```  

# 2. for json result
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