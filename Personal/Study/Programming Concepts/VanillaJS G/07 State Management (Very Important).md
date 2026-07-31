# `State Management (Very Important)`  

Games change behavior based on **state**.

Example player states:

```
IDLE
RUNNING
JUMPING
FALLING
HIT
```

Each state changes:

```
animation
movement
controls
```

Example:

```
JUMP state
    gravity active
    run animation disabled
```

---

### State Machine

Games implement this using **Finite State Machines (FSM)**.

Concept:

```
RUNNING → JUMPING
JUMPING → FALLING
FALLING → RUNNING
```

Each state defines rules.

This prevents impossible actions like:

```
jump while already jumping
```

---