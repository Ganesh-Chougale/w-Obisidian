# Dapper method

1. Query():
- for List (अनेक records)
- मला database मधून records आणायचे आहेत.
- उदाहरण: → Customer ची अनेक records मिळतील.
```sql
SELECT * FROM Customer
```   

2. Execute():
- किती rows affected आहेत? त्याचा count दे.
- returns affected row count.
- database मध्ये काही बदल करायचा आहे.
- उदाहरण: INSERT, UPDATE, DELETE
```sql
UPDATE Customer
SET Name = 'Rahul'
WHERE Id = 1
```   
→ 1 row affected

# ADO.NET method
1. ExecuteScalar():
- पहिल्या row मधील पहिली value दे.
  (first column, first row)
- Database मधून एकच value पाहिजे असेल तेव्हा.
- उदाहरण: COUNT(), SUM(), MAX(), MIN(), etc.
```sql
SELECT COUNT(*) FROM Customer
```   
→ 25