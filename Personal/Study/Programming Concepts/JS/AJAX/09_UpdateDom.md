# Updating the DOM using jQuery

After AJAX gets data from server, you must put it into the page.

This is called **DOM update**.
**DOM (Document Object Model)** = the HTML elements on the page.

---

## Putting data into a label

HTML:

```html
<span id="lblCount">0</span>
```

jQuery + AJAX:

```js
$.get("/Material/GetCount", function (data) {
    $("#lblCount").text(data.Count);
});
```

`text()` puts server value into the label.

---

## Putting data into a div

HTML:

```html
<div id="divMsg"></div>
```

jQuery:

```js
$.get("/Material/Message", function (data) {
    $("#divMsg").html(data);
});
```

`html()` is used when server returns **HTML**.

---

## Adding rows to a table

HTML:

```html
<table id="tbl">
    <tr>
        <th>Material</th>
        <th>Count</th>
    </tr>
</table>
```

jQuery:

```js
$.get("/Material/GetList", function (data) {
    data.forEach(function (item) {
        var row = "<tr>";
        row += "<td>" + item.MaterialCode + "</td>";
        row += "<td>" + item.Count + "</td>";
        row += "</tr>";

        $("#tbl").append(row);
    });
});
```

This dynamically fills the table from JSON.

---

## Key rule

| Server returns | Use                     |
| -------------- | ----------------------- |
| Text           | `text()`                |
| HTML           | `html()`                |
| List / JSON    | build rows + `append()` |

---

This is how:

* dashboards update
* grids refresh
* popups fill

without page reload 😎