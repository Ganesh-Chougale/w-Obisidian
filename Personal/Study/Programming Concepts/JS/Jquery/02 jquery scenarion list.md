### `Scenarios`  
| Scenario       | Pure JavaScript          | jQuery              |
| -------------- | ------------------------ | ------------------- |
| Find elements  | Long DOM code            | `$("#id")`          |
| Handle click   | `addEventListener`       | `.click()`          |
| Change text    | `.innerHTML`             | `.html()`           |
| Change CSS     | `.style.xxx`             | `.css()`            |
| Loop elements  | `for` loops              | `.each()`           |
| AJAX calls     | `XMLHttpRequest / fetch` | `$.ajax()`          |
| DOM traversal  | `parentNode.children`    | `.parent().find()`  |
| Checkbox logic | verbose                  | `.is(":checked")`   |
| Read values    | `.value`                 | `.val()`            |
| Show/Hide      | `style.display`          | `.show() / .hide()` |
| Animations     | CSS + JS                 | `.fadeIn()`         |
| Browser issues | manual fixes             | auto handled        |
---

### `How it solved Browser issues`

Old JavaScript had problems like:

* `event` works in Chrome but not IE
* `innerText` vs `textContent`
* AJAX behaving differently

With jQuery:

```js
$("#btn").click(...)
$.ajax(...)
$("#box").css(...)
```

jQuery internally fixes all browser differences, so your code runs **same everywhere**.

---