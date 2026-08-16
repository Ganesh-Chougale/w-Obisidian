```csharp
<input style="width:100%; text-align:right;" oninput="validateDecimalInput(this)" type="text" class ="" value="">
```  
```js
function validateDecimalInput(obj) {
    let value = obj.value;
    value = value.replace(/[^0-9.]/g, '');
    const parts = value.split('.');
    if (parts.length > 2) {
        value = parts[0] + '.' + parts[1];
    }
    obj.value = value;
}
```  