# Passing `List<Object>` Using `ViewBag`

We’ll use the same `Student` class.

---

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

---

# ╰┈➤ STEP 1 — Data Declaration (Controller)

File path:
`D:\YourProject\Controllers\HomeController.cs`

Inside `Index()`:

```csharp
using YourProject.Models;
using System.Collections.Generic;

public ActionResult Index()
{
    List<Student> stdList = new List<Student>
    {
        new Student { Id = 1, Name = "Ganesh" },
        new Student { Id = 2, Name = "Rohit" },
        new Student { Id = 3, Name = "Amit" }
    };

    ViewBag.StudentList = stdList;

    return View();
}
```

### What is happening?

* Created `List<Student>`
* Stored inside ViewBag
* Internally it goes into ViewData dictionary
* But accessed dynamically

Important:

ViewBag does not strongly remember it is a list.  
It behaves dynamically at runtime.

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

## A. Direct Use ⚠️ (Works but Not Safe)

You *can* loop directly:

```cshtml
@foreach (var stdobj in ViewBag.StudentList)
{
    <h2>@stdobj.Id - @stdobj.Name</h2>
}
```

### Why does this work?

Because ViewBag is **dynamic**.

Dynamic means:

> Type checking happens at runtime.

So Razor allows enumeration.

---

### ⚠️ Hidden Risks

If controller sends wrong type:

```csharp
ViewBag.StudentList = "Wrong Data";
```

The foreach will crash at runtime.

Also:

No IntelliSense inside loop.
Typos not detected.

Example:

```cshtml
@std1.Nam   // No compile error, runtime issue
```

---

## B. Assign to Variable (with Casting) ✅ (Recommended)

Safer approach:

```cshtml
@using YourProject.Models
@using System.Collections.Generic

@{
    List<Student> stdList = ViewBag.StudentList as List<Student>;
}

@if (stdList != null)
{
    foreach (Student stdobj in stdList)
    {
        <h2>@stdobj.Id - @stdobj.Name</h2>
    }
}
```

---

### What is happening here?

```cshtml
List<Student> stdList = ViewBag.StudentList as List<Student>;
```

Break it mentally:

* Expecting → `List<Student>`
* Variable → `stdList`
* Convert dynamic → strong type

Now:

✔ IntelliSense works  
✔ Safer code  
✔ Better maintainability  

---

# 🔎 Direct vs Variable — Real Difference

## 🔹 Direct Dynamic Loop

✔ Short  
✔ Quick  
❌ No compile-time checking  
❌ Runtime risk  
❌ Harder debugging  

---

## 🔹 Variable + Casting

✔ Strong typing restored  
✔ IntelliSense works  
✔ Safer structure  
❌ Still runtime dependent on correct key  

---

# 🧠 Important Internal Concept

When you write:

```csharp
ViewBag.StudentList = stdList;
```

Internally it becomes:

```csharp
ViewData["StudentList"] = stdList;
```

So ViewBag is:

> A dynamic wrapper over ViewData

Difference is only syntax and dynamic behavior.

---

# 🎯 Mental Snapshot (Save Forever)

Controller:

```csharp
ViewBag.Key = listObject;
```

View (quick way):

```cshtml
foreach (var item in ViewBag.Key)
{
    @item.Property
}
```

View (safe way):

```cshtml
List<Type> listVar = ViewBag.Key as List<Type>;

foreach (Type item in listVar)
{
    @item.Property
}
```

---

# 🚨 Professional Reality

Passing List using ViewBag:

✔ Works
✔ Cleaner syntax
❌ Not type safe
❌ Runtime dependent
❌ Not recommended for real business data

For production-level MVC:

Strongly Typed Model is the correct solution.