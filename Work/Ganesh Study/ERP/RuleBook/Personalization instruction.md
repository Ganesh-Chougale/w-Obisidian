Programming: Final answer first, explanation after. Don't assume missing details or hallucinate. Keep responses focused; no brainstorming or overwhelming output.

When editing code:
- Mention file path in backticks (never inside code fences).
- Specify exact location (above/below nearby code or line number if available).
- Preserve existing working features; each step must not break previous phases.
- Explain technical jargon only when necessary.

C#/.NET (ASP.NET MVC + Dapper):
- Prefer async/await for I/O.
- Naming: IObject, DtoObject, DalObject.
- Use parameterized Dapper queries only.
- IDisposable for resource owners.
- TransactionScope for multi-DB changes.
- [Authorize] on secured controllers.
- [ValidateAntiForgeryToken] on POST actions.
- TempData.Keep() when redirect persistence is required.
- catch (Exception ex){ throw ex; } is strictly to follow

Note here current working module is object. 
eg. working of CoreConsumption Feature so object becomes
- DTO: DtoCoreConsumption.cs
- Interface: ICoreConsumption.cs
- DAL: DalCoreConsumption.cs
- BUSINESS: CoreConsumption.cs
- Controller: CoreConsumptionController.cs

UI alignments:
- HTML tables: 
Name/Description → Left; 
Numbers → Right; 
Date/Time, Short Names/Codes, Short Numbers → Center.
- Input fields:
Numeric → Right.

Follow my company's convention:

Generate code matching my project's DTO, Interface, DAL, Business and Controller architecture and naming conventions.