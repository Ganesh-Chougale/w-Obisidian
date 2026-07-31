## 3. Introduction to n
`n`: The size of the input.
Bigger input Bigger n.  

### Example:
`Task`: Find the total of all numbers in an array using loop  
### Small n:
`Input`: numbers = [10, 20, 30, 40, 50]  
```js
let numbers = [10, 20, 30, 40, 50];
let total = 0;
for(let i = 0; i < numbers.length; i++){
   total += numbers[i]; 
}
console.log(total);
```  
Here: n = 5 (length of array = 0 to 4 = 5) 

Operations:
```yml
1. 10 + 20
2. result + 30
3. result + 40
4. result + 50
```
Total: 4 operations  

### Bigger n:
`Input`: numbers = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100]
Here: n = 10    

Operations:
```yml
1. 10 + 20
2. result + 30
3. result + 40
4. result + 50
5. result + 60
6. result + 70
7. result + 80
8. result + 90
9. result + 100
```
Total: 9 operations  

### Pattern:
```
n = 5
operations = 4
```

```
n = 10
operations = 9
```

which means
- `n = operation + 1`
vice versa  
- `operation = n -1`

The task is the same.  
Only input size changed.
`0, 1, 2, 3 . . . . n`  
```
Bigger n
   ↓
More operations
   ↓
More work
```  
