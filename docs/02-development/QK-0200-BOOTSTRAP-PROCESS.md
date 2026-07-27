---
id: QK-0200
title: Bootstrap Process
subtitle: Building the QuantKimun Solution from Scratch
document: BOOTSTRAP-PROCESS.md
version: 1.0.0
status: Approved
owner: Lankimun Digital
authors:
  - Garcy Valenzuela
created: 2026-07-26
updated: 2026-07-26
classification: Public
language: en
---

# Bootstrap Process

## Purpose

This document describes the official process for creating a clean QuantKimun development environment.

The objective is to ensure that every developer builds exactly the same solution structure.

---

# Prerequisites

Required software:

- Git
- .NET SDK 8 LTS
- Visual Studio Code
- C# Dev Kit
- GitHub account

---

# Repository Structure

The repository follows the structure defined in:

- QK-0103 — Solution Structure

---

# Bootstrap Steps

1. Clone the repository.
2. Restore the solution.
3. Verify SDK version.
4. Build the solution.
5. Run tests.

---

# Commands

Clone:

```bash
git clone https://github.com/lankimun/QuantKimun.git
```

Enter repository:

```bash
cd QuantKimun
```

Verify SDK:

```bash
dotnet --version
```

Restore:

```bash
dotnet restore
```

Build:

```bash
dotnet build
```

Run tests:

```bash
dotnet test
```

---

# Expected Result

A successful build without warnings or errors.

---

# Kimün Principle

> Every developer should obtain the same environment with the same commands.

---

# References

- QK-0103 — Solution Structure
- QK-0105 — Dependency Rules