# QK-0202 — Project Dependency Rules

## 1. Purpose

This document defines the dependency rules between QuantKimun projects.

The objective is to ensure that the solution maintains a controlled dependency direction and that architectural boundaries remain explicit and enforceable.

These rules apply to all projects within the QuantKimun solution.

---

## 2. Architectural Principle

QuantKimun follows a dependency direction from stable abstractions and domain concepts toward implementation details.

Higher-level business concepts must not depend on infrastructure implementation details.

Dependencies must be intentional, explicit, and justified.

The presence of a project in the solution does not imply that another project is allowed to reference it.

---

## 3. Project Layers

The current solution contains the following projects:

### Shared

- `QuantKimun.SharedKernel`
- `QuantKimun.Common`
- `QuantKimun.Events`
- `QuantKimun.Configuration`

### Strategy

- `QuantKimun.Modules.Strategy.Domain`
- `QuantKimun.Modules.Strategy.Application`
- `QuantKimun.Modules.Strategy.Infrastructure`

### Adapters

- `QuantKimun.Adapters.Abstractions`

### Applications

- `QuantKimun.Applications.CLI`

---

## 4. Dependency Direction

The intended high-level direction is:

```text
Applications
     ↓
Infrastructure
     ↓
Application
     ↓
Domain
     ↓
Shared Kernel