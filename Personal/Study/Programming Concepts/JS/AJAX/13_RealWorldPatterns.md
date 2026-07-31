# Real-World AJAX Patterns

These patterns are used in almost every professional web app.

---

## Popup loading

When user clicks:

```
View Details
```

Instead of opening a new page:

```js
$("#btnView").click(function () {
    $("#popupBody").load("/Job/GetDetails?jobId=J1001");
    $("#popup").show();
});
```

Server returns PartialView → popup fills instantly.

Used for:

* job details
* material info
* invoice view

---

## Auto refresh grids

```js
setInterval(function () {
    $("#grid").load("/Material/GetGrid");
}, 5000);
```

Every 5 seconds:

* grid reloads
* without page refresh

Used in:

* dashboards
* live production tracking

---

## Live validation

```js
$("#txtCode").keyup(function () {
    $.get("/Material/Exists?code=" + $(this).val(), function (data) {
        if (data == false)
            $("#msg").text("Invalid Code");
        else
            $("#msg").text("");
    });
});
```

User types → server checks → UI responds instantly.

---

## Dependent dropdowns

```js
$("#ddlCategory").change(function () {
    $.get("/Material/GetByCategory?cat=" + $(this).val(), function (data) {
        $("#ddlMaterial").empty();
        data.forEach(function (m) {
            $("#ddlMaterial").append("<option>" + m.Name + "</option>");
        });
    });
});
```

Second dropdown changes based on first.

---

## What you just built

With AJAX + jQuery + MVC you now know how to build:

* ERP dashboards
* Popups
* Live grids
* Smart forms
* Responsive UIs

This is **exactly** how modern web applications work 😎🔥