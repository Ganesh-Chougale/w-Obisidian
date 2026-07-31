# Show / Hide

### HTML

```html
<div id="box">Hello</div>
<button id="btn">Toggle</button>
```

---

### JavaScript

```js
document.getElementById("btn").addEventListener("click", function () {
    var box = document.getElementById("box");

    if (box.style.display === "none") {
        box.style.display = "block";
    } else {
        box.style.display = "none";
    }
});
```

---

### jQuery

```js
$("#btn").click(function () {
    $("#box").toggle();
});
```

📌 jQuery replaces:

* reading CSS
* checking state
* setting display

with one clean call.

---