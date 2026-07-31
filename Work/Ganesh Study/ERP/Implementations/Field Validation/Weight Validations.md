
## 1. HTML Markup (for reference)

```html
<!-- Casting Weight Field -->
<div class="col-md-2">
    <label class="label">Casting Wt</label>
</div>
<div class="col-md-1">
    <label class="input">
        <input type="text" class="number text-right input-xs" name="CastingWt" id="CastingWt" placeholder="Casting Wt" maxlength="10" />
    </label>
</div>

<!-- Finish Weight Field -->
<div class="col-md-2">
    <label class="label">Finish Wt</label>
</div>
<div class="col-md-1">
    <label class="input">
        <input type="text" class="number text-right input-xs" name="FinishWt" id="FinishWt" placeholder="Finish Wt" maxlength="10" />
    </label>
</div>
```

## 2. Add Custom Validation Methods

```javascript
// Add this right after your document.ready function

// 1. greater than zero validation
$.validator.addMethod('greaterThanZero', function(value, element) {
    return this.optional(element) || (parseFloat(value) > 0);
}, 'Value must be greater than zero');


// 1. greater than casting weight validation
$.validator.addMethod('greaterThanCastingWt', function(value, element) {
    var castingWt = parseFloat($('#CastingWt').val()) || 0;
    return parseFloat(value) > castingWt;
}, 'Finish weight must be greater than casting weight');
```

## 3. Initialize Form Validation

```javascript
$("#FinishMaterial-form").validate({
    // Validation rules
    rules: {
        // Other form fields...
        CastingWt: {
            required: true,
            number: true,
            greaterThanZero: true
        },
        FinishWt: {
            required: true,
            number: true,
            greaterThanZero: true,
            greaterThanCastingWt: true
        }
    },
    
    // Custom error messages
    messages: {
        // Other field messages...
        CastingWt: {
            required: 'Casting weight is required',
            number: 'Please enter a valid number',
            greaterThanZero: 'Casting weight must be greater than zero'
        },
        FinishWt: {
            required: 'Finish weight is required',
            number: 'Please enter a valid number',
            greaterThanZero: 'Finish weight must be greater than zero',
            greaterThanCastingWt: 'Finish weight must be greater than casting weight'
        }
    },
    
    // Error placement
    errorPlacement: function(error, element) {
        error.insertAfter(element.parent());
    },
    
    // Re-validate FinishWt when CastingWt changes
    onkeyup: function(element) {
        if ($(element).attr('name') === 'CastingWt') {
            $('#FinishWt').valid();
        }
    }
});
```


## 4. Required Dependencies

Make sure these are included in your page:
```html<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- jQuery Validation Plugin -->
<script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.3/dist/jquery.validate.min.js"></script>
```

## 5. Validation Behavior

1. **Casting Weight**:
   - Required field
   - Must be a valid number
   - Must be greater than zero

2. **Finish Weight**:
   - Required field
   - Must be a valid number
   - Must be greater than zero
   - Must be greater than Casting Weight

3. **Real-time Validation**:
   - Validates as user types
   - Finish Weight re-validates when Casting Weight changes
   - Shows error messages below the respective fields

## 6. Styling (Optional)

Add this CSS to make error messages more visible:
```css
label.error {
    color: #a94442;
    font-size: 0.85em;
    margin-top: 5px;
    display: block;
}
```