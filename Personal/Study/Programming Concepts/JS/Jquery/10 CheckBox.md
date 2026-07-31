# Checkbox logic

### HTML

```html
<input type="checkbox" id="chk">
```

---

### JavaScript

```js
var chk = document.getElementById("chk");

if (chk.checked === true) {
    alert("Checked");
}
```

---

### jQuery

```js
if ($("#chk").is(":checked")) {
    alert("Checked");
}
```

📌 `.is(":checked")` reads like English —

> *is this checkbox checked?*

No property digging.

---