---
id: QK-0104
title: Modules
subtitle: Business Modules of QuantKimun
document: MODULES.md
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

# Modules

## Purpose

This document defines the business modules that compose QuantKimun.

Each module represents a bounded business capability with clear responsibilities, public contracts and explicit boundaries.

---

# Architectural Philosophy

Modules encapsulate business capabilities.

Each module owns:

- its domain;
- its application services;
- its infrastructure;
- its internal implementation.

Modules collaborate through contracts and domain events.

---
# Architectural Hierarchy

QuantKimun organizes its business architecture into three conceptual levels.

```
Business Capability
        │
        ▼
Business Module
        │
        ▼
Business Engine
```

Each level has a distinct responsibility.

---

## Business Capability

A Business Capability represents a major area of business knowledge.

Capabilities describe **what the platform is able to do**.

Examples include:

- Strategy Development
- Risk Management
- Trade Execution
- Portfolio Management
- Analytics
- Backtesting

Capabilities are conceptual and do not necessarily correspond to software projects.

---

## Business Module

A Business Module encapsulates a single business capability.

Each module owns:

- its domain model;
- its application services;
- its infrastructure;
- its public contracts.

Examples:

- Strategy Module
- Risk Module
- Execution Module
- Portfolio Module
- Analytics Module

Modules are architectural boundaries.

---

## Business Engine

A Business Engine implements a specialized business responsibility inside a module.

Engines perform business work.

Examples include:

- Strategy Engine
- Risk Engine
- Position Sizing Engine
- Execution Engine
- Portfolio Engine
- Analytics Engine

Modules may contain one or more engines.

Engines collaborate while remaining cohesive and independently testable.

---

# Architectural Rule

Capabilities define Modules.

Modules own Engines.

Engines implement business behavior.

Technology supports the Engines.

Technology never defines the business architecture.

```
Capability
        │
        ▼
Module
        │
        ▼
Engine
        │
        ▼
Technology
```

---

# Design Principle

QuantKimun evolves by introducing new capabilities rather than increasing the complexity of existing ones.

Whenever possible:

- add a new Engine before modifying an existing one;
- add a new Module before coupling unrelated responsibilities;
- add a new Capability only when introducing a new business area.

This hierarchy promotes long-term maintainability, scalability and architectural clarity.
# Shared Foundation

The following components are shared by all modules:

- Shared Kernel
- Common
- Events
- Configuration

These components do not contain business capabilities.

---

# Strategy Module

## Purpose

Generate trading signals from market information.

## Responsibilities

- evaluate market conditions;
- execute strategy rules;
- manage strategy state;
- emit trading signals.

## Owns

- Strategy Engine
- Indicators
- Signal generation

---

# Risk Module

## Purpose

Protect capital by validating trading decisions.

## Responsibilities

- exposure control;
- drawdown protection;
- risk policies;
- capital preservation;
- position sizing.

## Owns

- Risk Engine
- Position Sizing Engine

---

# Execution Module

## Purpose

Coordinate trade execution.

## Responsibilities

- create domain orders;
- coordinate execution;
- process execution reports.

## Owns

- Execution Engine
- Order lifecycle

---

# Portfolio Module

## Purpose

Maintain portfolio state.

## Responsibilities

- positions;
- allocations;
- account equity;
- exposure.

## Owns

- Portfolio Engine

---

# Analytics Module

## Purpose

Generate operational and performance insights.

## Responsibilities

- performance metrics;
- drawdown analysis;
- reporting;
- statistics.

## Owns

- Analytics Engine

---

# Backtesting Module

## Purpose

Replay historical market data.

## Responsibilities

- historical execution;
- simulation;
- performance evaluation.

## Owns

- Backtesting Engine

---

# Future Modules

Examples include:

- Optimization
- Machine Learning
- Walk Forward Analysis
- Monte Carlo
- Market Replay
- Alerting
- Reporting

Future modules should follow the same architectural principles.

---

# Module Communication

Modules communicate using:

- interfaces;
- domain events;
- shared contracts.

Direct dependencies between modules should be minimized.

---

# Design Principles

Modules shall remain:

- cohesive;
- independent;
- testable;
- replaceable.

---

# Kimün Principle

> Business capabilities define the architecture—not technologies.

---

# References

- QK-0100 — Architecture Vision
- QK-0102 — Domain Model Specification
- QK-0103 — Solution Structure

---

# Change History

| Version | Date | Author | Description |
|---------|------|--------|-------------|
| 1.0.0 | 2026-07-26 | Garcy Valenzuela | Initial version. |

---

© 2026 Lankimun Digital

This document is part of the QuantKimun project.