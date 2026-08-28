# improvements

## 1. Operation

currently we have these operations

- Addition
- Multiplication
- RaisedTo
- Exponential

Raised to & Exponential is same thing.
so remove 'RaisedTo" keep only "Exponential".
& add substraction, division. 


so option list becomes
- Addition
- Subtraction
- Multiplication
- Division
- Exponential


## 2. Detailed Logs
current log looks like this
```
Test started | Original: 2 | Operation: Exponential | Against: 2
Iteration 1 | Previous: 2 | Operation: Exponential | Against: 2 | Result: 4
Iteration 2 | Previous: 4 | Operation: Exponential | Against: 2 | Result: 16
Iteration 3 | Previous: 16 | Operation: Exponential | Against: 2 | Result: 256
Iteration 4 | Previous: 256 | Operation: Exponential | Against: 2 | Result: 65536
Iteration 5 | Previous: 65536 | Operation: Exponential | Against: 2 | Result: 4294967296
Test finished | Reason: Iteration limit reached. | Iterations: 5 | Elapsed: 00:00:00.001
```

i want to make it like this

1. One Header Message:
Original Value: <Original Number> | Operation: <Operation Name> | Against Number: <Against Number>

2. Iterations Details:
Iteration 1 | Previous: <Original Number> | <Original Number> <Operation sign> <Against Number> | Against: <Against Number> | Result: <Result>
Iteration 2 | Previous: 4 | Operation: Exponential | Against: 2 | Result: 16


Operation sign = 
Addition sign: +
Subtraction sign: -
Multiplication sign: x
Division sign: ÷
Exponential: ^


so it becomes

```
Original Value: 2 | Operation: Exponential | Against Number: 2

Iteration 1 | Previous: 2 | 2 ^ 2 | Against: 2 | Result: 4
Iteration 2 | Previous: 4 | 4 ^ 2 | Against: 2 | Result: 16
Iteration 3 | Previous: 16 | 16 ^ 2 | Against: 2 | Result: 256
Iteration 4 | Previous: 256 | 256 ^ 2 | Against: 2 | Result: 65536
Iteration 5 | Previous: 65536 | 65536 ^ 2 | Against: 2 | Result: 4294967296
Test finished | Reason: Iteration limit reached. | Iterations: 5 | Elapsed: 00:00:00.001
```


## 3. Final Conclusion Log
current log looks like this
```
5:35:30 pmLog cleared.
5:35:39 pmStarted: Raised To 2 against 2.
5:35:39 pmIteration limit reached. Iterations: 5. Elapsed: 00:00:00.000.
```  

i want it should look like this
```
| start time | end time | Difference |
| 5:39:11 pm | 5:39:15 | 00:00:00.001 |

| Original Value | Operation Name | Against Value | Iteration | Final Value | Difference |
| 2 | Exponential | 2 | 5 | 4294967296 | 4294967294 |
```
table wall will be matching stacks

## 4. Infinity 
after just 10th iteration for 2^2 it shows infinity. can we extend this limit?