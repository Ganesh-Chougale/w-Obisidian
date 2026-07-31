### ViewBag  
ViewBag is `on-the-way` binding that you attach inside a controller method. it is Temporary Data Container.
since MVC 3  
- in most of use cases it will be hardcoded  
```cs
ViewBag.Title = "Home Page";
ViewBag.Year = 2025;
```
- but we can also put dynamic or database data inside it
```csharp
var user = db.Users.Find(1);
ViewBag.UserName = user.Name;
ViewBag.OrderCount = db.Orders.Count();
```  
- or Hybrid
```csharp
public ActionResult Dashboard()
{
    ViewBag.Title = "Dashboard";        // hardcoded
    ViewBag.UserCount = db.Users.Count();  // dynamic database value
    return View();
}
```  
#### Features
- Best for small data, not for large data. 
- Doesn't persist after codeblock is executed. `ViewBag` means current execution context.
- Not stored anywhere, It doesn’t go to the database, session, or cache.
- Not strongly typed, It’s dynamic, so the compiler doesn’t check types.