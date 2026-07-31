## `DOM`: Document Object Model  
```txt
    Document            Object          Model   
        ⇓                 ⇓               ⇓
    DocType HTML        Tag/            Layout
                        Element         structure
```   
- DOM represents the context of document(MARKUP) in tree structure.
- DOM increase readibility, accessibility of document.  
- DOM is a programming interface (API) where we can access elements by ID/CLASS.
`example`:  
```html
<h1 class"demoHeader">Hello</h1>
```  
```javascript
let element = document.getElementByCLass("demoHeader");
```  