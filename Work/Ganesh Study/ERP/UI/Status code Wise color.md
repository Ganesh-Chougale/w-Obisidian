- status code wise row color
- deleted row color
- approval pending row color
- unapproved row color
- amend row color

```cs
<tr class="@(item.StatusCode == 1 ? "deleted" : (item.StatusCode == 101 ? "approvalpend" : (item.StatusCode == 2 ? "unapproved" : (item.StatusCode == 11 ? "amend" : "" ) )) )">
```  
```cs
<tr class="@(item.StatusCode == 1 ? "deleted" : item.StatusCode == 101 ? "approvalpend" : item.StatusCode == 2 ? "unapproved" : item.StatusCode == 11 ? "amend" : "")">
```


```js
`<tr class ="${(item.StatusCode == 1 ? 'deleted' : (item.StatusCode == 101 ? 'approvalpend' : (item.StatusCode == 2 ? 'unapproved' : (item.StatusCode == 11 ? 'amend' : ''))))}">`
```  
```js
`<tr class="${item.StatusCode == 1 ? 'deleted' : item.StatusCode == 101 ? 'approvalpend' : item.StatusCode == 2 ? 'unapproved' : item.StatusCode == 11 ? 'amend' : ''}">`
```