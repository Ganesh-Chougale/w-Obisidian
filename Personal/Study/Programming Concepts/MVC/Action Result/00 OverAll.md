## ✅ **Common Return Types of `ActionResult`**

### **1. ViewResult**

Returns a view (.cshtml page).

```csharp
return View();
```

### **2. PartialViewResult**

Returns a partial view.

```csharp
return PartialView();
```

### **3. JsonResult**

Returns JSON data.

```csharp
return Json(data, JsonRequestBehavior.AllowGet);
```

### **4. RedirectResult**

Redirects to a URL.

```csharp
return Redirect("https://example.com");
```

### **5. RedirectToRouteResult**

Redirects to a route (controller/action).

```csharp
return RedirectToAction("Index");
```

### **6. ContentResult**

Returns plain text or HTML.

```csharp
return Content("Hello World");
```

### **7. FileResult**

Returns a file for download.
Examples include:

* **FileContentResult**
* **FilePathResult**
* **FileStreamResult**

```csharp
return File(fileBytes, "application/pdf", "file.pdf");
```

### **8. HttpStatusCodeResult**

Returns an HTTP status code (e.g., 404, 401).

```csharp
return new HttpStatusCodeResult(404);
```

### **9. EmptyResult**

Returns nothing (an empty response).

```csharp
return new EmptyResult();
```

### **10. JavaScriptResult**

Returns JavaScript code.

```csharp
return JavaScript("alert('Hi');");
```

---

## 📌 Summary Table

| Return Type               | Description                |
| ------------------------- | -------------------------- |
| **ViewResult**            | Render a view              |
| **PartialViewResult**     | Render a partial view      |
| **JsonResult**            | Return JSON                |
| **RedirectResult**        | Redirect to a URL          |
| **RedirectToRouteResult** | Redirect using routing     |
| **ContentResult**         | Return simple text/HTML    |
| **FileResult**            | Return a downloadable file |
| **HttpStatusCodeResult**  | Return HTTP code           |
| **EmptyResult**           | No response                |
| **JavaScriptResult**      | Return JavaScript          |

---