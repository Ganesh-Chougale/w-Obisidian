# `RedirectResult` / `Redirect()`  
`RedirectResult` is used to redirect the browser to a different URL.  
When a controller returns Redirect() it tells MVC:  
“Send an HTTP redirect response to the browser, and let the browser make a NEW request to another URL.”  
⚠️ Important:  
A redirect always causes another HTTP request.  

#### Basic Example
- `Controllers`/`AccountController.cs`
```csharp
public ActionResult Logout()
{
    // some logout logic
    return Redirect("/Home/Index");
}
```  
What happens:
- Server responds with 302 Redirect
- Browser automatically requests /Home/Index
- New request, new controller action
Starts a new request lifecycle  

#### Common after actions like  
- Logout
- Save
- Delete
- Login
- Post-Redirect-Get pattern

⚠ Data Loss on Redirect  
Because redirect = new request:  
❌ ViewBag → LOST  
❌ ViewData → LOST  
❌ Model → LOST  

### Proper Example  
`Controllers/HomeController.cs`  
```csharp
public class HomeController : Controller
{
    // Step 1: user hits this action
    public ActionResult Save()
    {
        // simulate save logic
        TempData["Message"] = "Data saved successfully";

        // Step 2: redirect to Index action
        return Redirect("/Home/Index");
    }

    // Step 3: new request comes here
    public ActionResult Index()
    {
        return View();
    }
}
```  
`Views/Home/Index.cshtml`  
```html
<h2>Home Page</h2>

@if (TempData["Message"] != null)
{
    <p style="color:green;"> @TempData["Message"] </p>
}

<a href="/Home/Save">Save Data</a>
```     
`What happens step-by-step`
- User clicks Save Data
- Browser requests /Home/Save
- Controller executes Save()
- RedirectResult sent → 302
- Browser requests /Home/Index
- Index() returns View
- Message is shown once