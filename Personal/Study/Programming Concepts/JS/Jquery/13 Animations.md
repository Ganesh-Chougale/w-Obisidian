# Animations

### HTML

```html
<div id="panel">Hello</div>
<button id="btn">Show</button>
```

---

### JavaScript (needs CSS + JS)

```css
#panel {
    transition: opacity 0.5s;
}
```

```js
document.getElementById("panel").style.opacity = 1;
```

---

### jQuery

```js
$("#btn").click(function () {
    $("#panel").fadeIn();
});
```

Or:

```js
$("#panel").fadeOut();
```

📌 jQuery handles:

* timing
* opacity
* smooth transitions

No CSS needed.

---