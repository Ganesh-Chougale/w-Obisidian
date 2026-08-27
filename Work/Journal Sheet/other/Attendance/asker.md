I work in a company with strict attendance rules. I will provide my monthly attendance CSV data. Your job is to analyze it and help me prepare the best possible HR adjustment request to minimize salary debit.

Company Rules:

Shifts:
1. Shift A: 09:00 AM - 05:30 PM
2. Shift B: 09:30 AM - 06:00 PM (my default shift)
3. Shift C: 10:00 AM - 06:30 PM

Late In Rules:
- Late minutes accumulate across working days.
- Every 15 accumulated late minutes = 0.5 debit.
- After debit generation, remaining minutes carry forward.
- Example:
  Day 1: 5 mins late
  Day 2: 7 mins late
  Day 3: 4 mins late

  Total = 16 mins

  Result:
  0.5 debit generated
  1 minute carries forward.

Do not simply calculate total late minutes. Calculate the running carry-forward chain.

Early Out Relief:
- Monthly early-out adjustment allowance = 120 minutes.
- It can be used as:
  - one 120-minute adjustment
  - or two separate 60-minute adjustments
- Treat this as available adjustment capacity, not fixed blocks.
- HR approves these adjustments manually.

Important Shift Adjustment Logic:

The main strategy is NOT directly removing late minutes.

The strategy is changing the shift for selected dates.

Example:

Original:

Date: 02 Jul
Shift: 09:30-18:00
Actual In: 09:38

Result:
Late In = 8 mins


Possible HR request:

Change shift:
10:00-18:30

Calculation:

Expected In:
10:00

Actual In:
09:38

Result:
22 minutes early

This removes the late mark.

IMPORTANT:
Whenever suggesting a 10:00-18:30 shift change, ALWAYS check the actual OutTime.

If actual OutTime is before 18:30, explicitly include Early Out adjustment in the request.

Example:

Shift changed:
10:00-18:30

Actual Out:
18:03

Then:

Early Out:
27 minutes

This must be mentioned separately.

Do NOT only say:
"Change shift to 10:00-18:30"

because HR may calculate:
10:00-18:30 shift
Actual Out 18:03
= 27 mins early out problem.

The request must include:
"Please adjust early out against my available early-out relief."

Analysis Requirements:

1. Extract all Late In records from the CSV.
2. Ignore Weekly Off, Absent Day, and non-working days.
3. Create running late accumulation table:
   Date
   Late Added
   Carry Before
   Total
   Debit Generated
   Carry After

4. Identify dates where:
   - A debit was generated
   - A future debit is close to triggering

5. Find the best dates where changing shift can break the late accumulation chain.

Priority:
1. Prevent half debit generation.
2. Reduce number of debits.
3. Use minimum early-out relief possible.
4. Prefer shift changes that convert late minutes into early minutes.

Available shift conversion logic:

If Actual In is between 09:00 and 10:00:
- Prefer checking 10:00-18:30 shift.

If Actual In is before 09:00:
- Check whether 09:00-17:30 shift is appropriate.

Do not recommend a shift change without checking:
- Actual In
- Actual Out
- Resulting Early In
- Resulting Early Out

Output Format:

Provide:

A) Current debit calculation

B) Best adjustment plan table:

Date |
Current Shift |
Actual In |
Suggested Shift |
Early In Created |
Early Out Created |
Reason

C) Expected debit after adjustment

D) HR email draft explaining:
- dates requiring shift adjustment
- early-out relief usage
- early arrivals if relevant
- polite request for attendance correction

Here is my attendance CSV:
[PASTE CSV HERE]