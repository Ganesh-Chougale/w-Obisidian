### Scenarios to use lambda expression  
- using C# for demonstration  

* Queries
* callbacks
* event handling
* filtering
* sorting
* projections/mapping
* delegates
* async code
* functional-style programming

---

# 1. Filtering Data (Very Common)

Used with:

* `Where`
* `Find`
* `Any`
* `All`

Example:

```csharp
var adults = users.Where(x => x.Age >= 18);
```

Meaning:

```text
Take only users whose age >= 18
```

This is probably the MOST common lambda usage in C#.

---

# 2. Selecting / Mapping Data

Used with:

* `Select`

Example:

```csharp
var names = users.Select(x => x.Name);
```

Transforms:

```text
User object -> Name
```

Very common in:

* APIs
* DTO mapping
* projections
* database queries

---

# 3. Sorting

Used with:

* `OrderBy`
* `OrderByDescending`
* `ThenBy`

Example:

```csharp
var sorted = users.OrderBy(x => x.Name);
```

---

# 4. Checking Conditions

Used with:

* `Any`
* `All`
* `Contains`

Example:

```csharp
bool hasAdmin = users.Any(x => x.Role == "Admin");
```

Meaning:

```text
Does at least one user match?
```

---

# 5. Event Handlers

Very common in UI & desktop apps.

Old style:

```csharp
button.Click += Button_Click;
```

Lambda style:

```csharp
button.Click += (sender, e) =>
{
    Console.WriteLine("Clicked");
};
```

Common in:

* WPF
* Windows Forms
* ASP.NET

---

# 6. Callbacks

Passing logic into another method.

Example:

```csharp
ProcessData(x => x.IsValid);
```

You are passing behavior/function as data.

---

# 7. List Operations

Example:

```csharp
numbers.ForEach(x => Console.WriteLine(x));
```

---

# 8. Dependency Injection / Service Registration

Very common in modern backend apps.

Example:

```csharp 
services.AddSingleton(x =>
{
    return new MyService();
});
```

Common in:

* ASP.NET Core

---

# 9. Task / Async Operations

Example:

```csharp 
Task.Run(() =>
{
    DoWork();
});
```

---

# 10. Expression Trees (Advanced)

Used heavily in:

* ORM frameworks
* query builders

Example:

```csharp 
Expression<Func<User, bool>> expr = x => x.Age > 18;
```

Very important in:

* Entity Framework

Because EF converts lambdas into SQL.

---

# 11. Predicate-Based APIs

Example:

```csharp 
users.RemoveAll(x => x.IsDeleted);
```

Lambda acts as condition logic.

---

# 12. Dictionary / Grouping Operations

Example:

```csharp 
var grouped = users.GroupBy(x => x.Country);
```

---

# 13. Functional Pipelines

Chain operations cleanly.

Example:

```csharp 
var result = users
    .Where(x => x.IsActive)
    .OrderBy(x => x.Name)
    .Select(x => x.Email);
```

This is a huge real-world usage.

---

# Why Lambdas Became So Important

Before lambdas:

```csharp
public bool IsAdult(User x)
{
    return x.Age >= 18;
}

var adults = users.Where(IsAdult);
```

After lambdas:

```csharp 
var adults = users.Where(x => x.Age >= 18);
```

Cleaner + inline + readable.

---

# The Core Pattern

Most lambda usage in C# is:

```csharp 
collection.Operation(x => something)
```

Examples:

```csharp 
Where(x => ...)
Select(x => ...)
Any(x => ...)
OrderBy(x => ...)
```

---

# Most Important Real-World Uses

If you are documenting practical usage, these are the BIG ones:

| Scenario             | Common Methods       |
| -------------------- | -------------------- |
| Filtering            | `Where`              |
| Mapping              | `Select`             |
| Sorting              | `OrderBy`            |
| Checking existence   | `Any`                |
| Grouping             | `GroupBy`            |
| Event handlers       | `Click +=`           |
| Async work           | `Task.Run`           |
| ORM querying         | `Expression<Func<>>` |
| Dependency Injection | `AddSingleton`       |

---

# Easy Mental Model

Lambda function means:

```text
"Pass small logic inline without creating separate method"
```

Example:

```csharp 
x => x.Price > 100
```

means:

```text
"For each x, check if Price > 100"
```