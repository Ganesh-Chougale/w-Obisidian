# `Parallax Scrolling Backgrounds`

### Concept

Parallax creates **depth illusion**.

Example real world:

When you're in a car:

```
mountains → move slowly
trees     → move faster
road      → moves fastest
```

Same concept in games.

---

### Layer structure

Example:

```
Layer 1 → sky
Layer 2 → mountains
Layer 3 → trees
Layer 4 → ground
```

Each layer has different speed.

```
sky       speed 0.1
mountains speed 0.3
trees     speed 0.6
ground    speed 1
```

---

### Result

Player moves → background scrolls.

Instead of moving the player across a large world, the **world moves left**.

This creates the **illusion of movement**.

---

### Important trick

Background images **loop infinitely**.

Technique:

```
draw image
draw same image again next to it
```

When first image leaves screen → reset position.

This is called:

> **seamless background looping**

---