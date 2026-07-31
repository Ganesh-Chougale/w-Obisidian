# **Model**
unlike `ViewModel` or `ViewBag` which are not strongly typed   
`Model` is strongly typed  
it is enouraged because it is Compile-time checked & designed for real application data.  
```csharp
var model = new ProductVM { Id = 1, Name = "Laptop", Price = 1200 };
return View(model);
```  
Strongly typed in View  
```csharp
@model ProductVM

<h2>@Model.Name</h2>        // Laptop
<p>Price: @Model.Price</p>  // 1200
```  

### Low error ratio 
- Model is not dynamic → properties must exist in the model class.
- You cannot invent new properties on the fly like ViewBag.

### How it differs from `ViewData` or `ViewBag`  
- Strongly typed
- Meant for big data transfer
- Not short-lived, Model is used for actual data structures, usually representing the real data in your system
- Low error ratio
- Best for Forms, data, lists etc.

# Exmple
### Model (Data Class)
- `Fruit.cs`  
```csharp
public class Fruit
{
    public string Title { get; set; }
    public int Quantity { get; set; }
}
```  
### Controller
- `MarketController.cs`  
```csharp
public class MarketController : Controller
{
    public IActionResult Shop()
    {
        var apple = new Fruit
        {
            Title = "Apple",
            Quantity = 5
        };

        return View(apple);  // go to main view
    }

    public IActionResult FruitBox(Fruit fruit)
    {
        return PartialView("_FruitCard", fruit);
    }
}
```  
### Main View
- `Shop.cshtml`  
```html
@model Fruit

<h2>Welcome to the Shop</h2>

@Html.Partial("_FruitCard", Model)
```  
### Partial View
- `_FruitCard.cshtml`
```html
@model Fruit

<div>
    <h3>@Model.Title</h3>
    <p>Available: @Model.Quantity</p>
</div>
```  
resulting this  
```html
<div>
    <h3>Apple</h3>
    <p>Available: 5</p>
</div>
```  