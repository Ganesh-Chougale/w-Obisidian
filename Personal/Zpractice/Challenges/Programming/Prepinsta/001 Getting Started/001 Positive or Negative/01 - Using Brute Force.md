## 001-01. Check if a Number is Positive or Negative

Given an integer input, the objective is check whether the given integer is Positive or Negative. In order to do so we have the following methods  

- Method 1: Using Brute Force

### Python
```py
def result(num):
  if num > 0:
    print(f"{num} is a positive number.")
  elif num < 0:
    print(f"{num} is a negative number.")
  else:
    print(f"{num} is zero.")

result(-10)
```

### JavaScript
```js
function result(num){
  if(num > 0){
    console.log(`${num} is a positive number.`);
  }else if(num < 0){
    console.log(`${num} is a negative number.`);
  }else{
    console.log(`${num} is zero`);
  }
}

result(-10);
```  

### Java
```java
import java.util.*;

public class Main {
    public static void main(String[] args) {
        result(10);
    }
    
    public static void result(int num){
      if(num > 0){
        System.out.println( String.format("%d Is a positive number", num));
      } else if(num < 0){
        System.out.println( String.format("%d Is a negative number", num));
      } else{
        System.out.println( String.format("%d Is zero", num));
      }
    }
}
```

### C#
```csharp
using System;
using System.Collections.Generic;

namespace CodeTemplate
{
    public class Program
    {
        public static void Main(string[] args)
        {
            Sol x = new Sol();
            x.result(10);
        }


    }
}

class Sol{
    
     public void result(int num){
      if(num > 0){
        Console.WriteLine($"{num} is a positive number");
      } else if(num < 0){
        Console.WriteLine($"{num} is a negative number");
      }else{
        Console.WriteLine($"{num} is zero");
      }
    }   
    
}
```  

### C++
```c++
#include <iostream>
#include <vector>
#include <string>

void result(int num) {
    if (num < 0) {
        std::cout << num << " is a negative number" << std::endl;
    } else if (num > 0) {
        std::cout << num << " is a positive number" << std::endl;
    } else {
        std::cout << num << " is zero" << std::endl;
    }
}

int main() {
    result(0);

    return 0;
}
```

### C
```c
#include <stdio.h>
#include <stdlib.h>

void result(int num);

int main(void) {

    result(0);
    
    return EXIT_SUCCESS;
}

void result(int num) {
    if (num < 0) {
        printf("%d is a negative number\n", num);
    } else if (num > 0) {
        printf("%d is a positive number\n", num);
    } else {
        printf("%d is zero\n", num);
    }
}
```