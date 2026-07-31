File search string
```
- input validation
- text input number validation
- text input decimal validation
- number input validation
```   
### `Markup`  
```html
<!-- Put this as attribute -->
oninput='validateDecimalInput(this)'
```  
`E.g`:  
```html
<input type="text" class="form-control" id="" oninput='validateDecimalInput(this)' placeholder="Enter Weight" />
```  

### `Script`  
```javascript

// below document.ready function (outside)

    function validateDecimalInput(obj) {
        // Remove all characters except digits and the first decimal
        let value = obj.value;
        // Remove any characters that aren't digits or dot
        value = value.replace(/[^0-9.]/g, '');
        // Allow only one decimal point
        const parts = value.split('.');
        if (parts.length > 2) {
            value = parts[0] + '.' + parts[1]; // remove additional decimals
        }
        obj.value = value;
    }
```  