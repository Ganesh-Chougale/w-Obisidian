# Loading PartialView using AJAX

In ASP.NET MVC, a **PartialView** is a piece of HTML (not a full page).

AJAX can load this HTML and inject it into a `<div>`.

---

## Server (MVC)

Controller:

```csharp
public ActionResult GetMaterialGrid()
{
    return PartialView("_MaterialGrid");
}
```

`_MaterialGrid.cshtml` contains:

* table
* rows
* layout of grid

---

## HTML

```html
<div id="gridContainer"></div>
<button id="btnLoad">Load Grid</button>
```

---

## jQuery AJAX

```js
$("#btnLoad").click(function () {
    $("#gridContainer").load("/Material/GetMaterialGrid");
});
```

What happens:

```
Button click
→ AJAX calls MVC
→ PartialView HTML comes back
→ jQuery puts it inside div
```

No page reload.

---

## Why this is powerful

You can:

* reload grid
* refresh popup
* change tab content

without touching the full page.

This is how:

* dashboards
* report screens
* drill-downs

work so smoothly 😎

---