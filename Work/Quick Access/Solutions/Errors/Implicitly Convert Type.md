## Implicitly convert error:
Mismatching of Class & instance type.
Example:  
```csharp
Abc abc = new Xyz();
```  
Correct:
1. either correct instance  
```csharp
Abc abc = new Abc();
```  
2. or correct object  
```csharp
Xyz xyz = new Xyz();
```  