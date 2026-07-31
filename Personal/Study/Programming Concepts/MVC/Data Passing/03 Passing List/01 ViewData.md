Now we are entering **List + ViewData** 🔥  
This is where casting becomes unavoidable and very clear.  

Stay sharp — this locks your understanding permanently.

---

# Passing `List<Object>` Using `ViewData`


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

    ViewData["StudentList"] = stdList;

    return View();
}
```

### What is happening?

* Created a list of Student objects
* Stored inside ViewData
* Internally stored as `object`

Important:

ViewData sees this as:

```
object
```

Not as `List<Student>`

---

# ╰┈➤ STEP 2 — Passing to View

```csharp
return View();
```

ViewData automatically travels to View.

---

# ╰┈➤ STEP 3 — Using in View

File path:
`D:\YourProject\Views\Home\Index.cshtml`

---

## A. Direct Use ❌ (Not Practical)

If you try:

```cshtml
@ViewData["StudentList"]
```

It prints something like:

```
System.Collections.Generic.List`1[YourProject.Models.Student]
```

You cannot loop like this:

```cshtml
@foreach (var item in ViewData["StudentList"])
{
    <h2>@item.Name</h2>
}
```

❌ Compile error.

Because compiler sees `object`, not list.

---

## B. Assign to Variable (with Casting) ✅ (Correct Way)

```cshtml
@using YourProject.Models
@using System.Collections.Generic

@{
    List<Student> stdList = ViewData["StudentList"] as List<Student>;
}

@if (stdList != null)
{
    foreach (Student stdObj in stdList)
    {
        <h2>@stdObj.Id - @stdObj.Name</h2>
    }
}
```

---

### Let’s break this important line:

```cshtml
List<Student> stdList = ViewData["StudentList"] as List<Student>;
```

Read it slowly:

* Expecting type → `List<Student>`
* Variable name → `stdList`
* Convert object → `List<Student>`

This is called:

> Type Casting (object → original type)

Without this step → you cannot loop.

---

# 🔎 Direct vs Variable — Real Difference

## 🔹 Direct Use

✔ Only prints type name  
❌ Cannot access elements  
❌ Cannot loop  
❌ No IntelliSense  

Not useful for list.

---

## 🔹 Variable + Casting

✔ Enables foreach loop  
✔ Enables property access  
✔ IntelliSense works  
❌ Still not compile-time safe  

If controller sends wrong type → runtime issue.

---

# 🧠 Core Concept You Must Lock In

ViewData stores everything as:

```
Dictionary<string, object>
```

So for List:

You must cast back to:

```
List<OriginalType>
```

Otherwise you cannot enumerate (loop).

---

# 🎯 Mental Snapshot (Save Forever)

Controller:

```csharp
ViewData["Key"] = listObject;
```

View:

```cshtml
List<Type> variable = ViewData["Key"] as List<Type>;
```

Then:

```cshtml
foreach (Type item in variable)
{
    @item.Property
}
```

---

# 🚨 Professional Reality

Passing list using ViewData:

✔ Works
❌ Requires casting
❌ Runtime risk
❌ Not scalable

In real projects:

Always prefer strongly typed Model for list.