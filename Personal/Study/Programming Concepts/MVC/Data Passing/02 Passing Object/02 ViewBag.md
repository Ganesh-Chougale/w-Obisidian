# Passing `Object` Using `ViewBag`


## Example Object

File path:
`D:\YourProject\Models\Student.cs`

```csharp
public class Student
{
    public int Id { get; set; }
    public string Name { get; set; }
}
```

# ╰┈➤ STEP 1 — Data Declaration (Controller)

File path:
`D:\YourProject\Controllers\HomeController.cs`

Inside `Index()`:

```csharp
public ActionResult Index()
{
    Student std1 = new Student
    {
        Id = 1,
        Name = "Ganesh"
    };

    ViewBag.StudentData = std1;

    return View();
}
```

### What is happening?

* We created an object `std1`
* Stored it inside `ViewBag`
* Internally → it goes into ViewData dictionary
* But accessed using dynamic property

Important:

ViewBag does NOT strongly remember type.
It behaves dynamically.

---

# ╰┈➤ STEP 2 — Passing to View

```csharp
return View();
```

Nothing special required.

ViewBag travels automatically.

---

# ╰┈➤ STEP 3 — Using in View

File path:
`D:\YourProject\Views\Home\Index.cshtml`

---

## A. Direct Use ✅ (Possible Here)

```cshtml
<h2>@ViewBag.StudentData.Id</h2>
<h2>@ViewBag.StudentData.Name</h2>
```

### Why does this work without casting?

Because ViewBag is **dynamic**.

Dynamic means:

> Type checking happens at runtime, not compile time.

So Razor allows property access directly.

---

### ⚠️ Hidden Risk

If you write:

```cshtml
@ViewBag.StudentData.Nam
```

No compile error.

But at runtime → null or runtime error.

No IntelliSense safety.

---

## B. Assign to Variable (with Casting) ✅ (Recommended Way)

Safer version:

```cshtml
@using YourProject.Models

@{
    Student std1 = ViewBag.StudentData as Student;
}

@if (std1 != null)
{
    <h2>@std1.Id</h2>
    <h2>@std1.Name</h2>
}
```

### What is happening?

We are converting dynamic → strong type.

Now:

* IntelliSense works
* Compiler helps
* Code becomes safer

---

# 🔎 Direct vs Variable — Real Differences

## 🔹 Direct Dynamic Access

✔ Short
✔ No casting needed
❌ No compile-time checking
❌ Typos not detected
❌ Harder to maintain

---

## 🔹 Variable + Casting

✔ Strong typing restored
✔ IntelliSense available
✔ Safer code
✔ Easier refactoring
❌ Still runtime dependent on correct key

---

# 🧠 Important Internal Concept

When you write:

```csharp
ViewBag.StudentData = std1;
```

Internally it becomes:

```csharp
ViewData["StudentData"] = std1;
```

So ViewBag is just:

> A dynamic wrapper over ViewData

---

# 🎯 Mental Snapshot (Lock This In)

Controller:

```csharp
ViewBag.Key = objectInstance;
```

View (direct):

```cshtml
@ViewBag.Key.Property
```

View (safe):

```cshtml
TypeName varName = ViewBag.Key as TypeName;
@varName.Property
```

---

# 🚨 Professional Reality

Passing object using ViewBag:

✔ Works  
✔ Cleaner than ViewData  
❌ Not type safe  
❌ Not scalable  

For real applications:

Strongly Typed Model is always better.