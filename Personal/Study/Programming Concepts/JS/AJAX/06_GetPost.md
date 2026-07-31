# GET vs POST

HTTP has many methods, but AJAX mainly uses:

```
GET
POST
```

They both send data — but in very different ways.

---

## When to use GET

Use **GET** when you want to:

* Read data
* Fetch info
* Load details
* Get counts

Example:

```
/Material/GetCount?code=MAT01
```

GET is:

* Fast
* Cacheable
* Bookmarkable
* Visible in URL

Perfect for:

* searching
* filtering
* loading grids

---

## When to use POST

Use **POST** when you want to:

* Save data
* Update data
* Insert records
* Send forms

Example:

```
/Material/Save
Body:
   code = MAT01
   qty  = 5
```

POST is:

* Hidden from URL
* Can send large data
* More secure

Perfect for:

* login
* forms
* transactions

---

## Why POST is safer for forms

GET sends data in the URL:

```
/Login?user=ganesh&pass=123
```

That means:

* It appears in browser history
* It appears in logs
* Anyone can copy it

POST sends data in body:

```
user=ganesh
pass=123
```

It is not visible in the address bar.

This is why:

* passwords
* payments
* personal data

must always use POST.

---

## AJAX + GET / POST

AJAX follows the same rule:

* Loading data → GET
* Sending data → POST

Whether you use:

```
fetch()
$.get()
$.post()
```

the logic never changes 😎

---