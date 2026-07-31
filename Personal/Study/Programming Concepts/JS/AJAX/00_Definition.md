# AJAX

AJAX = **Asynchronous JavaScript And XML**

It is a **technique** that allows JavaScript to send and receive data from a server **without reloading the web page**.

AJAX is not a library and not a language.
It is a **way of using JavaScript + HTTP requests** to talk to the server in the background.

---

## What happens without AJAX

When you submit a form or click a link:

1. Browser sends request
2. Server processes it
3. Server returns new HTML
4. **Whole page reloads**

User loses:

* Scroll position
* Input values
* UI state

Feels slow and jumpy.

---

## What happens with AJAX

1. JavaScript sends request in background
2. Server sends only **data** (JSON / HTML fragment / text)
3. JavaScript updates **only part of the page**

No reload.
Page stays where it is.
Only required data changes.

---

## Why AJAX exists

AJAX was created to make web apps behave like desktop apps:

* No flicker
* No full reload
* Fast response
* Smooth UI

This is why Gmail, WhatsApp Web, ERP dashboards feel “live”.

---

## Normal Form Submit vs AJAX

### Normal Submit

```
Button Click
    ↓
Page reloads
    ↓
New page HTML
```

### AJAX Submit

```
Button Click
    ↓
JavaScript sends request
    ↓
Server sends data
    ↓
Only part of page updates
```

---

## Tiny mental picture

Your web page = Office desk  
Server = Storage room
- Without AJAX → You go to storage every time
- With AJAX → A helper brings only the file you need

You never leave your desk