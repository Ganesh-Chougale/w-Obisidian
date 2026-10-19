# Codebase Report

## Folder Structure
```
Mathematics
├── Docs/
│   ├── 001 Sumation/
│   │   ├── markdown.md
│   │   └── Summation.html
│   └── z_temp/
│       ├── markdown.md
│       └── template.html
└── z_assets/
    ├── images/
    └── libs/
        ├── auto-render.min.js
        ├── katex.min.css
        ├── katex.min.js
        ├── marked.min.js
        └── pico.min.css
```

---

## Code Summary
Personal\Study\Mathematics\Docs\001 Sumation\markdown.md:
```markdown
### Sumation
> `Goal`: Summation means addition of numbers
**Concept:** summation means addition of numbers.
<details>
<summary>Formula & notation</summary>
$$
a+b=c
$$
- \(a\): First value
- \(b\): Second value
- \(c\): calculated value
</details>
<details>
<summary>Example</summary>
**Problem:** Calculate \(2+3\).
$$
2+3=5
$$
**Answer:** \(5\)
</details>
```

Personal\Study\Mathematics\Docs\001 Sumation\Summation.html:
```html
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width,initial-scale=1">
  <title>Mathematics</title>
  <link rel="stylesheet" href="../../z_assets/libs/katex.min.css">
  <link rel="stylesheet" href="../../z_assets/libs/pico.min.css">
  <style>
    body { min-height:100vh; display:grid; place-items:center; }
    main { width:min(90%,420px); margin:0; }
    #view { display:grid; gap:1rem; text-align:center; }
  </style>
  <script defer src="../../z_assets/libs/marked.min.js"></script>
  <script defer src="../../z_assets/libs/katex.min.js"></script>
  <script defer src="../../z_assets/libs/auto-render.min.js"></script>
</head>
<body>
  <main>
    <details>
      <summary>Detail</summary>
      <div id="notes"></div>
    </details>
    <section id="view">
      <input id="input1" type="number" placeholder="First value">
      <input id="input2" type="number" placeholder="Second value">
      <button id="calculate">Calculate</button>
      <output id="result">—</output>
    </section>
  </main>
  <script>
    fetch("./markdown.md")
      .then(r => {
        if (!r.ok) throw Error(r.status);
        return r.text();
      })
      .then(md => {
        const notes = document.getElementById("notes");
        notes.innerHTML = marked.parse(md);
        renderMathInElement(notes, {
          delimiters: [
            { left: "$$", right: "$$", display: true },
            { left: "\\(", right: "\\)", display: false }
          ]
        });
      })
      .catch(() => {
        document.getElementById("notes").textContent = "Notes unavailable.";
      });
  </script>
  <script>
    document.getElementById("calculate").onclick = () => {
      const fields = ["input1", "input2"].map(id =>
        document.getElementById(id)
      );
      if (fields.some(el => el.value.trim() === "" || !el.checkValidity())) {
        document.getElementById("result").textContent = "Enter valid numbers.";
        return;
      }
      const [input1, input2] = fields.map(el => el.valueAsNumber);
      // logic starts
      let result = input1 + input2;
      // logic ends
      document.getElementById("result").textContent = result;
    };
  </script>
</body>
</html>
```

Personal\Study\Mathematics\Docs\z_temp\markdown.md:
```markdown
### Sumation
> `Goal`: 
**Concept:** .
<details>
<summary>Formula & notation</summary>
$$
a+b=c
$$
- \(a\): First value
- \(b\): Second value
- \(c\): calculated value
</details>
<details>
<summary>Example</summary>
**Problem:** Calculate 
<!--  -->
$$
% 
$$
**Answer:** 
<!--  -->
</details>
```

Personal\Study\Mathematics\Docs\z_temp\template.html:
```html
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width,initial-scale=1">
  <title>Mathematics</title>
  <link rel="stylesheet" href="../../z_assets/libs/katex.min.css">
  <link rel="stylesheet" href="../../z_assets/libs/pico.min.css">
  <style>
    body { min-height:100vh; display:grid; place-items:center; }
    main { width:min(90%,420px); margin:0; }
    #view { display:grid; gap:1rem; text-align:center; }
  </style>
  <script defer src="../../z_assets/libs/marked.min.js"></script>
  <script defer src="../../z_assets/libs/katex.min.js"></script>
  <script defer src="../../z_assets/libs/auto-render.min.js"></script>
</head>
<body>
  <main>
    <details>
      <summary>Detail</summary>
      <div id="notes"></div>
    </details>
    <section id="view">
      <input id="input1" type="number" placeholder="First value">
      <input id="input2" type="number" placeholder="Second value">
      <button id="calculate">Calculate</button>
      <output id="result">—</output>
    </section>
  </main>
  <script>
    fetch("./markdown.md")
      .then(r => {
        if (!r.ok) throw Error(r.status);
        return r.text();
      })
      .then(md => {
        const notes = document.getElementById("notes");
        notes.innerHTML = marked.parse(md);
        renderMathInElement(notes, {
          delimiters: [
            { left: "$$", right: "$$", display: true },
            { left: "\\(", right: "\\)", display: false }
          ]
        });
      })
      .catch(() => {
        document.getElementById("notes").textContent = "Notes unavailable.";
      });
  </script>
  <script>
    document.getElementById("calculate").onclick = () => {
      const fields = ["input1", "input2"].map(id =>
        document.getElementById(id)
      );
      if (fields.some(el => el.value.trim() === "" || !el.checkValidity())) {
        document.getElementById("result").textContent = "Enter valid numbers.";
        return;
      }
      const [input1, input2] = fields.map(el => el.valueAsNumber);
      // logic starts
      let result;
      // logic ends
      document.getElementById("result").textContent = result;
    };
  </script>
</body>
</html>
```



---

