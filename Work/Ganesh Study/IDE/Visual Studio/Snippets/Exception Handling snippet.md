# Visual Studio snippets  
## Exception Handling snippet

1. Creates a basic error-catching block.
`try` + `tab` :
```csharp
try
{

}catch (Exception)
{

throw;
}
```  

2. Creates an error-catching block with a guaranteed cleanup block.
`tryf` + `tab` :
```csharp
try
{

}finally
{

}
```  

3. Creates an exception class derived from the base Exception class.
`exception` + `tab` :
```csharp
[Serializable]public class MyException : Exception
{
    public MyException() { }
    public MyException(string message) : base(message) { }
    public MyException(string message, Exception inner) : base(message, inner) { }
        protected MyException(
                            System.Runtime.Serialization.SerializationInfo info,
                            System.Runtime.Serialization.StreamingContext context
        ) : base(info, context) { }
}
```