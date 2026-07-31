## 4. `Small input` Vs `Largr input`
### Small input
```js
let pandavs = ["Yudhishtir", "Bheem", "Arjun", "Nakul", "Sahdev"];
```  
now `n` is 5  
```js
for(let i = 0; i < pandavs.length; i++){
    console.log(pandavs[i]);
}
```  
which means looping over this array costs 5 iterations.  

now consider them instead of 5 we make them 100  
```js
let kauravs = ["Duryodhan", "Dushasana", "Dussaha", . . . . ., "99th Brother", "Mahodara"]
```  
now `n` is 100  
```js
for(let i = 0; i < kauravs.length; i++){
    console.log(pandavs[i]);
}
``` 
which means looping over this array costs 100 iterations.  

### `Large input`  
now 
```js
let akshauhiniSena = ["soldier1", "soldier2", "soldier3", ..... "soldier109350" ]
```  
here `n` is 109350, which is huge  
```js
for(let i = 0; i < akshauhiniSena.length; i++){
    console.log(pandavs[i]);
}
``` 
which means looping over this array costs 109350 iterations.  

#### Ignoring Small Differences
in smaller input if we add some elements to it or even doubling that will not be greater cost to computation.
ex.  
```js
let akshauhiniSena = ["soldier1", "soldier2", "soldier3", ..... "soldier109350" ] // n = 109350
let kauravSena = [...akshauhiniSena, "Bhishma-Pitamah", "Guru-Dron", "Karn", "Kirapacharya"]; // n = 109350 + 4 = 109354
```  
so here now input became `109354` which is not a huge difference.  
so if n is larger like this & we do n + 2, n + 5 etc we count that as negligible difference.   

- `small n` + 5 = big difference. (like 5 + 5 = 10, doubled n)  
- `large n` + 5 = negligible difference.  