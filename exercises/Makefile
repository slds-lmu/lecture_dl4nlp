SHELL:=/bin/bash
CHAPTER=$(shell find . -mindepth 2 -maxdepth 2 -type f -name 'Makefile' -exec dirname "{}" \;)
FCHANGED=$(shell git diff --name-only origin/main)

all:
	@echo "Specify target 'changes' to just render edited subdirs or 'all' to render all pdfs."

changes:
	@echo "Hello from the $(shell git rev-parse --abbrev-ref HEAD) branch"
	@for i in $(CHAPTER); do\
		DN=$$(echo $$i | sed -e "s/\.//g");\
		GLC=$$(echo $$FCHANGED | grep "exercises"$$DN | grep "[.]Rnw" | wc -l);\
		echo "processing $$DN";\
		if [[ $$GLC != 0 ]]; then\
			cd $$i;\
			echo "cd into $$(pwd)";\
			make exercises-pdf;\
			cd ..;\
		else\
			echo "nothing todo for $$i";\
		fi;\
	done

all-pdf:
	@for i in $(CHAPTER); do\
		echo "processing $$i";\
		cd $$i;\
		echo "cd into $$(pwd)";\
		make exercises-pdf;\
		cd ..;\
	done


### OLD:
#EX = $(shell find . -maxdepth 2 -type f \( -iname "ex_*.Rnw" -o -iname "sol_*.Rnw" -o -iname "collection_*.Rnw" \))
#EXS = $(EX:%.Rnw=%.pdf)

#all: texclean $(EXS) texclean copy

#$(EXS): %.pdf: %.Rnw
	#Rscript -e 'setwd("$(dir $<)"); knitr::knit2pdf("$(notdir $<)")'

#copy:
	#find . -maxdepth 2 -type f \( -iname "ex_*.pdf" -o -iname "sol_*.pdf" \) -exec cp {}  ../exercises-pdf \;

#texclean:
	#rm -rf *.out
	#rm -rf *.dvi
	#rm -rf *.log
	#rm -rf *.aux
	#rm -rf *.bbl
	#rm -rf *.blg
	#rm -rf *.ind
	#rm -rf *.idx
	#rm -rf *.ilg
	#rm -rf *.lof
	#rm -rf *.lot
	#rm -rf *.toc
	#rm -rf *.nav
	#rm -rf *.snm
	#rm -rf *.vrb
	#rm -rf *.synctex.gz
	#rm -rf *-concordance.tex
	#rm -rf *.tex
