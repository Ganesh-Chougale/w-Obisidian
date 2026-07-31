## 004-01. Find the Sum of the Numbers in a Given Interval  
Given two integer inputs as the range [low , high], the objective is to find the sum of all the numbers that lay in the given integer inputs as interval. In order to do so we usually iterate through the the numbers in the given range and keep appending them to the sum variable. Here are few methods to solve the above mentioned problem  

### Python
```py
def sumOfNums(start, end):
    
    total = 0;
    
    for start in range(end):
        total+=start
        print(f"Adding {start} into {total}")
    
    print(f"final output: {total}")        
    
sumOfNums(5, 10)
```

### JS
```js
function result(start, end){
    
    let total = 0;
    
    for(i=start; i<=end; i++){
        total += i;
        console.log(`Adding ${i} to ${total}`);
    }
    
    console.log(`Final output is: ${total}`);
    
}

result(5, 10);
```