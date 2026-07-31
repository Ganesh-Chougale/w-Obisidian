| Data Type [1, 2, 3] | Memory Size | Minimum Value | Maximum Value | C# | Java | C++ | Python | JavaScript |
|---|---|---|---|---|---|---|---|---|
| Int16 | 16 bits (2 bytes) | -32,768 | 32,767 | short | short | short or int16_t | Dynamic int | Dynamic Number |
| Int32 | 32 bits (4 bytes) | -2,147,483,648 | 2,147,483,647 | int | int | int or int32_t | Dynamic int | Dynamic Number |
| Int64 | 64 bits (8 bytes) | -9.22 × 10¹⁸ | 9.22 × 10¹⁸ | long | long | long long or int64_t | Dynamic int | BigInt |
| Int128 | 128 bits (16 bytes) | -1.70 × 10³⁸ | 1.70 × 10³⁸ | Int128 | BigInteger | __int128 or int128_t | Dynamic int | BigInt |

## Important C++ Context
In standard C++, primitive types like int and long can actually change sizes depending on the operating system and compiler you use. To guarantee exact bit sizes just like C# does, C++ developers include the <cstdint> header to unlock the explicit aliases listed above (like int32_t and int64_t).