# `Multiple Enemy Types`

Instead of one enemy class, we use **inheritance or specialization**.

Conceptually:

```
Enemy
  ├─ FlyingEnemy
  ├─ GroundEnemy
  └─ ClimbingEnemy
```

Each type changes behavior.

Example differences:

| Enemy   | Behavior       |
| ------- | -------------- |
| Flying  | sinus movement |
| Ground  | runs on floor  |
| Climber | moves vertical |

---

### Why this architecture matters

Shared properties:

```
x
y
width
height
speed
```

Shared methods:

```
update()
draw()
```

But each enemy can override behavior.

This pattern is common in **game engines**.

---