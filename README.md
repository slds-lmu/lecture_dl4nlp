## How to create a new website repository?

1. Create a new repository with the name `lecture_xyz` and select `slds-lmu/lecture_template` as template repository.
2. Start editing everything to suite your needs. For important (editing) workflows see the `README` files in the directories `slides`, `exercises`, and `code-demos`.
3. __Note:__ When creating new subchapters, it is important to copy the `Makefile` from one of the existing subchapters into the new one! Otherwise, the automatic rendering will not work.

## How to get started with your new lecture repository?

1. The very basic structure of the template contains
    1. `slides`: Raw `.tex` files of your lecture. PDFs are rendered automatically and moved to `slides-pdf`.
    1. `exercises`: Raw `.tex` exercise files. PDFs are rendered automatically and moved to `exercises-pdf`.
    1. `code-demos`: Raw `.tex` files for code demos. PDFs are rendered automatically and moved to `code-demos-pdf`.
    1. `quizzes`: Raw `.csv` files for quizzes.
    1. `cheatsheets`: Material for cheatsheets (images, source, etc.).
    1. `latex-math`: Submodule included from `github.com/slds-lmu/latex-math`.
    1. `style`: All relevant style files.
1. Each folder contains a `README.md` with more details.

## General editing workflow

1. We have two branches, the `main` and `release` branch.
1. Work is exclusively done in a subbranch of the `main` branch!
1. When you have finished a task, write a short understandable commit message, the smaller and more precise your commit is the better. __PLEASE DO NOT FORCE PUSH PDF FILES!__ PDFs are rendered automatically via an actions workflow. If you want to skip CI add a tag `[skip ci]` to your commit ([details see here](https://github.blog/changelog/2021-02-08-github-actions-skip-pull-request-and-push-workflows-with-skip-ci/)).
1. Create a PR to the `main` branch and describe what you have done, reference issues, etc. Also assign a reviewer if necessary.
1. The responsible person for the lecture then merges the PRs.
1. A release is done once a while when enough new content was added. Therefore, the main branch is merged into the `release` branch.

More workflows are described in [this](https://docs.google.com/document/d/1ayDlrDIAGxiUy6UXE4aDc1NIWG7bPACT8PGcvkWfOrc/edit#heading=h.esnnvwml8s4u) gdoc (in German). If you don't have permission, ask one of the responsible pearsons.

# Contents, License, Team and Further Info
Please see the main course site.

## Help is appreciated and welcome!

We hope to continously improve and expand this course over the coming years.
We strongly believe in open source and collaborative work. Please contact us if
you think likewise and would like to contribute.
See also our [contributing guidelines](CONTRIBUTING.md)

- Are you an ML expert and like the course, but have some feedback or consider
  extending it?
  Write an email to Bernd and Fabian (see [Team page](vignettes/team.Rmd)) or
  Open an [issue](https://github.com/compstat-lmu/lecture_i2ml/issues).
- Are you a student taking the lecture - either at the LMU or online - and you
  spotted a typo, think we should rephrase something be or even would like to
  provide a new quiz question or coding example? Please consider providing a
  pull request. To do so, please check out the *devel* branch of the repo and
  add your fixes there. Writing an e-mail or opening an
  [issue](https://github.com/compstat-lmu/lecture_i2ml/issues) with suggested
  improvements is obviously very welcome as well!
- You are none of the above but would like to contribute, get in touch / open
  [issues](https://github.com/compstat-lmu/lecture_i2ml/issues) / create pull
  requests! We are happy about any help.

## License

<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>.

We would appreciate if you contact us in case you are re-using our course.
Knowing this helps us to keep the project alive. Thank you!


