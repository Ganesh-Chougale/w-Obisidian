- sorting in business
- order by in business  

## Returns New list
### Ascnending
```csharp
sortedList = myList.OrderBy(x => x.BoNo).ToList();
```  

### Descenending
```csharp
sortedList = myList.OrderByDescending(x => x.BoNo).ToList();
```  

## Without creating new list sorting existing list (Faster, better, optimized)

### Ascnending
```csharp
myList.Sort((x, y) => x.BoNo.CompareTo(y.BoNo));
```  
### Descenending
```csharp
myList.Sort((x, y) => y.BoNo.CompareTo(x.BoNo));
```  

NOTE: sorting in query is always better than sorting in business layer or via programming.  