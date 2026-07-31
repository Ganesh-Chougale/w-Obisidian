## 2. Expressions Have Multiple steps

`Expression`: An expression is a combination of values, variables, and operators that produces a result.  

### Example 1:
**Task:** 6 + 3 × (8 - 5)

this expression is a task.  
although this is a one task, this expression have multiple steps in it

```yml
- full expression = 6 + 3 *×* (8 - 5)
1. first operation = (8-5) = 3
2. second operation = 3 * 3 = 9
3. third operation = 6 + 9
```
Steps = 3
so for us, it might seems only one expression. but for machine it have multi-steps process.  
another example will be.  

### Example 2:
**Task:** "Hello " + "World" + "!"
```yml
- full expression = "Hello " + "World" + "!"

1. first operation:
   "Hello " + "World"
   result = "Hello World"

2. second operation:
   "Hello World" + "!"
   result = "Hello World!"
```  
Steps = 2. more string to concate, more the steps count  



### Pattern to count steps:
If you see:
```
A + B + C + D + E
```
Computer sees:
```yml
1. A + B
2. result + C
3. result + D
4. result + E
```
Steps = 4.

Later while learning the complexity, these steps has placeholder as `n`.