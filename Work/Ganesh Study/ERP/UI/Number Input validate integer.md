```csharp
<input style="width:100%; text-align:right;" oninput="validateIntegerInput(this)" type="text" class ="" value="">
```  
```js
function validateIntegerInput(obj) {
    let value = obj.value;
    value = value.replace(/[^0-9]/g, '');
    obj.value = value;
}
```  