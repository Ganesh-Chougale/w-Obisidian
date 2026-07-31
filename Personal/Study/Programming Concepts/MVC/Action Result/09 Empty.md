## `EmptyResult`

`EmptyResult` is an `ActionResult` that returns **nothing** to the response body.

It tells MVC:

> “Request handled successfully, but there is no content to send back.”

---

## 1. **Simple Controller Example**

📁 `Controllers/HomeController.cs`

```csharp
public class HomeController : Controller
{
    public ActionResult Ping()
    {
        // logic executed, but nothing to return
        return new EmptyResult();
    }
}
```

## What the client receives

* **HTTP Status**: `200 OK`
* **Response body**: *empty*
* **No View**
* **No JSON**
* **No Content**

## **Why not use `void`?**

❌ This will NOT work in MVC:

```csharp
public void Ping()
{
}
```
MVC **requires** an `ActionResult` (or compatible type).  
So if you want:  
* logic only  
* no output  
use `EmptyResult`.  

## 2. **Very common real-world usage**
- AJAX “fire-and-forget”
```csharp
public ActionResult LogActivity()
{
    // save log to database
    activityService.Log();

    return new EmptyResult();
}
```
AJAX call doesn’t need data — just success.
- POST requests with no response
```csharp
[HttpPost]
public ActionResult UpdateLastSeen()
{
    userService.UpdateLastSeen(User.Identity.Name);
    return new EmptyResult();
}
```

---

## **Shorthand way**
Instead of:  
```csharp
return new EmptyResult();
```  
You can write:
```csharp
return Empty;
```  

(`Empty` is a built-in Controller property)

---

## ❌ What `EmptyResult` is NOT  
✘ Not ViewResult  
✘ Not JsonResult  
✘ Not ContentResult  
✘ Not Redirect  
✘ No status messaging  
> **EmptyResult = execute logic, send nothing back.**

## 🆚 Compare quickly

| Return Type   | Response Body |
| ------------- | ------------- |
| ViewResult    | HTML          |
| JsonResult    | JSON          |
| ContentResult | Text          |
| EmptyResult   | ❌ nothing     |