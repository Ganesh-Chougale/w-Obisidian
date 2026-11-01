```js
$.each(data, function (i, item) {
    var row = `
        <tr>

            <td class ="Column1 ">
                ${item.}
                <input type="hidden" class ="hf" value="${item.}" />
            </td>

            <td class ="Column2 ">
                ${item.}
                <input type="hidden" class ="hf" value="${item.}" />
            </td>

            <td class ="Column3 ">
                ${item.}
                <input type="hidden" class ="hf" value="${item.}" />
            </td>`

        if () {
            row = row + `

                    <td class ="Column4 ">
                        ${item.}
                        <input type="hidden" class ="hf" value="${item.}" />
                    </td>

                    <td class ="Column5 ">
                        ${item.}
                        <input type="hidden" class ="hf" value="${item.}" />
                    </td>

                `;
        } else {
            row = row + `

                    <td class ="Column4 ">
                        ${item.}
                        <input type="hidden" class ="hf" value="${item.}" />
                    </td>

                    <td class ="Column5 ">
                        ${item.}
                        <input type="hidden" class ="hf" value="${item.}" />
                    </td>

                `;
            }

        row = row + `
            <td class ="Column6 ">
                ${item.}
                <input type="hidden" class ="hf" value="${item.}" />
            </td>
    `;
    $("#tblPendingSchedule > tbody").append(row);
})
```  