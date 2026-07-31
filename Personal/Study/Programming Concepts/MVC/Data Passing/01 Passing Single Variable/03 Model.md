# Passing `Single Variable` Using `Model`

---

# ╰┈➤ STEP 1 — Data Declaration (Controller)

File path:
`D:\YourProject\Controllers\HomeController.cs`

Inside `Index()`:

```csharp
public ActionResult Index()
{
    string message = "Hello from Controller using Model";
    return View(message);
}
```

### What is happening here?

* We created a **strongly typed variable**
* We passed it directly inside `View(message)`
* Now this value becomes the **Model** of the View

Important:

`View(message)` means:

> The View will expect a model of type `string`

---

# ╰┈➤ STEP 2 — Passing to View

This line does the passing:

```csharp
return View(message);
```

Unlike ViewBag/ViewData:

* The data is not stored in dictionary
* It is directly assigned to View’s Model property

Internally:

```csharp
ViewResult.Model = message;
```

That is why this is strongly typed.

---

# ╰┈➤ STEP 3 — Using in View

File path:
`D:\YourProject\Views\Home\Index.cshtml`

At the very top of the file:

```cshtml
@model string
```

⚠️ This line is mandatory.

It tells Razor:

> This View expects a model of type string.

---

## A. Direct Use

```cshtml
<h2>@Model</h2>
```

### What happens here?

* `Model` is already of type `string`
* No casting required
* Fully type-safe
* Compile-time checking enabled

If controller sends wrong type → compile error.

That’s powerful.

---

## B. Assign to Variable (with Casting)

```cshtml
@{
    string msg = Model;
}

<h2>@msg</h2>
```

### Important

No casting required.

Because:

`Model` is already strongly typed as `string`.

If you try:

```cshtml
@{
    int number = Model;  // ❌ Compile-time error
}
```

You will get compile-time error immediately.

That is the biggest advantage over ViewBag and ViewData.

---

# 🔎 Direct vs Variable — Real Differences

## 🔹 1. Type Safety

With Model:

✔ Compile-time validation  
✔ IntelliSense available  
✔ Property suggestions  
✔ Refactoring safe  

With ViewBag/ViewData:

❌ Runtime errors  
❌ No IntelliSense  

---

## 🔹 2. Performance

Model is faster than ViewBag.

Why?

Because:

* No dynamic binding
* No dictionary lookup
* Direct strongly typed reference

---

## 🔹 3. Maintainability

If after 5 years:

You change type from `string` to `int`

```csharp
return View(10);
```

View still has:

```cshtml
@model string
```

Immediate compile error.

This protects you.

ViewBag would silently fail.

---

# 🧠 Important Concept

This is called:

> Strongly Typed View

Meaning:

The View is strongly bound to a specific data type.

This is the recommended and professional approach.

---

# 🎯 Mental Snapshot (Save Forever)

Controller:

```csharp
return View(data);
```

View (top of file):

```cshtml
@model DataType
```

Use:

```cshtml
@Model
```

That’s the entire mechanism.

---

# ⚖️ ViewBag vs Model Comparison

| Feature       | ViewBag       | Model     |
| ------------- | ------------- | --------- |
| Type Safety   | ❌ No          | ✅ Yes     |
| IntelliSense  | ❌ No          | ✅ Yes     |
| Compile Check | ❌ No          | ✅ Yes     |
| Performance   | Medium        | Best      |
| Recommended   | Small UI data | Real data |

---

# 🚨 Real Professional Advice

For real applications:

Always prefer Model.

Use ViewBag only for:

* Page title
* Small UI messages
* Temporary flags

---