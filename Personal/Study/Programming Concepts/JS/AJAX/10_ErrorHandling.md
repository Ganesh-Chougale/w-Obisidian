# AJAX Error Handling

AJAX can fail because of:

* No internet
* Server crash
* Wrong URL
* Login expired

So every request must handle **errors**.

---

## jQuery: `success` and `error`

```js
$.ajax({
    url: "/Material/GetCount",
    type: "GET",
    success: function (data) {
        $("#lblCount").text(data.Count);
    },
    error: function () {
        alert("Something went wrong");
    }
});
```

* `success` runs when status = 200
* `error` runs when:

  * 404
  * 500
  * network fail

---

## fetch(): `.catch()`

```js
fetch("/Material/GetCount")
   .then(r => r.json())
   .then(data => {
       alert(data.Count);
   })
   .catch(err => {
       alert("Server or network error");
   });
```

`.catch()` runs when:

* server is unreachable
* response failed

---

## 500 Server Error

This means:

* Your controller crashed
* DB query failed
* Exception occurred

AJAX will call:

```
error()
or
catch()
```

You must show friendly message instead of broken UI.

---

## Why this matters

Without error handling:

* user sees nothing
* UI freezes
* bugs look mysterious

With error handling:

* user sees message
* developer can debug
* app feels stable 😎

---