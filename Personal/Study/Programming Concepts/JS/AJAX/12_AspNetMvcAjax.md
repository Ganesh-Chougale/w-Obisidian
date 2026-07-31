# ASP.NET MVC + AJAX

AJAX calls MVC controller actions just like browser navigation —
but **without page reload**.

---

## Returning JSON

### Controller

```csharp
public JsonResult GetCount(string code)
{
    int count = 45;   // from DB
    return Json(new {
        MaterialCode = code,
        Count = count
    });
}
```

URL:

```
/Material/GetCount?code=MAT01
```

---

### jQuery

```js
$.get("/Material/GetCount?code=MAT01", function (data) {
    alert("Material: " + data.MaterialCode);
    alert("Count: " + data.Count);
});
```

AJAX receives JSON and reads it like an object.

---

## Returning PartialView

### Controller

```csharp
public ActionResult GetDetails(string jobId)
{
    return PartialView("_JobDetails");
}
```

---

### jQuery

```js
$("#divDetails").load("/Job/GetDetails?jobId=J1001");
```

MVC sends HTML.
jQuery injects it inside `<div>`.

---

## Choosing what to return

| Need            | Return      |
| --------------- | ----------- |
| Numbers, values | JSON        |
| UI layout       | PartialView |

---

This is exactly how:

* your material popups
* job screens
* live grids

are built in ERP systems 😎

---