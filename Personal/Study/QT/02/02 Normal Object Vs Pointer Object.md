```c++
#include <iostream>
#include <string>

class Player {

public:
    std::string name;
    int score = 0;

    void printStatus() {
        std::cout << name << " has " << score << " points.\n";
    }
    
};

int main() {

    Player normalObj; 
    normalObj.name = "Alice"; // Direct access
    normalObj.score = 50;
    normalObj.printStatus(); 

    Player* pointerObj = &normalObj; // points towards other obj
    // Syntax (* class suffix to declare its pointer object, & object prefix to know which object refer)
    // classname* pointerObjectName = &referencingObjectName
    
    pointerObj->name = "Bob";
    pointerObj->score = 100;
    pointerObj->printStatus();

    return 0;
}
```