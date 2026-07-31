# Change CSS

### HTML

```html
<p id="msg">Hello</p>
```

### JavaScript

```js
document.getElementById("msg").style.color = "red";
document.getElementById("msg").style.fontSize = "20px";
```

### jQuery

```js
$("#msg").css("color", "red");
$("#msg").css("font-size", "20px");
```

Even better (multiple at once):

```js
$("#msg").css({
    color: "red",
    "font-size": "20px"
});
```

📌 jQuery removes the `.style.` clutter and lets you apply many styles cleanly.

---