```csharp
    var MaterialData = [];

    $('#TableID tbody tr').each(function () {

        var $row = $(this);

        if ($row.find('[id^=Input_CheckBox_Id]').is(':checked')) {

            var materialName = $row.find('[id^=MaterialName]').val();
            var materialCode = $row.find('[id^=MaterialCode]').val();

            if (materialCode) {
                MaterialData.push({
                    MaterialName: materialName,
                    MaterialCode: materialCode
                });
            }
        }
    });
```