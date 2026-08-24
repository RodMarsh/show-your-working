# Maintaining these notes

This file records the design decisions that keep the resource useful as it grows.

## Audience and promise

The primary reader is a researcher moving from manual analysis and document workflows towards an integrated research record. No programming or Git experience is assumed.

The promise is: **these notes do not teach R, Quarto or Git; they help readers decide what to learn, in what order, why it matters and when they know enough to move on.** The resource is neither a complete account of reproducible research nor a substitute for data-governance or methods guidance.

## Progressive structure

Use three levels:

1. **Understand the point** — the limits of computational reproducibility and the importance of visible inferential judgement.
2. **Follow the need in front of you** — first learning, a project record, version history and citations.
3. **Extend deliberately** — additional layers and destination-specific reading only when a concrete need appears.

When adding a tool, state the failure mode or friction that justifies it. A tool name alone is not a learning objective.

## Editorial boundary

Keep material locally when it does at least one of these things:

- explains the conceptual purpose or limitation of a practice;
- connects several tools to a research need;
- provides an adoption trigger, stopping point or reason to defer complexity; or
- synthesises evidence not already presented by one maintained source.

Link outward for installation, syntax, commands, configuration, extension discovery and format-specific mechanics. A practical route uses five elements: **Need**, **Why it matters**, **Read in this order**, **You have enough when** and **Leave until later**.

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

- **2026-08-23** — full audit of all external links, DOIs and cited claims. All nine DOIs resolved with matching metadata; every scholarly claim checked against primary sources without correction. Replaced the removed `quarto.org/docs/computations/` overview with engine-specific pages, repointed the stale Quarto Gallery `#dashboards` fragment to the dashboards examples anchor, updated the legacy RStudio Desktop download URL to `posit.co/downloads/`, moved the DuckDB link from `/docs/current/` to `/docs/stable/`, and added the registered DOI for Gelman and Loken (2014).

## Releases

For meaningful teaching or publication milestones:

1. render and inspect the book locally;
2. merge through a pull request so the render check runs;
3. tag a semantic or date-based release in this repository;
4. run `tools/sync-public.sh <tag>` to publish that tag to the public repository;
5. confirm the Pages deployment from the public repository;
6. summarise learner-visible changes in the GitHub release; and
7. archive important releases in a DOI-minting repository if they are cited.

### Why two repositories

This repository is private and keeps the full drafting history. That history
still contains the publisher PDFs removed in `18412e7`, so it cannot be made
public as it stands. The public repository
[RodMarsh/show-your-working](https://github.com/RodMarsh/show-your-working)
therefore carries released states only, one commit per release, and is the
repository GitHub Pages builds from.

`tools/sync-public.sh` exports a tag's tree, replaces the public working tree
with it and commits the result, so nothing from this repository's history is
copied across. If the public repository ever needs a file this one does not
have, add it here first.

## Licence assumption

The repository currently uses CC BY 4.0 because it is an educational text intended for reuse. The repository owner should confirm that choice before first publication and ensure third-party material retains its own attribution and licence.
