## 003-03. Find the Sum of N Natural Numbers in C++

Given an integer input the objective is to write a code to Find the Sum of N Natural Numbers. To do so we simply keep adding the value of the iter variable using a for loop.  

- Method 3: Using Recursion

### Python
```py
def sumOfN(num):
    if(num == 0):
        return 0;
    
    return num + sumOfN(num - 1);

x = 10
total = sumOfN(x)
print (f"Sum of first {x} is : {total}");
```

### JS
```js
function sumOfN(num) {
    // if statement to break or set last iteration: also known as base condition 
    if (num === 0) {
        return 0;
    }

    return num + sumOfN(num - 1);
}
let x = 10
let total = sumOfN(x);
console.log(`Sum of first ${x} numbers is: ${total}`);
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