## 005-01.Check Whether a Year is a Leap Year or Not

Given an integer input as the year, the objective is to Check if a Year is a Leap Year or Not in Python Language. To do so we’ll check each condition mentioned below in the blue box. It either of the conditions is satisfied, the year is a leap year. It’s not otherwise. Here are some methods to check whether or not it’s a leap year


### Python
```py
year = 2024

if ( (year % 4 == 0 and year % 100 != 0) or (year % 400 == 0) ):
    print(f"{year} is a leap year.")
else:
    print(f"{year} is not a leap year.")
```

### JS
```js
let year = 2026

if ((year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)){
    console.log(`${year} is a leap year`);
}else{
    console.log(`${year} is not a leap year`);
}
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