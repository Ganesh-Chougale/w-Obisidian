# `JsonResult` / `Json()`  
JsonResult is a return type in ASP.NET MVC used to return JSON data instead of HTML.  
When a controller action returns Json() it tells MVC:  
“Serialize this object into JSON and send it to the client.”  

### This is mainly used for:
- AJAX calls
- JavaScript-driven UI
- Client-side rendering
- API-like behavior (inside MVC)
##### Basic example
`Controller`  
```csharp
public ActionResult GetUser()
{
    var user = new { Id = 1, Name = "Rahul", Age = 28 };
    return Json(user, JsonRequestBehavior.AllowGet);
}
```  
`Response sent to browser`
```csharp
{
  "Id": 1,
  "Name": "Rahul",
  "Age": 28
}
```  
No .cshtml file is involved here.  

### proper example
1. Controllers/UserController.cs  
```csharp
// inside UserController.cs 
public ActionResult GetUsers()
{
    var users = db.Users
                  .Select(u => new
                  {
                      u.Id,
                      u.Name,
                      u.Email
                  })
                  .ToList();

    // Line below: converts C# objects → JSON
    return Json(users, JsonRequestBehavior.AllowGet);
}
```  
- Select(...) → avoid sending full entity
- AllowGet → mandatory for GET JSON
- return Json(...) → no View involved
2. View (.cshtml)
Markup  
```html
<h2>User List</h2>
<table border="1">
    <thead><tr>
            <th>Name</th>
            <th>Email</th>
    </tr></thead>
    <tbody id="userBody"> <!-- json to table here --> </tbody>
</table>

<button id="btnLoad">Load Users</button>
```  
Logic  
```javascript
<script>
    $("#btnLoad").click(function () {

        var urlName = "/User/GetUsers";   // controller/action

        $.ajax({
            url: urlName,                     // where request goes
            dataType: "json",                 // expecting JSON
            type: "GET",                      // HTTP method
            contentType: "application/json; charset=utf-8",

            success: function (data) {         // data = JSON array
                $("#userBody").empty();

                // loop through JSON
                $.each(data, function (index, item) {

                    var row = "<tr>"
                            + "<td>" + item.Name + "</td>"
                            + "<td>" + item.Email + "</td>"
                            + "</tr>";

                    $("#userBody").append(row);
                });
            },

            error: function () {
                alert("Error loading users");
            }
        });
    });
</script>
```  