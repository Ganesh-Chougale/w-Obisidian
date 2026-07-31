# 4. with return plus log  
### 1. `Function Expression`  
```javascript
let val1 = 32;
let val2 = 16;

const calculator = {
  constants: {
    PI: 3.14159
  },

  operations: {
    add: function (x, y, mode) {
      const result = x + y;

      if (mode === "log") {
        console.log(`The Addition of ${x} & ${y} is: ${result}`);
      }

      return result;
    },

    sub: function (x, y, mode) {
      const result = x - y;

      if (mode === "log") {
        console.log(`The Subtraction of ${x} & ${y} is: ${result}`);
      }

      return result;
    },

    mult: function (x, y, mode) {
      const result = x * y;

      if (mode === "log") {
        console.log(`The Multiplication of ${x} & ${y} is: ${result}`);
      }

      return result;
    },

    divd: function (x, y, mode) {
      const result = x / y;

      if (mode === "log") {
        console.log(`The Division of ${x} & ${y} is: ${result}`);
      }

      return result;
    }
  }
};

calculator.operations.add(val1, val2, "log");
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
    add(x, y, mode) {
      const result = x + y;

      if (mode === "log") {
        console.log(`The Addition of ${x} & ${y} is: ${result}`);
      }

      return result;
    },

    sub(x, y, mode) {
      const result = x - y;

      if (mode === "log") {
        console.log(`The Subtraction of ${x} & ${y} is: ${result}`);
      }

      return result;
    },

    mult(x, y, mode) {
      const result = x * y;

      if (mode === "log") {
        console.log(`The Multiplication of ${x} & ${y} is: ${result}`);
      }

      return result;
    },

    divd(x, y, mode) {
      const result = x / y;

      if (mode === "log") {
        console.log(`The Division of ${x} & ${y} is: ${result}`);
      }

      return result;
    }
  }
};

calculator.operations.add(val1, val2, "log");
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
    add: (x, y, mode) => {
      const result = x + y;

      if (mode === "log")
        console.log(`The Addition of ${x} & ${y} is: ${result}`);

      return result;
    },

    sub: (x, y, mode) => {
      const result = x - y;

      if (mode === "log")
        console.log(`The Subtraction of ${x} & ${y} is: ${result}`);

      return result;
    },

    mult: (x, y, mode) => {
      const result = x * y;

      if (mode === "log")
        console.log(`The Multiplication of ${x} & ${y} is: ${result}`);

      return result;
    },

    divd: (x, y, mode) => {
      const result = x / y;

      if (mode === "log")
        console.log(`The Division of ${x} & ${y} is: ${result}`);

      return result;
    }
  }
};

calculator.operations.add(val1, val2, "log");
```  
