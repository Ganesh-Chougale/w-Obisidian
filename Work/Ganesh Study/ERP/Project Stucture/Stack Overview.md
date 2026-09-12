# ZanvarGroup ERP Project Stack Overview

## **Project Type & Framework**
- **.NET Framework 4.5** enterprise ERP solution
- **ASP.NET MVC 5** web application with Web API 2
- **Visual Studio 2015** solution format
- **C#** as primary language

## **Solution Architecture (16 Projects)**

### **Core Applications**
- **webapp/ZanvarGroup** - Main ASP.NET MVC 5 web application (primary UI)
- **ZanvarGroup.SSO** - Single Sign-On authentication service
- **ZanvarGroup.HRM** - Human Resource Management module
- **ZanvarGroup.Erp.MobileServices** - REST API for mobile applications

### **Business Logic Layer**
- **ZanvarGroup.Erp.Business** - Core business logic and domain operations
- **ZanvarGroup.Erp.Business.Entities** - Entity models and domain objects
- **ZanvarGroup.Erp.Business.Services** - Business service layer (GST, OneSignal, Masters)
- **ZanvarGroup.Erp.DTO** - Data Transfer Objects (2200+ DTOs with interfaces)

### **Data Access Layer**
- **ZanvarGroup.Erp.DALDapper** - Dapper ORM implementation for database operations
- **ZanvarGroup.Masters** - Master data management
- **ZanvarGroup.Masters.ServiceFactory** - Service factory pattern implementation

### **Supporting Services**
- **ZanvarGroup.Erp.CacheManager** - Caching layer for performance optimization
- **ZanvarGroup.Erp.ChatSocket** - Real-time chat using SignalR
- **MailScheduler** - Background mail scheduling service

## **Technology Stack**

### **Backend Frameworks**
- **ASP.NET MVC 5.2.3** - Web framework
- **ASP.NET Web API 2** - REST API services
- **Entity Framework 6.1.3** - ORM (partial usage)
- **Dapper 1.42** - Micro-ORM (primary data access)
- **OWIN/Katana 3.1.0** - Middleware pipeline
- **ASP.NET Identity 2.2.1** - Authentication & authorization

### **Frontend Technologies**
- **jQuery 2.1.4** - JavaScript framework
- **Bootstrap 3.x** - UI framework
- **Angular.js** - SPA framework
- **SmartAdmin** - Admin dashboard template
- **FontAwesome** - Icon library
- **Chart.js** - Data visualization
- **CKEditor** - Rich text editor
- **Syncfusion EJ** - UI components (ReportViewer)

### **Database**
- **SQL Server** - Primary database
- **Multiple Databases**:
  - `ERP_MASTERS` - Master data
  - `SRF_ERP` - Transaction data
  - `ERP_REPORT` - Reporting database
  - `WEB_CALIBRATION` - Calibration module data

### **Authentication & Security**
- **Forms Authentication** with SSO
- **ASP.NET Identity** with OAuth providers
- **JWT Tokens** (System.IdentityModel.Tokens.Jwt 5.2.2)
- **Machine Key** encryption for session security

### **Reporting & Documents**
- **SQL Server Reporting Services (SSRS)** - Report generation
- **Report Viewer Web Forms** - Report rendering
- **iTextSharp 5.5.13.3** - PDF generation
- **EPPlus 4.5.2.1** - Excel operations

### **Real-time & Communication**
- **SignalR** - Real-time web socket communication
- **OneSignal** - Push notification service
- **Firebase Cloud Messaging (FCM)** - Mobile push notifications

### **External Integrations**
- **Surepass API** - FASTag vehicle details
- **Vehicle tracking API** - GPS/vehicle management
- **Weight scale API** - Industrial weighing integration
- **PIR Auto Reading** - Production data collection

## **Architecture Patterns**

### **N-Tier Architecture**
- **Presentation Layer** - MVC Views + Web API Controllers
- **Business Logic Layer** - Business services and domain operations
- **Data Access Layer** - Dapper-based repository pattern
- **DTO Layer** - Data transfer objects with interface contracts

### **Design Patterns**
- **Repository Pattern** - Data access abstraction
- **Service Factory Pattern** - Service creation and management
- **DTO Pattern** - Data transfer between layers
- **Cache Pattern** - Performance optimization
- **Dependency Injection** - Loose coupling (manual implementation)

## **Key Features by Module**

### **Manufacturing/Production**
- Material management and BOM (Bill of Materials)
- Production planning and scheduling
- Quality assurance and inspection
- Machine maintenance (TPM - Total Productive Maintenance)
- Tool crib and tool management
- Core production and moulding

### **Financial/Accounting**
- Account groups, ledgers, and sub-ledgers
- Cash flow management
- TDS configuration
- Asset management and depreciation
- Salary processing and payroll

### **Supply Chain**
- Procurement and purchase orders
- Supplier management and portal
- Warehouse management
- Material management with QR codes
- Subcontracting processes

### **Human Resources**
- Employee management and profiles
- Attendance and leave management
- Salary and payroll processing
- Training and skill matrix
- Employee KYC management

### **Sales & CRM**
- Customer management
- Sales orders and invoicing
- Customer complaints handling
- Marketing and quotations

### **Calibration Module**
- Equipment calibration management
- NABL certification
- Gauge management
- Calibration certificates

## **Development Environment**
- **IIS Express** for local development
- **Visual Studio 2015** IDE
- **NuGet** package management
- **Git** version control (with VisualSVN)

## **Configuration Highlights**
- **Session Timeout**: 2880 minutes (48 hours)
- **Max JSON Length**: 2GB (unlimited)
- **Request Length**: 20MB
- **Connection Timeout**: 900 seconds
- **Multiple Active Result Sets**: Enabled