## `RedirectToRouteResult` / `RedirectToAction()`  
`RedirectToRouteResult` redirects the browser using MVC routing, not a hard-coded URL.  
```csharp
return RedirectToAction("Index", "Home");
```  
MVC:  
1. Uses routing rules
2. Builds the correct URL
3. Sends a redirect (302) to the browser

##### Simple Example 
`Controllers`/`HomeController.cs`  
```csharp
public class HomeController : Controller
{
    public ActionResult Save()
    {
        // simulate save logic
        TempData["Message"] = "Saved successfully";

        // Redirect using route (controller + action)
        return RedirectToAction("Index", "Home");
    }

    public ActionResult Index()
    {
        return View();
    }
}
```    
`View`/`Home`/`Index.cshtml`  
```csharp
<h2>Home Page</h2>

@if (TempData["Message"] != null)
{
    <p style="color:green;">
        @TempData["Message"]
    </p>
}

<a href="@Url.Action("Save", "Home")">Save Data</a>
```  

#### What happens step-by-step
1. User clicks Save Data
2. Browser requests /Home/Save
3. Controller runs Save()
4. RedirectToRouteResult is returned
5. MVC generates /Home/Index
6. Browser requests /Home/Index
7. View is rendered

✔ Still two requests, just like RedirectResult.

#### What RedirectToRouteResult IS
✔ A route-based redirect
✔ Safer than Redirect()
✔ Uses MVC routing engine
✔ Refactor-friendly
✔ Automatically respects route changes

#### What it is NOT
✘ It does NOT render a view
✘ It does NOT keep ViewBag / ViewData
✘ It does NOT stay in same request
✘ It is NOT JSON or PartialView

#### ⭐ With Route Values (Very Common)
```csharp
return RedirectToAction("Details", "Product", new { id = 5 });
```  
Generated URL:
```csharp
/Product/Details/5
```  
it follows this syntax, it seems swapping sequence 
```csharp
{controller}/{action}/{id}
```  
becausbyit default `App_Start/RouteConfig.cs` has this
```csharp
routes.MapRoute(
    name: "Default",
    url: "{controller}/{action}/{id}",
    .... rest of the code
);
```  
if we change the URL sequence format it will act according to it.  
```csharp
routes.MapRoute(
    name: "Default",
    url: "{action}/{controller}/{id}",
    .... rest of the code
);
```
