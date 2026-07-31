# `Enemy Movement Patterns`  

Enemies shouldn't move randomly.

They follow **patterns**.

Common types:

---

### Type 1 — Linear movement

Example:

```
enemy.x -= speed
```

Enemy moves straight left.

Used in endless runners.

---

### Type 2 — Sinusoidal movement

Enemies move like waves.

Example motion:

```
y = baseY + sin(angle)
```

This creates:

```
~ ~ ~ ~ ~
```

Flying enemy effect.

---

### Type 3 — Vertical climbers

Enemy moves up/down:

```
enemy.y += speed
```

Example:

```
spider climbing rope
```

---

### Type 4 — Random pattern

Movement changes occasionally.

Used for unpredictable enemies.

---

### Why patterns matter

Different patterns create:

```
difficulty
variety
player strategy
```

Without patterns, enemies feel **boring and robotic**.

---