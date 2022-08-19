EX = $(shell find . -maxdepth 1 -type f \( -iname "ex_*.Rnw" -o -iname "sol_*.Rnw" -o -iname "collection_*.Rnw" \))
EXS = $(EX:%.Rnw=%.pdf)

.PHONY: exercises-pdf $(EXS)

all:
	@if [ -d "../../latex-math" ]; then\
		make texclean;\
		make $(EXS);\
		make texclean;\
	else\
		echo "Cannot find 'latex-math' in root directory";\
	fi

exercises-pdf:
	@if [ -d "../../latex-math" ]; then\
		make texclean;\
		make $(EXS);\
		make copy;\
		make texclean;\
	else\
		echo "Cannot find 'latex-math' in root directory";\
	fi

$(EXS): %.pdf: %.Rnw
	Rscript -e 'setwd("$(dir $<)"); knitr::knit2pdf("$(notdir $<)")'

copy:
	find . -maxdepth 1 -type f \( -iname "ex_*.pdf" -o -iname "sol_*.pdf" \) -exec cp {}  ../../exercises-pdf \;

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
	rm -rf *.tex
