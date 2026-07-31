# Tags

Learning topics:

#programming
#obsidian
#markdown

# Lesson 7 — Tags

Create:

```text
07 Tags.md
```

---

## What are Tags?

Tags are labels attached to notes.

Syntax:

```md
#tag
```

Example:

```md
#javascript
#sql
#programming
```

When Obsidian sees `#something`, it treats it as a tag.

---

## Basic Example

Inside `07 Tags.md`:

```md
# Tags

Learning topics:

#programming
#obsidian
#markdown
```

Now click:

```md
#programming
```

Obsidian searches all notes containing:

```md
#programming
```

---

# Tags vs Links

This is important.

## Link

```md
[[JavaScript]]
```

means:

> This note is connected to another note.

Relationship:

```text
Note A ─────> Note B
```

---

## Tag

```md
#javascript
```

means:

> This note belongs to a category.

Relationship:

```text
Note A
  |
  └── tag: javascript
```

---

Example:

### JavaScript.md

```md
# JavaScript

#programming
#frontend

Variables
Functions
Objects
```

### SQL.md

```md
# SQL

#programming
#database
```

Both can share:

```md
#programming
```

but they don't need to link directly.

---

# Nested Tags

You can create hierarchy:

```md
#programming/javascript
```

Meaning:

```text
programming
    |
    └── javascript
```

Examples:

```md
#programming/backend
#programming/frontend
#database/postgresql
#database/sql
```

---

# Tags Panel

Open:

```text
Settings
   ↓
Core Plugins
   ↓
Tags
```

or use search:

```text
tag:javascript
```

Obsidian can find all notes with that tag.

---

# When should you use Tags?

Good:

```md
#status/todo

#concept

#question

#reference
```

Example:

```md
# Time Complexity

#dsa
#concept
#important
```

---

Avoid:

```md
#JavaScript
#JS
#JavascriptLanguage
#ProgrammingLanguage
```

Too many similar tags create confusion.

---

# Your Snippet

Create:

Prefix:

```text
tag
```

Body:

```md
#${1:tag-name}
```

Description:

```text
Obsidian Tag
```

---

## Exercise

Create:

```text
Basics
├── 07 Tags.md
```

Add:

```md
# Tags

#obsidian
#markdown
#learning/tools
```

Then search:

```text
tag:obsidian
```