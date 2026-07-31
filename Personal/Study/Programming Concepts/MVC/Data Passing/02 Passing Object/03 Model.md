# Passing `Object` Using `Model`


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

    return View(std1);
}
```

### What is happening?

* Created object `std1`
* Passed it directly to View
* That object becomes the **Model**

This is strongly typed passing.

---

# ╰┈➤ STEP 2 — Passing to View

This line does everything:

```csharp
return View(std1);
```

Internally:

```csharp
ViewResult.Model = std1;
```

No dictionary.
No dynamic.
No casting at controller level.

---

# ╰┈➤ STEP 3 — Using in View

File path:
`D:\YourProject\Views\Home\Index.cshtml`

At the top of file:

```cshtml
@model YourProject.Models.Student
```

⚠️ Mandatory line.

This tells Razor:

> This View expects Student type data.

---

## A. Direct Use ✅ (Best Way)

```cshtml
<h2>@Model.Id</h2>
<h2>@Model.Name</h2>
```

### Why this is powerful?

* Model is already strongly typed
* IntelliSense works
* Compile-time checking
* Refactoring safe

If controller sends wrong type → compile error immediately.

---

## B. Assign to Variable (No Casting Needed) ✅

```cshtml
@{
    Student std1 = Model;
}

<h2>@std1.Id</h2>
<h2>@std1.Name</h2>
```

Important:

No casting required.

Because:

`Model` is already of type `Student`.

If you try wrong type:

```cshtml
@{
    int x = Model;   // ❌ Compile-time error
}
```

Compiler immediately stops you.

---

# 🔎 Direct vs Variable — Real Difference Here

## 🔹 Direct Use

✔ Cleanest  
✔ Recommended  
✔ Short  

---

## 🔹 Assign to Variable

✔ Useful if using Model many times  
✔ Useful for renaming variable for readability  
✔ Still fully type safe  

Both are safe here.  

---

# 🧠 Core Concept (Very Important)

This is called:

> Strongly Typed View

Meaning:

View is bound to a specific model type.

Now compiler helps you.

This is real MVC design.

---

# 🎯 Mental Snapshot (Save Forever)

Controller:

```csharp
return View(objectInstance);
```

View (top):

```cshtml
@model TypeName
```

Use:

```cshtml
@Model.Property
```

That’s the entire mechanism.

---

# ⚖️ Final Comparison (Object Passing)

| Method   | Type Safe | IntelliSense | Recommended |
| -------- | --------- | ------------ | ----------- |
| ViewData | ❌ No      | ❌ No         | ❌ No        |
| ViewBag  | ❌ No      | ❌ No         | ⚠ Small UI  |
| Model    | ✅ Yes     | ✅ Yes        | ✅ Always    |

---