Add this **one line** inside `<head>` **or just before `</body>`**:

```html
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
```

That’s it.
Now `$()` and `$.ajax()` will work.

---

# Minimal working example

Save this as `index.html` and open in browser.

```html
<!DOCTYPE html>
<html>
<head>
    <title>jQuery Test</title>

    <!-- jQuery injected here -->
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</head>
<body>

<button id="btn">Click</button>
<p id="msg">Hello</p>

<script>
    $("#btn").click(function () {
        $("#msg").html("jQuery is working!");
    });
</script>

</body>
</html>
```

If you click the button and the text changes → jQuery is loaded successfully 🚀

---

# Why script order matters

This must come **before** your own JS:

```html
<script src="jquery.js"></script>   <!-- jQuery -->
<script src="app.js"></script>     <!-- Your code -->
```

If reversed, `$` will be undefined ❌

---

# Local file option (no internet)

Download jQuery from
[https://jquery.com](https://jquery.com)

Put it in:

```
/js/jquery.min.js
```

Then reference:

```html
<script src="js/jquery.min.js"></script>
```

---

# How this maps to your ERP

Your Razor layout probably has:

```
~/Scripts/jquery-1.10.2.min.js
```

All your `$(...)` and `$.ajax(...)` work because of this one file 💥

---