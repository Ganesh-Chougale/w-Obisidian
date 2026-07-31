# Passing `Single Variable`  Using `ViewData`

We will follow your structure strictly:

```
Data Declaration → Passing to View → Using in View
```

---

# ╰┈➤ STEP 1 — Data Declaration (Controller)

File path:
`D:\YourProject\Controllers\HomeController.cs`

Inside your controller:

```csharp
public class HomeController : Controller
{
    public ActionResult Index()
    {
        ViewData["Message"] = "Hello from Controller";
        return View();
    }
}
```

### What is happening here?

* `ViewData` is a **Dictionary object**
* Key = `"Message"`
* Value = `"Hello from Controller"`

Technical clarity:
`ViewData` type is:

```csharp
ViewDataDictionary
```

Which internally works like:

```csharp
Dictionary<string, object>
```

👉 Important: value is stored as **object** type.

---

# ╰┈➤ STEP 2 — Passing to View

Nothing special required.

This line automatically passes ViewData:

```csharp
return View();
```

Why?

Because ViewData is part of Controller base class.
It travels automatically with ViewResult.

---

# ╰┈➤ STEP 3 — Using in View

## A. Direct use

File path:
`D:\YourProject\Views\Home\Index.cshtml`

Inside your view:

```cshtml
<h2>@ViewData["Message"]</h2>
```

That’s it.

### What happens internally?
- ViewData["Message"] returns object
- Razor calls .ToString() automatically while rendering
- If value is null → nothing prints (no crash)

### Characteristics:
✔ Short  
✔ Clean for small usage  
❌ No compile-time type checking  
❌ Repeated lookup if used multiple times  
❌ No IntelliSense  

---


## B. Assign to Variable (with Casting)
⚠️ Important Concept (Very Important)  

Since ViewData stores value as `object`,  
sometimes you must cast it.  

Example:  

```cshtml
@{
    string msg = ViewData["Message"] as string;
}

<h2>@msg</h2>
```

Why casting?

Because compiler only knows it as `object`.

This is called:

> Boxing / Unboxing concept

Simple meaning:
Data is stored as generic object type.

---

# 🧠 What You Must Remember Forever

ViewData:

* Is a dictionary
* Uses string key
* Stores value as object
* Needs type casting
* Works only for current request
* Not type-safe

---

# 💡 Mental Snapshot

If after 10 years you forget everything,
just remember this:

```
ViewData["Key"] = value;   // Controller
@ViewData["Key"]          // View
```

That’s the entire concept.

---