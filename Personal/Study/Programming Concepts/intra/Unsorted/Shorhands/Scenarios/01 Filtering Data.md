# 1. Filtering Data (Very Common)

## Common Data

```json
[
  { "id": 1, "name": "Amit",  "age": 17 },
  { "id": 2, "name": "Sara",  "age": 25 },
  { "id": 3, "name": "Meera", "age": 30 }
]
```

Used with:

* `Where`
* `Find`
* `Any`
* `All`
* `filter`
* `copy_if`

---

## C#

```csharp
users.Where(x => x.Age >= 18)
```

---

## C++

```cpp
[](const User& x)
{
    return x.age >= 18;
}
```

Used with:

```cpp
std::copy_if(...)
```

---

## Java

```java
users.stream().filter(x -> x.age >= 18)
```

---

## JavaScript

```javascript
users.filter(x => x.age >= 18)
```

---

## Python

```python
filter(lambda x: x["age"] >= 18, users)
```
