## 001-02. Check if a Number is Positive or Negative

Given an integer input, the objective is check whether the given integer is Positive or Negative. In order to do so we have the following methods  

- Method 2: Using Ternary Operator

### Python
```py
num = -1;

def result(para):
    print(  (f"{para} is negative number")  if para < 0 else    (f"{para} is positive number") )

result(num)
```

### JavaScript
```js
const NUM = -5;

function result(para){
  para > 0 ? console.log(`${para} is positive number`) : console.log(`${para} is negative number`)
}

result(NUM)
```  

### Java
```java
import java.util.*;

public class Main{
  
  public static void main(String args[]){
    int num = 5;
    result(num);
  }
  
  public static void result(int para){
    System.out.println(para > 0 ? (String.format("%d is a positive number", para)) : (String.format("%d is a negative number", para)) );
    
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
          int num = 5;
          Result(num);
        }

        public static void Result(int para)
        {
            Console.WriteLine( para < 0 ? ($"{para} is a negative number") : ($"{para} is a positive number"));
        }
    }
}
```  

### C++
```c++
#include <iostream>
#include <vector>
#include <string>
#include <format>

void result(int para){
  std::cout << std::format("{} is {} number.", para, (para > 0 ? "positive" : "negative"));
}

int main() {
  int num = 5;
    result(5);

    return 0;
}
```

### C
```c
#include <stdio.h>
#include <stdlib.h>

void result(int num);

int main(void) {
    
    int x = 15;

    result(x);
    
    return EXIT_SUCCESS;
}


void result(int para) {
     (para < 0) ? printf("%d is a negative number\n", para) : printf("%d is a positive number\n", para);
}
```