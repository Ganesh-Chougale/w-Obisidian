# Find an element

### HTML

```html
<p id="msg">Hello</p>
```

### JavaScript (long DOM way)

```js
var el = document.getElementById("msg");
```

### jQuery

```js
var el = $("#msg");
```

📌 Difference
`document.getElementById("msg")` → long
`$("#msg")` → short, readable, chainable

---