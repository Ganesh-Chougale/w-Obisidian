`Ground (GND)` is `implicit`: All Ground pins (like GND4) are connected to a shared, common negative reference plane on the board. Because Ground doesn't need to be toggled or controlled by code—it just sits at 0V constantly—the MicroPython software does not need to manage it.
```py
from machine import Pin
from time import sleep


led = Pin(15, Pin.OUT); # grab the pin number 15 & mark it as a output with name led

while True:
  led.value(1)
  sleep(0.3)
  led.value(0)
  sleep(0.3)
```
so here we do not need to express GND explicitly