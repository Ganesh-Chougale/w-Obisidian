### `what is Compiler, Interpreter, JIT`?  
#### 1. `Compiler`:  
A `compiler` is a program that translates the entire source code of a programming language into machine code (or executable file) before execution begins.  
Clarity:  
- Whole program → compiled at once  
- Produces .exe / binary  
- Errors shown after compilation  

#### 2. `Interpreter`:
An `interpreter` is a program that translates and executes source code line-by-line at runtime, without creating a separate executable file.  
Clarity:  
- Executes immediately  
- Stops at first error  
- No binary generated  

#### 3. `JIT` (Just-In-Time Compiler):   
A `JIT` compiler is a hybrid execution engine that translates code into machine code during runtime, compiling frequently used parts to improve performance.
- Runs via VM (JVM / CLR)
- Compiles “hot code” (frequently executed)
- Faster than interpreter, near compiler speed
---
| Feature              | Compiler                            | Interpreter                              | JIT (Just-In-Time)                     |
| -------------------- | ----------------------------------- | ---------------------------------------- | -------------------------------------- |
| Translation Time     | Before execution                    | During execution                         | During execution (but compiled parts)  |
| Output Generated     | Machine code / EXE file             | No separate file                         | Machine code in memory                 |
| Execution Speed      | Fast (after compile)                | Slower                                   | Faster than interpreter, near compiler |
| Error Reporting      | Shows all errors after compile      | Stops at first error                     | Mixed (runtime + compile)              |
| Re-execution         | No need to recompile (if no change) | Interprets every run                     | Reuses compiled parts                  |
| Platform Dependency  | Platform dependent binary           | Platform independent (needs interpreter) | Platform dependent at runtime          |
| Examples (Languages) | C, C++, Go, Rust                    | Python, Ruby, JavaScript                 | Java (JVM), C# (.NET), V8 JS Engine    |
| Startup Time         | Slow (compile time)                 | Instant start                            | Medium (warm-up time)                  |
| Optimization         | High compile-time optimization      | Minimal                                  | Runtime optimization                   |
---
