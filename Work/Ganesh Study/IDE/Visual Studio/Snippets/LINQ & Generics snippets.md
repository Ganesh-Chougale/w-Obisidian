# Visual Studio snippets  
## LINQ & Generics snippets

1. Creates an iterator block definition that supports lazy loading.
`iterator` + `tab` :
```csharp
public System.Collections.Generic.IEnumerator<object> GetEnumerator()
{
    throw new System.NotImplementedException();
    yield return null;
}
```  

2. Creates a custom implementation of an enumeration block.
`yield` + `tab` :
```csharp
yield return null;
```  