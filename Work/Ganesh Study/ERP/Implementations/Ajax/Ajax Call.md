### 1) Parameters in URL (Query String)

```javascript
var urlString = "ControllerName/MethodName"
                + "?Paramter1Name=" + $("#numinput").val()
                + "&Paramter2Name=" + $("#ddlpmn").val();
$.ajax({
    url: urlString,
    method: 'GET',
    // method: 'POST', depends on call behaviour
    success: function(response) {
        // Success action
    },
    error: function(err) {
        // Error action
    }
});
```

---

### 2) Parameters in `data` key
#### 2.A: using variable (recomanded)
advantage: we can reuse variable, easy to debug code
```javascript
var numInput1 = $("#numinput1").val();
var numInput2 = $("#numinput2").val();

$.ajax({
    url: '/api/getUser',
    method: 'GET',
    // method: 'POST', depends on call behaviour
    data: {
        Paramter1Name: numInput1,
        Paramter2Name: numInput2
    },
    success: function(response) {
        // Success action
    },
    error: function(err) {
        // Error action
    }
});
```
#### 2.B: without using variables  
```javascript
$.ajax({
    url: '/api/getUser',
    method: 'GET',
    // method: 'POST', depends on call behaviour
    data: {
        Paramter1Name: $("#numinput1").val(),
        Paramter2Name: $("#numinput2").val()
    },
    success: function(response) {
        // Success action
    },
    error: function(err) {
        // Error action
    }
});
```

---