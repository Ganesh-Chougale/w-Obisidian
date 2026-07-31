# Company Rules - Engineering Standards

## Tech Stack

### Framework and Runtime
- Rule: Target .NET Framework 4.5

### Web Framework
- Rule: Use ASP.NET MVC 5.2.2

### ORM
- Rule: Use Dapper 1.42 for data access

### Additional Libraries
- Rule: Use Newtonsoft.Json for JSON serialization. Multiple projects reference Newtonsoft.Json 6.0.4, upgraded to 13.0.0
- Rule: Use Entity Framework 6.0 for some operations
- Rule: Use Microsoft.AspNet.Identity for authentication
- Rule: Use Microsoft.Owin for OWIN middleware. Startup.cs uses OwinStartupAttribute and IAppBuilder
- Rule: Use Syncfusion.EJ for UI components.  Web.config references Syncfusion.EJ 18.3450.0.51
- Rule: Use iTextSharp for PDF generation
- Rule: Use OfficeOpenXml (EPPlus) for Excel operations

## Architecture

### Layered Architecture
- Rule: Separate projects into distinct layers. Solution contains DTO, Business, DALDapper, Business, Controller

### Project Naming
- Rule: Use [Company].[Product].[Layer] naming convention. Projects named ZanvarGroup.Erp.DTO, ZanvarGroup.Erp.Business, ZanvarGroup.Erp.DALDapper

### DTO Layer
- Rule: Use Portable Class Library (PCL) for DTOs. DTO project targets Profile259 PCL

### Data Access Layer
- Rule: Use Dapper micro-ORM in DAL layer. DALDapper project uses Dapper for all database operations

## Naming Conventions

### Interfaces
- Rule: Prefix interfaces with 'I'. All interfaces use I[ObjectName] pattern

### DTO Classes
- Rule: Prefix DTOs with 'Dto'. All DTO classes use Dto[ObjectName] pattern

### DAL Classes
- Rule: Prefix DAL classes with 'DAL'. All DAL classes use DAL[ObjectName] pattern

### Business Classes
- Rule: Use PascalCase for business class names. Business classes use simple PascalCase (e.g., Country, Branch)

### Parameters
- Rule: Use camelCase with Hungarian notation prefix for parameters. Parameters use prefixes like int, str, lst (e.g., intMatCode, intBranchCode, lstModule)

### Database Columns
- Rule: Use UPPER_SNAKE_CASE for database column names. SQL queries use uppercase column names (e.g., MATERIAL_CODE, BRANCH_CODE)

### Controllers
- Rule: Suffix controllers with 'Controller'. All controllers use [ObjectName]Controller pattern

### Areas
- Rule: Suffix area registration with 'AreaRegistration'. Area registration classes use [AreaName]AreaRegistration pattern

## Code Style

### Async/Await
- Rule: Use async/await for I/O operations. Controller methods and business methods use async Task<ActionResult> and async Task

### Task.Run Usage
- Rule: Use Task.Run to wrap synchronous calls. Business layer wraps DAL calls in Task.Run

### Using Statements
- Rule: Use using statements for resource management. ConManager and database connections use using statements

### Variable Declaration
- Rule: Use explicit type declarations instead of var. Code uses explicit types (List<>, int, string) instead of var

## Exception Handling

### Try-Catch Pattern
- Rule: Use try-catch blocks for error handling. Methods wrap operations in try-catch blocks

### Exception Re-throwing
- Rule: Use 'throw ex' to re-throw exceptions. Catch blocks use 'throw ex' pattern

## API and Controller Conventions

### Controller Inheritance
- Rule: Controllers inherit from Controller base class. All controllers inherit from System.Web.Mvc.Controller

### Authorization
- Rule: Use [Authorize] attribute for secured endpoints. Controllers use [Authorize] attribute

### Public Endpoints
- Rule: Use [AllowAnonymous] for public endpoints. Login and register methods use [AllowAnonymous]

## Database

### Database Server
- Rule: Use SQL Server. Connection strings use System.Data.SqlClient

### Connection Management
- Rule: Use ConManager class for database connections. ConManager class manages multiple database connections

### Stored Procedures
- Rule: Use stored procedures for complex operations. Methods call stored procedures with commandType: CommandType.StoredProcedure

## AI Coding Instructions

### General Guidelines
1. **Always use async/await** for I/O operations in controllers and business logic
2. **Follow naming conventions**: I[ObjectName] for interfaces, Dto[ObjectName] for DTOs, DAL[ObjectName] for DAL classes
3. **Use parameterized queries** with Dapper - never use string concatenation in SQL
4. **Implement IDisposable** for classes managing database connections or other resources
5. **Use TransactionScope** for operations involving multiple database changes
6. **Add [Authorize]** attribute to all secured controller actions
7. **Add [ValidateAntiForgeryToken]** to all POST actions
8. **Return JsonResult** for API endpoints and set MaxJsonLength for large responses
9. **Use TempData.Keep()** when persisting data across redirects
10. **Organize code by domain** in appropriate folders (Masters, Configs, Transactions, etc.)

### Code Style
1. Use explicit type declarations instead of var
2. Use #region directives to organize code sections
3. Add try-catch blocks for error handling
4. Use using statements for resource management
5. Follow existing parameter naming: camelCase with Hungarian notation (intParam, strParam, lstParam)

### Database
1. Use Dapper for all database operations
2. Use stored procedures for complex queries
3. Set commandTimeout to 900 for long-running operations
4. Use ConManager class for database connections
5. Parameter names should match database column names with @ prefix

### Configuration
1. Store configuration in Web.config appSettings
2. Use config: prefix for framework-related settings
3. Never hardcode credentials - use Web.config connectionStrings

### Architecture
1. Maintain layered architecture: DTO -> Business -> DAL
2. Business classes should call DAL classes via interfaces
3. Controllers should call Business layer methods
4. Use Areas to organize MVC modules by functionality

### Security
1. Always use parameterized queries to prevent SQL injection
2. Use [Authorize] on secured endpoints
3. Use [AllowAnonymous] only on public endpoints like login
4. Configure cookie authentication with HttpOnly and sliding expiration