SHELL:=/bin/bash
DEMOS = $(shell find . -maxdepth 2 -iname "code_demo_*.Rmd")
PDFS = $(DEMOS:%.Rmd=%.pdf)
FCHANGED=$(shell git diff --name-only origin/main)

all: texclean $(PDFS)

$(PDFS): %.pdf: %.Rmd
	Rscript -e 'setwd("$(dir $<)"); rmarkdown::render("$(notdir $<)")'

texclean:
	rm -rf *.out
	rm -rf *.dvi
	rm -rf *.log
	rm -rf *.aux
	rm -rf *.bbl
	rm -rf *.blg
	rm -rf *.ind
	rm -rf *.idx
	rm -rf *.ilg
	rm -rf *.lof
	rm -rf *.lot
	rm -rf *.toc
	rm -rf *.nav
	rm -rf *.snm
	rm -rf *.vrb
	rm -rf *.synctex.gz
	rm -rf *-concordance.tex

.PHONY: copypdfs

copypdfs: all
	cp $(PDFS) ../code-demos-pdf/

uncache: $(DEMOS)
	rm -rf code_demo_*_cache
	rm -rf code_demo_*_files

changes:
	@echo "Hello from the $(shell git rev-parse --abbrev-ref HEAD) branch"
	@echo "The changed files are: $(FCHANGED)"
	DN=$$(echo $$DEMOS | sed -e "s/\.//g")
	GLC=$$(echo $$FCHANGED | grep "code-demos"/*"[.]Rmd" | wc -l)
	if [[ $$GLC != 0 ]]; then\
	  echo "Run make demos";\
		make
	else\
		echo "nothing todo for code demos";\
	fi;\



