## `ON` vs `WHERE`
- common mis-conception:  
`ON` include `NULL` values while `WHERE` excludes them.

- Reality:  
`ON` do pairing job between tables. `ON` happens first  
`WHERE` do conditional elimination later.  
1. ON: just match data, it doesn't have data.
2. WHERE: after ON it has data that can be filtered out.  

so even it seems like `ON` is soft with `NULL` values while `WHERE` is strict.  
its just time mechanism under the HUD.  
---
