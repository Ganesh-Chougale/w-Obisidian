# `Sprite Animation`

### Concept

A **sprite** is a 2D image representing an object in a game.

Example:

```text
player.png
enemy.png
coin.png
```

But characters need **movement animation**.

Instead of loading many images, games store animation frames in **one big image**.

---

### Why this technique exists

Loading multiple images is expensive.

```text
walk1.png
walk2.png
walk3.png
walk4.png
```

Instead we store them in **one image**.

Benefits:

• fewer HTTP requests
• faster rendering
• easy frame switching

---

### Core idea

Animation = **rapidly switching frames**

Example timeline:

```
frame 0 → frame 1 → frame 2 → frame 3 → repeat
```

At ~10–20 frames per second.

---

### How engines think about it

Each animated object stores:

```
currentFrame
maxFrame
frameTimer
frameInterval
```

Flow:

```
every frame
  increase timer
  if timer > interval
      next animation frame
```

---