---
id: QK-0200
title: Documentation Standard
subtitle: Documentation Standards for QuantKimun
document: DOCUMENTATION-STANDARD.md
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

# Documentation Standard

## Purpose

This document defines the official documentation standard for the QuantKimun project.

Its objective is to ensure that every document produced within the project follows the same structure, quality criteria and lifecycle, making the documentation consistent, maintainable and scalable over time.

---

## Scope

This standard applies to every official document contained in the QuantKimun repository, including but not limited to:

- Foundation documents
- Architecture documents
- Development guides
- User guides
- ADRs (Architecture Decision Records)
- Technical specifications
- Standards
- Roadmaps

---

# Documentation Principles

All documentation produced for QuantKimun shall follow these principles.

## Knowledge First

Documentation is considered part of the product.

A feature is not complete until it is properly documented.

---

## Documentation Before Implementation

Architecture, decisions and design must be documented before implementation whenever possible.

---

## Single Source of Truth

Each concept shall have one authoritative document.

Duplicated documentation should be avoided.

---

## Continuous Evolution

Documentation evolves together with the software.

It must never become obsolete.

---

## Traceability

Important technical decisions must reference the corresponding ADR whenever applicable.

---

# Document Metadata

Every official document shall begin with the following metadata block.

```yaml
---
id: QK-XXXX
title:
subtitle:
document:
version:
status:
owner:
authors:
reviewers:
created:
updated:
classification:
language:
---
```

---

# Metadata Description

| Field | Description |
|--------|-------------|
| id | Unique document identifier |
| title | Document title |
| subtitle | Short description |
| document | File name |
| version | Semantic version |
| status | Current lifecycle state |
| owner | Responsible organization |
| authors | Document authors |
| reviewers | Technical reviewers |
| created | Creation date |
| updated | Last update |
| classification | Visibility |
| language | Document language |

---

# Document Status

Allowed values:

- Draft
- Review
- Approved
- Deprecated
- Archived

---

# Versioning

Documentation follows Semantic Versioning.

Examples:

| Version | Meaning |
|----------|----------|
| 1.0.0 | Initial approved version |
| 1.1.0 | New content |
| 1.1.1 | Minor corrections |
| 2.0.0 | Major restructuring |

---

# Classification

Allowed values:

- Public
- Internal
- Confidential

---

# Standard Structure

Every document should follow this structure whenever applicable.

```
Metadata

Title

Purpose

Scope

Content

References

Change History
```

Not every document requires every section, but the order should be preserved whenever possible.

---

# Document Identifiers

Every document receives a permanent identifier.

Example:

| Document | Identifier |
|----------|------------|
| FOUNDING.md | QK-0001 |
| VISION.md | QK-0002 |
| MANIFESTO.md | QK-0003 |
| ARCHITECTURE.md | QK-0100 |
| DOCUMENTATION-STANDARD.md | QK-0200 |

Identifiers shall never be reused.

---

# Writing Style

Documentation should be:

- Clear
- Concise
- Objective
- Technical
- Precise

Avoid:

- Marketing language
- Unsupported opinions
- Ambiguous terminology
- Duplicated information

---

# Language Policy

English is the official language for all technical documentation.

The reasons are:

- International collaboration
- Better accessibility
- Consistency with the .NET ecosystem
- Easier adoption by the community

Internal discussions may be conducted in Spanish.

---

# References

- Semantic Versioning 2.0
- IEEE Software Documentation Principles
- Microsoft Writing Style Guide

---

# Change History

| Version | Date | Author | Description |
|----------|------|--------|-------------|
| 1.0.0 | 2026-07-25 | Garcy Valenzuela | Initial version |

---

© 2026 Lankimun Digital

This document is part of the QuantKimun project.