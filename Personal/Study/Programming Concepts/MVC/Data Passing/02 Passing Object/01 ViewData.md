# Passing `Object` Using `ViewData`

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

### Understand This Clearly

* `Student` → **Class Name**
* It is also the **Data Type**
* It is like a blueprint

---

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

    ViewData["StudentData"] = std1;

    return View();
}
```

### Now Let’s Break This Line Properly

```csharp
Student std1 = new Student();
```

| Part                | Meaning              |
| ------------------- | -------------------- |
| Student (left side) | Data Type            |
| std1                | Object Instance Name |
| new Student()       | Creating new object  |

So mentally read it as:

> Create a Student-type object and name it std1.
---

# ╰┈➤ STEP 2 — Passing to View

```csharp
return View();
```

ViewData travels automatically.

---

# ╰┈➤ STEP 3 — Using in View

File path:
`D:\YourProject\Views\Home\Index.cshtml`

---

## A. Direct Use ❌

```cshtml
<h2>@ViewData["StudentData"]</h2>
```

This prints something like:

```
YourProject.Models.Student
```

Because object → `.ToString()`

You cannot do this:

```cshtml
@ViewData["StudentData"].Name   // ❌ Compile error
```

Because compiler only sees `object`.

---

## B. Assign to Variable (with Casting) ✅

Correct way:

```cshtml
@using YourProject.Models

@{
    Student std1 = ViewData["StudentData"] as Student;
}

@if (std1 != null)
{
    <h2>@std1.Id</h2>
    <h2>@std1.Name</h2>
}
```

---

### What is happening here?

```cshtml
Student std1 = ViewData["StudentData"] as Student;
```

Break it mentally:

| Part          | Meaning                   |
| ------------- | ------------------------- |
| Student       | Expected Type             |
| std1          | Variable name inside View |
| ViewData[...] | Object (unknown type)     |
| as Student    | Convert object → Student  |

Now compiler understands properties.

---

# 🧠 Important Concept

ViewData stores:

```
Dictionary<string, object>
```

So when retrieving object:

You MUST convert it back to original type.

That conversion is called:

> Type Casting

Simple meaning:
Turning generic `object` back into its real type.

---

# 🎯 Final Mental Lock (Never Forget This)

When creating object:

```csharp
Student std1 = new Student();
```

Read as:

Type   InstanceName   =   New Type()

When retrieving from ViewData:

```cshtml
Student std1 = ViewData["Key"] as Student;
```