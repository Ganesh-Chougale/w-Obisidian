# Loop elements

### HTML

```html
<ul>
    <li>Apple</li>
    <li>Mango</li>
    <li>Banana</li>
</ul>
```

### JavaScript

```js
var items = document.querySelectorAll("li");

for (var i = 0; i < items.length; i++) {
    items[i].style.color = "blue";
}
```

### jQuery

```js
$("li").each(function () {
    $(this).css("color", "blue");
});
```

📌 jQuery gives you:

* automatic looping
* current element via `this`
* no index tracking

---