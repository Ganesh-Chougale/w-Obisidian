# Read values

### HTML

```html
<input type="text" id="name" value="Ganesh">
```

---

### JavaScript

```js
var val = document.getElementById("name").value;
```

---

### jQuery

```js
var val = $("#name").val();
```

📌 jQuery hides:

* null checks
* DOM access
* value extraction

into one clean method.

---