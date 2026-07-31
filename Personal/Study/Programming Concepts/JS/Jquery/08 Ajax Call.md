# AJAX calls

### HTML

```html
<button id="btn">Load</button>
<div id="result"></div>
```

---

### JavaScript (old-school way)

```js
document.getElementById("btn").addEventListener("click", function () {
    var xhr = new XMLHttpRequest();
    xhr.open("GET", "/Home/Data");
    xhr.onload = function () {
        document.getElementById("result").innerHTML = xhr.responseText;
    };
    xhr.send();
});
```

A lot of boilerplate just to call the server

---

### jQuery

```js
$("#btn").click(function () {
    $.ajax({
        url: "/Home/Data",
        type: "GET",
        success: function (data) {
            $("#result").html(data);
        }
    });
});
```

📌 jQuery handles:

* request
* response
* errors
* browser differences

All you write is **what you want**.

---