# Shiheng Zhang Quarto Homepage

This repository contains a one-page Quarto academic homepage.

## Contact

Use `shihengzhang26@gmail.com` as Shiheng Zhang's public contact and applicant
email from November 6, 2026 onward. Use it in new CVs, resumes, cover letters,
publication lists, and application materials. Preserve previously submitted
application snapshots and other people's email addresses.

## Publication order

The academic CV lists journal articles before conference papers. Journals use
publication year descending, then `sortkey` for the research order within a
year. Preprints use `sortkey` to keep related series together: BUG, robust PSI,
Strang counterexample, VPFP micro-macro ROM, SAV pullback, graph-PDE planning.
Keep `sortyear` as the actual publication or first arXiv date; do not alter dates
to control the display order.

The homepage groups all papers by topic: robust low-rank time integration,
kinetic equations, gradient flows, then scientific machine learning and
optimization. Each group uses descending publication year, with research-series
order within a year. Preprints retain their status labels. The old `#preprints`
anchor points to the start of the grouped papers. Software is ordered DLRA,
DLR-VPFP, RVAV, then Ordinal Geometry.

## Preview locally

```bash
quarto preview
```

## Render

```bash
quarto render
```
