## Slides folder

Slide sources follow the `slidemk` layout: `slides/<NN>-<chapter>/<NN>-<topic>.tex`.
Each chapter has a `chapter.tex` with its title; the lecture title and
dl4nlp-specific macros live in `local/local.tex`. Build with `slidemk` from
the central `lecture_service` (run it from the lecture root, a chapter
directory, or on a single `.tex` file). Output goes to `build/`;
`slidemk --release` publishes the PDFs to `slides-pdf/`.

The second course (`slides2/`) still uses the legacy style and is not built by
`slidemk` yet.
