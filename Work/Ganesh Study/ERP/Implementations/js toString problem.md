```csharp
var materialCodeStr = matcode.toString();
```  
Error: Uncaught TypeError: can't access property "toString", matcode is undefined

solution:  
```csharp
var materialCodeStr = String(matcode);
```  