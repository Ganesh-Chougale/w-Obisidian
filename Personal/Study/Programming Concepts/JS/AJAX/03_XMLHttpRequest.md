# XMLHttpRequest

Before `fetch()` and jQuery, AJAX was done using **XMLHttpRequest** (XHR).

This object allows JavaScript to:

* Send HTTP requests
* Receive responses
* Without reloading the page

All modern AJAX is built on this idea.

---

## Basic flow

```
Create request
Open connection
Send request
Wait for response
Read data
```

---

## What is `readyState`

`readyState` tells **what stage the request is in**.

| Value | Meaning                   |
| ----- | ------------------------- |
| 0     | Not started               |
| 1     | Connection opened         |
| 2     | Request sent              |
| 3     | Receiving data            |
| 4     | Finished (response ready) |

AJAX code waits for:

```
readyState == 4
```

---

## What is `status`

`status` is the **HTTP status code** sent by the server.

| Code | Meaning      |
| ---- | ------------ |
| 200  | Success      |
| 404  | Not found    |
| 500  | Server error |

AJAX checks:

```
status == 200
```

before trusting the response.

---

## Why both are needed

Even if:

```
readyState == 4
```

it does NOT mean success.

The server might have failed.

So correct check is:

```
readyState == 4 AND status == 200
```

---

## What XHR gives you

When response arrives:

```
xhr.responseText
```

contains:

* text
* HTML
* JSON (as string)

Then JavaScript decides what to do with it.

---

## Why this still matters

Even though today we use:

* `fetch()`
* `$.ajax()`

Under the hood they all still rely on:

```
XMLHttpRequest
```

So understanding this means you truly understand AJAX 🧠⚡

---