# 1. Result only  
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
      return x + y;
    },

    sub: function (x, y) {
      return x - y;
    },

    mult: function (x, y) {
      return x * y;
    },

    divd: function (x, y) {
      return x / y;
    }
  }
};

console.log(calculator.operations.add(val1, val2));
console.log(calculator.constants.PI);
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
      return x + y;
    },

    sub(x, y) {
      return x - y;
    },

    mult(x, y) {
      return x * y;
    },

    divd(x, y) {
      return x / y;
    }
  }
};

console.log(calculator.operations.add(val1, val2));
console.log(calculator.constants.PI);
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
    add: (x, y) => x + y,
    sub: (x, y) => x - y,
    mult: (x, y) => x * y,
    divd: (x, y) => x / y
  }
};

console.log(calculator.operations.add(val1, val2));
console.log(calculator.constants.PI);
```  
