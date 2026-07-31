# 3. Sorting

## Common Data

```json 
[
  { "id": 1, "name": "Meera", "age": 30 },
  { "id": 2, "name": "Amit",  "age": 17 },
  { "id": 3, "name": "Sara",  "age": 25 }
]
```

Used with:

* `OrderBy`
* `OrderByDescending`
* `ThenBy`
* `sort`
* `sorted`

Sorts by:

```text 
User.Name
```

---

## C#

```csharp 
users.OrderBy(x => x.Name)
```

---

## C++

```cpp 
[](const User& a, const User& b)
{
    return a.name < b.name;
}
```

Used with:

```cpp 
std::sort(...)
```

---

## Java

```java 
users.sort((a, b) -> a.name.compareTo(b.name))
```

---

## JavaScript

```javascript 
users.sort((a, b) => a.name.localeCompare(b.name))
```

---

## Python

```python 
sorted(users, key=lambda x: x["name"])
```