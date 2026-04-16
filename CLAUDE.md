# MathWiki Librarian Schema (CLAUDE.md)

This document defines the core principles, workflows, and standards for the **MathWiki** K-12 Digital Math Textbook.

## 1. Core Workflow (Memory Lifecycle)

We follow the **Raw → Vault → Web** architecture inspired by the LLM Wiki pattern.

### 🌊 Ingest (Raw)
- **Directory**: `/raw`
- **Action**: When files are added, identify the curriculum level (Elementary/Middle/High) and key math concepts.
- **Entity Extraction**: Identify Definitions, Theorems, Proofs, Formulas, and Interactive Visualization opportunities.

### 📚 Organize (Vault)
- **Directory**: `/vault`
- **Format**: Structured Obsidian Markdown.
- **Confidence Scoring**: Each fact should note its source and certainty.
- **Supersession**: Newer curriculum standards or pedagogical improvements supersede old notes.

### 🎨 Publish (Web)
- **Directory**: `/web`
- **Engine**: Astro + Starlight.
- **Aesthetic**: Premium Analog (EB Garamond, Cream Paper).
- **Libraries**: Mafs, JSXGraph, MathJax/KaTeX.

## 2. Design Principles

- **Analog Feel**: High-quality serif typography, generous whitespace (sidenotes), and textured backgrounds.
- **Math High-Fidelity**: Use vector-based interactive graphs (Mafs) for geometric intuition.
- **Print Compatibility**: Use Paged.js patterns to ensure content is "print-ready" with proper pagination.

## 3. Operations

### Ingest Command
> "Analyze the new files in /raw and promote to /vault."

### Lint Command
> "Check /vault for broken links, duplicate entities, or stale math definitions."

### Publish Command
> "Sync /vault content to /web/src/content/docs and trigger build."

---

*This schema co-evolves with the project. Update as new pedagogical patterns emerge.*
