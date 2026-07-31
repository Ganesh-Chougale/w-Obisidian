# Sales Order - Amort Rate and Project Validation Documentation

## 1. HTML Markup (for reference)

The Amort Rate input field is dynamically generated with this markup:

```html
<div class="col-md-3">
    <label>Amort. Rate:</label>
</div>
<div class="col-md-2">
    <label class="input">
        <input class="number input-xs" 
               onblur="javascript: assignBasicAmount()" 
               id="AmrtRate{rowNumber}" 
               maxlength="6" 
               value="0" 
               type="text">
        <b class="tooltip tooltip-top-right">
            <i class="fa fa-warning txt-color-teal"></i>Input Amort. Rate
        </b>
    </label>
</div>
```

The Against Project checkbox is defined as:

```html
<label>
    <input type="checkbox" 
           id="IsAgnProject" 
           name="IsAgnProject" 
           onchange="$('#divProject').toggle();$('#divFinOrderPrj').toggle()" 
           class="checkbox style-0">
    <span class="label">Against Project</span>
</label>
```

## 2. JavaScript Implementation

### 2.1 Amort Rate Validation

```javascript
// Function to validate Amort Rate
function validateAmortRates() {
    var isValid = true;
    $('input[id^="AmrtRate"]').each(function() {
        var rate = parseFloat($(this).val()) || 0;
        if (rate <= 0) {
            isValid = false;
            $(this).focus();
            $.smallBox({
                title: "Validation Error",
                content: "Amort Rate must be greater than zero.",
                color: "#C46A69",
                timeout: 3000,
                icon: "fa fa-warning"
            });
            return false; // Exit the each loop
        }
    });
    return isValid;
}
```

### 2.2 Against Project Validation (Commented Out)

```javascript
/* Uncomment this block if you want to validate Against Project checkbox
function validateAgainstProject() {
    if ($('#IsAgnProject').is(':checked') && $('#ddlProject').val() == '') {
        $.smallBox({
            title: "Validation Error",
            content: "Please select a project when 'Against Project' is checked.",
            color: "#C46A69",
            timeout: 3000,
            icon: "fa fa-warning"
        });
        $('#ddlProject').focus();
        return false;
    }
    return true;
}
*/
```

### 2.3 Save Button Click Handler

```javascript
$('#save').click(function (e) {
    if (form.valid()) {
        // Validate Amort Rate
        if (!validateAmortRates()) {
            return false;
        }
        
        // Uncomment the below line if you want to validate Against Project
        // if (!validateAgainstProject()) return false;

        // Rest of the save logic...
    }
});
```

## 3. Implementation Notes

1. **Amort Rate Validation**:
   - Validates that all Amort Rate fields have a value greater than zero
   - Shows an error message if validation fails
   - Prevents form submission if validation fails

2. **Against Project Validation**:
   - Currently commented out as per requirements
   - Validates that a project is selected when "Against Project" is checked
   - Shows an error message if validation fails
   - Prevents form submission if validation fails

3. **Dependencies**:
   - Requires jQuery
   - Uses `smallBox` for notifications (part of SmartAdmin template)
   - Assumes the presence of form validation setup

## 4. How to Enable Against Project Validation

To enable the Against Project validation, uncomment the following code:

1. The `validateAgainstProject()` function
2. The validation call in the save handler: `if (!validateAgainstProject()) return false;`

## 5. Styling

The validation messages use the following CSS classes (from SmartAdmin template):
- `.smallBox` - Notification container
- `.fa-warning` - Warning icon
- `#C46A69` - Error color (red)

## 6. Error Handling

- **Amort Rate**:
  - Shows error if rate is 0 or negative
  - Focuses on the first invalid field
  - Prevents form submission

- **Against Project**:
  - Shows error if checked but no project selected
  - Focuses on the project dropdown
  - Prevents form submission