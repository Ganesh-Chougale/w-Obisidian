File search string
```
- .val()
- dot val
- value attribute
```   

## 1. input box
- `preview`  
<label for="hfMatCode">Enter Material Code</label> <br>
<input id="hfMatCode" name="hfMatCode" />
- `html`
```html
<label for="hfMatCode">Enter Material Code</label>
<input id="hfMatCode" name="hfMatCode" />
```
- `jquery`  
```js
var MaterialCode = $("#hfMatCode").val();
```  

## 2. label
- `preview`  
<label class="label label-info" id="MatCode" value="1010309944">DVD</label>
- `html`
```html
<label class="label label-info" id="MatCode" value="1010309944">DVD</label>
```  
- `jquery`  
```js
var MaterialCode = $("#MatCode").attr("value");
```  

## 3. Select Dropdown
- `preview`  
<select id="ddlMatCode" name="ddlMatCode">
    <option value="M001">Steel</option>
    <option value="M002" selected>Aluminum</option>
</select>   

- `html`  
```html
<select id="ddlMatCode" name="ddlMatCode">
    <option value="M001">Steel</option>
    <option value="M002" selected>Aluminum</option>
</select>
```  
- `jquery`  
```js
// Gets the visible text of the selected option ("Aluminum")
var MaterialName = $("#ddlMatCode option:selected").text();
// Gets the value of the selected option ("M002")
var MaterialCode = $("#ddlMatCode").val(); 
```  

## 4. HTML5 Data Attribute (Standard for non-inputs)
- `preview`  
<div id="divMatCode" data-material-code="@materialCode">@materialName</div>

- `html`

```html
<div id="divMatCode" data-material-code="@materialCode">@materialName</div>
```  
- `jquery`  
```js
// Gets the value from the data-* attribute
var MaterialCode = $("#divMatCode").data("material-code");
```  

## 5. Table Cell (TD) or Span
- `preview`  
<span id="spnMatName">@materialName</span>

- `html`

```html
<span id="spnMatName">@materialName</span>
```  
- `jquery`  

```js
// Gets the visible text inside the tags 
var MaterialName = $("#spnMatName").text();
```  

## 6. Checkbox or Radio Button
- `preview`  
<input type="checkbox" id="chkMatStatus" value="Active" checked />

- `html`
```html
<input type="checkbox" id="chkMatStatus" value="Active" checked />
```  
- `jquery`  

```js
// Checks if it is ticked (returns true or false)
var isChecked = $("#chkMatStatus").is(":checked");
// Gets the actual value ("Active") if you need it
var MaterialStatus = $("#chkMatStatus").val();
```  