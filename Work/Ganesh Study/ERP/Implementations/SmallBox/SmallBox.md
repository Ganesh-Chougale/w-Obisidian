File search string
```
- custom warning
- custome warning
- custom smallbox warning
- custome smallbox warning
```   

```cs
$.smallBox({
    title: "Date",
    content: "Invalid date format!",
    color: "#f71000",
    timeout: 3000,
    //icon: "fa fa-bell swing animated"
});
```


### Syntax
```js
function customWarning(p_focus_id, p_title, p_description, p_color, p_time_in_ms){

    $(p_focus_id).focus();


    $.smallBox({
    title: p_title,
    content: p_description,
    color: p_color,
    timeout: p_time_in_ms,
    //icon: "fa fa-bell swing animated"
    });
}
// customWarning(p_focus_id, p_title, p_description, p_color, p_time_in_ms)
// customWarning(p_focus_id, p_title, p_description, "#f71000", 4000)
```  
### Function Call Example
```js
customWarning("#someId", "Date", "Invalid date format!", "#f71000", 3000);
```  
