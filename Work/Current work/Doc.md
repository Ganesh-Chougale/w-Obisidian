the flow is like this.

1. user comes to create page => choose his criteria from "PACKING BOM HEADER" area
2. then in "PACKING MATERIALS (BOM DETAILS)" area, he types the material name => ui suggests the full info => user click on it => click on "Add material"
3. after that a row will be added based on selected material. => user inputs the Qty/Box (decimal input) => then saves

this was old implementation.

now we added a new feature which allows user to attatch the supplier to the material. let me tell you the current implementation.
1. user clicks on supplier cell's "Add" button => it opens the popup. this popup show's current row's material name & material type.
2. then a supplier dropdown. user will click on the supplier dropdown.
3. user selects the supplier from supplier dropdown => & click on "add supplier" button => it will add row to the below table with these columns
id="Supplier_Table"
|Sr No|Supplier Name|Supplier Percentage(input decimal)|

then when table is finish
total of Supplier Percentage
"ok" button

4. on ok button customWarning if total is not equal to 100%
5. when we do "OK" & close the popup => then re-click on the popup => it will open with last state (persistant state, same suppliers with same percentage which are last updated)

Note: that although we are using same popup for all material row the data exist seperately per material row seperately.