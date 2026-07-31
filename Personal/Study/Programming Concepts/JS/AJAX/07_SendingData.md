# Sending Data to Server

AJAX can send data in four main ways:

* Form values
* Hidden fields
* JSON
* QueryString

---

## Form values

HTML:

```html
<input id="txtCode" value="MAT01">
<input id="txtQty" value="5">
```

jQuery:

```js
$.post("/Material/Save", {
    code: $("#txtCode").val(),
    qty: $("#txtQty").val()
});
```

This sends:

```
code = MAT01
qty = 5
```

---

## Hidden fields

HTML:

```html
<input type="hidden" id="hfMaterialCode" value="MAT01">
```

jQuery:

```js
$.post("/Material/GetCount", {
    code: $("#hfMaterialCode").val()
});
```

Hidden fields are perfect for:

* IDs
* internal keys
* codes

---

## JSON

Send structured data:

```js
$.ajax({
    url: "/Material/Save",
    type: "POST",
    data: JSON.stringify({
        code: "MAT01",
        qty: 5
    }),
    contentType: "application/json",
    success: function (data) {
        alert("Saved");
    }
});
```

This sends JSON instead of key-value pairs.

Used when:

* API
* complex objects

---

## QueryString

Used with GET:

```js
$.get("/Material/GetCount?code=MAT01&year=2025", function (data) {
    alert(data);
});
```

Data goes inside URL.

Good for:

* filters
* search
* lookups

---

## Which one to use

| Need          | Use           |
| ------------- | ------------- |
| Simple values | Form / Hidden |
| Large data    | JSON          |
| Filters       | QueryString   |
| Saving data   | POST          |

---