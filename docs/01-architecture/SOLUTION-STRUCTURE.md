---
id: QK-0103
title: Solution Structure
subtitle: Repository and Solution Organization
document: SOLUTION-STRUCTURE.md
version: 1.0.0
status: Approved
owner: Lankimun Digital
authors:
  - Garcy Valenzuela
reviewers: []
created: 2026-07-26
updated: 2026-07-26
classification: Public
language: en
---

# Solution Structure

## Purpose

This document defines the physical organization of the QuantKimun repository and .NET solution.

It establishes how source code, documentation, tests and supporting assets are structured to ensure consistency, scalability and maintainability.

---

# Scope

This specification applies to:

- repository organization;
- solution organization;
- project naming;
- module organization;
- adapter organization;
- dependency boundaries.

---

# Architectural Philosophy

QuantKimun follows a **Modular Clean Architecture**.

The architecture combines:

- Domain-Driven Design
- Clean Architecture
- Modular Monolith
- SOLID Principles

Business capabilities are organized as independent modules while sharing a common engineering foundation.

---

# Repository Structure

```
QuantKimun/

│
├── docs/
├── src/
├── tests/
├── samples/
├── tools/
├── scripts/
├── assets/
│
├── README.md
├── LICENSE
├── CHANGELOG.md
└── QuantKimun.sln
```

---

# Source Code Organization

```
src/

Shared/

Modules/

Adapters/

Applications/
```

Each directory has a specific responsibility.

---

# Shared Layer

Contains reusable components shared by multiple modules.

```
Shared/

    QuantKimun.SharedKernel

    QuantKimun.Common

    QuantKimun.Events

    QuantKimun.Configuration
```

The Shared layer must remain small and stable.

Only concepts shared across multiple modules belong here.

---

# Modules

Business capabilities are implemented as independent modules.

```
Modules/

    Strategy/

    Risk/

    Execution/

    Portfolio/

    Analytics/

    Backtesting/
```

Each module owns its business rules.

---

# Internal Module Structure

Each module follows the same internal organization.

```
Strategy/

    Domain/

    Application/

    Infrastructure/
```

Responsibilities:

**Domain**

Business concepts and rules.

**Application**

Use cases.

**Infrastructure**

Technical implementations.

---

# Adapters

Adapters connect QuantKimun to external technologies.

```
Adapters/

    Abstractions/

    NinjaTrader/

    InteractiveBrokers/

    FIX/

    REST/
```

Adapters translate external models into the QuantKimun domain.

Adapters never contain business rules.

---

# Applications

Applications expose QuantKimun to users.

```
Applications/

    CLI/

    Workbench/

    Dashboard/
```

Applications orchestrate user interaction.

Business logic belongs to the modules.

---

# Tests

```
tests/

    Shared/

    Modules/

    Adapters/

    Integration/

    EndToEnd/
```

Every production project should have a corresponding test project.

---

# Samples

```
samples/

    BasicStrategy/

    RiskExamples/

    Backtesting/

    Portfolio/

    Indicators/
```

Samples demonstrate framework usage.

Samples are not production code.

---

# Documentation

```
docs/

    00-foundation/

    01-architecture/

    02-development/

    03-user-guide/

    04-roadmap/

    adr/
```

Documentation evolves together with the software.

---

# Naming Conventions

Projects follow the pattern:

```
QuantKimun.<Area>.<Module>
```

Examples:

```
QuantKimun.SharedKernel

QuantKimun.Modules.Strategy.Domain

QuantKimun.Modules.Strategy.Application

QuantKimun.Modules.Risk.Domain

QuantKimun.Adapters.NinjaTrader

QuantKimun.Applications.CLI
```

---

# Dependency Rules

Allowed dependency direction:

```
Applications

↓

Modules.Application

↓

Modules.Domain

↑

Modules.Infrastructure

↑

Adapters
```

Dependencies always point toward the domain.

---

# Module Independence

Every module should:

- expose a clear public contract;
- encapsulate internal implementation;
- minimize coupling;
- maximize cohesion.

Communication between modules should occur through interfaces and domain events whenever appropriate.

---

# Extensibility

Adding a new module should require:

1. Creating a new module directory.
2. Following the standard internal structure.
3. Registering dependencies.
4. Adding documentation.
5. Creating corresponding tests.

Existing modules should remain unchanged whenever possible.

---

# Design Principles

The solution structure follows:

- EP-01 Architecture Before Implementation
- EP-02 Domain First
- EP-05 Documentation as Code
- EP-06 Testability by Design
- EP-07 Separation of Concerns
- EP-12 Clean Architecture

---

# Kimün Principle

> **A well-structured solution allows knowledge to grow without creating architectural debt.**

---

# References

- QK-0002 — Engineering Principles
- QK-0003 — Vision
- QK-0100 — Architecture Vision
- QK-0101 — System Context
- QK-0102 — Domain Model Specification

---

# Change History

| Version | Date | Author | Description |
|---------|------|--------|-------------|
| 1.0.0 | 2026-07-26 | Garcy Valenzuela | Initial version. |

---

© 2026 Lankimun Digital

This document is part of the QuantKimun project.