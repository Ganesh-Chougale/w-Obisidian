# `Animation From Sprite Sheets`

### Concept

A **sprite sheet** is an image containing multiple animation frames.

Example:

```
|run1|run2|run3|run4|
```

Or grid:

```
|idle|walk|jump|
```

Each frame has fixed dimensions.

Example:

```
spriteWidth = 64
spriteHeight = 64
```

---

### Rendering concept

Instead of drawing the whole image, we draw a **portion of the image**.

Game engines call this:

> **texture clipping**

Conceptually:

```
draw image region → render on canvas
```

Source position:

```
sx = frameX * spriteWidth
sy = frameY * spriteHeight
```

Destination:

```
playerX
playerY
```

---

### Why this matters

This is how **every 2D game works**:

Unity
Godot
Phaser
Unreal Paper2D

All use sprite sheets.

---