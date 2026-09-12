`.` this is a dot notation  
`::` this is a resolution notation  
`->` this is pointer notation  




|Symbol	| Notation Name	| When to Use |	Simple Explanation	Example|
| .	| Dot notation |	When you have an object/variable directly |	Access a member of the object directly. |	student.name |
| ->	| Pointer notation |	When you have a pointer to an object |	Access a member through the pointer. |	ptr->name |
| ::	| Scope resolution notation |	When accessing something that belongs to a class or namespace |	Tell the compiler which class/namespace the member belongs to. |	Student::name |


Here is your text converted into a clean markdown table:

| Symbol | Notation Name | When to Use | Simple Explanation | Example |
|---|---|---|---|---|
| . | Dot notation | When you have an object/variable directly | Access a member of the object directly. | student.name |
| -> | Pointer notation | When you have a pointer to an object | Access a member through the pointer. | ptr->name |
| :: | Scope resolution notation | When accessing something that belongs to a class or namespace | Tell the compiler which class/namespace the member belongs to. | Student::name |

If you are practicing C++, I can show you how to write the complete main function that puts all three of these exact lines into action. Would you like to see how they work together in compilable code, or should we move on to common errors to avoid with these symbols?

```
. → object directly
-> → pointer to object
:: → class/namespace scope
```
Example to make the difference obvious

Suppose we have:
```cpp
Student student;
Student* ptr = &student;
```

Then:
```cpp
student.name;    // .  → object directly

ptr->name;       // -> → pointer

Student::count;  // :: → belongs to Student class
```

So the key question is:

“What am I accessing through?”

Have the object → .
Have a pointer → ->
Referring to a class/namespace scope → ::