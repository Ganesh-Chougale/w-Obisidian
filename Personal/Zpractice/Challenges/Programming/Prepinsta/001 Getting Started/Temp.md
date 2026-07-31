For **Method 3: Using Bitwise Operators**, you can check whether a number is even or odd by examining its least significant bit:

* If `(num & 1) == 0`, the number is **even**.
* Otherwise, it is **odd**.

### Python

```py
def result(para):
    if (para & 1) == 0:
        print(f"{para} is an even number")
    else:
        print(f"{para} is an odd number")

num = 7
result(num)
```

### JS

```js
function result(para) {
    if ((para & 1) === 0) {
        console.log(`${para} is an even number`);
    } else {
        console.log(`${para} is an odd number`);
    }
}

let num = 7;
result(num);
```

### Java

```java
public class Main {

    public static void main(String[] args) {
        int num = 7;
        result(num);
    }

    public static void result(int para) {
        if ((para & 1) == 0) {
            System.out.println(para + " is an even number");
        } else {
            System.out.println(para + " is an odd number");
        }
    }
}
```

### C#

```csharp
using System;

class Program
{
    static void Main(string[] args)
    {
        int num = 7;
        Result(num);
    }

    static void Result(int para)
    {
        if ((para & 1) == 0)
        {
            Console.WriteLine($"{para} is an even number");
        }
        else
        {
            Console.WriteLine($"{para} is an odd number");
        }
    }
}
```

### C++

```cpp
#include <iostream>

class Sol
{
public:
    void result(int para)
    {
        if ((para & 1) == 0)
        {
            std::cout << para << " is an even number" << std::endl;
        }
        else
        {
            std::cout << para << " is an odd number" << std::endl;
        }
    }
};

int main()
{
    Sol x;
    x.result(7);

    return 0;
}
```

### C

```c
#include <stdio.h>
#include <stdlib.h>

void result(int para);

int main(void)
{
    int num = 7;

    result(num);

    return EXIT_SUCCESS;
}

void result(int para)
{
    if ((para & 1) == 0)
    {
        printf("%d is an even number\n", para);
    }
    else
    {
        printf("%d is an odd number\n", para);
    }
}
```

**Time Complexity:** O(1)
**Space Complexity:** O(1)

**How it works:**
The binary representation of every even number ends with `0`, while every odd number ends with `1`. The bitwise AND operation with `1` extracts that last bit, making the check very efficient.
