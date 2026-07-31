## 4. `Small input` Vs `Largr input`
### Small input
```js
let pandavs = ["Yudhishtir", "Bheem", "Arjun", "Nakul", "Sahdev"];
```  
now `n` is 5  
which means looping over this array costs 5 iterations.  

now consider them instead of 5 we make them 100  
```js
let kauravs = ["Duryodhan", "Dushasana", "Dussaha", . . . . ., "99th Brother", "Mahodara"]
```  
now `n` is 100  
which means looping over this array costs 100 iterations.  

### `Large input`  
now 
```js
let akshauhiniSena = ["soldier1", "soldier2", "soldier3", ..... "soldier109350" ]
```  
here `n` is 109350, which is huge  
which means looping over this array costs 109350 iterations.  

#### Ignoring Small Differences
in smaller input if we add some elements to it or even doubling that will not be greater cost to computation.
ex.  
```js
let pandavs = ["Yudhishtir", "Bheem", "Arjun", "Nakul", "Sahdev"]; // n = 5
let pandavSena = [...pandavs, "krishna", "Ghatot-kachh", "Yuyutsu", "Abhimanyu"]; // n = 9
```  
so here now input became `9` which is not a huge difference.  
so if we have some case like n + 2, n + 5 etc we dont count that as negligible difference.   


now next stop is 
- Growth  
- types of growth  