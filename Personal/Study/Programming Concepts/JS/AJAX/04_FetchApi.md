# Fetch API

`fetch()` is the modern way to do AJAX.

It replaces:

```
XMLHttpRequest
$.ajax
```

with a cleaner, promise-based syntax.

---

## What `fetch()` does

`fetch()` sends an HTTP request and returns a **Promise**
(A Promise means “I will give you the result later”)

```
fetch(url)
    → sends request
    → waits for server
    → gives response
```

---

## Basic Fetch

```js
fetch("/Material/GetCount")
```

This sends:

```
GET /Material/GetCount
```

---

## What is `.then()`

`.then()` means:

> When the server reply arrives, do this

Example:

```js
fetch("/Material/GetCount")
   .then(response => response.text())
   .then(data => {
       alert(data);
   });
```

Flow:

```
send request
→ get response
→ extract data
→ use it
```

---

## What is `.json()`

If server returns JSON:

```json
{ "Count": 45 }
```

Then use:

```js
fetch("/Material/GetCount")
   .then(r => r.json())
   .then(data => {
       alert(data.Count);
   });
```

`.json()` converts raw text into a JavaScript object.

---

## Why promises exist

AJAX takes time:

* network delay
* server processing

JavaScript does not wait.

So `fetch()` returns a **Promise** that resolves when data arrives.

This prevents UI from freezing.

---

## In real apps

ERP dashboards
Live counters
Popups
Grids

All use:

```
fetch()
→ .then()
→ .json() or .text()
```

to get data and update UI smoothly 😎

---