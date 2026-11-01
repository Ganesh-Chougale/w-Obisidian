# 01 Types of Variables

**## A. Types of Variables**

A variable is a named memory reference used to store data temporarily during program execution. Each variable holds a value which can be accessed, modified, or passed to other programming operations.

- 01 Local Variable (Variable declared inside a function/method and accessible within its defined scope)
- 02 Global Variable (Variable declared outside functions/methods and accessible across multiple functions depending on scope)
- 03 Instance Variable (Variable declared inside a class/object and associated with a particular object instance)
- 04 Static/Class Variable (Variable associated with the class itself rather than an individual object instance)
- 05 Parameter Variable (Variable declared in a function/method definition to receive incoming values)
- 06 Constant Variable (Variable whose assigned value is not intended to be changed after initialization)
- 07 Temporary Variable (Variable used to temporarily hold data during calculations or processing)
- 08 Reference Variable (Variable which holds a reference/address to an object or another data structure, depending on the programming language)

**## B. Types of Variables based on Data Storage**

01. Primitive Variables (Store basic/simple data values directly, depending on language implementation)
   - Integer (Whole numbers)
   - Float/Double (Decimal numbers)
   - Boolean (True/False)
   - Character (Single character)

02. String Variables (Store textual data or a sequence of characters)

03. Array Variables (Store multiple values under a single variable name using indexed positions)

04. Object Variables (Store references to objects containing properties and methods)

05. Collection Variables (Store multiple data items using collection structures)
   - List
   - Dictionary
   - Set
   - Queue
   - Stack

06. Nullable Variables (Variables which can hold either a valid value or a null value, depending on language support)

**## C. Types of Variables based on Scope**

01. Global Scope (Accessible across multiple parts of a program, subject to language and module rules)

02. Local Scope (Accessible only within the function/method or block where declared)

03. Class Scope (Accessible within the class according to its access modifiers)

04. Block Scope (Accessible only within a specific code block, such as loops or conditional statements)

**## D. Types of Variables based on Mutability**

01. Mutable Variables (Variables whose stored values can be changed after initialization)

02. Immutable Variables (Variables whose assigned values cannot be changed after initialization, depending on language implementation)

03. Readonly Variables (Variables which can be assigned only at permitted initialization points and cannot be freely reassigned afterward)

**## E. Types of Variables based on Lifetime**

01. Automatic Lifetime Variables (Variables created and destroyed according to their execution scope)

02. Static Lifetime Variables (Variables which retain their storage/lifetime for the duration of the program or according to language-specific rules)

03. Dynamic Lifetime Variables (Objects/data structures whose lifetime is managed dynamically during program execution, commonly through memory management or garbage collection)