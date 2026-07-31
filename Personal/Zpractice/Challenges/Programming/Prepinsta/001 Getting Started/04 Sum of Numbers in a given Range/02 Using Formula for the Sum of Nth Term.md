## 004-02.Find the Sum of the Numbers in a Given Interval  

Given two integer inputs as the range [low , high], the objective is to find the sum of all the numbers that lay in the given integer inputs as interval. In order to do so we usually iterate through the the numbers in the given range and keep appending them to the sum variable. Here are few methods to solve the above mentioned problem  

### Python
```py
def SumBetweenRange(start, end):
    sum = ( (start + end) * (end - start + 1 ) )/ 2;
    print(f"The sum of numbers between {start} & {end} is: {sum}");

SumBetweenRange(5, 10);
```

### JS
```js
function SumBetweenRange(start, end){
    let sum = ( (start + end) * (end - start + 1 ) )/ 2;
    console.log(`The sum of numbers between ${start} & ${end} is: ${sum}`);
}

SumBetweenRange(5, 10);
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