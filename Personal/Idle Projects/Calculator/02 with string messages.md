# 2. with string messages  
### 1. `Function Expression`  
```javascript
let val1 = 32;
let val2 = 16;

const calculator = {
  constants: {
    PI: 3.14159
  },

  operations: {
    add: function (x, y) {
      console.log("The Addition of " + x + " & " + y + " is: " + (x + y));
    },

    sub: function (x, y) {
      console.log("The Subtraction of " + x + " & " + y + " is: " + (x - y));
    },

    mult: function (x, y) {
      console.log("The Multiplication of " + x + " & " + y + " is: " + (x * y));
    },

    divd: function (x, y) {
      console.log("The Division of " + x + " & " + y + " is: " + (x / y));
    }
  }
};

calculator.operations.add(val1, val2);
```  

### 2. `Method Shorthand`  
```javascript
let val1 = 32;
let val2 = 16;

const calculator = {
  constants: {
    PI: 3.14159
  },

  operations: {
    add(x, y) {
      console.log("The Addition of " + x + " & " + y + " is: " + (x + y));
    },

    sub(x, y) {
      console.log("The Subtraction of " + x + " & " + y + " is: " + (x - y));
    },

    mult(x, y) {
      console.log("The Multiplication of " + x + " & " + y + " is: " + (x * y));
    },

    divd(x, y) {
      console.log("The Division of " + x + " & " + y + " is: " + (x / y));
    }
  }
};

calculator.operations.add(val1, val2);
```  

### 3. `Arrow Function`  
```javascript
let val1 = 32;
let val2 = 16;

const calculator = {
  constants: {
    PI: 3.14159
  },

  operations: {
    add: (x, y) => {
      console.log("The Addition of " + x + " & " + y + " is: " + (x + y));
    },

    sub: (x, y) => {
      console.log("The Subtraction of " + x + " & " + y + " is: " + (x - y));
    },

    mult: (x, y) => {
      console.log("The Multiplication of " + x + " & " + y + " is: " + (x * y));
    },

    divd: (x, y) => {
      console.log("The Division of " + x + " & " + y + " is: " + (x / y));
    }
  }
};

calculator.operations.add(val1, val2);
```  
