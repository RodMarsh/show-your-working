# Show your working

A reading path to a research record that explains itself: an annotated route through maintained material on R, Quarto and research practice for researchers moving beyond manual Word-and-Excel workflows.

The source is a [Quarto book](https://quarto.org/docs/books/). It does not reproduce software manuals. It explains what to learn, in what order, why it matters, when the reader knows enough to move on and which complexity can wait. Its original contribution is the conceptual connection among reproducibility, literate programming, inferential judgement and a research record that remains useful to future you.

## Preview locally

Install [Quarto](https://quarto.org/docs/get-started/), then run:

```bash
quarto preview
```

To create the static site without starting a preview server:

```bash
quarto render
```

The generated site is written to `_book/` and is intentionally not tracked by Git.

## Repository map

| Path | Purpose |
|---|---|
| `index.qmd` | book landing page and learning path |
| `chapters/` | maintained book chapters |
| `references.bib` | scholarly references cited by the book |
| `cse-name-year.csl` | citation style (CSE 9th edition, name-year, CC BY-SA 3.0) |
| `_quarto.yml` | book order and rendering options |
| `MAINTAINING.md` | editorial and release guidance |
| `.github/workflows/` | render checks, link checks and Pages deployment |

## GitHub Pages

This repository is the source of the book and is published at
<https://rodmarsh.github.io/show-your-working/>.

Every push to `main` is rendered and deployed by
`.github/workflows/publish.yml`, with **Settings → Pages → Source** set to
**GitHub Actions**. Pull requests are rendered by `.github/workflows/checks.yml`
without deploying. No `docs/`, `_book/` or `gh-pages` branch needs to be
committed.

## Contribute

Small corrections, clearer explanations and current links are welcome. See [CONTRIBUTING.md](CONTRIBUTING.md). New material should improve the conceptual synthesis or navigation; detailed software mechanics belong in their maintained upstream documentation.

## Licence

Unless otherwise noted, original material in this repository is available under the [Creative Commons Attribution 4.0 International licence](LICENSE.md).
