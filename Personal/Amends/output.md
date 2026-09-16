# Codebase Report

## Folder Structure
```
Permission Widget
├── Index Dummy.html
├── PW.css
├── PW.html
└── PW.js
```

---

## Code Summary
Idle Projects\Permission Widget\Index Dummy.html:
```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dummy Index</title>
    <link rel="stylesheet" href="PW.css">
</head>
<body>
    <h1>This is a Dummy webpage</h1>
    <script src="PW.js"></script>
</body>
</html>
```

Idle Projects\Permission Widget\PW.html:
```html
<div id="consentModal" class="modal hidden">
  <div class="modal-box">
    <h3>Permissions Required</h3>
    <label class="perm"><input type="checkbox" class="chk"> Permission 1</label>
    <label class="perm"><input type="checkbox" class="chk"> Permission 2</label>
    <label class="perm"><input type="checkbox" class="chk"> Permission 3</label>
    <button id="agreeBtn" disabled>Agree</button>
  </div>
</div>
<div id="consentWidget" class="widget hidden"></div>
<div id="previewBox" class="preview hidden">
  <p>Accepted Permissions:</p>
  <ol id="permList"></ol>
</div>
```

Idle Projects\Permission Widget\PW.js:
```js
// inject HTML into page
fetch("PW.html")
  .then(res => res.text())
  .then(html => {
    document.body.insertAdjacentHTML("beforeend", html);
    initConsent(); // run after HTML loads
  });
function initConsent() {
    const modal = document.getElementById("consentModal");
    const checkboxes = document.querySelectorAll(".chk");
    const agreeBtn = document.getElementById("agreeBtn");
    const widget = document.getElementById("consentWidget");
    const preview = document.getElementById("previewBox");
    const permList = document.getElementById("permList");
    const consent = localStorage.getItem("userConsent");
    if (consent === "true") {
    modal.classList.add("hidden");
    widget.classList.remove("hidden");
    } else {
    modal.classList.remove("hidden");
    }
    checkboxes.forEach(chk => {
    chk.addEventListener("change", () => {
        const allChecked = [...checkboxes].every(c => c.checked);
        agreeBtn.disabled = !allChecked;
    });
    });
    agreeBtn.addEventListener("click", () => {
    const selected = [];
    checkboxes.forEach((chk, i) => {
        if (chk.checked) {
        selected.push("Permission " + (i + 1));
        }
    });
    localStorage.setItem("userConsent", "true");
    localStorage.setItem("permissions", JSON.stringify(selected));
    modal.classList.add("hidden");
    widget.classList.remove("hidden");
    });
    widget.addEventListener("click", () => {
    const saved = JSON.parse(localStorage.getItem("permissions")) || [];
    permList.innerHTML = "";
    saved.forEach(p => {
        const li = document.createElement("li");
        li.textContent = p;
        permList.appendChild(li);
    });
    preview.classList.toggle("hidden");
    });
}
```



---

