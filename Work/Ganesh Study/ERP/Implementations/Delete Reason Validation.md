## Delete Reason Validation
File search string
```
- Delete reason validator
- Delete reason validator
```   
```csharp
// inside doc.ready after form declaration

        // var form = $("#FinalInspectionEntry-form");

form.validate({
    rules: {
        DeleteReason: {
            required: true
        }
    },
    messages: {
        DeleteReason: {
            required: 'Please enter delete reason'
        }
    },
    errorPlacement: function (error, element) {
        error.insertAfter(element.parent());
    }
});
```  

```csharp
if(form.valid()){
    // data push
    // ajax call
}
```  