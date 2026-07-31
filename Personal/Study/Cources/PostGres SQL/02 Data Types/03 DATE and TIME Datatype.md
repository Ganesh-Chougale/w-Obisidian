PostgreSQL provides a robust set of data types to handle dates, times, and time zones accurately.  
## 1. Main Date and Time Types

| Name | Storage Size | Description | Format | Range |
|---|---|---|---|---|
| DATE | 4 bytes | Date only (no time) | YYYY-MM-DD | 4713 BC to 5874897 AD |
| TIME | 8 bytes | Time of day only (no date) | HH:MI:SS | 00:00:00 to 24:00:00 |
| TIMESTAMP | 8 bytes | Both date and time | YYYY-MM-DD HH:MI:SS | 4713 BC to 294276 AD |
| INTERVAL | 16 bytes | Time spans / durations | 1 day 3 hours | -178,000,000 to 178,000,000 years |

------------------------------
## 2. The Critical Time Zone Distinction
When working with time or timestamps, you must choose whether to store time zone information. PostgreSQL implements this using two variants for both TIMESTAMP and TIME: 

* TIMESTAMP WITH TIME ZONE (or TIMESTAMPTZ)
* How it works: Recommended for almost all applications. When you input a timestamp, PostgreSQL converts it to UTC and stores it. When you query it, PostgreSQL automatically converts it back to your database's local or session time zone.
   * Best Used For: Order timestamps, log files, user activity tracking, and cross-border scheduling. 
* TIMESTAMP WITHOUT TIME ZONE (or TIMESTAMP)
* How it works: Stores the exact date and time value you enter without any time zone adjustments or context.
   * Best Used For: Abstract dates and times like store operating hours (e.g., "Opens at 9:00 AM" regardless of the viewer's location). 
* TIME WITH TIME ZONE (TIMETZ) & TIME WITHOUT TIME ZONE (TIME)
* Note: The SQL standard defines TIMETZ, but its use is strongly discouraged by the PostgreSQL development team because a time without an associated date cannot accurately account for Daylight Saving Time shifts. Use TIME or TIMESTAMPTZ instead.

------------------------------
## 3. The INTERVAL Type
The INTERVAL type is unique because it represents a period of time rather than a specific point in time. It allows you to perform clean calendar math.

* Example Syntax:
```sql
SELECT NOW() + INTERVAL '1 day 3 hours';
SELECT DATE '2026-07-03' - INTERVAL '2 weeks';
```   
