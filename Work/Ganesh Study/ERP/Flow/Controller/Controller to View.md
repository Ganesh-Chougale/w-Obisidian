1. **Controller Method** (e.g., `XyzController.cs`):
   ```csharp
   public ActionResult Create() 
   {
       return PartialView();  // Looks for Create.cshtml in Views/Xyz/
   }
   ```

2. **View Location**:
   - **Controller**: `Controllers/XyzController.cs`
   - **View**: `Views/Xyz/Create.cshtml`
   - The folder name `Xyz` comes from the controller name minus "Controller"

3. **How It Works**:
   - When `return PartialView();` is called, ASP.NET MVC:
     1. Takes the controller name (`XyzController` → `Xyz`)
     2. Takes the action name `Create()`
     3. Looks for `Views/Xyz/Create.cshtml`
     4. Renders just that partial view's HTML (no layout)

4. **In Your Example**:
   - **Controller**: [CityNewController]
   - **Action**: [Create()]
   - **View**: [Views/CityNew/Create.cshtml]
   - **URL**: `/CityNew/Create` (by convention)

This convention keeps your code clean and maintainable without needing explicit configuration for each view. The framework handles the mapping automatically based on these standard naming patterns.