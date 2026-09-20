## Direct Comparison

| Feature | led.on() / led.off() | led.value(1) / led.value(0) |
|---|---|---|
| Best For | Manual control, simple actions, and readability. | Dynamic logic, passing variables, and mathematical calculations. |
| Readability | 🟢 High (It is instantly clear what the line does). | 🟡 Moderate (Requires mentally mapping 1 to on and 0 to off). |
| Code Flexibility | ❌ Low (Hardcoded behavior; requires if/else logic to change states). | 🟢 High (Can directly accept state variables, logic flags, or math equations). |

------------------------------
## When to use led.on() and led.off()
Use this syntax when you are writing basic code where actions are explicitly defined by user interactions or discrete events. [3, 4] 
Example:
```py
from machine import Pinimport time
led = Pin("LED", Pin.OUT)
# Clear, readable action blocks
led.on()
time.sleep(1)
led.off()
```
## When to use led.value()
Use this syntax when your code dynamically calculates the LED state or reads a value from another input (like a digital sensor or button) and passes it directly to the LED.
Example of clean variable passing:
```py
from machine import Pin
led = Pin("LED", Pin.OUT)button = Pin(14, Pin.IN, Pin.PULL_DOWN)
while True:
    # Read the button state (0 or 1) and pass it directly to the LED
    led.value(button.value()) 
```
If you used on()/off() here, you would need an extra, clunky 4-line if/else statement just to check the button value before updating the LED.
------------------------------

Getting used to `value()` builds better habits early on because it seamlessly handles variables and dynamic states as your projects grow in complexity.
To help you get fully comfortable with it, here are the three most common design patterns for using .value() in MicroPython:
## 1. The Direct Pass Pattern
Instead of writing an `if/else` block, you feed an expression or a sensor reading directly into the method.

```py
# Turns the LED on only if the temperature goes over 30 degrees
led.value(current_temp > 30) 
```
## 2. The Logic Toggle Pattern
You can flip the state of the LED using the logical not operator on its current state.

```py
# Reads the current state, flips it, and sets it
led.value(not led.value()) 
```
## 3. The Explicit Truth Pattern
For code readability, you can combine .value() with built-in or custom constants. This keeps the flexibility of numbers but reads like English.
```py
ON = 1
OFF = 0
led.value(ON)
``
------------------------------

## Bonus: 
If you just want to flash a light repeatedly in a loop without managing its state, you can also use `led.toggle()`.
```py
# Instead of doing this:
led.value(not led.value())

# Do this:
led.toggle()

# both are sane thing under the hood
```