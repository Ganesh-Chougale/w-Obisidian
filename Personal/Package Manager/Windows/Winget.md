# 1. Search app

```powershell
winget search chrome
```

You’ll see something like:

```
Name            Id               Version
----------------------------------------
Google Chrome   Google.Chrome    xxx
```

Use the **Id = `Google.Chrome`** (important for exact commands)

---

# 2. Install / Uninstall

## ✔ Install

```powershell
winget install --id Google.Chrome
```

---

## ✔ Uninstall

```powershell
winget uninstall --id Google.Chrome
```

---

# 3. Search installed (with sorting)

## ✔ Sorted properly

```powershell
winget list | Sort-Object
```
---

## ✔ Search by name

```powershell
winget list chrome
```
---

## ✔ Filter only Chrome (clean way)

```powershell
winget list --output json | ConvertFrom-Json | Where-Object {$_.Id -eq "Google.Chrome"}
```

---

# 4. Upgrade app

refresh the source first
```powershell
winget source update
```

## ✔ Check if update available

```powershell
winget upgrade Google.Chrome
```

---

## ✔ Upgrade

```powershell
winget upgrade --id Google.Chrome
```

---

## ✔ Upgrade ALL apps

```powershell
winget upgrade --all
```

---

# Explanation (important understanding)

### Why we use `--id`

* App names can be similar
* ID is **unique and reliable**

---

### Why JSON method for sorting

* `winget list` → plain text ❌
* `--output json` → structured data ✅
* `ConvertFrom-Json` → usable objects ✅

---

# Real-world note

Even if you installed Chrome manually:

* It will still show as `Google.Chrome` (like in your output)
* You can still upgrade it via winget ✔

---