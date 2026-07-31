I'll conduct a comprehensive engineering standards audit of this repository. Let me create a systematic investigation plan and begin examining the codebase.



































Based on my comprehensive analysis of the ERP repository, I have gathered sufficient evidence to compile the CompanyRules.md document. I will now create this document with all the engineering standards I've reverse-engineered from the codebase.

**Note:** You are currently in Ask mode. To create the CompanyRules.md file, you need to switch to Code mode using the mode selector in the input box. Once in Code mode, I can create the file for you.

Here is the complete CompanyRules.md content I've compiled:

---

# Company Rules - Engineering Standards

## Tech Stack

### Framework and Runtime
- **Rule**: Target .NET Framework 4.5
- **Evidence**: All .csproj files specify `<TargetFrameworkVersion>v4.5</TargetFrameworkVersion>`
- **Example Files**: [ZanvarGroup.Erp.Business\ZanvarGroup.Erp.Business.csproj](cci:7://file:///d:/ZanvarGroup/Source/ERP/ZanvarGroup.Erp.Business/ZanvarGroup.Erp.Business.csproj:0:0-0:0), [ZanvarGroup.Erp.DALDapper\ZanvarGroup.Erp.DALDapper.csproj](cci:7://file:///d:/ZanvarGroup/Source/ERP/ZanvarGroup.Erp.DALDapper/ZanvarGroup.Erp.DALDapper.csproj:0:0-0:0), [ZanwarGroup.Erp.DTO\ZanvarGroup.Erp.DTO.csproj](cci:7://file:///d:/ZanvarGroup/Source/ERP/ZanwarGroup.Erp.DTO/ZanvarGroup.Erp.DTO.csproj:0:0-0:0)
- **Confidence**: HIGH (observed across 10+ projects)

### Web Framework
- **Rule**: Use ASP.NET MVC 5.2.2
- **Evidence**: Web.config assembly binding redirects to System.Web.Mvc 5.2.2.0
- **Example Files**: [webapp\Web.config](cci:7://file:///d:/ZanvarGroup/Source/ERP/webapp/Web.config:0:0-0:0) (lines 125-127)
- **Confidence**: HIGH

### ORM
- **Rule**: Use Dapper 1.42 for data access
- **Evidence**: DALDapper project references Dapper package
- **Example Files**: [ZanvarGroup.Erp.DALDapper\ZanvarGroup.Erp.DALDapper.csproj](cci:7://file:///d:/ZanvarGroup/Source/ERP/ZanvarGroup.Erp.DALDapper/ZanvarGroup.Erp.DALDapper.csproj:0:0-0:0), [ZanvarGroup.Erp.DALDapper\Implementation\Configs\DalMstBranchDeptMinMax.cs](cci:7://file:///d:/ZanvarGroup/Source/ERP/ZanvarGroup.Erp.DALDapper/Implementation/Configs/DalMstBranchDeptMinMax.cs:0:0-0:0)
- **Confidence**: HIGH

### Additional Libraries
- **Rule**: Use Newtonsoft.Json for JSON serialization
- **Evidence**: Multiple projects reference Newtonsoft.Json 6.0.4, upgraded to 13.0.0
- **Example Files**: [ZanvarGroup.Erp.Business\ZanvarGroup.Erp.Business.csproj](cci:7://file:///d:/ZanvarGroup/Source/ERP/ZanvarGroup.Erp.Business/ZanvarGroup.Erp.Business.csproj:0:0-0:0), [webapp\Web.config](cci:7://file:///d:/ZanvarGroup/Source/ERP/webapp/Web.config:0:0-0:0) (assembly binding)
- **Confidence**: HIGH

- **Rule**: Use Entity Framework 6.0 for some operations
- **Evidence**: Web.config includes EntityFramework section and provider
- **Example Files**: [webapp\Web.config](cci:7://file:///d:/ZanvarGroup/Source/ERP/webapp/Web.config:0:0-0:0) (lines 9-10, 170-179)
- **Confidence**: MEDIUM

- **Rule**: Use Microsoft.AspNet.Identity for authentication
- **Evidence**: Startup.cs and AccountController use Identity
- **Example Files**: [webapp\Startup.cs](cci:7://file:///d:/ZanvarGroup/Source/ERP/webapp/Startup.cs:0:0-0:0), [webapp\Controllers\AccountController.cs](cci:7://file:///d:/ZanvarGroup/Source/ERP/webapp/Controllers/AccountController.cs:0:0-0:0)
- **Confidence**: HIGH

- **Rule**: Use Microsoft.Owin for OWIN middleware
- **Evidence**: Startup.cs uses OwinStartupAttribute and IAppBuilder
- **Example Files**: [webapp\Startup.cs](cci:7://file:///d:/ZanvarGroup/Source/ERP/webapp/Startup.cs:0:0-0:0)
- **Confidence**: HIGH

- **Rule**: Use Syncfusion.EJ for UI components
- **Evidence**: Web.config references Syncfusion.EJ 18.3450.0.51
- **Example Files**: [webapp\Web.config](cci:7://file:///d:/ZanvarGroup/Source/ERP/webapp/Web.config:0:0-0:0) (lines 95, 110)
- **Confidence**: MEDIUM

- **Rule**: Use iTextSharp for PDF generation
- **Evidence**: Business project references itextsharp
- **Example Files**: [ZanvarGroup.Erp.Business\ZanvarGroup.Erp.Business.csproj](cci:7://file:///d:/ZanvarGroup/Source/ERP/ZanvarGroup.Erp.Business/ZanvarGroup.Erp.Business.csproj:0:0-0:0)
- **Confidence**: MEDIUM

- **Rule**: Use OfficeOpenXml (EPPlus) for Excel operations
- **Evidence**: HomeController imports OfficeOpenXml
- **Example Files**: [webapp\Controllers\HomeController.cs](cci:7://file:///d:/ZanvarGroup/Source/ERP/webapp/Controllers/HomeController.cs:0:0-0:0) (lines 21-22)
- **Confidence**: MEDIUM

## Architecture

### Layered Architecture
- **Rule**: Separate projects into distinct layers
- **Evidence**: Solution contains DTO, Business, DALDapper, Business.Services, Business.Entities projects
- **Example Files**: [ZanvarGroup.Erp.sln](cci:7://file:///d:/ZanvarGroup/Source/ERP/ZanvarGroup.Erp.sln:0:0-0:0)
- **Confidence**: HIGH

### Project Naming
- **Rule**: Use [Company].[Product].[Layer] naming convention
- **Evidence**: Projects named ZanvarGroup.Erp.DTO, ZanvarGroup.Erp.Business, ZanvarGroup.Erp.DALDapper
- **Example Files**: [ZanvarGroup.Erp.sln](cci:7://file:///d:/ZanvarGroup/Source/ERP/ZanvarGroup.Erp.sln:0:0-0:0)
- **Confidence**: HIGH

### DTO Layer
- **Rule**: Use Portable Class Library (PCL) for DTOs
- **Evidence**: DTO project targets Profile259 PCL
- **Example Files**: [ZanwarGroup.Erp.DTO\ZanvarGroup.Erp.DTO.csproj](cci:7://file:///d:/ZanvarGroup/Source/ERP/ZanwarGroup.Erp.DTO/ZanvarGroup.Erp.DTO.csproj:0:0-0:0)
- **Confidence**: HIGH

### Data Access Layer
- **Rule**: Use Dapper micro-ORM in DAL layer
- **Evidence**: DALDapper project uses Dapper for all database operations
- **Example Files**: [ZanvarGroup.Erp.DALDapper\Implementation\Configs\DalMstBranchDeptMinMax.cs](cci:7://file:///d:/ZanvarGroup/Source/ERP/ZanvarGroup.Erp.DALDapper/Implementation/Configs/DalMstBranchDeptMinMax.cs:0:0-0:0)
- **Confidence**: HIGH

### Repository Pattern (Partial)
- **Rule**: Use Repository pattern in ChatSocket module
- **Evidence**: ChatSocket.DataAccess has IRepository interface and BaseRepository
- **Example Files**: [ZanvarGroup.Erp.ChatSocket.DataAccess\Repositories\IRepository.cs](cci:7://file:///d:/ZanvarGroup/Source/ERP/ZanvarGroup.Erp.ChatSocket.DataAccess/Repositories/IRepository.cs:0:0-0:0), [ZanvarGroup.Erp.ChatSocket.DataAccess\BaseRepository.cs](cci:7://file:///d:/ZanvarGroup/Source/ERP/ZanvarGroup.Erp.ChatSocket.DataAccess/BaseRepository.cs:0:0-0:0)
- **Confidence**: MEDIUM (only in ChatSocket module)

### Dependency Injection
- **Rule**: UNKNOWN - No DI container evidence found
- **Evidence**: Controllers use direct instantiation (e.g., `new DALMstCountry()`)
- **Example Files**: [ZanvarGroup.Erp.Business\Masters\Country.cs](cci:7://file:///d:/ZanvarGroup/Source/ERP/ZanvarGroup.Erp.Business/Masters/Country.cs:0:0-0:0) (line 31)
- **Confidence**: LOW (evidence suggests manual instantiation)

## Naming Conventions

### Interfaces
- **Rule**: Prefix interfaces with 'I'
- **Evidence**: All interfaces use I[ObjectName] pattern
- **Example Files**: [ZanwarGroup.Erp.DTO\Configs\Interfaces\IMstBranchDeptMinMax.cs](cci:7://file:///d:/ZanvarGroup/Source/ERP/ZanwarGroup.Erp.DTO/Configs/Interfaces/IMstBranchDeptMinMax.cs:0:0-0:0), [ZanvarGroup.Erp.ChatSocket.DataAccess\Repositories\IRepository.cs](cci:7://file:///d:/ZanvarGroup/Source/ERP/ZanvarGroup.Erp.ChatSocket.DataAccess/Repositories/IRepository.cs:0:0-0:0)
- **Confidence**: HIGH

### DTO Classes
- **Rule**: Prefix DTOs with 'Dto'
- **Evidence**: All DTO classes use Dto[ObjectName] pattern
- **Example Files**: `ZanwarGroup.Erp.DTO\Configs\Objects\DtoMstBranchDeptMinMax.cs`
- **Confidence**: HIGH

### DAL Classes
- **Rule**: Prefix DAL classes with 'DAL'
- **Evidence**: All DAL classes use DAL[ObjectName] pattern
- **Example Files**: [ZanvarGroup.Erp.DALDapper\Implementation\Configs\DalMstBranchDeptMinMax.cs](cci:7://file:///d:/ZanvarGroup/Source/ERP/ZanvarGroup.Erp.DALDapper/Implementation/Configs/DalMstBranchDeptMinMax.cs:0:0-0:0)
- **Confidence**: HIGH

### Business Classes
- **Rule**: Use PascalCase for business class names
- **Evidence**: Business classes use simple PascalCase (e.g., Country, Branch)
- **Example Files**: [ZanvarGroup.Erp.Business\Masters\Country.cs](cci:7://file:///d:/ZanvarGroup/Source/ERP/ZanvarGroup.Erp.Business/Masters/Country.cs:0:0-0:0)
- **Confidence**: HIGH

### Service Classes
- **Rule**: Suffix service classes with 'Service'
- **Evidence**: Service classes use [ObjectName]Service pattern
- **Example Files**: [ZanvarGroup.Erp.Business.Services\ZanvarGroup.Erp.Business.Services.csproj](cci:7://file:///d:/ZanvarGroup/Source/ERP/ZanvarGroup.Erp.Business.Services/ZanvarGroup.Erp.Business.Services.csproj:0:0-0:0) (AccountGroupService, EmployeeService)
- **Confidence**: HIGH

### Parameters
- **Rule**: Use camelCase with Hungarian notation prefix for parameters
- **Evidence**: Parameters use prefixes like int, str, lst (e.g., intMatCode, intBranchCode, lstModule)
- **Example Files**: [ZanvarGroup.Erp.DALDapper\Implementation\Configs\DalMstBranchDeptMinMax.cs](cci:7://file:///d:/ZanvarGroup/Source/ERP/ZanvarGroup.Erp.DALDapper/Implementation/Configs/DalMstBranchDeptMinMax.cs:0:0-0:0) (lines 16, 50)
- **Confidence**: HIGH

### Database Columns
- **Rule**: Use UPPER_SNAKE_CASE for database column names
- **Evidence**: SQL queries use uppercase column names (e.g., MATERIAL_CODE, BRANCH_CODE)
- **Example Files**: [ZanvarGroup.Erp.DALDapper\Implementation\Configs\DalMstBranchDeptMinMax.cs](cci:7://file:///d:/ZanvarGroup/Source/ERP/ZanvarGroup.Erp.DALDapper/Implementation/Configs/DalMstBranchDeptMinMax.cs:0:0-0:0) (lines 23-29)
- **Confidence**: HIGH

### Controllers
- **Rule**: Suffix controllers with 'Controller'
- **Evidence**: All controllers use [ObjectName]Controller pattern
- **Example Files**: [webapp\Controllers\HomeController.cs](cci:7://file:///d:/ZanvarGroup/Source/ERP/webapp/Controllers/HomeController.cs:0:0-0:0), [webapp\Controllers\AccountController.cs](cci:7://file:///d:/ZanvarGroup/Source/ERP/webapp/Controllers/AccountController.cs:0:0-0:0)
- **Confidence**: HIGH

### Areas
- **Rule**: Suffix area registration with 'AreaRegistration'
- **Evidence**: Area registration classes use [AreaName]AreaRegistration pattern
- **Example Files**: [webapp\Areas\Masters\MastersAreaRegistration.cs](cci:7://file:///d:/ZanvarGroup/Source/ERP/webapp/Areas/Masters/MastersAreaRegistration.cs:0:0-0:0), [webapp\Areas\HRM\HRMAreaRegistration.cs](cci:7://file:///d:/ZanvarGroup/Source/ERP/webapp/Areas/HRM/HRMAreaRegistration.cs:0:0-0:0)
- **Confidence**: HIGH

## Code Style

### Async/Await
- **Rule**: Use async/await for I/O operations
- **Evidence**: Controller methods and business methods use async Task<ActionResult> and async Task
- **Example Files**: [webapp\Controllers\HomeController.cs](cci:7://file:///d:/ZanvarGroup/Source/ERP/webapp/Controllers/HomeController.cs:0:0-0:0) (line 39), [ZanvarGroup.Erp.Business\Masters\Country.cs](cci:7://file:///d:/ZanvarGroup/Source/ERP/ZanvarGroup.Erp.Business/Masters/Country.cs:0:0-0:0) (line 27)
- **Confidence**: HIGH

### Task.Run Usage
- **Rule**: Use Task.Run to wrap synchronous calls
- **Evidence**: Business layer wraps DAL calls in Task.Run
- **Example Files**: [ZanvarGroup.Erp.Business\Masters\Country.cs](cci:7://file:///d:/ZanvarGroup/Source/ERP/ZanvarGroup.Erp.Business/Masters/Country.cs:0:0-0:0) (line 32)
- **Confidence**: HIGH

### Using Statements
- **Rule**: Use using statements for resource management
- **Evidence**: ConManager and database connections use using statements
- **Example Files**: [ZanvarGroup.Erp.DALDapper\Implementation\Configs\DalMstBranchDeptMinMax.cs](cci:7://file:///d:/ZanvarGroup/Source/ERP/ZanvarGroup.Erp.DALDapper/Implementation/Configs/DalMstBranchDeptMinMax.cs:0:0-0:0) (lines 31, 57, 89)
- **Confidence**: HIGH

### Region Directives
- **Rule**: Use #region directives to organize code
- **Evidence**: Controllers use #region Using for imports
- **Example Files**: [webapp\Controllers\HomeController.cs](cci:7://file:///d:/ZanvarGroup/Source/ERP/webapp/Controllers/HomeController.cs:0:0-0:0) (line 1), [webapp\Controllers\AccountController.cs](cci:7://file:///d:/ZanvarGroup/Source/ERP/webapp/Controllers/AccountController.cs:0:0-0:0) (line 1)
- **Confidence**: MEDIUM

### Variable Declaration
- **Rule**: Use explicit type declarations instead of var
- **Evidence**: Code uses explicit types (List<>, int, string) instead of var
- **Example Files**: [ZanvarGroup.Erp.Business\Masters\Country.cs](cci:7://file:///d:/ZanvarGroup/Source/ERP/ZanvarGroup.Erp.Business/Masters/Country.cs:0:0-0:0) (lines 29, 56)
- **Confidence**: HIGH

### Nullable Types
- **Rule**: UNKNOWN - No clear pattern observed
- **Evidence**: Mixed usage of nullable and non-nullable types
- **Example Files**: Various files
- **Confidence**: LOW

## Exception Handling

### Try-Catch Pattern
- **Rule**: Use try-catch blocks for error handling
- **Evidence**: Methods wrap operations in try-catch blocks
- **Example Files**: [ZanvarGroup.Erp.DALDapper\Implementation\Configs\DalMstBranchDeptMinMax.cs](cci:7://file:///d:/ZanvarGroup/Source/ERP/ZanvarGroup.Erp.DALDapper/Implementation/Configs/DalMstBranchDeptMinMax.cs:0:0-0:0) (lines 18-47)
- **Confidence**: HIGH

### Exception Re-throwing
- **Rule**: Use 'throw ex' to re-throw exceptions
- **Evidence**: Catch blocks use 'throw ex' pattern
- **Example Files**: [ZanvarGroup.Erp.DALDapper\Implementation\Configs\DalMstBranchDeptMinMax.cs](cci:7://file:///d:/ZanvarGroup/Source/ERP/ZanvarGroup.Erp.DALDapper/Implementation/Configs/DalMstBranchDeptMinMax.cs:0:0-0:0) (line 46)
- **Confidence**: HIGH

### Generic Error Messages
- **Rule**: Use generic error messages
- **Evidence**: Generic messages like "Request Failed", "Failed To Insert"
- **Example Files**: [ZanvarGroup.Erp.Business\Masters\Country.cs](cci:7://file:///d:/ZanvarGroup/Source/ERP/ZanvarGroup.Erp.Business/Masters/Country.cs:0:0-0:0) (lines 36, 50, 125)
- **Confidence**: HIGH

### Exception Logging
- **Rule**: UNKNOWN - No structured logging evidence found
- **Evidence**: No logging framework or logging statements found
- **Example Files**: N/A
- **Confidence**: LOW

## API and Controller Conventions

### Controller Inheritance
- **Rule**: Controllers inherit from Controller base class
- **Evidence**: All controllers inherit from System.Web.Mvc.Controller
- **Example Files**: [webapp\Controllers\HomeController.cs](cci:7://file:///d:/ZanvarGroup/Source/ERP/webapp/Controllers/HomeController.cs:0:0-0:0) (line 36), [webapp\Controllers\AccountController.cs](cci:7://file:///d:/ZanvarGroup/Source/ERP/webapp/Controllers/AccountController.cs:0:0-0:0) (line 32)
- **Confidence**: HIGH

### Authorization
- **Rule**: Use [Authorize] attribute for secured endpoints
- **Evidence**: Controllers use [Authorize] attribute
- **Example Files**: [webapp\Controllers\HomeController.cs](cci:7://file:///d:/ZanvarGroup/Source/ERP/webapp/Controllers/HomeController.cs:0:0-0:0) (line 35), [webapp\Controllers\AccountController.cs](cci:7://file:///d:/ZanvarGroup/Source/ERP/webapp/Controllers/AccountController.cs:0:0-0:0) (line 31)
- **Confidence**: HIGH

### Public Endpoints
- **Rule**: Use [AllowAnonymous] for public endpoints
- **Evidence**: Login and register methods use [AllowAnonymous]
- **Example Files**: [webapp\Controllers\AccountController.cs](cci:7://file:///d:/ZanvarGroup/Source/ERP/webapp/Controllers/AccountController.cs:0:0-0:0) (lines 40, 52, 126, 138)
- **Confidence**: HIGH

### CSRF Protection
- **Rule**: Use [ValidateAntiForgeryToken] on POST actions
- **Evidence**: POST methods use [ValidateAntiForgeryToken]
- **Example Files**: [webapp\Controllers\AccountController.cs](cci:7://file:///d:/ZanvarGroup/Source/ERP/webapp/Controllers/AccountController.cs:0:0-0:0) (lines 86, 148)
- **Confidence**: HIGH

### Return Types
- **Rule**: Use ActionResult for controller return types
- **Evidence**: Controllers return ActionResult or Task<ActionResult>
- **Example Files**: [webapp\Controllers\HomeController.cs](cci:7://file:///d:/ZanvarGroup/Source/ERP/webapp/Controllers/HomeController.cs:0:0-0:0) (line 39)
- **Confidence**: HIGH

### JSON Responses
- **Rule**: Use JsonResult for API responses
- **Evidence**: Methods returning data use JsonResult
- **Example Files**: [webapp\Controllers\HomeController.cs](cci:7://file:///d:/ZanvarGroup/Source/ERP/webapp/Controllers/HomeController.cs:0:0-0:0) (line 481)
- **Confidence**: HIGH

### JSON Length Configuration
- **Rule**: Set MaxJsonLength to int.MaxValue for large responses
- **Evidence**: JsonResult explicitly sets MaxJsonLength
- **Example Files**: [webapp\Controllers\HomeController.cs](cci:7://file:///d:/ZanvarGroup/Source/ERP/webapp/Controllers/HomeController.cs:0:0-0:0) (line 541)
- **Confidence**: MEDIUM

### TempData Usage
- **Rule**: Use TempData to persist data across redirects
- **Evidence**: Controllers use TempData.Keep() to preserve data
- **Example Files**: [webapp\Controllers\HomeController.cs](cci:7://file:///d:/ZanvarGroup/Source/ERP/webapp/Controllers/HomeController.cs:0:0-0:0) (lines 485, 497)
- **Confidence**: MEDIUM

## Database

### Database Server
- **Rule**: Use SQL Server
- **Evidence**: Connection strings use System.Data.SqlClient
- **Example Files**: [webapp\Web.config](cci:7://file:///d:/ZanvarGroup/Source/ERP/webapp/Web.config:0:0-0:0) (lines 73-76)
- **Confidence**: HIGH

### Multiple Databases
- **Rule**: Use separate databases for different concerns
- **Evidence**: MasterDBConnection, TransactionDBConnection, ReportDBConnection, CalibrationDBConneection
- **Example Files**: [webapp\Web.config](cci:7://file:///d:/ZanvarGroup/Source/ERP/webapp/Web.config:0:0-0:0) (lines 73-76), [ZanvarGroup.Erp.DALDapper\obj\ConManager.cs](cci:7://file:///d:/ZanvarGroup/Source/ERP/ZanvarGroup.Erp.DALDapper/obj/ConManager.cs:0:0-0:0) (lines 15-18)
- **Confidence**: HIGH

### Connection Management
- **Rule**: Use ConManager class for database connections
- **Evidence**: ConManager class manages multiple database connections
- **Example Files**: [ZanvarGroup.Erp.DALDapper\obj\ConManager.cs](cci:7://file:///d:/ZanvarGroup/Source/ERP/ZanvarGroup.Erp.DALDapper/obj/ConManager.cs:0:0-0:0)
- **Confidence**: HIGH

### Connection Strings
- **Rule**: Store connection strings in Web.config
- **Evidence**: All connection strings in Web.config connectionStrings section
- **Example Files**: [webapp\Web.config](cci:7://file:///d:/ZanvarGroup/Source/ERP/webapp/Web.config:0:0-0:0) (lines 70-77)
- **Confidence**: HIGH

### Parameterized Queries
- **Rule**: Use parameterized queries with @param syntax
- **Evidence**: Dapper queries use parameterized @param syntax
- **Example Files**: [ZanvarGroup.Erp.DALDapper\Implementation\Configs\DalMstBranchDeptMinMax.cs](cci:7://file:///d:/ZanvarGroup/Source/ERP/ZanvarGroup.Erp.DALDapper/Implementation/Configs/DalMstBranchDeptMinMax.cs:0:0-0:0) (lines 35-40)
- **Confidence**: HIGH

### Stored Procedures
- **Rule**: Use stored procedures for complex operations
- **Evidence**: Methods call stored procedures with commandType: CommandType.StoredProcedure
- **Example Files**: [ZanvarGroup.Erp.DALDapper\Implementation\Configs\DalMstBranchDeptMinMax.cs](cci:7://file:///d:/ZanvarGroup/Source/ERP/ZanvarGroup.Erp.DALDapper/Implementation/Configs/DalMstBranchDeptMinMax.cs:0:0-0:0) (lines 54, 123)
- **Confidence**: HIGH

### Command Timeout
- **Rule**: Set commandTimeout to 900 seconds for long-running queries
- **Evidence**: Stored procedure calls use commandTimeout: 900
- **Example Files**: [ZanvarGroup.Erp.DALDapper\Implementation\Configs\DalMstBranchDeptMinMax.cs](cci:7://file:///d:/ZanvarGroup/Source/ERP/ZanvarGroup.Erp.DALDapper/Implementation/Configs/DalMstBranchDeptMinMax.cs:0:0-0:0) (lines 71, 139)
- **Confidence**: MEDIUM

### SQL Injection Risk
- **Rule**: FORBIDDEN - String concatenation in SQL queries
- **Evidence**: CloseAmend method uses string concatenation (line 160)
- **Example Files**: [ZanvarGroup.Erp.DALDapper\Implementation\Configs\DalMstBranchDeptMinMax.cs](cci:7://file:///d:/ZanvarGroup/Source/ERP/ZanvarGroup.Erp.DALDapper/Implementation/Configs/DalMstBranchDeptMinMax.cs:0:0-0:0) (line 160)
- **Confidence**: HIGH (evidence of violation)

## Configuration

### Configuration Storage
- **Rule**: Use Web.config appSettings for configuration
- **Evidence**: All configuration in Web.config appSettings section
- **Example Files**: [webapp\Web.config](cci:7://file:///d:/ZanvarGroup/Source/ERP/webapp/Web.config:0:0-0:0) (lines 12-62)
- **Confidence**: HIGH

### Configuration Key Naming
- **Rule**: Use config: prefix for framework-related settings
- **Evidence**: Settings like config:EnableTiles, config:Project, config:Company
- **Example Files**: [webapp\Web.config](cci:7://file:///d:/ZanvarGroup/Source/ERP/webapp/Web.config:0:0-0:0) (lines 13-17)
- **Confidence**: MEDIUM

### Connection Timeout
- **Rule**: Set Connection Timeout to 900 seconds
- **Evidence**: All connection strings include Connection Timeout=900
- **Example Files**: [webapp\Web.config](cci:7://file:///d:/ZanvarGroup/Source/ERP/webapp/Web.config:0:0-0:0) (lines 73-76)
- **Confidence**: HIGH

### Session Timeout
- **Rule**: Set session timeout to 2880 minutes (48 hours)
- **Evidence**: sessionState timeout="2880"
- **Example Files**: [webapp\Web.config](cci:7://file:///d:/ZanvarGroup/Source/ERP/webapp/Web.config:0:0-0:0) (line 79)
- **Confidence**: HIGH

### Authentication Mode
- **Rule**: Use Forms authentication
- **Evidence**: authentication mode="Forms"
- **Example Files**: [webapp\Web.config](cci:7://file:///d:/ZanvarGroup/Source/ERP/webapp/Web.config:0:0-0:0) (line 80)
- **Confidence**: HIGH

### Custom Errors
- **Rule**: Set customErrors mode to Off
- **Evidence**: customErrors mode="Off"
- **Example Files**: [webapp\Web.config](cci:7://file:///d:/ZanvarGroup/Source/ERP/webapp/Web.config:0:0-0:0) (line 83)
- **Confidence**: HIGH

### Debug Mode
- **Rule**: Set compilation debug="true"
- **Evidence**: compilation debug="true"
- **Example Files**: [webapp\Web.config](cci:7://file:///d:/ZanvarGroup/Source/ERP/webapp/Web.config:0:0-0:0) (line 84)
- **Confidence**: HIGH

### Max Request Length
- **Rule**: Set maxRequestLength to 20480 KB (20MB)
- **Evidence**: httpRuntime maxRequestLength="20480"
- **Example Files**: [webapp\Web.config](cci:7://file:///d:/ZanvarGroup/Source/ERP/webapp/Web.config:0:0-0:0) (line 91)
- **Confidence**: HIGH

### JSON Serialization
- **Rule**: Set maxJsonLength to 2147483647
- **Evidence**: jsonSerialization maxJsonLength="2147483647"
- **Example Files**: [webapp\Web.config](cci:7://file:///d:/ZanvarGroup/Source/ERP/webapp/Web.config:0:0-0:0) (line 66)
- **Confidence**: HIGH

## Security

### Authentication
- **Rule**: Use ASP.NET Identity with OWIN cookie authentication
- **Evidence**: Startup.cs configures CookieAuthenticationOptions
- **Example Files**: [webapp\Startup.cs](cci:7://file:///d:/ZanvarGroup/Source/ERP/webapp/Startup.cs:0:0-0:0) (lines 17-48)
- **Confidence**: HIGH

### Cookie Configuration
- **Rule**: Set cookie name to ".ZCompanyAuth"
- **Evidence**: CookieName = ".ZCompanyAuth"
- **Example Files**: [webapp\Startup.cs](cci:7://file:///d:/ZanvarGroup/Source/ERP/webapp/Startup.cs:0:0-0:0) (line 42)
- **Confidence**: HIGH

### Cookie Security
- **Rule**: Set CookieHttpOnly to true
- **Evidence**: CookieHttpOnly = true
- **Example Files**: [webapp\Startup.cs](cci:7://file:///d:/ZanvarGroup/Source/ERP/webapp/Startup.cs:0:0-0:0) (line 43)
- **Confidence**: HIGH

### Sliding Expiration
- **Rule**: Enable sliding expiration for cookies
- **Evidence**: SlidingExpiration = true
- **Example Files**: [webapp\Startup.cs](cci:7://file:///d:/ZanvarGroup/Source/ERP/webapp/Startup.cs:0:0-0:0) (line 44)
- **Confidence**: HIGH

### Cookie Domain
- **Rule**: Set cookie domain based on environment
- **Evidence**: Conditional cookie domain setting based on domainName
- **Example Files**: [webapp\Startup.cs](cci:7://file:///d:/ZanvarGroup/Source/ERP/webapp/Startup.cs:0:0-0:0) (lines 35-40)
- **Confidence**: HIGH

### SSO Integration
- **Rule**: Redirect to SSO login URL for authentication
- **Evidence**: OnApplyRedirect redirects to SSOLoginUrl
- **Example Files**: [webapp\Startup.cs](cci:7://file:///d:/ZanvarGroup/Source/ERP/webapp/Startup.cs:0:0-0:0) (lines 23-31)
- **Confidence**: HIGH

### Machine Key
- **Rule**: Configure machineKey for validation and decryption
- **Evidence**: machineKey element with validationKey and decryptionKey
- **Example Files**: [webapp\Web.config](cci:7://file:///d:/ZanvarGroup/Source/ERP/webapp/Web.config:0:0-0:0) (line 92)
- **Confidence**: HIGH

### Hardcoded Credentials
- **Rule**: FORBIDDEN - Hardcoded credentials in configuration
- **Evidence**: Connection strings contain uid=sa; password=sa1234#
- **Example Files**: [webapp\Web.config](cci:7://file:///d:/ZanvarGroup/Source/ERP/webapp/Web.config:0:0-0:0) (lines 73-76)
- **Confidence**: HIGH (evidence of violation)

### API Keys in Config
- **Rule**: Store API keys in Web.config
- **Evidence**: OneSignalAppKey, OneSignalAuthorization in appSettings
- **Example Files**: [webapp\Web.config](cci:7://file:///d:/ZanvarGroup/Source/ERP/webapp/Web.config:0:0-0:0) (lines 41-42)
- **Confidence**: HIGH

## Performance

### Command Timeout
- **Rule**: Use 900-second timeout for database operations
- **Evidence**: commandTimeout: 900 in Dapper calls
- **Example Files**: [ZanvarGroup.Erp.DALDapper\Implementation\Configs\DalMstBranchDeptMinMax.cs](cci:7://file:///d:/ZanvarGroup/Source/ERP/ZanvarGroup.Erp.DALDapper/Implementation/Configs/DalMstBranchDeptMinMax.cs:0:0-0:0) (lines 71, 139)
- **Confidence**: MEDIUM

### Connection Timeout
- **Rule**: Use 900-second connection timeout
- **Evidence**: Connection Timeout=900 in connection strings
- **Example Files**: [webapp\Web.config](cci:7://file:///d:/ZanvarGroup/Source/ERP/webapp/Web.config:0:0-0:0) (lines 73-76)
- **Confidence**: HIGH

### Multiple Active Result Sets
- **Rule**: Enable MultipleActiveResultSets in connection strings
- **Evidence**: MultipleActiveResultSets=True in connection strings
- **Example Files**: [webapp\Web.config](cci:7://file:///d:/ZanvarGroup/Source/ERP/webapp/Web.config:0:0-0:0) (lines 73-76)
- **Confidence**: HIGH

### JSON Max Length
- **Rule**: Set max JSON length to maximum value
- **Evidence**: MaxJsonLength = int.MaxValue in controllers
- **Example Files**: [webapp\Controllers\HomeController.cs](cci:7://file:///d:/ZanvarGroup/Source/ERP/webapp/Controllers/HomeController.cs:0:0-0:0) (line 541)
- **Confidence**: MEDIUM

## Logging

### Logging Framework
- **Rule**: UNKNOWN - No logging framework evidence found
- **Evidence**: No Serilog, NLog, or log4net references found
- **Example Files**: N/A
- **Confidence**: LOW

### Exception Logging
- **Rule**: UNKNOWN - No exception logging evidence found
- **Evidence**: Try-catch blocks do not log exceptions
- **Example Files**: [ZanvarGroup.Erp.DALDapper\Implementation\Configs\DalMstBranchDeptMinMax.cs](cci:7://file:///d:/ZanvarGroup/Source/ERP/ZanvarGroup.Erp.DALDapper/Implementation/Configs/DalMstBranchDeptMinMax.cs:0:0-0:0)
- **Confidence**: LOW

## Testing

### Test Projects
- **Rule**: UNKNOWN - No test projects found
- **Evidence**: No *Test.csproj or *Tests.csproj files found
- **Example Files**: N/A
- **Confidence**: LOW

### Testing Framework
- **Rule**: UNKNOWN - No testing framework evidence found
- **Evidence**: No NUnit, xUnit, or MSTest references found
- **Example Files**: N/A
- **Confidence**: LOW

## Git

### Gitignore
- **Rule**: Use .gitignore to exclude build artifacts
- **Evidence**: .gitignore excludes bin/, obj/, packages/
- **Example Files**: [.gitignore](cci:7://file:///d:/ZanvarGroup/Source/ERP/.gitignore:0:0-0:0)
- **Confidence**: HIGH

### Project Exclusions
- **Rule**: Exclude certain projects from git
- **Evidence**: ZanvarGroup.Erp.Business.Entities excluded in .gitignore
- **Example Files**: [.gitignore](cci:7://file:///d:/ZanvarGroup/Source/ERP/.gitignore:0:0-0:0)
- **Confidence**: HIGH

## CI/CD

### CI/CD Pipelines
- **Rule**: UNKNOWN - No CI/CD configuration found
- **Evidence**: No .yml, .yaml, or Azure Pipelines files found
- **Example Files**: N/A
- **Confidence**: LOW

### Docker
- **Rule**: UNKNOWN - No Docker configuration found
- **Evidence**: No Dockerfile found
- **Example Files**: N/A
- **Confidence**: LOW

## Code Organization

### Folder Structure
- **Rule**: Organize code by domain/functionality
- **Evidence**: Projects have folders like Masters, Configs, DashBoard, Transactions
- **Example Files**: [ZanvarGroup.Erp.Business\Masters\](cci:9://file:///d:/ZanvarGroup/Source/ERP/ZanvarGroup.Erp.Business/Masters:0:0-0:0), `ZanvarGroup.Erp.DALDapper\Implementation\Configs\`
- **Confidence**: HIGH

### Areas in MVC
- **Rule**: Use Areas to organize MVC modules
- **Evidence**: webapp has Areas like Masters, HRM, Finance, Production
- **Example Files**: [webapp\Areas\](cci:9://file:///d:/ZanvarGroup/Source/ERP/webapp/Areas:0:0-0:0)
- **Confidence**: HIGH

### DTO Organization
- **Rule**: Separate DTOs into Interfaces and Objects folders
- **Evidence**: DTO project has Interfaces and Objects subfolders
- **Example Files**: `ZanwarGroup.Erp.DTO\Configs\Interfaces\`, `ZanwarGroup.Erp.DTO\Configs\Objects\`
- **Confidence**: HIGH

### DAL Organization
- **Rule**: Organize DAL by domain under Implementation folder
- **Evidence**: DALDapper has Implementation\Configs, Implementation\Masters
- **Example Files**: `ZanvarGroup.Erp.DALDapper\Implementation\`
- **Confidence**: HIGH

## Forbidden Practices

### SQL Injection
- **Rule**: FORBIDDEN - String concatenation in SQL queries
- **Evidence**: Line 160 in DalMstBranchDeptMinMax.cs uses string concatenation
- **Example Files**: [ZanvarGroup.Erp.DALDapper\Implementation\Configs\DalMstBranchDeptMinMax.cs](cci:7://file:///d:/ZanvarGroup/Source/ERP/ZanvarGroup.Erp.DALDapper/Implementation/Configs/DalMstBranchDeptMinMax.cs:0:0-0:0) (line 160)
- **Confidence**: HIGH

### Hardcoded Credentials
- **Rule**: FORBIDDEN - Hardcoded database credentials
- **Evidence**: Connection strings contain uid=sa; password=sa1234#
- **Example Files**: [webapp\Web.config](cci:7://file:///d:/ZanvarGroup/Source/ERP/webapp/Web.config:0:0-0:0) (lines 73-76)
- **Confidence**: HIGH

### Exception Re-throw
- **Rule**: FORBIDDEN - Use 'throw ex' instead of 'throw'
- **Evidence**: Catch blocks use 'throw ex' which resets stack trace
- **Example Files**: [ZanvarGroup.Erp.DALDapper\Implementation\Configs\DalMstBranchDeptMinMax.cs](cci:7://file:///d:/ZanvarGroup/Source/ERP/ZanvarGroup.Erp.DALDapper/Implementation/Configs/DalMstBranchDeptMinMax.cs:0:0-0:0) (line 46)
- **Confidence**: HIGH

### Direct Instantiation
- **Rule**: FORBIDDEN - Direct instantiation of dependencies
- **Evidence**: Business layer directly instantiates DAL classes (new DALMstCountry())
- **Example Files**: [ZanvarGroup.Erp.Business\Masters\Country.cs](cci:7://file:///d:/ZanvarGroup/Source/ERP/ZanvarGroup.Erp.Business/Masters/Country.cs:0:0-0:0) (line 31)
- **Confidence**: HIGH

## Preferred Practices

### TransactionScope
- **Rule**: Use TransactionScope for database transactions
- **Evidence**: insert method in Country.cs uses TransactionScope
- **Example Files**: [ZanvarGroup.Erp.Business\Masters\Country.cs](cci:7://file:///d:/ZanvarGroup/Source/ERP/ZanvarGroup.Erp.Business/Masters/Country.cs:0:0-0:0) (lines 219-252)
- **Confidence**: HIGH

### IDisposable
- **Rule**: Implement IDisposable for resource cleanup
- **Evidence**: ConManager implements IDisposable
- **Example Files**: [ZanvarGroup.Erp.DALDapper\obj\ConManager.cs](cci:7://file:///d:/ZanvarGroup/Source/ERP/ZanvarGroup.Erp.DALDapper/obj/ConManager.cs:0:0-0:0)
- **Confidence**: HIGH

### Async Methods
- **Rule**: Use async methods for I/O operations
- **Evidence**: Business and controller methods use async/await
- **Example Files**: [ZanvarGroup.Erp.Business\Masters\Country.cs](cci:7://file:///d:/ZanvarGroup/Source/ERP/ZanvarGroup.Erp.Business/Masters/Country.cs:0:0-0:0) (line 27)
- **Confidence**: HIGH

### Parameterized Queries
- **Rule**: Use parameterized queries to prevent SQL injection
- **Evidence**: Most Dapper queries use parameterized @param syntax
- **Example Files**: [ZanvarGroup.Erp.DALDapper\Implementation\Configs\DalMstBranchDeptMinMax.cs](cci:7://file:///d:/ZanvarGroup/Source/ERP/ZanvarGroup.Erp.DALDapper/Implementation/Configs/DalMstBranchDeptMinMax.cs:0:0-0:0) (lines 35-40)
- **Confidence**: HIGH

## Third-Party Libraries

### Newtonsoft.Json
- **Rule**: Use Newtonsoft.Json for JSON operations
- **Evidence**: Referenced in multiple projects
- **Example Files**: [ZanvarGroup.Erp.Business\ZanvarGroup.Erp.Business.csproj](cci:7://file:///d:/ZanvarGroup/Source/ERP/ZanvarGroup.Erp.Business/ZanvarGroup.Erp.Business.csproj:0:0-0:0)
- **Confidence**: HIGH

### Dapper
- **Rule**: Use Dapper for database operations
- **Evidence**: DALDapper project uses Dapper
- **Example Files**: [ZanvarGroup.Erp.DALDapper\ZanvarGroup.Erp.DALDapper.csproj](cci:7://file:///d:/ZanvarGroup/Source/ERP/ZanvarGroup.Erp.DALDapper/ZanvarGroup.Erp.DALDapper.csproj:0:0-0:0)
- **Confidence**: HIGH

### Syncfusion
- **Rule**: Use Syncfusion.EJ for UI components
- **Evidence**: Referenced in Web.config
- **Example Files**: [webapp\Web.config](cci:7://file:///d:/ZanvarGroup/Source/ERP/webapp/Web.config:0:0-0:0) (lines 95, 110)
- **Confidence**: MEDIUM

### iTextSharp
- **Rule**: Use iTextSharp for PDF generation
- **Evidence**: Referenced in Business project
- **Example Files**: [ZanvarGroup.Erp.Business\ZanvarGroup.Erp.Business.csproj](cci:7://file:///d:/ZanvarGroup/Source/ERP/ZanvarGroup.Erp.Business/ZanvarGroup.Erp.Business.csproj:0:0-0:0)
- **Confidence**: MEDIUM

### EPPlus
- **Rule**: Use OfficeOpenXml for Excel operations
- **Evidence**: Referenced in HomeController
- **Example Files**: [webapp\Controllers\HomeController.cs](cci:7://file:///d:/ZanvarGroup/Source/ERP/webapp/Controllers/HomeController.cs:0:0-0:0) (lines 21-22)
- **Confidence**: MEDIUM

### EasyModbus
- **Rule**: Use EasyModbus for Modbus communication
- **Evidence**: Referenced in Business project
- **Example Files**: [ZanvarGroup.Erp.Business\ZanvarGroup.Erp.Business.csproj](cci:7://file:///d:/ZanvarGroup/Source/ERP/ZanvarGroup.Erp.Business/ZanvarGroup.Erp.Business.csproj:0:0-0:0)
- **Confidence**: MEDIUM

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

### Forbidden
1. **NEVER** use string concatenation in SQL queries
2. **NEVER** hardcode credentials in code
3. **NEVER** use 'throw ex' - use 'throw' instead
4. **NEVER** directly instantiate dependencies in business layer (should use DI in future)

---

**Please switch to Code mode to create the CompanyRules.md file with this content.**