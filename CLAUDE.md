# MathWiki Librarian Schema (CLAUDE.md)

This document defines the core technical stack and work principles for the **MathWiki** K-12 Digital Math Textbook project.

## 1. Core Workflow
**Raw (/raw) → Vault (/vault) → Web (/web)**

- `/raw`: Incoming raw source materials.
- `/vault`: Organized knowledge base (Obsidian).
- `/web`: Digital publishing (Astro).

## 2. Core Tech Stack
- **Framework**: [Astro](https://astro.build/) (Static Site Generation)
- **Math Notation**: [KaTeX](https://katex.org/) (CDN: v0.16.11)
- **Interactive Graphs**: [JSXGraph](https://jsxgraph.uni-bayreuth.de/) (Local Integration)
- **Design/UI**: CSS Grid, Cornell Note Layout (CornellNote Component)

## 3. Local Library Hub (OpenSource_Lab)
Leverage the local library hub on the desktop to ensure project stability.
- **Path**: `/Users/imac/Desktop/OpenSource_Lab/Frameworks/`
- **Inventory**: `jsxgraph`, `mathjs`, `mafs`, `d3`, `mermaid-src`, etc.
- **Strategy**: Files from `OpenSource_Lab` are copied to the project's `web/public/lib/` to prevent failures from external CDN outages.

## 4. Mathematical Notation Rules (Astro-specific)
Essential rules for stable KaTeX rendering within Astro files:
1.  **Encapsulation**: All formulas must be wrapped in `{ "$ ... $" }`.
2.  **Escaping**: Commands with backslashes (`\`) MUST use double backslashes (`\\`).
    - Examples: `\\to`, `\\lim`, `\\displaystyle`, `\\mathbf`, `\\frac`
3.  **Alignment**: Use the `.formula-box` class for center alignment and optimal readability.

## 5. Design Principles
- **Analog Aesthetics**: EB Garamond typography, cream-colored paper textures (Cornell paper).
- **Difficulty Colors**: [Low]-Green, [Mid]-Orange, [CSAT]-Red theme application.

## 6. Worksheet (PDF) Production Principles
- **Tools**: Use [Typst](https://typst.app/) and [Tinymist](https://github.com/Myriad-Dreamin/tinymist) (VS Code extension) for local design.
- **Source**: Store `.typ` files in the `/print` folder.
- **Deployment**: Upload ONLY the **final PDF files (`web/public/pdf/`)** generated locally to GitHub for user downloads.

## 7. Mission
"To refine raw mathematical information into a structured knowledge base and visualize it as a premium-quality digital textbook."
