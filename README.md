# Show Your Working

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
| `_quarto.yml` | book order and rendering options |
| `MAINTAINING.md` | editorial and release guidance |
| `.github/workflows/` | render checks, link checks and Pages deployment |

## Public release and GitHub Pages

This repository is private and holds the drafting history. Released versions are
published to the public repository
[RodMarsh/show-your-working](https://github.com/RodMarsh/show-your-working),
which serves the book at
<https://rodmarsh.github.io/show-your-working/>.

The public repository contains released states only. The drafting history stays
here, because it still contains publisher PDFs that were removed from the
working tree but remain in earlier commits.

To publish a release, tag it here and run:

```bash
tools/sync-public.sh v1.0.0
```

Pages is served from the public repository by `.github/workflows/publish.yml`,
with **Settings → Pages → Source** set to **GitHub Actions**. No `docs/`,
`_book/` or `gh-pages` branch needs to be committed.

## Contribute

Small corrections, clearer explanations and current links are welcome. See [CONTRIBUTING.md](CONTRIBUTING.md). New material should improve the conceptual synthesis or navigation; detailed software mechanics belong in their maintained upstream documentation.

## Licence

Unless otherwise noted, original material in this repository is available under the [Creative Commons Attribution 4.0 International licence](LICENSE.md).
