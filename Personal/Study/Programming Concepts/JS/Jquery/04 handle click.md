# Handle click

### HTML

```html
<button id="btn">Click me</button>
<p id="msg">Hello</p>
```

### JavaScript

```js
document.getElementById("btn").addEventListener("click", function () {
    alert("Clicked");
});
```

### jQuery

```js
$("#btn").click(function () {
    alert("Clicked");
});
```
---