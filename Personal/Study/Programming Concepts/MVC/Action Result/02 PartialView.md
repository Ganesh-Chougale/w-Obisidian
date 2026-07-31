##  `PartialViewResult` / `PartialView()`   
PartialViewResult is a return type used to render a Partial View (.cshtml) instead of a full view.  
A partial view is a reusable piece of UI, typically a small portion of a page.  
`Example` partials:
- _UserCard.cshtml
- _ProductList.cshtml
- _Menu.cshtml
- _Footer.cshtml  
A partial view does not render layout pages (like _Layout.cshtml by default).  

### Basic Example  
- Controller
```csharp
public ActionResult UserCard()
{
    var user = db.Users.Find(1);
    return PartialView("_UserCard", user);
}
```  
- UI: Partial View (_UserCard.cshtml)
```csharp
@model User

<div class="user-card">
    <h3>@Model.Name</h3>
    <p>Email: @Model.Email</p>
</div>
```  

### Key concept  
1. Only renders `fragment/portion` no full-page or layout.  
2. Used for reusable UI chunks
ideal for
- Lists
- Cards
- Widgets
- Dashboard blocks
- Repeating components  
3. Used in Ajax calls
Common with JQuery or fetch  
```javascript
$("#container").load("/User/UserCard");
```  
4. Can receive a Model  
Just like a normal view:
```javascript
return PartialView("_Product", product);
```  

### Passing data in partial view  
1. Using Model
```javascript
return PartialView("_Product", product);
```  
2. Using ViewBag
```javascript
ViewBag.Title = "User Info";
return PartialView();
```  
3. Using ViewData
```javascript
ViewData["Flag"] = true;
return PartialView();
```  
### Rendering a Partial Inside a View
Method 1: @Html.Partial
```javascript
@Html.Partial("_UserCard", Model.User)
```  
Method 2: @Html.RenderPartial
```javascript
@{ Html.RenderPartial("_UserCard", Model.User); }
```  
Method 3: @await Html.PartialAsync (MVC Core)
```javascript
@await Html.PartialAsync("_UserCard", Model.User)
```  

### ❌ what partial view is not
- json return
- redirect 
- file return   