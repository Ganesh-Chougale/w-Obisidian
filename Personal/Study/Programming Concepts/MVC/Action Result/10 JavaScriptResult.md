## JavaScriptResult
`JavaScriptResult` is lesser-used but important to understand, especially in older ASP.NET MVC apps.  

When a controller returns JavaScript() it tells MVC:  
“Send this JavaScript code and let the browser execute it.”  
✔ No View  
✔ No Razor  
✔ Response type: `application`/`javascript`  

## 1. Simple Controller Example
`Controllers/HomeController.cs`  
```csharp
public class HomeController : Controller
{
    public ActionResult Index()
    {
        return View();
    }

    public JavaScriptResult ShowAlert()
    {
        return JavaScript("alert('Action executed successfully');");
    }
}
```  

## 2. View
```csharp
<h2>JavaScriptResult Demo</h2>

<a href="/Home/ShowAlert">Run Script</a>
```  
## What happens step-by-step
1. User opens `/Home/Index`
2. View renders
3. User clicks `Run Script`
4. Browser requests `/Home/ShowAlert`
5. Controller returns `JavaScriptResult`
6. Browser executes returned JavaScript
7. Alert popup appears

## Important Detail
The browser treats the response as JavaScript, not HTML.  
Returned response body:   
```csharp
alert('Action executed successfully');
```  

## 3. Ajax example with same controller  
```javascript
<h2>JavaScriptResult via AJAX</h2>

<button id="runScript">Run Script</button>

<script>
    $("#runScript").on("click", function () {
        $.ajax({
            url: "/Home/ShowAlert",
            type: "GET"
        });
    });
</script>
```
✔ Script runs automatically
✔ No success handler needed