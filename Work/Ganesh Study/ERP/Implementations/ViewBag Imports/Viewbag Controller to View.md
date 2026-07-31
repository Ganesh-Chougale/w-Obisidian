#### Passing Data via Controller to View using ViewBag
#### 1. Single Record
- inside controller
```csharp
    Bo objBo = Bo.MethodName();
    ViewData["VariableFromController"] = objBo;
```  
- inside view   
```csharp
@{
    Bo variableAtView = ViewData["VariableFromController"] as Bo;
}
```  
#### 2. List
- inside controller
```csharp
    List<Bo> objBo = Bo.MethodName();
    ViewData["VariableFromController"] = objBo;
```  
- inside view   
```csharp
@{
    List<Bo> variableAtView = ViewData["VariableFromController"] as List<Bo>;
}
```