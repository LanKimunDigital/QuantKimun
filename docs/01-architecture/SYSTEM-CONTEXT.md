---
id: QK-0101
title: System Context
subtitle: External Context of the QuantKimun Platform
document: SYSTEM-CONTEXT.md
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

# System Context

## Purpose

This document describes the external environment in which QuantKimun operates.

It identifies the primary users, external systems and major interactions without describing internal implementation details.

This document corresponds to the System Context level of the C4 Model.

---

# Scope

The System Context defines:

- actors interacting with QuantKimun;
- external systems;
- system boundaries;
- information flow.

It intentionally excludes internal architecture.

---

# System Overview

QuantKimun is an engineering platform for designing, testing and executing quantitative trading systems.

It acts as the central component connecting traders, quantitative researchers, trading platforms, market data providers and execution services through a unified domain model.

---

# Primary Actors

## Quantitative Developer

Designs trading systems using QuantKimun.

Responsibilities include:

- strategy development;
- testing;
- optimization;
- deployment.

---

## Trader

Operates and supervises trading systems.

Responsibilities include:

- execution;
- monitoring;
- risk supervision;
- portfolio oversight.

---

## System Administrator

Maintains operational environments.

Responsibilities include:

- deployment;
- configuration;
- monitoring;
- diagnostics.

---

# External Systems

## Trading Platforms

Examples:

- NinjaTrader
- MetaTrader
- cTrader

These platforms execute trading orders and provide market interaction.

---

## Broker APIs

Examples:

- Interactive Brokers
- REST APIs
- FIX gateways

Provide order routing and account management.

---

## Market Data Providers

Supply:

- historical data;
- real-time quotes;
- market events.

---

## Storage Systems

Provide persistence for:

- configurations;
- historical data;
- execution logs;
- analytical results.

---

# System Boundary

QuantKimun owns:

- domain model;
- business rules;
- strategy execution;
- risk evaluation;
- portfolio management;
- analytics.

External systems own:

- market connectivity;
- broker execution;
- account management;
- exchange communication.

---

# Information Flow

The typical interaction flow is:

1. Market data enters the platform.
2. Strategies evaluate market conditions.
3. Signals are generated.
4. Risk policies validate decisions.
5. Orders are created.
6. Adapters translate orders.
7. External platforms execute trades.
8. Execution results return to QuantKimun.
9. Portfolio state is updated.
10. Analytics are generated.

---

# Context Diagram

```
                     +---------------------+
                     | Quantitative Trader |
                     +----------+----------+
                                |
                                |
                                v
                 +-------------------------------+
                 |          QuantKimun           |
                 | Engineering Trading Platform  |
                 +-------------------------------+
                  |         |          |        |
                  |         |          |        |
                  v         v          v        v
           Trading     Broker      Market    Storage
           Platforms     APIs       Data      Systems
```

---

# Architectural Responsibility

QuantKimun is responsible for:

- business decisions;
- risk management;
- strategy execution;
- portfolio state;
- analytical processing.

External systems are responsible for:

- market connectivity;
- order transmission;
- account services;
- exchange communication.

---

# Design Principles

The System Context follows:

- EP-02 Domain First
- EP-03 Platform Independence
- EP-04 Risk as a First-Class Concern
- EP-12 Clean Architecture

---

# Kimün Principle

> **A system becomes maintainable when its boundaries are explicit.**

---

# References

- QK-0002 — Engineering Principles
- QK-0003 — Vision
- QK-0100 — Architecture Vision

---

# Change History

| Version | Date | Author | Description |
|---------|------|--------|-------------|
| 1.0.0 | 2026-07-26 | Garcy Valenzuela | Initial version. |

---

© 2026 Lankimun Digital

This document is part of the QuantKimun project.