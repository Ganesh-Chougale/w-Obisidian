## 1. One Action = One Work

**Task:** Pick up a ball

**For a human:**
```yml
1. A simple task: pick up the ball.
```

**For a machine:**
```yml
1. Detect the ball using sensors.
2. Move the mechanical arm toward the ball.
3. Open the gripper.
4. Position the gripper around the ball.
5. Close the gripper to grasp the ball.
6. Lift the ball.
```

Although the instruction was:

> Pick up the ball.

The machine completed **6 individual actions**.

For now, we'll call **each individual action = 1 unit of work.**

---

### Why Count Work?

Suppose two students solve the same problem.

- Student A: 20 steps
- Student B: 100 steps

Without using a stopwatch, you'd expect Student A to finish sooner because they performed fewer steps.

Computer science follows the same idea.

Instead of asking:

> "How much time will this take?"

It first asks:

> "How much work does this require?"