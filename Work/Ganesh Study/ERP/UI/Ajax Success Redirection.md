```csharp
$.ajax({
    url: 'PouringPlan/create',
    type: "POST",
    async: false,
    contentType: "application/json",
    dataType: "json",
    data: JSON.stringify(PouringPlan),
    success: function (response, status, xhr) {
        if (response === 0) {
            var urlName = 'PouringPlan/index';
            $.ajax({
                url: urlName,
                type: "GET",
                success: function (response, status, xhr) {
                    $("#mainContent").html(response);
                },
                error: function (err) {
                    $("#mainContent").html(err);
                }
            });
        }
    },
    error: function (xhr) {
        alert("Error: " + xhr.status + ": " + xhr.statusText);
    }
});
```  