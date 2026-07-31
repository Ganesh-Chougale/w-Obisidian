### 1. **Date range handling (default + input override)**

* At the **top of method**
* Logic:

  * If `FromDate == null` → take default from `MstMenu.ViewDays`
  * If `ToDate == null` → take current date

it fetches date value in yyyymmdd format.  
`ex.` "20260331"   
---

### 2. **Data fetching using Date Range**

* Always:

```csharp
await Entity.GetDateWiseAll(strStartDate, strToDate)
```

Examples:

* `AttendanceAdjustment.GetDateWiseAll`
* `SalaryProcess.GetDateWiseAll`
* `ChequeAgBillPayment.GetDateWiseAll`
* etc.

---

### 3. **Grid settings injected into ViewData**

* Same object used everywhere:

```csharp
TranGridSettings
```

Appears:

* After fetching list
* Before filtering

---

### 4. **Search filtering (LINQ `.Where`)**

* Condition:

```csharp
if (!string.IsNullOrEmpty(searchString))
```

* Pattern:

```csharp
_list = _list.Where(obj => field1.Contains(...) || field2.Contains(...)).ToList();
```

Location:

* Middle of method (after ViewBag setup)

---

### 5. **Sorting system (sortOrder + sortdir)**

* Same structure:

```csharp
if (!string.IsNullOrEmpty(sortdir)) { ... }

switch (sortOrder)
{
    case "...":
        if (desc) OrderByDescending(...)
        else OrderBy(...)
}
```

Always includes:

* Toggle sort direction via `ViewBag.SortDir`
* Default case → sort by `TrnDate + TrnNo DESC`

---

### 6. **Pagination (PagedList)**

* Same block in all:

```csharp
int pageSize = 50;
int pageNumber = 1;

if (page != null)
{
    pageNumber = Convert.ToInt16(page);
}
```

---

### 7. **Return PartialView with paged data**

* Final line in ALL:

```csharp
return PartialView(_list.ToPagedList(pageNumber, pageSize));
```

---

## All controllers are **copy-paste variations** of the same logic:

* Only **Entity type changes**
* Only **search fields change**
* Only **sort cases change**

Everything else is identical.

---