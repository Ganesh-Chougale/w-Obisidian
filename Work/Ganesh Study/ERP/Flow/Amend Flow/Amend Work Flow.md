## Amend

1. New Menu just below it
2. New Business(H, I all), new Controller(one controller), new Views(all)
3. use old DTO, Interface, DAL
4. add 2 new methods in DAL [A.GetNextAmend B. CloseAmend] (can add another methods too if needed)

5. View structure
```
- Index page : Edit(edit will not change amend no), delete & detail support
- middle page (only records with status code = 0, new amend row has status code 0 old reference row status code will 11 & not will be show in middle page)
- clicking on middle page's TrnNo will go to createAmend page
```
6. in All tables of H & I after CloseAmend will do StatusCode 11.
7. Once Amended then we cant edit & delete it in normal index. only accessible in amend's index(edit, delete, details)