#  Passing `Single Variable` Using `ViewBag`

---

# ╰┈➤ STEP 1 — Data Declaration (Controller)

File path:
`D:\YourProject\Controllers\HomeController.cs`

Inside `Index()`:

```csharp
public ActionResult Index()
{
    ViewBag.Message = "Hello from Controller using ViewBag";
    return View();
}
```

### What is ViewBag?

* It is **dynamic**
* It is a wrapper over ViewData
* Internally still stores data in `ViewDataDictionary`

Technical note:

ViewBag uses `dynamic` type.

> Dynamic = type is resolved at runtime, not compile time.

---

# ╰┈➤ STEP 2 — Passing to View

Same as ViewData.

```csharp
return View();
```

Nothing special required.

ViewBag travels automatically with ViewResult.

---

# ╰┈➤ STEP 3 — Using in View

File path:
`D:\YourProject\Views\Home\Index.cshtml`

---

## A. Direct Use

```cshtml
<h2>@ViewBag.Message</h2>
```

### What happens here?

* No casting required
* Razor resolves dynamic property at runtime
* Automatically prints value

Cleaner than ViewData.

---

## B. Assign to Variable (with Casting)

```cshtml
@{
    string msg = ViewBag.Message;
}

<h2>@msg</h2>
```

Here:

* No explicit casting needed
* Because dynamic converts automatically to string

But you *can* cast if needed:

```cshtml
@{
    string msg = ViewBag.Message as string;
}
```

---

# 🔎 Direct vs Variable — Real Differences

## 🔹 1. Type Safety

ViewBag is dynamic.

If you write:

```cshtml
@ViewBag.Mesage   // typo
```

No compile error.
But at runtime → null.

With ViewData:

```cshtml
@ViewData["Mesage"]
```

Same problem.

So both are **not type safe**.

---

## 🔹 2. IntelliSense

ViewBag:

❌ No IntelliSense
❌ No compile-time validation

Because it's dynamic.

---

## 🔹 3. Performance

ViewBag is slightly slower than ViewData
(because dynamic runtime binding is involved)

But difference is negligible in real projects.

---

# 🧠 Important Concept

Internally:

```csharp
ViewBag.Message = "Hello";
```

Actually becomes:

```csharp
ViewData["Message"] = "Hello";
```

So:

ViewBag = syntactic sugar over ViewData.

---

# 🎯 Mental Snapshot (Save Forever)

Controller:

```csharp
ViewBag.Key = value;
```

View:

```cshtml
@ViewBag.Key
```

That’s the entire mechanism.

---

# ⚖️ ViewData vs ViewBag Quick Comparison

| Feature      | ViewData         | ViewBag        |
| ------------ | ---------------- | -------------- |
| Syntax       | Dictionary style | Property style |
| Type         | object           | dynamic        |
| Casting      | Required         | Not required   |
| IntelliSense | No               | No             |
| Type Safety  | No               | No             |

---

# 🚨 Real Professional Advice

Use ViewBag only for:

* Titles
* Small messages
* UI flags

Never for:

* Business data
* Complex objects
* Lists

For that → Strongly Typed Model.

---