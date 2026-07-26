---
id: QK-0001
title: Founding Charter
subtitle: The Founding Charter of QuantKimun
document: FOUNDING.md
version: 1.0.0
status: Approved
owner: Lankimun Digital
authors:
  - Garcy Valenzuela
reviewers: []
created: 2026-07-25
updated: 2026-07-25
classification: Public
language: en
---

# Founding Charter

## Purpose

This document records the founding principles of QuantKimun.

It explains why the project exists, the problems it intends to solve, and the principles that shall guide every architectural and engineering decision throughout its lifetime.

This document is intended to remain stable over time and should only change to correct inaccuracies or improve clarity. It is **not** a roadmap, technical specification, or implementation guide.

---

# Scope

This document defines:

- the origin of the project;
- its philosophy;
- its long-term purpose;
- the engineering principles that inspired its creation.

It does **not** describe architecture, implementation details, or trading strategies.

---

# The Beginning

QuantKimun was created from a simple observation:

Professional algorithmic trading deserves professional software engineering.

Many trading systems evolve around a single strategy, a specific platform or a collection of scripts written to solve immediate problems.

Over time those solutions become difficult to maintain, difficult to test and almost impossible to reuse.

QuantKimun was founded with a different objective.

Instead of creating another trading strategy, its purpose is to build a reusable engineering platform capable of supporting many strategies, multiple execution platforms and different research workflows without compromising software quality.

---

# The Problem

Algorithmic trading software frequently suffers from recurring issues:

- business logic tightly coupled to trading platforms;
- poor separation between strategy and infrastructure;
- duplicated implementations of risk management;
- lack of automated testing;
- architectures that become increasingly difficult to evolve.

These limitations reduce software quality and make long-term evolution unnecessarily expensive.

QuantKimun exists to address these problems through architecture rather than shortcuts.

---

# The Vision Behind the Project

QuantKimun is not intended to become "another trading framework."

Its ambition is to become an engineering platform where quantitative research, risk management and execution remain clearly separated while working together through well-defined contracts.

The project values maintainability more than rapid development.

Consistency more than novelty.

Knowledge more than intuition.

---

# Inspiration

QuantKimun is developed by **Lankimun Digital**.

The organization's identity is inspired by concepts from the Mapudungun language.

**Kimün** represents knowledge, wisdom and thoughtful understanding.

**Lan** evokes the idea of a prepared and cultivated place where meaningful work can grow.

These concepts inspired the identity of the organization rather than serving as a literal linguistic translation.

The philosophy behind Lankimun Digital is that technology and nature are not opposing forces.

Knowledge is the bridge that allows both to coexist responsibly.

This philosophy guides the development of QuantKimun.

---

# Engineering Philosophy

QuantKimun is built upon the belief that software quality is achieved through discipline rather than complexity.

Architecture should enable evolution.

Code should express intent.

Documentation should preserve knowledge.

Testing should build confidence.

Risk management should be treated as a core domain rather than an optional component.

---

# Core Principles

Every contribution to QuantKimun should respect the following principles.

## Knowledge Before Assumptions

Engineering decisions should be supported by evidence, analysis and continuous learning.

---

## Architecture Before Implementation

Implementation should emerge from a well-defined architecture, not the opposite.

---

## Risk Before Profit

Protecting capital has priority over maximizing returns.

Risk management is a first-class concern.

---

## Platform Independence

Business rules should remain independent from trading platforms.

Platforms are adapters.

The domain remains stable.

---

## Simplicity Through Design

Complexity should only be introduced when it clearly provides measurable value.

Simple solutions are preferred whenever they satisfy the requirements.

---

## Long-Term Thinking

QuantKimun is designed to evolve over many years.

Short-term convenience shall never compromise long-term maintainability.

---

# Commitment

Every architectural decision, every document and every line of code should contribute to one objective:

Building a professional quantitative trading framework that remains understandable, maintainable and extensible throughout its lifetime.

---

# Closing Statement

QuantKimun is not a promise of profitable trading.

It is a commitment to disciplined engineering.

Markets will continue to evolve.

Technologies will continue to evolve.

Platforms will continue to evolve.

The principles recorded in this document should remain unchanged.

---

# References

- QK-0200 — Documentation Standard

---

# Change History

| Version | Date | Author | Description |
|---------|------|--------|-------------|
| 1.0.0 | 2026-07-25 | Garcy Valenzuela | Initial version |

---

## Kimün Principle
"Knowledge does not eliminate uncertainty; it enables better decisions."

© 2026 Lankimun Digital

This document is part of the QuantKimun project.