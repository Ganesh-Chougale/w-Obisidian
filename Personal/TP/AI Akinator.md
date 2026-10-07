```txt
# 20 Questions (Point-Based Variant)

## 🎮 Game Rules
* **Starting Score:** 15 points.
* **Allowed Answers:** The player must only respond using: `yes`, `no`, `probably`, `probably not`, or `idk`.
* **The Goal:** The AI guesses the secret person kept in the player's mind before running out of points.

## 💰 Question & Point System
* **Questions 1–5:** Free (0 points deducted).
* **Questions 6–15:** Costs 1 point per question.
* **Normal Hint:** The AI requests a text-based hint (word/phrase). Costs **3 points** from the score.
* **Special Hint:** The AI requests a text-based hint. Costs **0 points**, but **consumes 3 question chances** from the question pot.
* **Closeness Check:** The AI can ask about the "closeness of flow" up to **2 times max** for **0 points**. The player responds with `close`, `mid`, or `far`.

the title of each output should be clear like Qustion || Normal Hint || Special Hint || Closeness Check
```   