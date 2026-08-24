# Maintaining these notes

This file records the design decisions that keep the resource useful as it grows.

## Intended audience and objective

The primary reader is a researcher moving from manual analysis and document workflows towards an integrated research record. No programming or Git experience is assumed.

The objective is to **help readers interested in moving from a WYSIWYG and spreadsheet approach to data analysis and research to a more integrated and reproducible approach using Quarto, R, Git and other tools**. The document is structured to help readers **decide what to learn, in what order, why it matters and when they know enough to move on.** The document is neither a complete account of reproducible research nor a substitute for data-governance or methods guidance.

## Progressive structure

Use three levels:

1. **Understand the point** — the limits of computational reproducibility and the importance of visible inferential judgement.
2. **Follow the need in front of you** — first learning, a project record, version history and citations.
3. **Extend deliberately** — additional layers and destination-specific reading only when a concrete need appears.

When adding a tool, state the failure mode or friction that justifies it. A tool name alone is not a learning objective.

## Editorial boundary

Keep material in the resource when it does at least one of these things:

- explains the conceptual purpose or limitation of a practice;
- connects several tools to a research need;
- provides an adoption trigger, stopping point or reason to defer complexity; or
- synthesises evidence not already presented by one maintained source.

Link outward to external maintained resources for installation, syntax, commands, configuration, extension discovery and format-specific mechanics. A practical route uses five elements: **Need**, **Why it matters**, **Read in this order**, **You have enough when** and **Leave until later**.

The early overview of Quarto output formats is a deliberate exception: showing attractive HTML, PDF, DOCX, presentation and dashboard destinations is part of motivating a source-based workflow. Detailed format instructions still belong upstream.

## Source selection

Prefer current primary documentation for software and openly available scholarly or community material for concepts. Use few links, annotate what each contributes and place it where the need arises. Do not maintain a separate catalogue of resources already distributed through the book.

## Review checklist

Before merging a substantial change:

- Does `quarto render` complete without warnings?
- Does every internal link resolve in the rendered book?
- Do external links point to current, preferably primary documentation?
- Are claims that need scholarly support cited?
- Does every practical route contain all five editorial elements?
- Does each link explain why and when it should be followed?
- Have copied commands or mini-tutorials entered the draft unnecessarily?
- Has any generated output, credential or sensitive data entered the diff?
- Does the change preserve progressive complexity and a clear stopping point?

## Link maintenance

The scheduled link workflow checks the rendered book weekly and can be run manually. Treat transient rate limits separately from genuine 404 responses. When replacing a link, verify that the new page supports the surrounding claim rather than merely sharing the same topic.

Record major link audits here with the date. Avoid a “last checked” badge on every link; it creates maintenance noise without guaranteeing current content.

## Releases

For meaningful publication milestones:

1. render and inspect the book locally;
2. merge through a pull request so the render check runs;
3. tag a semantic or date-based release;
4. confirm the Pages deployment;
5. summarise learner-visible changes in the GitHub release; and
6. archive important releases in a DOI-minting repository if they are cited.

## Licence

CC BY 4.0
