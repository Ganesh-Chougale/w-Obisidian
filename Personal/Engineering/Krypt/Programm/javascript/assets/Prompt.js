const cryptographyGenerationPrompt = `
You are creating a custom cryptography collection for Vismur Cryptor.

Your task:
Generate a CSV file with exactly 128 encryption mappings.

CSV format:

srno,ascii,encrypted

Rules:

1. srno column
- Must contain exactly 001 to 128.
- Order must be exact.
- Do not skip numbers.
- Do not duplicate numbers.

2. ascii column
- Must contain all 128 ASCII characters in exact order.
- Each ASCII character must appear once only.
- Do not modify ASCII characters.
- Do not add or remove characters.

3. encrypted column
- Every ASCII character must have exactly one encrypted symbol.
- Each encrypted symbol must be unique.
- Do not use English alphabet characters (A-Z or a-z).
- Do not use numbers.
- Do not use whitespace.
- Do not use ASCII control characters.
- Use one Unicode symbol per encrypted value.

4. Security rules
- Encrypted symbols should not reveal the original ASCII character.
- Avoid predictable sequences.
- Avoid duplicate-looking symbols.
- Use symbols from different scripts, mathematical symbols, ancient scripts, and Unicode characters.

5. Output requirements
- Return only CSV content.
- No markdown.
- No explanation.
- First line must be:
srno,ascii,encrypted

Example:

srno,ascii,encrypted
001,A,Ж
002,B,あ
003,C,क

Generate all 128 rows.
`;