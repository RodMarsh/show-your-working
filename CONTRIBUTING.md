# Contributing

Thank you for helping make these notes clearer and more useful.

## Editorial principles

- Write for a researcher with no assumed programming or Git experience.
- Explain why a practice matters and how ideas connect; link upstream for software mechanics.
- Organise practical material around a reader's need rather than a tool name.
- For each route, state the need, why it matters, what to read in order, when the reader has enough and what to leave until later.
- Prefer maintained primary documentation and a small number of annotated links.
- Introduce another layer only when a concrete failure mode or research requirement justifies it.
- Distinguish computational reproducibility from scientific validity.
- Do not add local tutorials, copied command sequences or extension catalogues that duplicate maintained documentation.
- Never add real sensitive or identifiable data.

## Before opening a pull request

Run:

```bash
quarto render
```

Check the changed chapter in `_book/`, including navigation, tables, route blocks and small-screen readability. Confirm that new external links resolve and that the surrounding text explains why and when to follow them.

Keep commits focused and explain the learner-facing reason for the change.

## Larger changes

For a new chapter or a substantial route change, open an issue first. Describe:

- the reader need;
- the conceptual material that belongs locally;
- the maintained sources that will teach the mechanics;
- the intended stopping point; and
- material that will be explicitly deferred or removed.
