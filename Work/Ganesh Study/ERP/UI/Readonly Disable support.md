| HTML Element              | `readonly` Support | `disabled` Support | Notes                            |
| ------------------------- | ------------------ | ------------------ | -------------------------------- |
| `<input type="text">`     | ✅ Yes              | ✅ Yes              | Text can’t be edited if readonly |
| `<input type="number">`   | ✅ Yes              | ✅ Yes              | Same as text                     |
| `<input type="email">`    | ✅ Yes              | ✅ Yes              |                                  |
| `<input type="password">` | ✅ Yes              | ✅ Yes              |                                  |
| `<input type="date">`     | ✅ Yes              | ✅ Yes              | Browser dependent UI             |
| `<input type="checkbox">` | ❌ No               | ✅ Yes              | Must use disabled                |
| `<input type="radio">`    | ❌ No               | ✅ Yes              | Must use disabled                |
| `<input type="file">`     | ❌ No               | ✅ Yes              |                                  |
| `<input type="range">`    | ❌ No               | ✅ Yes              |                                  |
| `<textarea>`              | ✅ Yes              | ✅ Yes              |                                  |
| `<select>`                | ❌ No               | ✅ Yes              | Your case                        |
| `<button>`                | ❌ No               | ✅ Yes              |                                  |
| `<fieldset>`              | ❌ No               | ✅ Yes              | Disables all children            |

---

### Key Difference

| Attribute  | Behavior                                                          |
| ---------- | ----------------------------------------------------------------- |
| `readonly` | User **cannot modify value**, but **value still submits in form** |
| `disabled` | User **cannot interact**, and **value is NOT submitted in form**  |

---

### Example

#### Readonly input

```html
<input type="text" value="Hello" readonly>
```

User **cannot edit**, but form **will send "Hello"**.

---

#### Disabled input

```html
<input type="text" value="Hello" disabled>
```

User **cannot edit**, and form **will NOT send value**.

---

### For `<select>` (your case)

Only option:

```html
<select disabled>
```

But if you need **readonly behavior**, use:

```html
<select disabled>
</select>

<input type="hidden" name="ReadingTypeP@(row_num1)" value="@itm.ReadingType">
```

This way:

* dropdown looks disabled
* value **still submits**