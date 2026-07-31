You are a Senior Software Architect performing an Engineering Standards Audit.

Your objective is to create a complete "Company Rules" document for THIS project.

This is NOT documentation generation.

Your job is to reverse engineer the engineering standards followed in this repository.

========================================================

VERY IMPORTANT

Only include rules that are supported by evidence found in the project.

Never invent standards.

Never assume the company follows a best practice simply because it is common.

If something cannot be determined confidently, mark it as:

UNKNOWN

instead of guessing.

========================================================

SEARCH THE ENTIRE REPOSITORY

Inspect everything including but not limited to:

- Solution structure
- Folder structure
- Projects
- Dependencies
- NuGet packages
- Configuration
- Global.json
- Directory.Build.props
- Directory.Packages.props
- *.csproj
- appsettings
- launchSettings
- Program.cs
- Startup.cs
- MauiProgram.cs
- package.json
- tsconfig
- eslint
- prettier
- stylecop
- editorconfig
- build scripts
- pipelines
- docker
- README
- wiki
- documentation
- test projects
- sample implementations

========================================================

EXTRACT RULES FOR

1. Tech Stack

Languages

Frameworks

SDK versions

Runtime versions

Packages

Libraries

UI Framework

ORM

Logging

Mapping

Validation

Testing

Mocking

Serialization

Dependency Injection

========================================================

2. Architecture

Architecture style

Layering

Project separation

Folder organization

Feature organization

Repository pattern

CQRS

MVVM

MVC

MVP

Clean Architecture

Vertical Slice

DDD

Mediator

Event driven

Any other observed architecture

========================================================

3. Naming Conventions

Classes

Interfaces

Methods

Properties

Fields

Local variables

Constants

Enums

Records

DTOs

ViewModels

Commands

Queries

Events

Files

Namespaces

Folders

========================================================

4. Code Style

Method length

Class size

Regions

Expression-bodied members

LINQ preferences

var usage

explicit type usage

nullable reference types

primary constructors

records

readonly

const

async usage

ConfigureAwait

extension methods

comments

xml documentation

========================================================

5. Exception Handling

How try/catch is written

Logging

throw;

throw ex;

custom exceptions

validation exceptions

global exception handling

========================================================

6. Dependency Injection

Constructor injection

Service lifetimes

Registration style

Factory pattern

Service Locator

Singleton usage

========================================================

7. UI Rules

MVVM

Code-behind usage

Navigation

Binding

Converters

Resources

Styles

Themes

Controls

Reusable components

========================================================

8. Database

ORM

Migration strategy

Naming

Repository usage

Transactions

Unit of Work

========================================================

9. API

Controller conventions

Minimal APIs

Route naming

Versioning

Response format

Validation

Authentication

Authorization

========================================================

10. Logging

Library

Log levels

Structured logging

Correlation IDs

========================================================

11. Configuration

Secrets

Environment variables

Options pattern

Configuration loading

========================================================

12. Security

Authentication

Authorization

Encryption

Token handling

Secrets

========================================================

13. Performance

Caching

Lazy loading

Pagination

Async

Memory

========================================================

14. Testing

Framework

Naming

Folder structure

Coverage

Mock libraries

========================================================

15. Git

Branch naming

Commit conventions

Pull Request templates

========================================================

16. CI/CD

Build pipeline

Release pipeline

Code analysis

Formatting

Quality gates

========================================================

17. Code Organization

Preferred file length

Preferred class size

Preferred method size

One class per file

Partial classes

========================================================

18. Forbidden Practices

Anything clearly avoided in the repository.

Examples:

Dynamic

Reflection

Service Locator

Static helpers

Long methods

Magic strings

Hardcoded values

========================================================

19. Preferred Practices

Everything repeatedly used throughout the repository.

========================================================

20. Third-party Libraries

List every major package together with where it is used.

========================================================

21. Coding Patterns

Factory

Builder

Strategy

Observer

Mediator

Decorator

Repository

Specification

Command

Adapter

etc.

========================================================

OUTPUT FORMAT

Generate ONE markdown file named

CompanyRules.md

For every rule include:

Rule

Evidence

Example File(s)

Confidence

Example

Rule:
Async methods must end with Async.

Evidence:
Observed in 184 methods.

Example Files:
Services/UserService.cs
Repositories/OrderRepository.cs

Confidence:
High

----------------------------------------------------

If a rule is inferred from only one location, mark confidence LOW.

If found repeatedly, mark HIGH.

If impossible to determine, write UNKNOWN.

========================================================

FINAL SECTION

Generate a concise section called

"AI Coding Instructions"

This section should contain only actionable instructions that another AI assistant can follow when generating code for this project.

Example:

- Use constructor injection only.
- Follow MVVM.
- Async methods end with Async.
- Use Serilog.
- Use repository pattern.
- Never use reflection.
- Never use dynamic.

This section should be concise and directly usable as an AI system prompt.

========================================================

Your primary goal is accuracy, not completeness.

Evidence always takes precedence over assumptions.