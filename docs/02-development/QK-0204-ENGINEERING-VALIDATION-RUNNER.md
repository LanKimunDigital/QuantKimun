---
id: QK-0204
title: Engineering Validation Runner
subtitle: Unified Execution of QuantKimun Engineering Validators
document: ENGINEERING-VALIDATION-RUNNER.md
version: 1.0.0
status: Approved
owner: Lankimun Digital
authors:
  - Garcy Valenzuela
created: 2026-08-04
updated: 2026-08-04
classification: Public
language: en
---

## Purpose

This document defines the Engineering Validation Runner for the QuantKimun solution.

Its objective is to provide a single mechanism for executing engineering validators and reporting an overall validation result.

---

## Responsibilities

The Engineering Validation Runner is responsible for:

- locating configured validators;
- executing validators in sequence;
- detecting validator failures;
- reporting individual validator results;
- returning an overall validation status.

The runner does not contain the architectural rules themselves.

---

## Validation Runner

The runner is implemented as:

```text
scripts/engineering/validation/Validate.ps1