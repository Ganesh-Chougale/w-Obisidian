# 4. Checking Conditions

## Common Data

```json 
[
  { "id": 1, "name": "Amit",  "role": "User" },
  { "id": 2, "name": "Sara",  "role": "Admin" },
  { "id": 3, "name": "Meera", "role": "User" }
]
```

Used with:

* `Any`
* `All`
* `Contains`
* `some`
* `every`
* `any`
* `all`

Checks:

```text 
Does at least one user have role = Admin
```

---

## C#

```csharp
users.Any(x => x.Role == "Admin")
```

---

## C++

```cpp 
[](const User& x)
{
    return x.role == "Admin";
}
```

Used with:

```cpp 
std::any_of(...)
```

---

## Java

```java 
users.stream().anyMatch(x -> x.role.equals("Admin"))
```

---

## JavaScript

```javascript 
users.some(x => x.role === "Admin")
```

---

## Python

```python
any(x["role"] == "Admin" for x in users)
```
