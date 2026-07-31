# Visual Studio snippets  
## Class Structure & Members snippets   
- Class Structure & Members
- property snippets  
1. default prop snippet.  
`prop` + `tab` :
```csharp
public int MyProperty { get; set; }
```  

2. Creates a property with a hidden backing field.
`propfull` + `tab` : 
```csharp
private int myVar;

public int MyProperty
{
    get { return myVar; }
    set { myVar = value; }
}
```  

3. Creates a public property with a private setter.
`propg` + `tab` : 
```csharp
public int MyProperty { get; private set; }
```  

4. Creates a constructor for your current class.
`ctor` + `tab` : 
```csharp
public MyClass()
{

}
```  

5. Creates a template for a thread-safe Singleton instance.
`singleton` + `tab` :
```csharp
public sealed class Singleton
{
    private static readonly Singleton instance = new Singleton();

    private Singleton() { }

    public static Singleton Instance
    {
        get { return instance; }
    }
}
```  