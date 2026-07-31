## `ContentResult` / `Content()`
`ContentResult` is an ActionResult used to return plain content directly to the browser —
without using a View (.cshtml).  
When a controller returns Content() it tells MVC:  
“Send this text (or HTML) as-is in the HTTP response body.”  

#### Controller  
`Controllers`/`HomeController.cs`  
```csharp
public class HomeController : Controller
{
    // Normal page (ViewResult)
    public ActionResult Index()
    {
        return View();
    }

    // ContentResult
    public ActionResult GetStatus()
    {
        // simple logic
        bool isActive = true;

        if (isActive)
            return Content("System is ACTIVE");

        return Content("System is INACTIVE");
    }
}
```  
`Key points`:
1. Index() → returns ViewResult
2. GetStatus() → returns ContentResult
3. No view exists for GetStatus()

#### View
`Views`/`Home`/`Index.cshtml`  
```csharp
<h2>Home Page</h2>

<p>This page is rendered using ViewResult.</p>

<a href="/Home/GetStatus">Check System Status</a>
```  
###### What happens step-by-step
1. User opens `/Home/Index`
2. MVC executes `Index()` → returns View
3. Index.cshtml is rendered
4. User clicks Check System Status
5. Browser requests `/Home/GetStatus`
6. `GetStatus()` runs
7. `ContentResult` is returned
Browser displays plain text:
```txt
System is ACTIVE
```  
No Razor, No Layout, No View, Just raw response  
###### ⭐ When this pattern is useful
- Health check endpoints
- Simple status checks
- Lightweight responses
- Debugging
- AJAX calls expecting text

#### More that just plain text  
`Content()` can return more than plain text  
You can also return HTML or set content type explicitly:
```csharp
return Content("<strong>System is ACTIVE</strong>", "text/html");
```  
or JSON-like text (not recommended — use JsonResult instead):
```csharp
return Content("{ \"status\": \"active\" }", "application/json");
```  
⚠️ Still raw — MVC does not validate or format it.