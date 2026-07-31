PostgreSQL offers three main character data types to store text strings. Unlike many other database engines, all three perform identically under the hood in PostgreSQL, so your choice depends entirely on whether you want to enforce length restrictions.  
## 1. The Three Main Character Types

| Name | Description | Trailing Spaces | Max Storage Size |
|---|---|---|---|
| VARCHAR(n) | Variable-length with a limit. | Kept as inserted. | Up to 1 GB |
| CHAR(n) (or CHARACTER) | Fixed-length, blank-padded. | Padded with spaces. | Up to 1 GB |
| TEXT | Variable-length with no limit. | Kept as inserted. | Up to 1 GB |

## 2. Breakdown of Each Type

* VARCHAR(n)
* How it works: Stores variable-length strings up to n characters long. If you insert a string shorter than n, it only uses space for the actual characters. It throws an error if the input exceeds n.
   * Best Used For: Columns that require a strict upper boundary but have varying text lengths (e.g., VARCHAR(100) for an email address or VARCHAR(15) for a phone number). 
* CHAR(n)
* How it works: Stores fixed-length strings padded with trailing spaces up to n characters. If you insert "cat" into a CHAR(5), it physically stores "cat ".
   * Best Used For: Fixed-length codes where all entries are exactly the same size (e.g., CHAR(2) for US state abbreviations like "NY", or CHAR(3) for currency codes like "USD"). 
* TEXT
* How it works: Stores strings of any length without needing to specify a limit. There is no performance penalty for using TEXT over VARCHAR(n) in PostgreSQL.
   * Best Used For: Product descriptions, blog post bodies, user comments, or any field where setting an arbitrary length constraint does not make sense. 

## 3. PostgreSQL Unlimited Variations
If you declare VARCHAR without specifying (n), it behaves exactly like TEXT, allowing strings of unlimited length up to the 1 GB physical limit.   