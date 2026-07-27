---
id: QK-0102
title: Domain Model Specification
subtitle: Ubiquitous Language and Core Domain Concepts
document: DOMAIN-MODEL-SPECIFICATION.md
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

# Domain Model Specification

## Purpose

This document defines the official domain model of QuantKimun.

It establishes the ubiquitous language used throughout the platform and provides the authoritative definitions of the core business concepts.

Every implementation must conform to the concepts defined in this specification.

---

# Scope

This specification defines:

- domain terminology;
- business concepts;
- relationships between concepts;
- architectural responsibilities.

It intentionally excludes implementation details.

---

# Domain Philosophy

QuantKimun models the quantitative trading process as a sequence of specialized business engines.

Each engine is responsible for transforming information into the next stage of the trading lifecycle.

Business behavior is distributed across engines rather than centralized in large service classes.

---

# Trading Lifecycle

The canonical processing pipeline is:

```
Market Data
      │
      ▼
Indicators
      │
      ▼
Strategy Engine
      │
      ▼
Signal
      │
      ▼
Risk Engine
      │
      ▼
Position Sizing
      │
      ▼
Order
      │
      ▼
Execution Engine
      │
      ▼
Execution Report
      │
      ▼
Position
      │
      ▼
Portfolio Engine
      │
      ▼
Analytics Engine
```

Every component of QuantKimun contributes to one or more stages of this lifecycle.

---

# Core Domain Concepts

## Instrument

A financial asset that can be traded.

Examples include:

- futures;
- stocks;
- ETFs;
- forex pairs;
- cryptocurrencies.

---

## Market Data

Market information received from external sources.

Examples:

- ticks;
- bars;
- quotes;
- volume;
- order book events.

---

## Indicator

A deterministic transformation of market data.

Indicators never make trading decisions.

They provide analytical information.

---

## Strategy Engine

The Strategy Engine evaluates market conditions and produces trading signals.

It contains:

- trading rules;
- filters;
- decision logic;
- strategy state.

The Strategy Engine never submits orders.

---

## Signal

A trading intention.

A signal expresses that market conditions satisfy predefined criteria.

A signal is not an order.

---

## Risk Engine

Evaluates whether a signal may become an executable trading decision.

Responsibilities include:

- exposure limits;
- drawdown protection;
- volatility constraints;
- capital preservation;
- portfolio constraints.

---

## Position Sizing

Determines the quantity to trade after risk validation.

Examples:

- fixed size;
- fixed risk;
- ATR-based sizing;
- Kelly criterion;
- volatility targeting.

---

## Order

A request to execute a transaction.

Orders may be accepted, rejected, partially filled or fully executed.

---

## Execution Engine

Coordinates order execution through platform adapters.

It transforms domain orders into platform-specific instructions.

---

## Execution Report

Represents the outcome of an execution attempt.

Examples:

- accepted;
- rejected;
- partially filled;
- filled;
- cancelled.

---

## Position

Represents the current market exposure.

A position is a live business concept.

---

## Trade

A completed historical transaction.

Trades provide immutable historical records.

A Trade is not a Position.

---

## Portfolio Engine

Maintains the global state of all positions.

Responsibilities include:

- exposure;
- allocation;
- diversification;
- account equity.

---

## Analytics Engine

Produces analytical information about system behavior.

Examples:

- performance metrics;
- drawdown analysis;
- expectancy;
- Sharpe ratio;
- execution statistics.

Analytics never modify business state.

---

# Engine Responsibilities

| Engine | Primary Responsibility |
|---------|------------------------|
| Strategy Engine | Generate signals |
| Risk Engine | Validate trading decisions |
| Position Sizing | Determine trade quantity |
| Execution Engine | Execute orders |
| Portfolio Engine | Maintain portfolio state |
| Analytics Engine | Produce performance insights |

---

# Domain Rules

The following rules always apply:

1. Indicators never submit orders.
2. Strategies never bypass risk.
3. Every order originates from a validated signal.
4. Every execution produces an execution report.
5. Positions represent current state.
6. Trades represent historical facts.
7. Analytics are read-only.
8. Platform adapters never contain business rules.

---

# Ubiquitous Language

The following terms have official meanings within QuantKimun:

- Instrument
- Market Data
- Indicator
- Strategy Engine
- Signal
- Risk Engine
- Position Sizing
- Order
- Execution Engine
- Execution Report
- Position
- Trade
- Portfolio Engine
- Analytics Engine

These definitions shall be used consistently throughout the documentation and source code.

---

# Kimün Principle

> **Shared language creates shared understanding; shared understanding creates reliable software.**

---

# References

- QK-0002 — Engineering Principles
- QK-0003 — Vision
- QK-0100 — Architecture Vision
- QK-0101 — System Context

---

# Change History

| Version | Date | Author | Description |
|---------|------|--------|-------------|
| 1.0.0 | 2026-07-26 | Garcy Valenzuela | Initial version. |

---

© 2026 Lankimun Digital

This document is part of the QuantKimun project.