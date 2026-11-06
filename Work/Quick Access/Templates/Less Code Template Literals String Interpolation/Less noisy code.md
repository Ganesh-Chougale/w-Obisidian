i will give you the 2 codeblocks of same logic, see it. the main goal is 
1. code should be easy to understand
2. has less excessive fuss, it should be less noisy code
3. works exactly 101% same as old.
- old snippet
```js
function calculateAmt(obj) {
    var sum = 0.00;
    var id = '#' + obj.id
    var NQty = $(id).parent().parent().parent().find("[id^=Qty]").val();
    var NRate = $(id).parent().parent().parent().find("[id^=Rate]").val();
    var NPerRate = $(id).parent().parent().parent().find("[id^=PerRate]").val();
    var NDisc = $(id).parent().parent().parent().find("[id^=Disc]").val();
    var CastWt = $(id).parent().parent().parent().find("[id^=CastingWt]").val();
    var Total = 0.00;
    var DiscRate = 0.00;
    var PerKg = 0;

    if ($(id).parent().parent().parent().find("[id^=IsPerKg]").is(":checked")) {
        PerKg = 1;
    }

    if (parseFloat(NPerRate) > 0) {
        NRate = parseFloat(NRate) / parseFloat(NPerRate);
    }

    if (parseInt(PerKg) == 1) {
        NRate = parseFloat(NRate) * parseFloat(CastWt);
    }

    Total = parseFloat(NRate) * parseFloat(NQty);

    if (NDisc != "0") {
        DiscRate = parseFloat(NRate) - ((NRate / 100.00) * NDisc).toFixed(2);
        var disc = (parseFloat(Total) * parseFloat(NDisc)) / 100;
        Total = parseFloat(Total - disc);
    }
    else {
        DiscRate = NRate;
    }

    $(id).parent().parent().parent().find("[id^=Amount]").val(Total.toFixed(2));
    $(id).parent().parent().parent().find("[id^=DisRate]").val(DiscRate.toFixed(2));
    calculateSum();
}
```  


- optimed writting (which 101% same as old snippet)
```js
function calculateAmt(obj) {
    var $row = $(obj).closest('tr');

    var NQty = parseFloat($row.find("[id^=Qty]").val()) || 0;
    var NRate = parseFloat($row.find("[id^=Rate]").val()) || 0;
    var NPerRate = parseFloat($row.find("[id^=PerRate]").val()) || 0;
    var NDisc = parseFloat($row.find("[id^=Disc]").val()) || 0;
    var CastWt = parseFloat($row.find("[id^=CastingWt]").val()) || 0;
    var isPerKg = $row.find("[id^=IsPerKg]").is(":checked");

    var total = 0.00;
    var discRate = 0.00;

    if (NPerRate > 0) {
        NRate = NRate / NPerRate;
    }

    if (isPerKg) {
        NRate = NRate * CastWt;
    }

    total = NRate * NQty;

    if (NDisc !== 0) {
        discRate = NRate - parseFloat(((NRate / 100.00) * NDisc).toFixed(2));
        var disc = (total * NDisc) / 100;
        total = total - disc;
    } else {
        discRate = NRate;
    }

    $row.find("[id^=Amount]").val(total.toFixed(2));
    $row.find("[id^=DisRate]").val(discRate.toFixed(2));

    calculateSum();
}
```  

now i will give you my block, work on this
```csharp

```  
& after that tell me 
A. tell me my old & your snippet both are same or not in yes or no
B. if i replace it, it will work 100% same as old or not, because i want that.