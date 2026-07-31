# DOM traversal (moving inside HTML)

### HTML

```html
<tr>
    <td><input type="checkbox" id="chk1"></td>
    <td><input type="hidden" id="RefType1" value="2"></td>
</tr>
```

---

### JavaScript

```js
var chk = document.getElementById("chk1");
var tr = chk.parentNode.parentNode;
var ref = tr.querySelector("[id^=RefType]").value;
```

Messy and fragile

---

### jQuery (just like in your ERP)

```js
var ref = $("#chk1").parent().parent().find("[id^=RefType]").val();
```

📌 jQuery gives:

* `.parent()` → go up
* `.find()` → search inside
* `.val()` → read value

Exactly how your `checkRcptType()` works

---