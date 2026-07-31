## 5. Growth   
```js
let nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
```  
here `n` is 10. so how we suppose to calculate the `GROWTH`?  
to asnwer this:  
The question changes from: `"Does bigger input create more work?"` (which we know) to `"How does the work increase compared to input?"`  
like  
```yml
n = 10
work = ?

n = 100
work = ?

n = 1000
work = ?
```  
Does work increase:
- the same amount?
- double?
- square?
- slower?
That pattern is called growth.

### `Task 1`: Constant growth
- Constant Growth: `O(1)`
pattern
```yml
n          work = 1     
```  
```js
let nums = [1,2,3,4,5,6,7,8,9,10];

console.log(nums[0]);
```  
no matter what is n size, work size will be always 1.  

### `Task 1`: Same amount growth 
- Linear Growth: `O(n)`
pattern
```yml
n          work = n     (difference none)
n = 10     work = 10    (difference none)
n = 100    work = 100   (difference none)
n = 1000   work = 1000  (difference none)
```  
```js
let nums = [1,2,3,4,5,6,7,8,9,10];

for(let i = 0; i < nums.length; i++){
    console.log(nums[i]);
}
```  
here input amount work amount is same.  

### `Task 2`: Double amount growth  
- Double Linear Growth: `O(2n)`
- 
pattern
```yml
n          work = n * 2
---------------------------------
n = 10     work = 10 * 2   = 20     (difference 10)
n = 100    work = 100 * 2  = 200    (difference 100)
n = 1000   work = 1000 * 2 = 2000   (difference 1000)
```
```js
let nums = [1,2,3,4,5,6,7,8,9,10];

for(let i = 0; i < nums.length; i++){
    console.log(nums[i]);   // first work
    console.log(nums[i]);   // second work
}
```  
here work is doubled amount of input.  

### `Task 3`: Square amount growth (mostly cause by nester loops)
- Square: `O(n²)`
pattern
```yml
n          work = n * n
---------------------------------
n = 10     work = 10 * 10     = 100     (difference 90)
n = 100    work = 100 * 100   = 10000   (difference 9900)
n = 1000   work = 1000 * 1000 = 1000000 (difference 999000)
```  
```js
let nums = [1,2,3,4,5,6,7,8,9,10];

for(let i = 0; i < nums.length; i++){

    for(let j = 0; j < nums.length; j++){
        console.log(nums[i], nums[j]);
    }

}
```  
here work is Quadratic.  

### `Task 4`: Slower growth  
- Logarithmic Growth: `O(log n)`

- no usual pattern
```js
let nums = [1,2,3,4,5,6,7,8,9,10];

let target = 10;

let left = 0;
let right = nums.length - 1;


while(left <= right){

    let middle = Math.floor((left + right) / 2);

    if(nums[middle] === target){
        console.log("Found");
        break;
    }

    if(nums[middle] < target){
        left = middle + 1;
    }
    else{
        right = middle - 1;
    }
}
```  
- here work vary on how well optized the code is.  

---

| Growth Type | Formula  | n=10 |  n=100 |    n=1000 |
| ----------- | -------- | ---: | -----: | --------: |
| Constant    | O(1)     |    1 |      1 |         1 |
| Logarithmic | O(log n) |   ~4 |     ~7 |       ~10 |
| Linear      | O(n)     |   10 |    100 |      1000 |
| Square      | O(n²)    |  100 | 10,000 | 1,000,000 |
