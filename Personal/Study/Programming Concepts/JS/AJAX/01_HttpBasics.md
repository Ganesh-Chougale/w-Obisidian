# HTTP Basics

HTTP = **Hyper Text Transfer Protocol**

It is the **language** used by:

* Browser
* JavaScript
* AJAX
* Server

to talk to each other.

AJAX does not invent anything new — it simply uses **HTTP silently in background**.

---

## What is an HTTP Request?

Every time this happens:

```
Open a page
Submit a form
Click a link
Call AJAX
```

Browser sends an **HTTP Request** to the server.

Server replies with an **HTTP Response**.

---

## Request contains

```
URL
Method (GET / POST)
Headers
Data (optional)
```

---

## GET vs POST

| GET                   | POST                  |
| --------------------- | --------------------- |
| Used to **read** data | Used to **send** data |
| Data goes in URL      | Data goes in Body     |
| Visible               | Hidden                |
| Limited length        | Can send large data   |

---

## URL, QueryString, Body

### URL

```
/Material/GetCount
```

This tells **which server method** to call.

---

### QueryString (GET)

```
/Material/GetCount?code=MAT01&year=2025
```

Everything after `?` is **QueryString**

```
code = MAT01
year = 2025
```

This is how GET sends data.

---

### Body (POST)

POST does not send data in URL.

It sends data **inside the request body**:

```
code = MAT01
year = 2025
```

You do not see this in the address bar.

---

## Status Codes

Server always sends a **status number** with every response.

| Code | Meaning        |
| ---- | -------------- |
| 200  | OK – success   |
| 404  | URL not found  |
| 500  | Server error   |
| 401  | Not authorized |

AJAX reads this number to decide:

* success
* error
* retry

---

## Why this matters for AJAX

When AJAX runs:

```
fetch("/Material/GetCount?code=MAT01")
```

You are really sending:

* Method → GET
* URL → /Material/GetCount
* QueryString → code=MAT01

AJAX only hides the reload —
**HTTP still does all the real work**  

---