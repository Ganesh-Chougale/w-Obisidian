File search string
```
- Trn date validation
- Trn date input validation
- date input validation
```   

```csharp
<form method="POST" id="CreateToolStockConversion-form" class="smart-form client-form">
    
        <fieldset>


            <section class="col-md-12">

                <div class="col-md-7">
                    <div class="col-md-2">
                        <label class="label">Date</label>
                    </div>
                    <div class="col-md-3">
                        <div class="input-group">
                            <label class="input">

                                <input class="form-control" id="TranDate" name="TranDate" type="text" value="@curr_date" readonly="readonly">
                                <b class="tooltip tooltip-top-right">
                                    <i class="fa fa-warning txt-color-teal"></i>
                                    Please Select Date
                                </b>
                            </label>
                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                        </div>
                    </div>
                </div>

            </section>

            
        </fieldset>


</form>

```  


```js
    $(document).ready(function () {

        var form = $("#CreateToolStockConversion-form");

        form.validate({
            rules: {
                TranDate: {
                    required: true
                }
            },
            messages: {
                TranDate: {
                    required: 'Please enter date.'
                }
            },
            errorPlacement: function (error, element) {
                error.insertAfter(element.parent());
            }
        });

        $("#TranDate").datepicker({
            defaultDate: "+1w",
            changeMonth: true,
            numberOfMonths: 1,
            dateFormat: 'dd/mm/yy',
            prevText: '<i class="fa fa-chevron-left"></i>',
            nextText: '<i class="fa fa-chevron-right"></i>',
            minDate: '-' + @trandays + 'd',
            maxDate: new Date()
        });

        $(".conversionQty").on("keyup change", function () {
            var conversionQty = parseFloat($(this).val()) || 0;
            var finishWt = parseFloat($("#FinishWtval").text()) || 0;
            var scrapWt = conversionQty * finishWt;

            $(this)
                .closest("tr")
                .find(".scrapWt")
                .val(scrapWt.toFixed(3));
        });

    });
```  