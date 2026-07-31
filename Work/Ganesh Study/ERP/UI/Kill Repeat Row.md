### Kill Repeat row
- data getting here need to be sorted otherwise this wont work
- keep in mind of datatype of value
```csharp
<tbody>
    @{
        long? previousTrnNo = null;
    }
    @foreach (var item in Model)
    {
        <tr>
            <td class="text-center">
                @if (previousTrnNo != item.TrnNo)
                {
                    <a href="/Production/ReworkFinalInspection/Create?TrnNo=@item.TrnNo"
                        data-ajax-update="#mainContent" data-ajax-mode="replace" data-ajax-method="GET" data-ajax="true">
                        @item.ShortTrnNo
                    </a>
                }
            </td>
            <td class="text-center">@item.FormattedDate</td>
            <td >@item.MaterialName</td>
            <td class="text-center">@item.ReworkQuantity</td>
        </tr>
        previousTrnNo = item.TrnNo;
    }
</tbody>
```  