# Receiving JSON

JSON = **JavaScript Object Notation**

It is the most common data format used by AJAX.

---

## What JSON looks like

Example JSON from server:

```json
{
   "MaterialCode": "MAT01",
   "Count": 45
}
```

It looks like a JavaScript object:

```
key : value
```

---

## How server returns JSON

In ASP.NET MVC:

```csharp
return Json(new {
    MaterialCode = "MAT01",
    Count = 45
});
```

Server sends this as:

```
application/json
```

to the browser.

---

## How JavaScript reads JSON

### Using fetch

```js
fetch("/Material/GetCount")
   .then(r => r.json())
   .then(data => {
       alert(data.MaterialCode);
       alert(data.Count);
   });
```

`.json()` converts raw text into a JS object.

---

### Using jQuery

```js
$.get("/Material/GetCount", function (data) {
    alert(data.MaterialCode);
    alert(data.Count);
});
```

jQuery automatically converts JSON into an object.

---

## Why JSON is preferred

Because:

* easy to read
* lightweight
* maps directly to JavaScript

You don’t need parsing like XML.

---

## In your ERP UI

When you see:

```
data.Count
data.MaterialCode
```

That data came from JSON response 😎

---