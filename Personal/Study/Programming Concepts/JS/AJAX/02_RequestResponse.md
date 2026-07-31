# Request & Response

Every AJAX call is just:

```
Browser  →  Request  →  Server
Browser  ←  Response ←  Server
```

No magic. Just data going back and forth.

---

## What the browser sends (Request)

When JavaScript or AJAX calls a URL, the browser sends:

```
Method   → GET or POST
URL      → /Material/GetCount
Headers  → info about browser
Data     → (optional)
```

Example:

```
GET /Material/GetCount?code=MAT01
```

This means:

* Call server method `GetCount`
* Send `code = MAT01`

---

## What the server returns (Response)

The server sends back:

```
Status Code → 200
Data        → something
```

That “something” can be:

* Text
* HTML
* JSON

---

## Text Response

Server returns:

```
45
```

JavaScript receives:

```
"45"
```

Good for:

* counts
* messages
* small values

---

## HTML Response

Server returns:

```html
<tr>
  <td>MAT01</td>
  <td>45</td>
</tr>
```

JavaScript puts it directly into a `<div>` or `<table>`.

Perfect for:

* grids
* partial views
* UI fragments

---

## JSON Response

Server returns:

```json
{
  "Material": "MAT01",
  "Count": 45
}
```

JavaScript reads:

```
data.Material
data.Count
```

Best for:

* structured data
* APIs
* dashboards

---

## Why AJAX loves JSON

Because JSON:

* is lightweight
* maps directly to JavaScript objects
* is easy to loop, filter, format

This is why most MVC actions return `Json()` for AJAX.

---

## In your ERP screens

When you load:

* material count
* popup details
* grid rows

You are always getting one of these:

```
Text
HTML
JSON
```

AJAX just decides **how to inject it into the page** 😎

---