```py
from machine import Pin;
from time import sleep;

myLed = Pin(16, Pin.OUT);
S = 0.5;
O = 1;
rest = 0.2;

while True:
    # S
    myLed.value(1);
    sleep(S);
    myLed.value(0);
    sleep(rest);
    myLed.value(1);
    sleep(S);
    myLed.value(0);
    sleep(rest);
    myLed.value(1);
    sleep(S);
    myLed.value(0);
    sleep(rest);       
    # O 
    myLed.value(1);
    sleep(O);
    myLed.value(0);
    sleep(rest);
    myLed.value(1);
    sleep(O);
    myLed.value(0);
    sleep(rest);
    myLed.value(1);
    sleep(O);
    myLed.value(0);
    sleep(rest);     
    # S
    myLed.value(1);
    sleep(S);
    myLed.value(0);
    sleep(rest);
    myLed.value(1);
    sleep(S);
    myLed.value(0);
    sleep(rest);
    myLed.value(1);
    sleep(S);
    myLed.value(0);
    sleep(rest);       
    # last pause
    sleep(3);  
```
![Discription](../z_images/001/07.png "User-description-tooltip")  

- more efficient way

```py
from machine import Pin;
from time import sleep;

myLed = Pin(16, Pin.OUT);
S = 0.5;
O = 1;
rest = 0.2;

while True:
    # S
    for i in range(3):
        myLed.value(1);
        sleep(S);
        myLed.value(0);
        sleep(rest);
      
    # O
    for i in range(3):
        myLed.value(1);
        sleep(O);
        myLed.value(0);
        sleep(rest);

    # S
    for i in range(3):
        myLed.value(1);
        sleep(S);
        myLed.value(0);
        sleep(rest);   

    # last pause
    sleep(3);  
```