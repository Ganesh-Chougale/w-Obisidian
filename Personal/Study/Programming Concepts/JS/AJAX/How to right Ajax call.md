### Minimal required key

For an AJAX call to work, **only this is strictly required**:

* `url` → endpoint you’re calling

Everything else is optional or has a default value.

---

### Commonly used keys (what you listed)

Yes, these are the **most frequently used options**:

* `url` → request endpoint
* `type` → HTTP method (`GET`, `POST`, etc.)
* `async` → async or sync request (**default is `true`**)
* `data` → parameters sent to server
* `success` → callback when request succeeds
* `error` → callback when request fails

So your list is **correct in practice**, but not mandatory.

---

### Important clarifications (non-optional knowledge)

#### `type`

* Default is `"GET"`
* In modern jQuery, `method` is preferred over `type`

#### `async`

* Default is `true`
* Setting `async: false` is **deprecated** and can freeze the browser

#### `data`

* Optional
* Used mainly for `POST`, `PUT`, or query params in `GET`

---

### Example (simple + correct)

Below code is from a typical JS file (e.g. `assets/js/app.js`), AJAX call area only:

```javascript
$.ajax({
    url: "/api/user",        // endpoint
    type: "POST",            // HTTP method, default GET
    data: { id: 5 },          // parameters, skip if no parameter at endpoint
    success: function(res) {  // success callback
        console.log(res);
    },
    error: function(err) {    // error callback
        console.error(err);
    }
});
// if no async key then be default it's true
```

---

### Summary table

| Key       | Required | Default |
| --------- | -------- | ------- |
| `url`     | ✅ Yes    | —       |
| `type`    | ❌ No     | `GET`   |
| `async`   | ❌ No     | `true`  |
| `data`    | ❌ No     | `null`  |
| `success` | ❌ No     | —       |
| `error`   | ❌ No     | —       |

---