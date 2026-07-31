# 2. Selecting / Mapping Data

## Common Data

```json 
[
  { "id": 1, "name": "Amit",  "age": 17 },
  { "id": 2, "name": "Sara",  "age": 25 },
  { "id": 3, "name": "Meera", "age": 30 }
]
```

Used with:

* `Select`
* `map`
* `transform`

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

## C#

```csharp
users.Select(x => x.Name)
```

---

## C++

```cpp 
[](const User& x)
{
    return x.name;
}
```

Used with:

```cpp
std::transform(...)
```

---

## Java

```java 
users.stream().map(x -> x.name)
```

---

## JavaScript

```javascript 
users.map(x => x.name)
```

---

## Python

```python
map(lambda x: x["name"], users)
```