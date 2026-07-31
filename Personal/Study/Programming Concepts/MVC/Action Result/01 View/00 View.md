##  `ViewResult` / `View()`   
`ViewResult` is a return type in ASP.NET MVC used to render a View (.cshtml page) to the browser.  

When a controller action returns `View()` or `return ViewResult`, it tells MVC:  

“Find the corresponding .cshtml file, execute it, and render the HTML to the user.”  

```cs
public ActionResult Index()
{
    return View();
}
```

This returns a ViewResult, which loads Index.cshtml.  

### What `View` IS
1. It is a class that renders a Razor View  
- It finds the view file based on the action name or the one you specify.  

2. It generates HTML for the client
- The browser receives the fully rendered HTML after the view is executed.  

3. It triggers view rendering logic  
- It finds a view → binds model → renders HTML.
### Passing the Data to View  
using: 
1. ViewBag  
- controller
```csharp
public ActionResult Dashboard()
{
    ViewBag.Title = "Dashboard";        // hardcoded
    ViewBag.UserCount = db.Users.Count();  // dynamic database value
    return View();
}
```  
- using in UI
```csharp
<h1>@ViewBag.Title</h1>
<p>Total Users: @ViewBag.UserCount</p>
```  
2. ViewData  
```csharp
public ActionResult Stats()
{
    ViewData["Title"] = "Statistics Page";     // hardcoded
    ViewData["TotalUsers"] = db.Users.Count(); // dynamic
    return View();
}
```
- using in UI
```csharp
<h1>@ViewData["Title"]</h1>
<p>Total Users: @ViewData["TotalUsers"]</p>
```  
3. Model  
```csharp
var model = new ProductVM { Id = 1, Name = "Laptop", Price = 1200 };
return View(model);
```  
- using in UI
```csharp
@model ProductVM

<h2>@Model.Name</h2>
<p>Price: @Model.Price</p>
```  
### ❌ What ViewResult is NOT
✘ 1. It is NOT raw data  
If you want JSON → use JsonResult.  

✘ 2. It does NOT redirect  
Use RedirectResult or RedirectToAction.  

✘ 3. It does NOT return a file  
For files use FileResult.  

✘ 4. It is NOT used for Web API responses  
That's for ASP.NET Web API or controller actions returning objects in .NET Core.  

✘ 5. It does NOT skip the view engine  
It always goes through MVC’s view rendering pipeline.  

✘ 6. It is NOT asynchronous by itself  
But you can use Task<ActionResult>.  