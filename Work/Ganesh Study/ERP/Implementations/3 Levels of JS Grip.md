## 📄 File: `index.html`

```html
<!DOCTYPE html>
<html>
<head>
  <title>JS 3-Level Gripping</title>
</head>
<body>

  <!-- Element -->
  <input id="nameInput" type="text" value="John Doe" />
  <button id="btn">Click Me</button>
  <p id="output"></p>

  <script src="script.js"></script>

  <!-- jQuery CDN (for jQuery version) -->
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

</body>
</html>
```

---

## 📄 File: `script.js`

---

# 1️⃣ ELEMENT (Selecting / Grabbing DOM node)

👉 *Element = actual HTML node*

### Vanilla JS

```js
// script.js (top of file)
const inputEl = document.getElementById('nameInput');
const btnEl = document.getElementById('btn');
```

### jQuery

```js
// below vanilla code OR separate block
const $inputEl = $('#nameInput');
const $btnEl = $('#btn');
```

---

# 2️⃣ VALUE (Data inside element)

👉 *Value = content inside element (input value, text, etc.)*

### Vanilla JS

```js
// below element selection
const value = inputEl.value;   // getting value
console.log(value);

inputEl.value = "New Name";    // setting value
```

### jQuery

```js
// below jQuery element selection
const value = $inputEl.val();  // getting value
console.log(value);

$inputEl.val("New Name");      // setting value
```

---

# 3️⃣ STATE / BEHAVIOR (Interaction, events, dynamic changes)

👉 *State/Behavior = how element reacts or changes*

### Vanilla JS

```js
// below previous code
btnEl.addEventListener('click', function () {
  const currentValue = inputEl.value;

  // updating UI (state change)
  document.getElementById('output').textContent = currentValue;
});
```

### jQuery

```js
// below previous jQuery code
$btnEl.on('click', function () {
  const currentValue = $inputEl.val();

  // updating UI (state change)
  $('#output').text(currentValue);
});
```

---

# 🧠 Concept Summary (Very Important)

### 1. Element

* You **grab the DOM node**
* Example: `input`, `button`

### 2. Value

* You **read/write data inside it**
* Example: input text, paragraph content

### 3. State / Behavior

* You **control interaction**
* Example: click → update UI

---

# 🔄 Flow (How they connect)

```
Element → Value → Behavior
   ↓        ↓         ↓
Select → Read/Write → React/Update
```

---

# ⚠️ Key Difference (Vanilla vs jQuery)

| Task      | Vanilla JS            | jQuery    |
| --------- | --------------------- | --------- |
| Select    | `getElementById`      | `$()`     |
| Get Value | `.value`              | `.val()`  |
| Set Text  | `.textContent`        | `.text()` |
| Event     | `.addEventListener()` | `.on()`   |

---