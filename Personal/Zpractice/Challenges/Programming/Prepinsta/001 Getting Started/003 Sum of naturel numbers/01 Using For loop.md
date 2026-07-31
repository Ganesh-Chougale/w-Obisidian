## 003-01. Find the Sum of N Natural Numbers in C++

Given an integer input the objective is to write a code to Find the Sum of N Natural Numbers. To do so we simply keep adding the value of the iter variable using a for loop.  

- Method 1: Using for Loop

### Python
```py
def sumOfNums(num):
    
    total = 0;
    
    for i in range(num+1):
        total+=i
        print(f"Adding {i} into {total}")
    
    print(f"final output: {total}")        
    
sumOfNums(8)
```

### JS
```js
function result(num){
    
    let total = 0;
    
    for(i=0; i<=num; i++){
        total += i;
        console.log(`Adding ${i} to ${total}`);
    }
    
    console.log(`Final output is: ${total}`);
    
}

result(8);
```

### Java
```java
public class Main
{
	public static void main(String[] args) {
		result(8);		
	}
	
	public static void result(int num){
	    
	    int total = 0;
	    
	    for(int i = 0; i <= num; i++){
	        total += i;
	        System.out.println("Adding " + i + " into " + total);
	    }
	    System.out.println("Final result is: " + total);
	    
	}
	
}
```

### C#
```csharp
using System;

class HelloWorld {
    
  static void Main() {
    Result(8);
  }
  
  static void Result(int num){
      int total = 0;
      
      for(int i = 0; i <= num; i++){
          total += i;
          Console.WriteLine("Adding " + i + " into " + total);
      }
      Console.WriteLine("Final result is: "  total);
  }
  
}
```  

### C++
```c++
#include <print>
#include <iostream>

class Main{
    
    public:
        void result(int num){
            int total = 0;
            for(int i = 0; i <= num; i++){
                total += i;
                std::cout << "Adding " << i << " into " << total << std::endl;
            }
            std::cout << "Final result is " << total << std::endl;
        }
    
};

int main()
{
    Main m;
    m.result(8);

    return 0;
}
```

### C
```c
#include <stdio.h>
#include <stdlib.h>

void result(int num);


int main()
{
    result(8);
    return 0;
}


void result(int num){
    
    int total = 0;
    
    for(int i = 0; i <= num; i++){
        total += i;
        printf("Adding %d into %d\n", i, total);
    }
    
    printf("Final result is: %d", total);
    
}
```