PostgreSQL provides three main categories of numeric data types: integers, arbitrary precision numbers (for exact values), and floating-point numbers (for fractional approximations)  
## 1. Integer Types
Use these for whole numbers without decimals. They differ only by their storage capacity and size.   

| Name | Storage Size | Range | Best Used For |
|---|---|---|---|
| SMALLINT | 2 bytes | -32,768 to +32,767 | Small counters, status codes, or ages |
| INT (or INTEGER) | 4 bytes | -2.14 billion to +2.14 billion | Standard IDs, quantities, and general counters |
| BIGINT | 8 bytes | -9.22 quintillion to +9.22 quintillion | High-traffic IDs, large financial totals, microsecond timestamps |

## 2. Arbitrary Precision Numbers (Exact Decimals)
Use these when exactness is critical. They do not suffer from rounding errors.

* NUMERIC(precision, scale) or DECIMAL(precision, scale)
* Precision: Total number of digits (before and after the decimal).
   * Scale: Total number of digits after the decimal point.
   * Example: NUMERIC(10,2) can store up to 99999999.99.
   * Best Used For: Money, monetary amounts, and calculations requiring exact results.

## 3. Floating-Point Types (Inexact Decimals)
Use these for scientific calculations or massive ranges where absolute precision is less important than performance and storage efficiency. 

* REAL (4 bytes): Inexact variable precision up to 6 decimal digits.
* DOUBLE PRECISION (8 bytes): Inexact variable precision up to 15 decimal digits.
* Best Used For: Geographical coordinates (latitude/longitude), scientific data, and physics engines. 

## 4. Serial Types (Auto-Incrementing Integers) [29] 
These are not distinct data types, but rather a shortcut syntax to create auto-incrementing identity columns (similar to AUTO_INCREMENT in other databases). 

* SMALLSERIAL (2 bytes): 1 to 32,767.
* SERIAL (4 bytes): 1 to 2,147,483,647.
* BIGSERIAL (8 bytes): 1 to 9,223,372,036,854,775,807.

(Note: In modern PostgreSQL versions, it is recommended to use the standard SQL syntax GENERATED ALWAYS AS IDENTITY instead of SERIAL columns for better security and standards compliance).