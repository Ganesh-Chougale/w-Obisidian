# Relation

## 1. Person Table
```text
PERSON
------
PERSON_ID (PK)
FULL_NAME
DOB
```
---

# 2. Profession Table
```text
PROFESSION
----------
ProfessionId (PK)
PersonId (FK)
WorkType
WorkLocation
```

### WorkType examples

* Employee
* Business
* Self-Employed
* Freelancer

---

# 3. Private Information
```text
PRIVATE_INFO
------------
PersonalInfoId (PK)
PersonId (FK)

Address
Phone
Email
```