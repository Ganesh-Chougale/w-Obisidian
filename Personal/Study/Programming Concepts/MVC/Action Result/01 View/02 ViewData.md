# **ViewData**
- everything is similar to ViewBag  
- but since MVC 1(old school), actually `ViewBag` is syntactical sugar or `ViewData`  
- need key value pairs    

```csharp
ViewData["Key"] = value;
```
* Keys are **strings**, values are **objects**.

**Hardcoded**

```csharp
ViewData["Title"] = "Products";
ViewData["Year"] = 2025;
```
**Dynamic**
```csharp
var user = db.Users.Find(1);
ViewData["UserName"] = user.Name;
ViewData["LoginCount"] = db.Logins.Count();
```
**Hybrid**
```csharp
public ActionResult Stats()
{
    ViewData["Title"] = "Statistics Page";     // hardcoded
    ViewData["TotalUsers"] = db.Users.Count(); // dynamic
    return View();
}
```
### `Accessing ViewData in the View`

```csharp
<h1>@ViewData["Title"]</h1>
<p>Total users: @ViewData["TotalUsers"]</p>
```

If the value is a complex type, you must cast it:

```csharp
var user = ViewData["User"] as User;
```

### `The underlying system for ViewBag`

This line:

```csharp
ViewBag.Name = "John";
```

is actually stored as:

```csharp
ViewData["Name"] = "John";
```

So **ViewBag uses ViewData internally**.