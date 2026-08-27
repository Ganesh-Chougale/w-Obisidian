Amend

1. New Menu just below it
2. New Business(H, I all), Controller(one controller), Views(all)
3. use old DTO, Interface, DAL
4. add 2 new methods in DAL [A.GetNextAmend B. CloseAmend]

5. View structure
```
- Index page (no edit here, only delete to where amend no = 0)
- middle page (only records with status code = 0)
- clicking on middle page's TrnNo will go to createAmend page
```
6. in All tables of H & I after CloseAmend will do StatusCode 11.
7. Once Amended then we cant edit & delete it
