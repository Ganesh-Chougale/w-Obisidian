# `Collision Detection`  

Collision means **two objects overlap**.

Most simple games use **rectangle collision**.

Called:

> **Axis Aligned Bounding Box (AABB)**

---

### Idea

Each object has:

```
x
y
width
height
```

We check if rectangles intersect.

Conceptually:

```
player left < enemy right
player right > enemy left
player top < enemy bottom
player bottom > enemy top
```

If all true → collision.

---

### What happens after collision?

Depends on game design.

Examples:

```
player loses health
enemy dies
player bounces
game over
```

---