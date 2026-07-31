# jQuery AJAX

jQuery wraps AJAX into very simple functions.

Instead of:

* `XMLHttpRequest`
* `fetch()`
* `.then()`

You just use:

```
$.ajax()
$.get()
$.post()
```

---

## `$.get()` – for GET requests

Used when you only want to **read data**.

```js
$.get("/Material/GetCount", function (data) {
    alert(data);
});
```

This sends:

```
GET /Material/GetCount
```

`data` = server response.

---

## `$.post()` – for POST requests

Used when you want to **send data**.

```js
$.post("/Material/Save", { code: "MAT01", qty: 5 }, function (data) {
    alert(data);
});
```

This sends:

```
POST /Material/Save
Body:
  code = MAT01
  qty  = 5
```

---

## `$.ajax()` – full control

```js
$.ajax({
    url: "/Material/GetCount",
    type: "GET",
    success: function (data) {
        alert(data);
    },
    error: function () {
        alert("Error");
    }
});
```

This gives:

* success handling
* error handling
* headers
* data type control

---

## Why jQuery feels easy

With jQuery:

* No `.then()`
* No `response.json()`
* No promise handling

It just gives:

```
data
```

directly.

---

## Under the hood

Even when you use:

```
$.ajax()
```

jQuery still uses:

```
XMLHttpRequest
```

behind the scenes.

It only removes the complexity 😎

---