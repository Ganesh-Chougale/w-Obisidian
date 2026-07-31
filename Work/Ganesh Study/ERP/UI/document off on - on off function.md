File search string
```
- document on function  
- document off function  
```   

### Prone to Multi-firing
```csharp
$(document)on("click", "your_Id_Or_class_name", function () {
    
 });
```  
### Safe from Multi-firing
```csharp
$(document).off("click", ".your_Id_Or_class_name").on("click", ".your_Id_Or_class_name", function () {
    
});
```  