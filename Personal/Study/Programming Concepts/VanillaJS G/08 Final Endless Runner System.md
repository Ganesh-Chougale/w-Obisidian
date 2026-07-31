# `Final Endless Runner System`  

This is the **final architecture combining everything**.

Game flow:

```
Game Loop
   ↓
Input
   ↓
Player Update
   ↓
Enemy Spawn System
   ↓
Enemy Movement
   ↓
Collision System
   ↓
Score System
   ↓
Rendering
```

---

### Endless runner trick

The player **never moves forward**.

Instead:

```
world moves left
```

Enemies spawn from the right side.

Example:

```
spawnX = canvasWidth
```

Then move:

```
enemy.x -= speed
```

---

### Difficulty scaling

Game gradually becomes harder.

Common techniques:

```
increase enemy speed
spawn enemies faster
add new enemy types
```

---

# The Real Game Engine Structure

The full architecture becomes:

```
Game
 ├─ InputHandler
 ├─ Player
 │    └─ StateMachine
 ├─ Background
 │    └─ Parallax Layers
 ├─ EnemyManager
 │    ├─ FlyingEnemy
 │    ├─ GroundEnemy
 │    └─ ClimbingEnemy
 ├─ CollisionSystem
 └─ UI
```

This is **almost identical to real game engines**.

---