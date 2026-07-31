## 002-01. Check Whether a Number is Even or Odd 

Given an integer input the objective is to write a code to Check Whether a Number is Even or Odd. To do so the main idea is to divide the number by 2 and check if it’s divisible or not. It’s an Even number is it’s perfectly divisible by 2 or an Odd number otherwise.  

Method 1 : Using Brute Force  

### Python
```py
def result(para):
    if ( para%2 == 0 ): 
        print(f"{para} is an even number")
    else:
        print(f"{para} is an odd number")

num = 5;
result(num)
```

### JS
```js
function res1(para){
    if(para%2 == 0){
        console.log(`${para} is an even number`)
    }else{
        console.log(`${para} is an odd number`)
    }
}

let num1 = 4;
res1(num1)
```

### Java
```java
import java.util.*;

public class Main{
    
    public static void main(String args[]){
        int num1 = 4;
        res1(num1);
    }
    
    public static void res1(int para){
        if(para%2==0){
            System.out.println( String.format("%d is an even number", para));
        }else{
            System.out.println( String.format("%d is an odd number", para));            
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
            Sol.result(10);
        }


    }
}

class Sol{
    
     public static void result(int para){
         if(para%2==0){
             Console.WriteLine($"{para} is an even number");
         }else{
            Console.WriteLine($"{para} is an odd number");
         }
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
                if (para%2==0) {
                    std::cout << para << " is an even number" << std::endl;
                } else {
                    std::cout << para << " is an odd number" << std::endl;
                }
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
    
    int num = 10;

    result(num);
    
    return EXIT_SUCCESS;
}

void result(int para) {
    if (para%2 == 0) {
        printf("%d is an even number\n", para);
    } else {
        printf("%d is an odd number\n", para);
    }
}
```