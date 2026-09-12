# File: `debug-playground.html`

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Firefox Debugger Playground</title>

  <style>
    body {
      font-family: Arial, sans-serif;
      padding: 20px;
      line-height: 1.6;
    }

    button {
      margin: 10px;
      padding: 10px 20px;
      cursor: pointer;
    }

    .box {
      width: 120px;
      height: 120px;
      background: orange;
      margin-top: 20px;
      transition: 0.3s;
    }

    .active {
      background: green;
      transform: rotate(20deg) scale(1.2);
    }

    #output {
      margin-top: 20px;
      padding: 10px;
      border: 1px solid #ccc;
      min-height: 60px;
      background: #f7f7f7;
    }
  </style>
</head>
<body>

  <h1>Firefox Debugger Learning Playground</h1>

  <button id="btn1">Run Basic Function</button>

  <button id="btn2">Async / Await Demo</button>

  <button id="btn3">Loop Demo</button>

  <button id="btn4">DOM Manipulation</button>

  <button id="btn5">Throw Error</button>

  <button id="btn6">Recursive Function</button>

  <div class="box" id="box"></div>

  <div id="output"></div>

  <script>
    const output = document.getElementById("output");

    // =========================================
    // BASIC FUNCTION
    // =========================================

    function calculateTotal(price, tax) {
      debugger;

      const taxAmount = price * tax;

      const finalPrice = price + taxAmount;

      return finalPrice;
    }

    function runBasicFunction() {
      debugger;

      const result = calculateTotal(100, 0.18);

      output.innerHTML = `
        Final Price: ${result}
      `;
    }

    // =========================================
    // ASYNC / AWAIT
    // =========================================

    function fakeApiCall() {
      debugger;

      return new Promise((resolve) => {
        setTimeout(() => {
          resolve({
            id: 1,
            name: "Laptop",
            price: 50000
          });
        }, 1500);
      });
    }

    async function runAsyncDemo() {
      debugger;

      output.innerHTML = "Loading...";

      const data = await fakeApiCall();

      debugger;

      output.innerHTML = `
        Product:
        ${data.name}
        - ₹${data.price}
      `;
    }

    // =========================================
    // LOOPS
    // =========================================

    function loopDemo() {
      debugger;

      let total = 0;

      for (let i = 1; i <= 5; i++) {

        debugger;

        total += i;
      }

      output.innerHTML = `
        Loop Total: ${total}
      `;
    }

    // =========================================
    // DOM MANIPULATION
    // =========================================

    function domManipulation() {
      debugger;

      const box = document.getElementById("box");

      box.classList.toggle("active");

      output.innerHTML = `
        DOM updated
      `;
    }

    // =========================================
    // ERROR HANDLING
    // =========================================

    function throwError() {
      debugger;

      try {

        const user = null;

        console.log(user.name);

      } catch (ex) {

        debugger;

        console.error(ex);

        output.innerHTML = `
          Error caught:
          ${ex.message}
        `;

        throw ex;
      }
    }

    // =========================================
    // RECURSION
    // =========================================

    function factorial(n) {

      debugger;

      if (n === 1) {
        return 1;
      }

      return n * factorial(n - 1);
    }

    function runRecursion() {

      debugger;

      const result = factorial(5);

      output.innerHTML = `
        Factorial: ${result}
      `;
    }

    // =========================================
    // EVENT LISTENERS
    // =========================================

    document
      .getElementById("btn1")
      .addEventListener("click", runBasicFunction);

    document
      .getElementById("btn2")
      .addEventListener("click", runAsyncDemo);

    document
      .getElementById("btn3")
      .addEventListener("click", loopDemo);

    document
      .getElementById("btn4")
      .addEventListener("click", domManipulation);

    document
      .getElementById("btn5")
      .addEventListener("click", throwError);

    document
      .getElementById("btn6")
      .addEventListener("click", runRecursion);

  </script>

</body>
</html>
```

---

# Your Debugger Learning Journey

Open this in Firefox Developer Tools and practice these in order.

---

# Phase 1 — Open Debugger

1. Open HTML file
2. Press:

   * `F12`
3. Go to:

   * Debugger tab

You’ll see:

* source files
* line numbers
* scopes
* call stack
* breakpoints

---

# Phase 2 — Learn `debugger;`

Click:

* `Run Basic Function`

Browser pauses automatically.

Now learn:

| Action    | Shortcut    |
| --------- | ----------- |
| Resume    | F8          |
| Step Over | F10         |
| Step Into | F11         |
| Step Out  | Shift + F11 |

---

# Phase 3 — Understand Step Into vs Over

Inside:

```js
const result = calculateTotal(100, 0.18);
```

Try:

* `F10`

  * skips inside function

Then refresh and try:

* `F11`

  * enters function

This is the MOST important debugger skill.

---

# Phase 4 — Watch Variables

While paused:

Inspect:

* Scope panel
* Variables
* Hover variables
* Console evaluation

Try in console:

```js
price
```

```js
taxAmount
```

---

# Phase 5 — Breakpoints

Remove all pauses mentally.

Now:

* click line number
* create breakpoint

Then click button again.

Learn:

* enable/disable breakpoint
* conditional breakpoint

Example condition:

```js
i === 4
```

---

# Phase 6 — Loops

Use:

* Loop Demo

Practice:

* stepping repeatedly
* watching `i`
* watching `total`

Critical learning:

* how execution moves in loops

---

# Phase 7 — Async / Await

Use:

* Async / Await Demo

Learn:

* pause before `await`
* resume after Promise resolves
* async call stacks

This teaches modern frontend debugging.

---

# Phase 8 — DOM Debugging

Use:

* DOM Manipulation

Learn:

* Elements tab
* live DOM updates
* class changes
* CSS updates

Watch:

* `.active` class added/removed

---

# Phase 9 — Exception Debugging

Use:

* Throw Error

Then in debugger:
Enable:

* Pause on exceptions

Learn:

* caught exception
* uncaught exception
* stack traces

Very important for real projects.

---

# Phase 10 — Call Stack

Use:

* Recursive Function

Watch:

* factorial()
* nested stack frames

This teaches:

* recursion
* execution depth
* stack navigation

---

# Phase 11 — Restart Frame

During recursion:

* right click stack frame
* Restart Frame

Now you understand the closest thing to “go back”.

---

# Phase 12 — Network + Debugger Together

Add this later:

```js
fetch("https://jsonplaceholder.typicode.com/todos/1")
```

Then learn:

* Network tab
* request timing
* response inspection
* breakpoints after fetch

---

# Biggest concepts you’ll learn

By the end you’ll understand:

* execution flow
* synchronous code
* asynchronous code
* stack frames
* scopes
* closures
* promises
* DOM updates
* event listeners
* exception flow
* stepping controls
* breakpoints
* conditional breakpoints
* recursion debugging

That is basically real frontend debugging foundation.
