File search string
```
- alignment rules
```   
UI alignment rules
## 1. `Table Alignment rules`
- `Name` : Left Align
- `Numbers`: Right Align
- `Date/Time`, `Short Names`, `Short Number` : Center Align

## 2. `Input Alignment rules`
- `Number` : Right Align  

- inline attributes
```css
style="text-align:left;"
style="text-align:center;"
style="text-align:right;"
``` 
- internal css
```css
text-align: left;
text-align: center;
text-align: right;
```  
- bootstrap legacy attributes
```css
class="text-left"
class="text-center"
class="text-right"
```  
- bootstrap 5 attributes
```css
class="text-start"
class="text-center"
class="text-end"
```  

#### Left Push
```css
#TableId .left-push{
    padding-left:15px !important;
}
```  
```js
class="left-push"
```  