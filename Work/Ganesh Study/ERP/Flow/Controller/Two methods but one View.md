we have 2 methods with same name & only one view for it.  
e.g:
`Create()`  
in controller  
one will be Get method  
```csharp
// Shows the empty form
public ActionResult Create()
{
    return View(new CityNew()); // Empty object
}
```
and 2nd will be Post method. 
```csharp
[HttpPost]
public ActionResult Create(CityNew model) // Filled object
{
    if (ModelState.IsValid)
    {
        // Save to database
        return RedirectToAction("Index");
    }
    return View(model); // Show form with errors
}
```
- we create view from this => "View/Create.cshtml" this file refers to both of those methods from controller.  

- in Get method or method with no `[Http<>]` attribute is meant to create a blank instance of the object. 
- then in `[HttpPost]` method it handles the User inputs (form) & bind them with the blank object instance we created using Get method.  

Final:  
- if the method's work is only about reading data, then one method is enough (fetch).
- if we are creating/modifying or deleting the data, then we need 2 methods. 1st method[HttpGet] for fetch then 2nd [HttpPost] for operation then save.