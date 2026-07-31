## 003-03. Find the Sum of the Numbers in a Given Interval  
Given two integer inputs as the range [low , high], the objective is to find the sum of all the numbers that lay in the given integer inputs as interval. In order to do so we usually iterate through the the numbers in the given range and keep appending them to the sum variable. Here are few methods to solve the above mentioned problem   

- Method 3: Using Recursion

### Python
```py
def SumBetweenRange(start, end):
    if(end == start):
        return start;
    
    return end + SumBetweenRange(start, end - 1);
    
    
x = 5
y = 10

total = SumBetweenRange(x, y);
print(f"The sum of numbers between {x} & {y} is: {total}");
```

### JS
```js
function SumOfRange(start, end) {

    if (end === start) {
        return start;
    }

    return end + SumOfRange(start, end - 1);
}

let x = 5;
let y = 10;

let total = SumOfRange(x, y);

console.log(`Sum of range between ${x} & ${y} numbers is: ${total}`);
```

### Java
```java

```

### C#
```csharp

```  

### C++
```c++

```

### C
```c

```