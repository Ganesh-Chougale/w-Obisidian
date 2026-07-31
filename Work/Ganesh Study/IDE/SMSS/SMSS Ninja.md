# 1️. Query Execution & Output Control

Controls **execution and result display**.

| Shortcut          | Action                                      |
| ----------------- | ------------------------------------------- |
| `F5`              | Execute query                               |
| `CTRL + R`        | Toggle Results Pane (show/hide output)      |
| `CTRL + T`        | Results to Text                             |
| `CTRL + D`        | Results to Grid                             |
| `SHIFT + ALT + S` | Display Actual Execution Plan               |
| `CTRL + M`        | Include Execution Plan before running query |

---

# 2️. Object / Metadata Inspection

Used to quickly inspect **tables, views, procedures etc.**

| Shortcut                   | Action                 |
| -------------------------- | ---------------------- |
| `ALT + F1`                 | Show object structure  |
| `sp_help 'TableName'`      | Full table information |
| `sp_columns 'TableName'`   | Column details         |
| `sp_helpindex 'TableName'` | Index details          |

Example:

```sql
SELECT * FROM DIM_NAT;
```

Cursor on `DIM_NAT` → `ALT + F1`.

---

# 3️. Text Editing & Formatting

Used for **editing SQL text quickly**.

| Shortcut              | Action              |
| --------------------- | ------------------- |
| `CTRL + K , CTRL + C` | Comment selection   |
| `CTRL + K , CTRL + U` | Uncomment selection |
| `CTRL + SHIFT + U`    | Uppercase text      |
| `CTRL + SHIFT + L`    | Lowercase text      |
| `TAB`                 | Indent selection    |
| `SHIFT + TAB`         | Remove indent       |

These are **text manipulation shortcuts**.

---

# 4️. IntelliSense & Code Assistance

Helps while writing SQL.

| Shortcut           | Action                           |
| ------------------ | -------------------------------- |
| `CTRL + SPACE`     | Trigger IntelliSense suggestions |
| `CTRL + SHIFT + R` | Refresh IntelliSense cache       |
| `CTRL + J`         | Show object suggestions          |

IntelliSense = **auto-completion system for SQL objects**.

---

# 5️. Navigation

Move quickly inside large scripts.

| Shortcut      | Action                 |
| ------------- | ---------------------- |
| `CTRL + G`    | Go to specific line    |
| `CTRL + HOME` | Go to start of script  |
| `CTRL + END`  | Go to end of script    |
| `CTRL + →`    | Jump one word forward  |
| `CTRL + ←`    | Jump one word backward |

Useful when working with **1000+ line stored procedures**.

---

# 6️. Query Validation / Analysis

Used before executing queries.

| Shortcut           | Action                          |
| ------------------ | ------------------------------- |
| `CTRL + L`         | Parse query (syntax check only) |
| `CTRL + M`         | Include execution plan          |
| `CTRL + SHIFT + M` | Specify parameter values        |

---

# 7️. Window & Workspace Control

Manage query windows.

| Shortcut   | Action           |
| ---------- | ---------------- |
| `CTRL + N` | New query window |
| `CTRL + O` | Open SQL file    |
| `CTRL + S` | Save query       |
| `CTRL + W` | Close query tab  |

---

# Suggested Final Categories

A clean structure could be:

1. **Query Execution**
2. **Output / Result Controls**
3. **Object Inspection**
4. **Text Editing & Formatting**
5. **IntelliSense / Suggestions**
6. **Navigation**
7. **Query Analysis**
8. **Window Management**

---


```
F5
CTRL + R
ALT + F1
CTRL + SPACE
CTRL + K, CTRL + C
CTRL + K, CTRL + U
CTRL + SHIFT + R
CTRL + G
```
is essentials for greater experience  