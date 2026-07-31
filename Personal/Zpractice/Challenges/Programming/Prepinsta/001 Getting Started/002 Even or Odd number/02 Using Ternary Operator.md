## 002-02. Check Whether a Number is Even or Odd 

Given an integer input the objective is to write a code to Check Whether a Number is Even or Odd. To do so the main idea is to divide the number by 2 and check if it’s divisible or not. It’s an Even number is it’s perfectly divisible by 2 or an Odd number otherwise.  

Method 2 : Using Ternary Operator

### Python
```py
def solution(para):
    print( (f"{para} is an even number") if ( para%2 == 0 ) else (f"{para} is an even number") )

snum = 6;
solution(snum)
```

### JS
```js
function res2(para){
    (para%2==0) ? console.log(`${para} is an even number`) : console.log(`${para} is an odd number`)
}

let num2 = 5;
res1(num2)
```

### Java
```java
import java.util.*;

public class Main{
    
    public static void main(String args[]){
        int num2 = 5;
        sol.res2(num2);
    }
    
}

class Sol{
    
    public static void res2(int para){
            System.out.println(  (para%2==0)  ? (String.format("%d is an even number", para)) : (String.format("%d is an even number", para)) );
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
            Sol.result(10);
        }


    }
}

class Sol{
    
     public static void result(int para){
         
         Console.WriteLine( (para%2==0) ? ($"{para} is an even number") : ($"{para} is an off number"));

    }   
    
}
```  

### C++
```c++
#include <iostream>
#include <vector>
#include <string>

class Sol{
    
    public:
           void result(int para) {
                  std::cout << std::format("{} is an {} number.", para, (para > 0 ? "even" : "odd"));
            } 
    
};

int main() {
    Sol x;
    x.result(10);

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
     (para%2==0) ? printf("%d is an even number\n", para) : printf("%d is an odd number\n", para);
}
```